Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 619A04B54E5
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 16:36:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355921AbiBNPf6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 10:35:58 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:55594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355919AbiBNPfy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 10:35:54 -0500
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8B2C60A94
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 07:35:46 -0800 (PST)
Received: by mail-yb1-xb2f.google.com with SMTP id o19so47055673ybc.12
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 07:35:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:in-reply-to:references:from:date:message-id
         :subject:cc;
        bh=7MR/c1c0HoGO/HVVoYlYmh/1TEGUfmBelnD0hQ6ZZJc=;
        b=CwaAbT0rIC31tG0LiFZnuea87dnkL2CLjz3iI+H+cYSZHGCArFO4llfu4I6wLvtb7t
         H7nNtQunlXSR+yha8dv517uL9pl22qfKFYXYPyWsH1UOdk0vc1ml4E3hzLkQFG5/i8b+
         xfZx+Vplmw+onTXuJDavtRegklzicgtLE6ILJbAyYPSiaKNHbkqEnLgSgcWCObgIzdu2
         jForkb0ZBBZUyYWRMhoRM1QWuudhc1vmbnbkGbFNnisWSOfB8PeNIXTkpMGfHJBNxeH/
         2XhilEDNYRcDNey/DcXzyx0n7iCFAf7MyJ+EBxqfYcxuEfAkhDcPI/2Tnp89h72e3c0i
         fw7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :from:date:message-id:subject:cc;
        bh=7MR/c1c0HoGO/HVVoYlYmh/1TEGUfmBelnD0hQ6ZZJc=;
        b=gGlcyIWUsSmdY+z3vYcnGRhzr4YbuIRgWbKnosZPetnEN+37PwQJE6Az7Gt4Jxi4cz
         CNM7RXxNj7vZePYwRsmsrr7OVOEnkbvRLhPZUPhaWveyIz3zm24kCTrre2Bz8OEWDgNU
         YmcDH21/FTA0F67kVTcw/fZNWPwMCQ4p1Nwp0C+nnBGFLFA7lTudKuFZ8zzYpSAAx6tH
         ZfLEYcEpsBLFtjfRjBRGGB85I7kMKYFkgJ0wzSboIbcSaqKIh4GLNkbbekqI3zUOCPGo
         lSIw83YJYl0ZGZlfOvvF4I17xxWapYAlrAgN9Z3hqEVLTJff9IeS8PYnHLEOl9aQkdN0
         Gc9g==
X-Gm-Message-State: AOAM532f9g3X4yFhEQvq+phBMKD0yic9UwCxg5M2T3wELvrIvxFJXJFI
        3C3PVfWYp/K5wDLXcSSBNxMPCOwCaS8QCcOX4iw=
X-Received: by 2002:a25:8181:: with SMTP id p1mt178451ybk.755.1644852945941;
 Mon, 14 Feb 2022 07:35:45 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7011:309:b0:202:87aa:d2df with HTTP; Mon, 14 Feb 2022
 07:35:45 -0800 (PST)
Reply-To: lisamuna2001@gmail.com
In-Reply-To: <CAOpEvtjt9NW=M_YqecnpTr19fUZxzQv+Kpqd_MVWxDDKGsCLgA@mail.gmail.com>
References: <CAOpEvtjt9NW=M_YqecnpTr19fUZxzQv+Kpqd_MVWxDDKGsCLgA@mail.gmail.com>
From:   lisa muna <amedodziyaovi@gmail.com>
Date:   Mon, 14 Feb 2022 16:35:45 +0100
Message-ID: <CAOpEvth8YxNPY_rTByvp8S3cykK9Nf16W0y8J8i5jxPZkYwgcw@mail.gmail.com>
Subject: Greetings
Cc:     lisamuna2001@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.4 required=5.0 tests=BAYES_50,DEAR_FRIEND,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,LOTS_OF_MONEY,
        MISSING_HEADERS,MONEY_FREEMAIL_REPTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:b2f listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [lisamuna2001[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [amedodziyaovi[at]gmail.com]
        *  1.0 MISSING_HEADERS Missing To: header
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  2.6 DEAR_FRIEND BODY: Dear Friend? That's not very dear!
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        *  0.0 MONEY_FREEMAIL_REPTO Lots of money from someone using free
        *      email?
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
To:     unlisted-recipients:; (no To-header on input)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dear Friend,

I'm happy to inform you that i finally succeeded in getting the funds
transferred under the cooperation of a new partner from India,
Presently I'm in India, for investment projects with my own share of
the money and also on charity work to the less privileges and the
orphanages. Meanwhile i didn't forget your past efforts to assist me.

After your inability to cooperate I found a new partner who helped in
getting those funds transferred for charity work , please use this
share of the money for your self and also invest some on charity work
in your country.

So i left a Visa Card of $850,000.00 US Dollars for you as
compensation for your past effort. Contact my office manager and give
her your complete address so she can send you the Visa Card through
Courier Delivery Logistics

Her Name is Miss . Lisa Muna

Email: lisamuna2001@gmail.com

NOTE; The Visa Card is an international Visa Card and you can cash it
in any ATM machine in your Country.

Regards
lisa muna
