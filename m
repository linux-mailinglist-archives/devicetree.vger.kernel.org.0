Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13A6D53011C
	for <lists+devicetree@lfdr.de>; Sun, 22 May 2022 07:40:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238643AbiEVFkB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 22 May 2022 01:40:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238608AbiEVFj7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 22 May 2022 01:39:59 -0400
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1004366B7
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 22:39:57 -0700 (PDT)
Received: by mail-ej1-x644.google.com with SMTP id gh17so9560685ejc.6
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 22:39:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:sender:from:date:message-id:subject:to;
        bh=boZL8sxWa4d1tSO8Vkf2XAGcnSBFA0JviefhzZinYdg=;
        b=IagZroa2NbpBIlmoe5o7QWP1jUCx8An44/n7ocRPqN1iuNikWv81zPKh7w3X7SLaXb
         EYS2dJNNn+P7kW98Dz/S0ahTDOFxRTdHiog0eiY/t4Hc/JEde99MSasiJiI2zrUBsdYc
         Jx4ZlJkkoV+duLVHH7hvDvza720wkCEa/lJShuU70Yll6f81Pf8/sdNv6O3orIfVAEhh
         9D+EK6BGYDkPi4S7PzsxnT6eCsTnVwSZc2o/7qoPwswJaXNDHZZiOgfUUZxvhKMFl/0F
         V8bExtdn4KOK/VlNE3a1ENCW8ZSrup+rJ7lQpKmI80g+5JOlWIPZeBK14gcwYharSUe1
         fYJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:sender:from:date
         :message-id:subject:to;
        bh=boZL8sxWa4d1tSO8Vkf2XAGcnSBFA0JviefhzZinYdg=;
        b=e4gD452WaUOPtsB7occe7At8CzG1fctzbDW9a4K5xK6DbFWig4OVZKyrCKMpFzFxc4
         r95uK8uBygPMT0HtAL6GpUk25zbOgNaZYimDh9AsEQhQz7Ug3gY5h4pC7iYpmlGGKvzm
         TGaXxlXtJDZgzQzXyzTyqXJK+3G6r0E1BYSZZjb8u6n8PtUi9jw1QZv/xr4d6bcKsWrK
         8gpTUjyn9ac/BuYOkivyMJK2/Hy2Hd1qQWqOs6ddRy1ugJEYw/GZv66UU+FEcpG8tzmN
         JzI3hRG6gvjdL9hQoE/YtRpG05IzJLMsI3snEoXlfYFK/p/lh3DaeTc56LUExsZmUqSq
         K/FQ==
X-Gm-Message-State: AOAM531OXmYG4OTOUrj0Usdoz8SMhatX5cvZQZHa2G9MZVrSzrP73TYd
        Jzlqq1QgrCrOfAkopvgd/QP/IA9AMjtJrrxc2hI=
X-Google-Smtp-Source: ABdhPJxyg7Maijq0FHcEXN3mcPZeyGd+lApimk88Q02pRSSHET/5T/+4X23eij3uTJ+faG34U6HqZp4X1bKwQTjntkQ=
X-Received: by 2002:a17:906:5783:b0:6fe:a263:f648 with SMTP id
 k3-20020a170906578300b006fea263f648mr10535540ejq.493.1653197996059; Sat, 21
 May 2022 22:39:56 -0700 (PDT)
MIME-Version: 1.0
Reply-To: azzedineguessous1@gmail.com
Sender: dr.daouda.augustin74@gmail.com
Received: by 2002:ab4:a448:0:0:0:0:0 with HTTP; Sat, 21 May 2022 22:39:55
 -0700 (PDT)
From:   "Mr.Azzedine Guessous" <azzedineguessous1@gmail.com>
Date:   Sat, 21 May 2022 22:39:55 -0700
X-Google-Sender-Auth: Wn8ffBbzpt3_OJ4nVcbyYucnbh4
Message-ID: <CA+X91kUD2g_xGrhRAAu+kYG9+Jgs+BCqVvZQ0Lv9yra2zcxs=g@mail.gmail.com>
Subject: VERY VERY URGENT,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=6.0 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,HK_NAME_FM_MR_MRS,
        LOTS_OF_MONEY,MONEY_FREEMAIL_REPTO,NA_DOLLARS,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,SUBJ_ALL_CAPS,T_SCC_BODY_TEXT_LINE,UNDISC_MONEY
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:644 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.5 SUBJ_ALL_CAPS Subject is all capitals
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [azzedineguessous1[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [dr.daouda.augustin74[at]gmail.com]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [dr.daouda.augustin74[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  1.5 NA_DOLLARS BODY: Talks about a million North American dollars
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        *  1.5 HK_NAME_FM_MR_MRS No description available.
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  0.0 MONEY_FREEMAIL_REPTO Lots of money from someone using free
        *      email?
        *  1.4 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Good days to you

Please kindly accept my apology for sending you this email without
your consent i am Mr.Azzedine Guessous,The director in charge of
auditing and accounting section of Bank Of Africa Ouagadougou
Burkina-Faso in West Africa, I am writing to request your assistance
to transfer the sum of ( $18.6 Million US DOLLARS) feel free to
contact me here (azzedineguessous1@gmail.com) for more clarifications
if you are really interested in my proposal Have a nice day

Mr.Azzedine Guessous
