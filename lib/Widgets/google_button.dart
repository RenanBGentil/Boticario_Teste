import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GoogleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          left: 30.0, right: 30.0, top: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 8.0),
              alignment: Alignment.center,
              child: Row(

                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius
                            .circular(30.0),
                      ),
                      color: Color(0Xffdb3236),
                      onPressed: () => {},
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment
                              .center,
                          children: <Widget>[
                            Expanded(
                              child: FlatButton(
                                onPressed: () => {},
                                padding: EdgeInsets
                                    .only(
                                  top: 20.0,
                                  bottom: 20.0,
                                ),
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.google,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "GOOGLE",
                                      textAlign: TextAlign
                                          .center,
                                      style: TextStyle(
                                          color: Colors
                                              .white,
                                          fontWeight: FontWeight
                                              .bold),
                                    ),
                                  ],
                                ),

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}