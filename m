Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B89F94F05AB
	for <lists+devicetree@lfdr.de>; Sat,  2 Apr 2022 20:53:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231128AbiDBSyx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Apr 2022 14:54:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229629AbiDBSyx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Apr 2022 14:54:53 -0400
X-Greylist: delayed 331 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 02 Apr 2022 11:53:01 PDT
Received: from mta-out-05.alice.it (mta-out-05.alice.it [217.169.118.11])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 162C910FD5
        for <devicetree@vger.kernel.org>; Sat,  2 Apr 2022 11:53:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alice.it; s=20211207; t=1648925581; 
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        h=Reply-To:From:To:Date:Message-ID:MIME-Version;
        b=ecTIsv+qC4Fj0JtJK+anjtL+znU1qDWa9pkJAiose9XGB0h6/Apru5nq34p+qDrvV+QPa2f4Ms6CinfMMJOYKLgVskiA+fvbo4zKqT3zJLiGgjBIIXAsuBXABx33jNapJNnnG+PkNXDmndOariQF55h8enxCSPGRICJnHYcOH+UR4uoggh10LfDfwvd0TRcypx0BHtx8Bsh76AE0nbdwYC+y/NFC1U2m6uQECR2ez+wYswK4pDf8j3O5UDwZpcpaB6egXp1x544FxnWE11F7GKCVgcUtwRBR0ijJslg3LGJyyCqLW1R4GoE+28GREJy0EMJKhExjZauBfc6bS1GWyQ==
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvvddrudeikedgudefudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfvgffngfevqffokffvtefnkfetpdfqfgfvnecuuegrihhlohhuthemuceftddunecugfhmphhthicushhusghjvggtthculddutddmnefgmhhpthihucgsohguhiculdehtddmnecujfgurheprhfhvfffkfggsedttdeftddttddtnecuhfhrohhmpeghvgcuhhgrvhgvucgrnhcuohhffhgvrhcuthhouchinhhvvghsthcuihhnucihohhurhcutghouhhnthhrhicuuhhnuggvrhcurgcujhhoihhnthcuvhgvnhhtuhhrvgcuphgrrhhtnhgvrhhshhhiphcuphhlvggrshgvuchrvghplhihuchfohhruchmohhrvgcuuggvthgrihhlshcuoegsihhrohhlohesrghlihgtvgdrihhtqeenucggtffrrghtthgvrhhnpeetffeulefhheffieeltefgvedtffejhedtheefhfevueeitdeiffeuhfehudffudenucfkphepudelkedrkedrkeehrddvhedtnecuvehluhhsthgvrhfuihiivgepgedtieenucfrrghrrghmpehhvghloheprghlihgtvgdrihhtpdhinhgvthepudelkedrkedrkeehrddvhedtpdhmrghilhhfrhhomhepsghirhholhhosegrlhhitggvrdhithdpnhgspghrtghpthhtohepuddprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-RazorGate-Vade-Verdict: clean 60
X-RazorGate-Vade-Classification: clean
Received: from alice.it (198.8.85.250) by mta-out-05.alice.it (5.8.807.04) (authenticated as birolo@alice.it)
        id 623DD3C500D71A49 for devicetree@vger.kernel.org; Sat, 2 Apr 2022 20:47:28 +0200
Reply-To: dougfied20@inbox.lv
From:   We have an offer to invest in your country under a
         joint venture partnership please reply for more
         details <birolo@alice.it>
To:     devicetree@vger.kernel.org
Date:   02 Apr 2022 11:47:26 -0700
Message-ID: <20220402114726.B65D1FBE1DE01DF1@alice.it>
MIME-Version: 1.0
X-Spam-Status: Yes, score=5.7 required=5.0 tests=BAYES_50,BODY_EMPTY,
        DKIM_INVALID,DKIM_SIGNED,EMPTY_MESSAGE,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,MISSING_SUBJECT,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_BL,RCVD_IN_MSPIKE_L4,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
        *       low trust
        *      [217.169.118.11 listed in list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5024]
        *  0.0 RCVD_IN_MSPIKE_L4 RBL: Bad reputation (-4)
        *      [217.169.118.11 listed in bl.mailspike.net]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [birolo[at]alice.it]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [dougfied20[at]inbox.lv]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        *  2.3 EMPTY_MESSAGE Message appears to have no textual parts and no
        *      Subject: text
        *  1.8 MISSING_SUBJECT Missing Subject: header
        *  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
        *  0.0 RCVD_IN_MSPIKE_BL Mailspike blacklisted
        *  0.0 BODY_EMPTY No body text in message
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

