Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 798FC750997
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 15:29:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231786AbjGLN26 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 09:28:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231144AbjGLN25 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 09:28:57 -0400
Received: from mail-vs1-xe2a.google.com (mail-vs1-xe2a.google.com [IPv6:2607:f8b0:4864:20::e2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33BB9C0
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 06:28:56 -0700 (PDT)
Received: by mail-vs1-xe2a.google.com with SMTP id ada2fe7eead31-440bc794fcdso2296551137.3
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 06:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689168535; x=1691760535;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=87K7amkMHbjc/TSrlnoYqkgfLeUaAGU8Un4XNtOlTyM=;
        b=QzCFrq1xKAO/ppkv52Z0jmiHqjsmK82k9ksoGxwmVHY8zYekWFQIKUE24cK+L+v5gn
         yCnwYeCUyFRtUT5oBBI6nQ0aYOQ/Y3xC/5BnBL3xoG+Nhs4saGocLrfUOT36VSk74rKD
         dipq42AQBk8Ejxw3Nz1pv86f8P4cPP5cyZs88CEAvN0u4lv6g9ue98Y2XL3fiyuggOX7
         kKf8hc1FSBTrXE6jLkEO6XFL9S6/Dmv9zwMtKPFieFR53t0dF195ATI+clSwyLcmY7ZS
         M2YRno4KWFg7WSDNJ2kSNQnUtz68wILaVuHSUuHA7tZpn4STdfgX/Dc8reEDG7YgLA4o
         XSjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689168535; x=1691760535;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=87K7amkMHbjc/TSrlnoYqkgfLeUaAGU8Un4XNtOlTyM=;
        b=iYCVpmpED4TlfGJ3M2a8MjrwCYnSDmql0xnAVjryXTOwR42E/h3UsfFqWxViKWIfYL
         EEN+BqhtWffvmjRhFLuZsT8pbKEAoBd2NJaqAM9wJqrkNT3OU5ywxCam4IXmqxGufoK9
         S8o+T2e19R0vPfqr9NE3sXBk/KUwyx67H1WsqJUMpOkJ5FAfnDBkWfLJxLnXGurJh075
         MW/dCZiacs4xt5FUjrrYPfxxXpMTBTMDaeKEaGmBZy/J+i++ig8oR+zbMGajuVIAgw7R
         eXGj90mrF+QxzFFGBhle1PJQx+3402vq/iwDcWGH/B+mQLzdQgkDrmgpVmA0WEz4O9Jd
         kHKg==
X-Gm-Message-State: ABy/qLbltkUuSBIrAX3gkwnEoPGV4+Kvjbnfj+s0sA5cLlwCMVYM0Z2c
        RXv7b5W0pkuut5cbCgzbDtKe60PBvFUwKftfCAs=
X-Google-Smtp-Source: APBJJlFEgFQ0V6KDImUFKGoIhXBUptZcHhO56UZ5q5usANsSOKfkjbApFd3WJu200YwXXKF7q70gvu6M23qNLOU+3u8=
X-Received: by 2002:a67:e296:0:b0:443:8549:163e with SMTP id
 g22-20020a67e296000000b004438549163emr9238995vsf.34.1689168535048; Wed, 12
 Jul 2023 06:28:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:b250:0:b0:635:e001:fdd5 with HTTP; Wed, 12 Jul 2023
 06:28:54 -0700 (PDT)
Reply-To: osbornemichel438@gmail.com
From:   Johnson <hpeter3513395@gmail.com>
Date:   Wed, 12 Jul 2023 14:28:54 +0100
Message-ID: <CANL2cbmNx1UvwXfmw+=w6jyY5k2yp0cL7sCzT4wyzthi3AgueA@mail.gmail.com>
Subject: Greetings to You ,,
To:     osbornemichel438@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.7 required=5.0 tests=ADVANCE_FEE_2_NEW_MONEY,
        BAYES_50,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,LOTS_OF_MONEY,MONEY_FREEMAIL_REPTO,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: *  0.0 RCVD_IN_DNSWL_BLOCKED RBL: ADMINISTRATOR NOTICE: The query to
        *      DNSWL was blocked.  See
        *      http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
        *      for more information.
        *      [2607:f8b0:4864:20:0:0:0:e2a listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [hpeter3513395[at]gmail.com]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [osbornemichel438[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [hpeter3513395[at]gmail.com]
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
        *  1.6 MONEY_FREEMAIL_REPTO Lots of money from someone using free
        *      email?
        *  2.0 ADVANCE_FEE_2_NEW_MONEY Advance Fee fraud and lots of money
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This email is being sent to you as a result of our security  measures
and our recent record indicates that you are eligible to  receive an
optional repayment of Seven Hundred and Fifty Thousand us dollars
which has been found in the apex bank registered under your  name and
email account ,been your unclaimed Inheritance / Wining/  (lost money
owed to you) waiting to be transfer without claims.

Complete legal name......................
Direct telephone ..............................
And Postal address .............................
for possible consideration to enable us process the transfer
immediately to you position .

Thanks and anticipating your urgent respond

Yours Truly,

Mr. Osborne Michel.
Section/Assistance
USAfroEuropean Debit Reconciliation Office
ID 447 UK-London.
