Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C29875AC38E
	for <lists+devicetree@lfdr.de>; Sun,  4 Sep 2022 11:08:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231414AbiIDJIH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Sep 2022 05:08:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229617AbiIDJIG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Sep 2022 05:08:06 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B08D48CB3
        for <devicetree@vger.kernel.org>; Sun,  4 Sep 2022 02:08:06 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id bd26-20020a05600c1f1a00b003a5e82a6474so4105140wmb.4
        for <devicetree@vger.kernel.org>; Sun, 04 Sep 2022 02:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:sender:mime-version:from:to:cc
         :subject:date;
        bh=RVrECPTAglacz8/F5ox4rQqpB617hto8gWdiGMD1Akk=;
        b=ib5VLGTZqp1cj2+EmJSws6M2sK+lrG/ogFrJb/E9hKyTFiF/T0o3C30zhk7InnpYhE
         uSvxFSVH54MfeP8f/2hRe0XUyYgVbFJUXqkbjNCQATBR1LYEbUiAex+TvRNqcRG+HWTr
         sAF+ne/dXUMqxnBFqFCjPbz/W5lPrdAFaSmkII7qPA2ZArNJoLNodJAQ3F1xejLwW545
         MPKbIB0+MkdE+WVdp6xA5h0FQyLEohuG/9+piNg5e6iEhF4NTrWV1deGOQM7JEXrFF3l
         2vhLi7WJtws7QUD9LmdpONakN4RpjdXUTaNec4SbiIIWUAR4feRO7ZgjdhLH54z1vEAZ
         MYKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:sender:mime-version
         :x-gm-message-state:from:to:cc:subject:date;
        bh=RVrECPTAglacz8/F5ox4rQqpB617hto8gWdiGMD1Akk=;
        b=tUjcJ0vvRpBVowznDhjl3c7gugiqZYFd4eIf5Pv/yRFKQrjte3BCYX0AsV8bRa8SCP
         DQZkBA0NoRJTqxfg0seubvxPw3DLFby44/Xqp/ySxBle+gUOc01+C/pmwZMOk9FyLHgU
         15FfxkYwpOVmxwmmc5sDV10UoqqY/NCNija4JAmeHIhSnFWq4yXZqHl5BC9HDNJRC3gE
         rp0CiNJ8SI/bD7pJfWLdwviWasiCh3x6dAWQPWhz+AgDxc9UORVT0Fk8yRqpE+9hjrce
         2mt0Q0bLOxiC1z2fD7AW2DwH3BXttRXPv56VkiTLoIXbVMISAh0irLgbqyuBgNNnXDm/
         pIcg==
X-Gm-Message-State: ACgBeo2Q3S+0hd66K9+MlEqEQFHjpeUpOgXaBl8nz85hIwXj4urDxsHt
        3iuJ19RHVkAMAP6LSyM3FOCYPG3VgF7ahHT08Fc=
X-Google-Smtp-Source: AA6agR5M0lFgIc9Q6J9qpPcVvbq+LAt27UGetd7DykJBdqtL3bRO41+BE7QnjGwyJEkx/A2iRcDLWyJV0aCCArtLa9o=
X-Received: by 2002:a1c:770f:0:b0:3a5:ef7f:2973 with SMTP id
 t15-20020a1c770f000000b003a5ef7f2973mr7756894wmi.111.1662282484289; Sun, 04
 Sep 2022 02:08:04 -0700 (PDT)
MIME-Version: 1.0
Sender: leejisu81@gmail.com
Received: by 2002:a7b:c8c7:0:0:0:0:0 with HTTP; Sun, 4 Sep 2022 02:08:03 -0700 (PDT)
From:   Mrs Aisha Gaddafi <aishagaddafiaisha20@gmail.com>
Date:   Sun, 4 Sep 2022 02:08:03 -0700
X-Google-Sender-Auth: pccroueSEoOgE4RxWPD896htMmU
Message-ID: <CALfxsua1A2rsr5Xaisk+3_dG9fnV36vfTTsKs9FNUwAmKi7dEg@mail.gmail.com>
Subject: YOUR TRUST PLEASE.
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=6.8 required=5.0 tests=BAYES_80,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORM_FRAUD_5,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,LOTS_OF_MONEY,MILLION_HUNDRED,
        MILLION_USD,MONEY_FORM_SHORT,MONEY_FRAUD_5,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,SUBJ_ALL_CAPS,T_FILL_THIS_FORM_SHORT,
        T_HK_NAME_FM_MR_MRS,T_SCC_BODY_TEXT_LINE,UNDISC_MONEY,URG_BIZ
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:343 listed in]
        [list.dnswl.org]
        *  2.0 BAYES_80 BODY: Bayes spam probability is 80 to 95%
        *      [score: 0.9092]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [leejisu81[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.5 SUBJ_ALL_CAPS Subject is all capitals
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [leejisu81[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.0 MILLION_HUNDRED BODY: Million "One to Nine" Hundred
        *  0.0 MILLION_USD BODY: Talks about millions of dollars
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.0 T_HK_NAME_FM_MR_MRS No description available.
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  0.6 URG_BIZ Contains urgent matter
        *  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
        *      information
        *  1.9 MONEY_FORM_SHORT Lots of money if you fill out a short form
        *  0.1 UNDISC_MONEY Undisclosed recipients + money/fraud signs
        *  0.0 MONEY_FRAUD_5 Lots of money and many fraud phrases
        *  1.6 FORM_FRAUD_5 Fill a form and many fraud phrases
X-Spam-Level: ******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

.

Let me  use this medium to open a mutual communication with you
seeking for your acceptance towards investing in your country under
your management as my partner, My name is Aisha  Gaddafi and presently
living in Oman, i am a Widow and single Mother with three Children,
the only biological Daughter of late Libyan President (Late Colonel
Muammar Gaddafi) and presently i am under political asylum protection
by the Omani Government.

I have funds worth  [Seven Million Five Hundred Thousand United State
Dollars],  $7M.500.000.00 US Dollars which I would love to entrust to
you for investment projects in your country. If you are willing to
handle this project on my behalf, kindly reply to enable me provide
you more details to start the transfer process, I will appreciate your
urgent response through my private email address below:
aishagaddafiaisha20@gmail.com

You can also know more through the BBC news links below:

http://www.bbc.com/news/world-africa-19966059


Thanks for your understanding
Yours Faithfuly Aisha Gaddafi
aishagaddafiaisha20@gmail.com.
