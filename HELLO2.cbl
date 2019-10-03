      ******************************************************************
      * Copyright 2019, Tokyo System House Co., Ltd. <opencobol@tsh-world.co.jp>
      *
      * Licensed under the Apache License, Version 2.0 (the "License");
      * you may not use this file except in compliance with the License.
      * You may obtain a copy of the License at
      *
      *     http://www.apache.org/licenses/LICENSE-2.0
      *
      * Unless required by applicable law or agreed to in writing, software
      * distributed under the License is distributed on an "AS IS" BASIS,
      * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
      * See the License for the specific language governing permissions and
      * limitations under the License.
      *
      ******************************************************************
      *  opencobol SAMPLE
      *
      *  Copyright 2019 Tokyo System House Co., Ltd.
      ******************************************************************
       IDENTIFICATION              DIVISION.
      ******************************************************************
       PROGRAM-ID.                 HELLO2.
       AUTHOR.                     TSH.
       DATE-WRITTEN.               2019-10-02.
      ******************************************************************
       ENVIRONMENT                 DIVISION.
      ******************************************************************
       INPUT-OUTPUT                SECTION.
       FILE-CONTROL.
           SELECT SEQ-FILE         ASSIGN TO "SEQ001"
                                   ORGANIZATION SEQUENTIAL
                                   FILE STATUS F-STATUS.
      ******************************************************************
       DATA                        DIVISION.
      ******************************************************************
       FILE                        SECTION.
       FD  SEQ-FILE.
       01  SEQ-REC.
           03   SEQ-DATA           PIC  X(10).
      ******************************************************************
       WORKING-STORAGE             SECTION.
       01  F-STATUS                PIC  XX.
      ******************************************************************
       PROCEDURE                   DIVISION.
      ******************************************************************
       MAIN-RTN.
           OPEN OUTPUT SEQ-FILE.
           MOVE "123" TO SEQ-DATA.
           WRITE SEQ-REC.
           CLOSE SEQ-FILE.
       MAIN-EXT.
           STOP RUN.
