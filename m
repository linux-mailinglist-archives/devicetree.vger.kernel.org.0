Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 07F596DDFBA
	for <lists+devicetree@lfdr.de>; Tue, 11 Apr 2023 17:30:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231126AbjDKPaO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Apr 2023 11:30:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229507AbjDKPaG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Apr 2023 11:30:06 -0400
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com [IPv6:2607:f8b0:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BB024234
        for <devicetree@vger.kernel.org>; Tue, 11 Apr 2023 08:29:47 -0700 (PDT)
Received: by mail-pl1-x644.google.com with SMTP id 21so2427plg.12
        for <devicetree@vger.kernel.org>; Tue, 11 Apr 2023 08:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681226987;
        h=content-transfer-encoding:to:subject:message-id:date:from:sender
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jO+/r/ORU0mzQcMEmskJcdmDbxjYUiARS4OFJvuOdMQ=;
        b=p+ZCf7A3R2GKME1rk9lvHSE+hmThWkwTEXtm2dXXr/el1z0lM6NDvXEPlodvw5SIuj
         ktuQ98q/zZmXwWWp2QkJ77u9sngkHcTUMpux5k2DmP8gdJWLQQ4RJU3hjVyQvlT3/yPI
         IK8oTCGOyZVLYyT9YbY9mgDTbQvF9Hb5887JozaLuFw5+K+e0mttfRk4Kkk+ltvSItk8
         52dVoQpxAC0f2PN9b71Y+83IEyxH4+kuo0r2enxIl0RcDTg0V0ldQwhskD1hbgof/FN1
         UtM/mrRQaI9iH93wxfzmCSIEYMa7eJvcw60d0H1E2CWI97eu3RlHZ/Bp/7kvh/csifLh
         uE3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681226987;
        h=content-transfer-encoding:to:subject:message-id:date:from:sender
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jO+/r/ORU0mzQcMEmskJcdmDbxjYUiARS4OFJvuOdMQ=;
        b=rIDgF3tL3ROxxupiaDs5UqkLeK8GeBEEgB37q/WwaUnjOcAsU1bx9HXH2X30Wb2hNQ
         fJVUzKMVDvhiJYNqMdnXHCBi0Vlm8lwJuHI2Tjr7JMcrh9Wrt/PaRKyZinmhzvI+NWZT
         1mCMv8+oGlBAcsuc/tyATLPS4SK1G9BFQGJnAdDtG4Yudz9VA5wzGv7jIgAXMNk6cH67
         Z+LUBwRn1Zy76yxZD36FQ3ShnQIKQ7ufgMk8iaL4HuMsV7FQbIpd/gu548XDl8owwSqv
         qSkAS7Us6ZmKaT77lRdjv1KvkNXQmwU1TGaX+o1NgeoYHsxcI+KcPnaV9WUJT2+z+1gJ
         IRlA==
X-Gm-Message-State: AAQBX9cneWRxIgIgqtwtOYgoktows9vrfkTyzTiX7io65FsR4stZHAd0
        kYgm9asFn+qaFfZdF17VMHSMq8dWiLvBo9lQ2OI=
X-Google-Smtp-Source: AKy350bXgbcvprj12etHJXAv+uz62GtsAzpewncOVJhA5kjUfsSxXvRmkphC/TUFJtDaxHbb6sVX0VYuB1uuvaP3uv8=
X-Received: by 2002:a17:903:22ca:b0:1a4:f282:91c7 with SMTP id
 y10-20020a17090322ca00b001a4f28291c7mr3753827plg.6.1681226986815; Tue, 11 Apr
 2023 08:29:46 -0700 (PDT)
MIME-Version: 1.0
Sender: kalunjoku610@gmail.com
Received: by 2002:a05:7022:525:b0:5f:9ffa:b8c0 with HTTP; Tue, 11 Apr 2023
 08:29:46 -0700 (PDT)
From:   Dina Mckenna <dinamckenna9@gmail.com>
Date:   Tue, 11 Apr 2023 15:29:46 +0000
X-Google-Sender-Auth: in3i1pb8dLzkxJWngdYIEG31on0
Message-ID: <CAM+63+00yYvP_gza0k+7fjNi7FASUZn7pb5LxWWcuCYU2HRmrw@mail.gmail.com>
Subject: Hello,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: Yes, score=6.2 required=5.0 tests=ADVANCE_FEE_5_NEW_MONEY,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,LOTS_OF_MONEY,MONEY_FRAUD_8,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,UNDISC_MONEY autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:644 listed in]
        [list.dnswl.org]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [kalunjoku610[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [dinamckenna9[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        *  0.0 MONEY_FRAUD_8 Lots of money and very many fraud phrases
        *  3.0 ADVANCE_FEE_5_NEW_MONEY Advance Fee fraud and lots of money
        *  3.1 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: ******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello my dear,

 I sent this mail praying it will get to you in a good condition of
health, since I myself are in a very critical health condition in
which I sleep every night without knowing if I may be alive to see the
next day. I bring peace and love to you. It is by the grace of God, I
had no choice than to do what is lawful and right in the sight of God
for eternal life and in the sight of man, for witness of God=E2=80=99s merc=
y
and glory upon my life. I am Mrs. Dina mckenna. howley, a widow. I am
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
my late husband, the sum of ( $11,000,000.00, Eleven Million Dollars
).  Having known my condition, I decided to donate this fund to you
believing that you will utilize it the way i am going to instruct
herein. I need you to assist me and reclaim this money and use it for
Charity works therein your country for orphanages and gives justice
and help to the poor, needy and widows says The Lord." Jeremiah
22:15-16.=E2=80=9C and also build schools for less privilege that will be
named after my late husband if possible and to promote the word of God
and the effort that the house of God is maintained. I do not want a
situation where this money will be used in an ungodly manner. That's
why I'm taking this decision. I'm not afraid of death, so I know where
I'm going. I accept this decision because I do not have any child who
will inherit this money after I die. Please I want your sincerely and
urgent answer to know if you will be able to execute this project for
the glory of God, and I will give you more information on how the fund
will be transferred to your bank account. May the grace, peace, love
and the truth in the Word of God be with you and all those that you
love and care for.
 .
I'm waiting for your immediate reply..

May God Bless you,
Mrs. Dina Mckenna Howley.
