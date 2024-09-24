
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:notes/view/screen/add_notes/add_notes_screen.dart';
import 'package:notes/view/screen/common_widget/common_text.dart';
import 'package:notes/view/screen/note_details/note_details_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection("Notes").snapshots(),
          builder: (context, note) {
            if (note.hasError) {
              return const Text("Error");
            } else if (note.hasData) {
              return note.data!.docs.isNotEmpty
                  ? ListView.builder(
                      shrinkWrap: true,
                      itemCount: note.data?.docs.length ?? 0,
                      itemBuilder: (context, index) {
                        return Slidable(
                          startActionPane:
                          ActionPane(motion: const ScrollMotion(), children: [
                            SlidableAction(
                              onPressed: (context) {
                                note.data?.docs.removeAt(index);
                              },
                              icon: Icons.delete,
                              label: "Delete",
                            )
                          ]),
                          endActionPane: ActionPane(motion: const ScrollMotion(), children: [
                            SlidableAction(
                              onPressed: (context) {
                                note.data?.docs.removeAt(index);
                              },
                              icon: Icons.delete,
                              label: "Delete",
                            )
                          ]),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: InkWell(
                              onTap: () {
                                Get.to(() => NoteDetails(
                                      tittle:
                                          '${note.data?.docs[index].data()['tittle']}',
                                      description:
                                          '${note.data?.docs[index].data()['description']}',
                                      dateTime:
                                          '${note.data?.docs[index].data()['dateTime']}',
                                    ));
                              },
                              child: Container(
                                width: Get.width,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: Get.height * 0.01),
                                      CommonText(
                                        text:
                                            "${note.data?.docs[index].data()['tittle']}",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        fWeight: FontWeight.bold,
                                        fSize: 17,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          CommonText(
                                              text:
                                                  "${note.data?.docs[index].data()['dateTime']}")
                                        ],
                                      ),
                                      SizedBox(height: Get.height * 0.01),
                                      CommonText(
                                        text:
                                            "${note.data?.docs[index].data()['description']}",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 4,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      })
                  : const Center(
                      child: CommonText(
                        text: "No Data Found",
                      ),
                    );
            }
            return const Center(child: CircularProgressIndicator(),);
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => const AddNotes());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}