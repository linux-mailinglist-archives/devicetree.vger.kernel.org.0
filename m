Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4721453DFDF
	for <lists+devicetree@lfdr.de>; Mon,  6 Jun 2022 04:58:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232695AbiFFC6Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Jun 2022 22:58:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352154AbiFFC6W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Jun 2022 22:58:22 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB34A4F9F8
        for <devicetree@vger.kernel.org>; Sun,  5 Jun 2022 19:58:21 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id 1so14374068ljp.8
        for <devicetree@vger.kernel.org>; Sun, 05 Jun 2022 19:58:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:sender:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=pbtvj+qzDzWPv07ONjliRnXAhtxylSVYM+9L0QeACB4=;
        b=f4lp7VWYb9cjuoQsiWWOQjyCZSbVKjn4CU7K8vtsBAXjYfusLdYDhSPBQWONE7Y3YB
         mQWUphaX0Coydw76QPFXy6HeK2AUrbbifHZScA3Akk/6sc2jZAZAte+7Y1kF4tBZvl77
         srXlFWp02j7YSgaixanVssKtr5ck5mh5xuDTvDaKZbABlw55tXQ3hpHUbMm0pkOc12eL
         v9+NeyRkTboTX9jB+LWM+6VCjtq9sUlnafAkIB+xYkmfmR9GUNM58AzW81pIIn6YSjM9
         GmgK3sCa30jeXbTyrj/Ytmg6qI+7N0epOentfAS1iSko2KQg8lkqt3ED9xVhq6961rCI
         o0VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to:content-transfer-encoding;
        bh=pbtvj+qzDzWPv07ONjliRnXAhtxylSVYM+9L0QeACB4=;
        b=ptO3ZdGSwI+fZq4ivRtkHHMEhBHZCQsqoBI3Yhy8nojOvRtd1ezsinY0PeEzU6EeMJ
         wkAvrt72+wEKOZpV/QxhLBee4USdke5sUVSaAz5Pwl+ayZt3OA0YH48DWiNK4YaqsM/X
         MO2jq2xM2KMGX2D/gtFAZWN7wJqamvTXVouG9r22XtM4pVdWE8r5oBXnFHq9T4vDp3BH
         BG0hCcCIRLSQcIs9CVS4hMaN2ZFHRFkoi3n29wuCPCoC8hLP828rTFbAViuESc8nB4Xn
         qUWNIy6hDKUqIXB0xinB4ZFHRwCm/ugm4NYXBiAS2mCpyL64GYWvq7HmeLoIShxI5t+O
         VhEA==
X-Gm-Message-State: AOAM531T94dtEunI6EnyT7tY9MyW3xTL0VKdC3s7tXrn1Po6ui31LEYy
        CQZsccaZ5QjRi3VU9px5RCZJDEsWHBIJgzVX0Js=
X-Google-Smtp-Source: ABdhPJzjNoAQeGBIvNlazP6r83ra1xIriagiueg5SJ1qWhfCsFP9R7bovLvoLkZg+SX6iyHg2NpxRwgOX/AX5kKaQjg=
X-Received: by 2002:a2e:a80f:0:b0:255:6c4d:6328 with SMTP id
 l15-20020a2ea80f000000b002556c4d6328mr13344946ljq.86.1654484299664; Sun, 05
 Jun 2022 19:58:19 -0700 (PDT)
MIME-Version: 1.0
Sender: dirumaruzongo1121@gmail.com
Received: by 2002:a05:6512:260a:0:0:0:0 with HTTP; Sun, 5 Jun 2022 19:58:19
 -0700 (PDT)
From:   "Mrs. Anna  Bruun" <mrsannabruun2@gmail.com>
Date:   Sun, 5 Jun 2022 19:58:19 -0700
X-Google-Sender-Auth: 5WeCGOHz2OYKNHrfYb8oM4OQHlc
Message-ID: <CAN+1sj7f=UBGJ0fAmJ96T9NhgcO8B2wxNwtTq99drs_AuceYQg@mail.gmail.com>
Subject: Greetings,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: Yes, score=5.3 required=5.0 tests=BAYES_95,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,LOTS_OF_MONEY,MONEY_FRAUD_3,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_HK_NAME_FM_MR_MRS,T_MONEY_PERCENT,
        T_SCC_BODY_TEXT_LINE,UNDISC_MONEY autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Report: *  3.0 BAYES_95 BODY: Bayes spam probability is 95 to 99%
        *      [score: 0.9869]
        * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:235 listed in]
        [list.dnswl.org]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [dirumaruzongo1121[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [dirumaruzongo1121[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        *  0.0 T_HK_NAME_FM_MR_MRS No description available.
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  0.0 T_MONEY_PERCENT X% of a lot of money for you
        *  0.6 UNDISC_MONEY Undisclosed recipients + money/fraud signs
        *  1.6 MONEY_FRAUD_3 Lots of money and several fraud phrases
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I am Mrs.Anna Bruun, 62 years old, from France, i am suffering
from a long time cancer and my doctors have told me that i may not
live beyond two months. My husband was dealing on Gold Dust and Gold
Dory Bars till his sudden death in 2016, i took over his business. I
have a deposit sum of $4.5 million US dollars with one of the leading
bank in London, but unfortunately i cannot visit the bank now since i
am sick and powerless to do anything myself.

My bank account officer advised me to assign any of my relative with
authorization letter to stand as the recipient of the fund, but
sorrowfully i don=E2=80=99t have any reliable relative and no child. i want
you to receive the fund and take 50% while 50% should be used
basically on humanitarian purposes, orphanages home, motherless babies
home, less privileged and disable citizens around the world. when i
receive your respond, i shall send you the full details with my
pictures and contacts of my bank to communicate them on the matter.
Hope to hear from you soon.

Mrs.Anna Bruun.
