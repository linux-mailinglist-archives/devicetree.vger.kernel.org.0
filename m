Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1BECE6CA8F6
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 17:29:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229565AbjC0P3q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 11:29:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232803AbjC0P3j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 11:29:39 -0400
Received: from mail-yw1-x1143.google.com (mail-yw1-x1143.google.com [IPv6:2607:f8b0:4864:20::1143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6DB430C2
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 08:29:26 -0700 (PDT)
Received: by mail-yw1-x1143.google.com with SMTP id 00721157ae682-545cb3c9898so102120597b3.7
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 08:29:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679930966;
        h=content-transfer-encoding:to:subject:message-id:date:from:sender
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6+Q77am20M2vc0H3trIHbNhNfOFLQobOVqxzGMsIaOo=;
        b=PJxo2lYcW6cSDlZ3cAgXS9Rj3w8uWrYzcJBFMdAHXHzGcmG+jrzG3LXckblkjJbiGA
         kU0NzOev0sEkTYpvPWtsO+/cAbU+jtC6yZzA6yaAxsN7gB+p7JRwxYemt+ApAMyeg7A5
         eTfYwjG7ooSrjowix3EvbdHMpzcOrV2ajwVMGcDB/OWHc9YF1HpPJoPhZNsqT9mGAtt3
         LhXM+pzwJMohh1UKIofazluWlmxpi9+q67fa0uvixbOe99oxCKzbPSd6BOkphbYEyoAl
         1i81fjTWM2Y/cI8LB51KFo8kHkS1exDiNYKtSjT6R3DuaOMiNPWJ72gPDDsC1XCvxYjk
         Y2HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679930966;
        h=content-transfer-encoding:to:subject:message-id:date:from:sender
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6+Q77am20M2vc0H3trIHbNhNfOFLQobOVqxzGMsIaOo=;
        b=JQRapcdo/ZNbjV0MKGCHmdSd0zDXQ9xUfJpzYxZ7gATx9+aNhhCpT4n2jle7FOKZT9
         /7dDM+xH+wY+fVJ8iaRbGbPDQkiHn0PML5vFnVgTpyo1kH6sSXtRPX83XGSjlgTch+5H
         V3ow3+DcUKJK/QOKC+X9D6/AWJB769ltIy+WxNDlVmP7Qf5zdX1L33PM1wdic9+TGJCe
         UNp0CbXrmTUOlYamU2H6xy/0lTNYcOAuzhPajCsb4mYvv37GFQw+tp9N/E9z5fnQ8jlM
         GQsNnO/SHpnH4t/QCeyxI5N8aoLAQL9iuGFZzRTz61kXzeam4bbZCpzVDBpM3AI05U0U
         n0cw==
X-Gm-Message-State: AAQBX9ddZhZpEwx4uRYwZOVnEi/3U3FZ5cTQrH6sh5jG+Bser1Y6ITZ+
        BfpGrk9LmWYILc20lKULnBiO5U+QtzxMFqqAWO8=
X-Google-Smtp-Source: AKy350YvhkiZrtmeUklYkauGTuEgVKnrXIknKvXKBEk05pgqrTEVh4L0Gl8oc1xNWAf136Iyy7tuBX5b2j2vDoMS/90=
X-Received: by 2002:a81:e546:0:b0:546:1ef:54f9 with SMTP id
 c6-20020a81e546000000b0054601ef54f9mr590033ywm.0.1679930965936; Mon, 27 Mar
 2023 08:29:25 -0700 (PDT)
MIME-Version: 1.0
Sender: samsonka22@gmail.com
Received: by 2002:a05:7108:5005:b0:2e9:4fc0:88f5 with HTTP; Mon, 27 Mar 2023
 08:29:25 -0700 (PDT)
From:   MRS LOVETH JAMES <loveth.james778@gmail.com>
Date:   Mon, 27 Mar 2023 16:29:25 +0100
X-Google-Sender-Auth: pElcgjj9hmcMgIbzv0FsuA4jGig
Message-ID: <CAKY8iZq43Gjk7RqV8+PmBDzk8zRLvc2CaCSWUjYDL6H99WC_LA@mail.gmail.com>
Subject: Greetings dear,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: Yes, score=7.1 required=5.0 tests=ADVANCE_FEE_5_NEW_MONEY,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,LOTS_OF_MONEY,MONEY_FRAUD_8,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_HK_NAME_FM_MR_MRS,
        UNDISC_MONEY autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:1143 listed in]
        [list.dnswl.org]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [samsonka22[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [samsonka22[at]gmail.com]
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.0 T_HK_NAME_FM_MR_MRS No description available.
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        *  2.0 MONEY_FRAUD_8 Lots of money and very many fraud phrases
        *  3.0 ADVANCE_FEE_5_NEW_MONEY Advance Fee fraud and lots of money
        *  2.0 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Greetings dear,


   This letter might be a surprise to you, But I believe that you will
be honest to fulfill my final wish. I bring peace and love to you. It
is by the grace of god, I had no choice than to do what is lawful and
right in the sight of God for eternal life and in the sight of man for
witness of god's mercy and glory upon my life. My dear, I sent this
mail praying it will find you in a good condition, since I myself am
in a very critical health condition in which I sleep every night
without knowing if I may be alive to see the next day. I am Mrs.Loveth
James, a widow suffering from a long time illness. I have some funds I
inherited from my late husband, the sum of ($11,000,000.00, Eleven
Million Dollars) my Doctor told me recently that I have serious
sickness which is a cancer problem. What disturbs me most is my stroke
sickness. Having known my condition, I decided to donate this fund to
a good person that will utilize it the way I am going to instruct
herein. I need a very honest and God fearing person who can claim this
money and use it for Charity works, for orphanages and gives justice
and help to the poor, needy and widows says The Lord." Jeremiah
22:15-16.=E2=80=9C and also build schools for less privilege that will be
named after my late husband if possible and to promote the word of god
and the effort that the house of god is maintained.

 I do not want a situation where this money will be used in an ungodly
manner. That's why I'm taking this decision. I'm not afraid of death,
so I know where I'm going. I accept this decision because I do not
have any child who will inherit this money after I die. Please I want
your sincere and urgent answer to know if you will be able to execute
this project, and I will give you more information on how the fund
will be transferred to your bank account. May the grace, peace, love
and the truth in the Word of god's be with you and all those that you
love and  care for.

I am waiting for your reply.

May God Bless you,


 Mrs. Loveth James
