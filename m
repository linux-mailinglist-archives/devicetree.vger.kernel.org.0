Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F21EC746499
	for <lists+devicetree@lfdr.de>; Mon,  3 Jul 2023 23:03:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229914AbjGCVD5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jul 2023 17:03:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229494AbjGCVD4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jul 2023 17:03:56 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB808E5B
        for <devicetree@vger.kernel.org>; Mon,  3 Jul 2023 14:03:54 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id 5b1f17b1804b1-3fba5a8af2cso50328385e9.3
        for <devicetree@vger.kernel.org>; Mon, 03 Jul 2023 14:03:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688418233; x=1691010233;
        h=to:subject:message-id:date:from:sender:reply-to:mime-version:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fdaGRKUmPYcfz5L4eAMNXgr6p+xMBbPrGJDyeVTp3D8=;
        b=l8rpBRFaPew0YqV7DZanIpuWeodaX9/qRAqEPdSjup30SHA/ZJZ/b5gw4WL/BYedV+
         etj07elNs84lZ2uLofmkuK10CbLXFv0uOBv0NwD5kP+8gI1vlHvfOGDK18q0NTaVzANz
         ezb3cECBKFmYJgNC7q0iaUDcwhepB5ltTmoGunKQIDxCttV0tsLUSVSKtSinOZ7PhIkL
         QCmW8F2OgzWhshEldyIKaY2BPGcEzF0J/ysZAC3+5q76QXKNwH9dnKZzOS9U7BMEOBZZ
         eAI0IMyzgNtKJ8NJWAW5h9S0yB9metfDOErzv6CJiFQSF45LQi1RswSAUwa/R6lOWARg
         DrqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688418233; x=1691010233;
        h=to:subject:message-id:date:from:sender:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fdaGRKUmPYcfz5L4eAMNXgr6p+xMBbPrGJDyeVTp3D8=;
        b=MOSC0W551bpguJ/pmdkZJxFS7IZgSKCyAWikaiZH7dxBWlGJGgn1yUCSTMEKQVfZuZ
         YaaKsI2W0ePQ2eYVl1TPVWdQYP0UWsdEbndAf1ukaMHwGqda0HfEmu1MdmikqYnMxlSz
         yWGMadsvTznlAx1yWNbqSh/ziZ0ib7A+CwPOtAlCXwmblUp4eYmQtUEKr8YR9cv2HV83
         UZ8Z3y9/tT7JAHigKrfZm2/4bfkWDwesg6//6KsekpM8NYGLJENoNaalu+cKg7pJ2Otm
         z7O9wF6rW5UTxsjKTlthLW4S+jlM6tRi6nl0iVOyKzmPPC5oIFAFmaYVOcgXcopdJYwj
         dqcw==
X-Gm-Message-State: ABy/qLaT+Pl5gLtx+Dc1MCOiQAkxr9w1ODOIB6OGdJ6MQvn8DPcDEcDb
        XNiSg/l/822Ypqa2cGlRDe6n1cm6Czpn5M1/bgQ=
X-Google-Smtp-Source: APBJJlEx8MqAhBLAdQe6RHpmr0KNXKocLLpAJ8+mDOb29w6QTXAEnnwBQ6p7XDIMpBsLnEmwE0M7F3YOfA0XfBkoOIU=
X-Received: by 2002:a7b:c40d:0:b0:3fb:df34:176e with SMTP id
 k13-20020a7bc40d000000b003fbdf34176emr637822wmi.31.1688418233422; Mon, 03 Jul
 2023 14:03:53 -0700 (PDT)
MIME-Version: 1.0
Reply-To: causanillerovira.mariajose@gmail.com
Sender: wonnnmann902@gmail.com
Received: by 2002:a05:6f02:305:b0:4d:f8b0:aa1a with HTTP; Mon, 3 Jul 2023
 14:03:52 -0700 (PDT)
From:   Causanille Rovira <causanillerovira.mariajose@gmail.com>
Date:   Mon, 3 Jul 2023 14:03:52 -0700
X-Google-Sender-Auth: aLwrCON7j_X6v7DfGHMli5hNAIY
Message-ID: <CACTRgumbgfmcSrLCQO-TNXPzUV6EBjrjc4dvFmioayAEQK8aYg@mail.gmail.com>
Subject: Re: beloved
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.3 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,LOTS_OF_MONEY,MONEY_FRAUD_5,MONEY_FREEMAIL_REPTO,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_MONEY_PERCENT,
        T_SCC_BODY_TEXT_LINE,UNDISC_MONEY autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:344 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [causanillerovira.mariajose[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [wonnnmann902[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  1.2 MONEY_FREEMAIL_REPTO Lots of money from someone using free
        *      email?
        *  0.0 T_MONEY_PERCENT X% of a lot of money for you
        *  3.2 UNDISC_MONEY Undisclosed recipients + money/fraud signs
        *  0.0 MONEY_FRAUD_5 Lots of money and many fraud phrases
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dearest beloved!

I am glad to know you, but God knows you better and why he has
directed me to you at this point in time, I got your email from the
internet. I am Causanille Rovira Maria Jose; from Spain residing in
Burkina Faso since 19 years ago as a business woman dealing with
mining equipment for gold exportation. Since three years now I have
been suffering from Lungs Cancer disease and the medical reports is
very critical due to the gravity; my aim is I needed a God fearing and
honest fellow to entrust my little earnings to for the benefit of the
less privilege ones.

I am having US$9.5 Million; in a bank here in Burkina Faso which l
labor for during my state of good health, but my mind is not at rest
because l do not trust anyone around me since l lost my husband and l
have not exposed this message to any person(s) 'am sending this
message through the help of a nurse laptop at the hospital on my sick
bed. My purpose is that I want you to apply as beneficiary to these
funds then 60% for your labor and 40% for Orphanage homes and  less
privilege  ones anywhere of your choice.

As soon as I receive your good intention I shall give you more
information and the person to contact who will provide the necessary
documents to enable you to apply to the bank. Waiting to hear from you
for necessary process, May the Pace of Almighty God be with you.

Best regards
Causanille Rovira Maria JOSE
Please reply to this my private email: causanillerovira.mariajose@gmail.com
