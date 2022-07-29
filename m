Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 39D5A584E26
	for <lists+devicetree@lfdr.de>; Fri, 29 Jul 2022 11:38:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235297AbiG2Jit (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Jul 2022 05:38:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235263AbiG2Jis (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Jul 2022 05:38:48 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC60E5FAEC
        for <devicetree@vger.kernel.org>; Fri, 29 Jul 2022 02:38:46 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id sz17so7538736ejc.9
        for <devicetree@vger.kernel.org>; Fri, 29 Jul 2022 02:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=Xp3jiYKdfD+2KOmUSOr0cVdDmDB/vg9vLamjcTiNnoc=;
        b=He537hphOZ9Gzg9V9sjAz94ITyG6cnlh2Pkb1akhStyd4zY+qy6C3MZPpqF2NN1PLA
         IrmjSGvoZtLId/mLpHzshk2sG1+jJHDOfvlUrDuYj59bkbHjkeOs6uku+kT2wozlgTJE
         jtS8gUYxkimpcLsYrvrn7ynK/vYVTgA8GbY61GA+jQLZealyJRMhTG2AbvKfQuBsJf43
         8lmcyQUkllJBXcFDz9hC6zW5Fn17kdwWO38doRb+OM7VISV+9xQQUeeV/kU6x9kyzrCo
         X3OsgeOzrTJcUIUMAzLwcuFo8YsC8AcP6/imKWwnhq/p6k83GlzwPn7U0RbQKv0FXwq2
         2V5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=Xp3jiYKdfD+2KOmUSOr0cVdDmDB/vg9vLamjcTiNnoc=;
        b=wDqAWkub/1R5m00ucYQchbyS+fD9IR4ReOGfJ6Hl6T+GhE6lC78kZsQSjGSi3OqmGF
         Rw6qFImfH++awdRSliCeC2BDHkN5Rx5ew7ldH3SY4C1X1nOi+HxTZbJ1yt0qLwTbcILK
         Iw6UvbGV8JSejUFTFjOV9uQhaBnLDomogxk1jiCX2XCxanwM0sL354vdH6bjUYrxkbm/
         W33VJR5hZ/9VjG3gw/nBB+NJ6HzFtSK9t+iF0kmNeB+XV2sWkPnWi2vxJyIeEj4m4ad/
         5C6/xTUsaitjG/I1Ip1OK3mBwonyfY3l+Kg6xhDuBrNDAvsbYJGhVXFPR6dxwZewaSOc
         eZVA==
X-Gm-Message-State: AJIora8dvLiMwXqLR42ON4ltC6OXfLbB88RuqDJTEhtZQZk7jhqxYwfo
        N2elnMZP9W5dxg4A0sIHSyc4+72QDhtcBZe84CY=
X-Google-Smtp-Source: AGRyM1vYBMt/nWcOFSip8rhtBfkKz0NRN5ebBDj4Yq7CS9FqAJQy2aj+jIU096m4U3XJHkeEBU5SgLiO1k0XDEp17RA=
X-Received: by 2002:a17:907:2807:b0:72b:4530:29d5 with SMTP id
 eb7-20020a170907280700b0072b453029d5mr2323604ejc.69.1659087525171; Fri, 29
 Jul 2022 02:38:45 -0700 (PDT)
MIME-Version: 1.0
Sender: reymonddennis@gmail.com
Received: by 2002:a17:907:11c6:b0:730:ce0:4c8f with HTTP; Fri, 29 Jul 2022
 02:38:44 -0700 (PDT)
From:   "mrs.sophia.robin" <mrs.sophiar.robin424@gmail.com>
Date:   Fri, 29 Jul 2022 10:38:44 +0100
X-Google-Sender-Auth: YM7DCmWftYCHVtLM2gaUGusPPII
Message-ID: <CAOOE2sE78_WzV0tcEBepofdBuEb=jaB7UC9KpsYhc+QBffBp=g@mail.gmail.com>
Subject: Dear victim,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=6.0 required=5.0 tests=BAYES_60,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,LOTS_OF_MONEY,
        MILLION_HUNDRED,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_HK_NAME_FM_MR_MRS,UNDISC_MONEY autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:62d listed in]
        [list.dnswl.org]
        *  1.5 BAYES_60 BODY: Bayes spam probability is 60 to 80%
        *      [score: 0.6477]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [reymonddennis[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  1.7 MILLION_HUNDRED BODY: Million "One to Nine" Hundred
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.0 T_HK_NAME_FM_MR_MRS No description available.
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        *  3.0 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: ******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dear victim,

   this Is National Crime Investigation Center USA.
In our Investigation from banks on International and National Funds
Transfer (INFT) protocols In The past 10 years from all banks
Worldwide. We have come across your contact details and record with
One of this Bank. in view of The carried Investigations, we have
Contacted you confidentially for vital Information toward your
transactions with This bank. It was clear That The bank have delayed
Your payment Thereby looking for a means to divert your fund to
Different Individual account not belonging to you.

How ever, all bank officials who mishandled your Transaction has been
Duly sacked and management dissolved and dismissed from bank work as a
Result of This attempt. Upon our Investigation conclusion, we found
Out that your Transaction was Legitimate and for This reason, a
Compensation Amount of $3,150,567.00 (Three million one hundred and
Fifty thousand, five hundred and sixty seven dollars) has been
Allocated to you for Immediate payment through our accredited bank,
Platinum Federal Credit Union USA. Kindly contact the compensation
paying officer with The below details.

Email: mrs.sophiar.robin424@gmail.com,

Yours Sincerely
mrs.sophiar.robin,
