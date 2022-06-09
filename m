Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D3D99544538
	for <lists+devicetree@lfdr.de>; Thu,  9 Jun 2022 10:00:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240381AbiFIIAG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jun 2022 04:00:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229836AbiFIIAF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jun 2022 04:00:05 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D07243888
        for <devicetree@vger.kernel.org>; Thu,  9 Jun 2022 01:00:01 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 25so29830612edw.8
        for <devicetree@vger.kernel.org>; Thu, 09 Jun 2022 01:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:sender:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=0XYuJwlWcPhF5wKwZj6AX0M1ehVlcZ8wjqHIDg46ZGY=;
        b=RKG78C2nHJ2DusmhxKo5a49FA6wS+LU8Q4gi2mTlpmNEBMgUWUeTGPwDWIOvLv3MYA
         9mLzx7yTrRySynogM6y2+1bQ8VxwKLW3H1wlLCj3EZJkDjnwZouHfEhb0f4VX+1IYMpQ
         hLwd91m7ldrxYhHok0gjAVq73Pa06I1hI2zujCZNHHLLKCL2i3wRgiczE2MiEPxkkuQS
         DYndZshN/56j25Vevy0oqKWmcF/aB1BMckoP7SeZefbQ3vKduITSeWEvn6xLW+rgUiwV
         mVMxazBp/xTHyLNxKq7/h2CqW87RLRqcQQYGI0Z0Vp0VZY48K3N9PS0jh5V4Xc4ZAiKo
         ZE6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to:content-transfer-encoding;
        bh=0XYuJwlWcPhF5wKwZj6AX0M1ehVlcZ8wjqHIDg46ZGY=;
        b=wwQxrItbtOt94Yk058jwmU+vCNDz+tyWEsHIkG0Gr/4YhLHgvvlSg4ENGmhjp7PAUm
         tcoL2IVusnX1LcpOFR8uipcNCzi8+CT1ICkWjspCxGchlUUwLe9y3tgMqK/cOHv4I6d1
         J7adezYgJ/auw3pXnjRjv3ld5RYwzoUkYftiuSAhGvSMurJas2l38PjP9S6j0ZO7nbKt
         Jm4Tw/mKUIy/srqqQOtm76gElW6s0RaD0FQS/t5VvBF5YBm6kxPdy6RbobYb4+Xm2Dom
         gwHb4TswgotdufQfx2FX6cK4xP3Rt0pMj8yAY80hTXlhrnUSvXbWyJ0Z0dNe+jaD6K1e
         Ug3w==
X-Gm-Message-State: AOAM530q2xZ8wRpgaznnf2YhOiYErtqKeIg/E1esDmIl1vPk6L4JRYbm
        R6TOTGjUojB7knoi8UZQmCVDvzKQuxeStPYEUfk=
X-Google-Smtp-Source: ABdhPJzmw2F2ZGzwb6PutE65f/Y0xdpIP+tAo/lvmD4yNHbbv8PDilUuaNZSDx/9Jk3w/NDltglJAjPdqp3fcg/JfI0=
X-Received: by 2002:a05:6402:195:b0:431:5499:35eb with SMTP id
 r21-20020a056402019500b00431549935ebmr24684641edv.346.1654761600271; Thu, 09
 Jun 2022 01:00:00 -0700 (PDT)
MIME-Version: 1.0
Sender: djmacdon5@gmail.com
Received: by 2002:a54:3347:0:0:0:0:0 with HTTP; Thu, 9 Jun 2022 00:59:59 -0700 (PDT)
From:   Dina Mckenna <dinamckenna1894@gmail.com>
Date:   Thu, 9 Jun 2022 07:59:59 +0000
X-Google-Sender-Auth: 5YW2EiCVDw2imZLkgBzG8wEU-jY
Message-ID: <CAKGPEqi=O2NQs2iv+7+ud0d6RDg2bsXUuyqQ7On+gFRri8ZBxg@mail.gmail.com>
Subject: Please need your urgent assistance,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: Yes, score=5.7 required=5.0 tests=ADVANCE_FEE_5_NEW_MONEY,
        BAYES_60,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,LOTS_OF_MONEY,MONEY_FRAUD_8,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_MONEY,URG_BIZ autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:529 listed in]
        [list.dnswl.org]
        *  1.5 BAYES_60 BODY: Bayes spam probability is 60 to 80%
        *      [score: 0.7810]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [djmacdon5[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [djmacdon5[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  0.6 URG_BIZ Contains urgent matter
        *  0.0 MONEY_FRAUD_8 Lots of money and very many fraud phrases
        *  3.0 ADVANCE_FEE_5_NEW_MONEY Advance Fee fraud and lots of money
        *  0.6 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello my dear,

 I sent this mail praying it will get to you in a good condition of
health, since I myself are in a very critical health condition in
which I sleep every night without knowing if I may be alive to see the
next day. I bring peace and love to you.. It is by the grace of God, I
had no choice than to do what is lawful and right in the sight of God
for eternal life and in the sight of man, for witness of God=E2=80=99s merc=
y
and glory upon my life. I am Mrs. Dina Howley. Mckenna, a widow. I am
suffering from a long time brain tumor, It has defiled all forms of
medical treatment, and right now I have about a few months to leave,
according to medical experts. The situation has gotten complicated
recently with my inability to hear proper, am communicating with you
with the help of the chief nurse herein the hospital, from all
indication my conditions is really deteriorating and it is quite
obvious that, according to my doctors they have advised me that I may
not live too long, Because this illness has gotten to a very bad
stage. I plead that you will not expose or betray this trust and
confidence that I am about to repose on you for the mutual benefit of
the orphans and the less privilege. I have some funds I inherited from
my late husband, the sum of ($ 11,000,000.00, Eleven Million Dollars).
Having known my condition, I decided to donate this fund to you
believing that you will utilize it the way i am going to instruct
herein. I need you to assist me and reclaim this money and use it for
Charity works therein your country  for orphanages and gives justice
and help to the poor, needy and widows says The Lord." Jeremiah
22:15-16.=E2=80=9C and also build schools for less privilege that will be
named after my late husband if possible and to promote the word of God
and the effort that the house of God is maintained. I do not want a
situation where this money will be used in an ungodly manner. That's
why I'm taking this decision. I'm not afraid of death, so I know where
I'm going. I accept this decision because I do not have any child who
will inherit this money after I die.. Please I want your sincerely and
urgent answer to know if you will be able to execute this project for
the glory of God, and I will give you more information on how the fund
will be transferred to your bank account. May the grace, peace, love
and the truth in the Word of God be with you and all those that you
love and care for.

I'm waiting for your immediate reply.

May God Bless you,
Mrs. Dina Howley. Mckenna.
