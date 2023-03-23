Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4289A6C7015
	for <lists+devicetree@lfdr.de>; Thu, 23 Mar 2023 19:17:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230059AbjCWSRd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Mar 2023 14:17:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231288AbjCWSR3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Mar 2023 14:17:29 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BD6930EA
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 11:17:28 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id l7so5178672pjg.5
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 11:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679595448;
        h=to:subject:message-id:date:from:sender:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PWjuUdddXVIX3wjRB5dWQS9F349qmdJdF939/C+mfBA=;
        b=k4ZvL5BwPsQsBOWg04wsJF82VFRjv31uids7lz9tW/Z0lp5IcpXR76sdLUCfqWKc6p
         TRntF/zBa4lKZTa1KxloTWd1EqPJXAlRpyYnUAdPBqp1SS86Mh5q9FWHHNUDxZLalZeO
         gLZ9hNdfxu2NsDhUGciCtTX9nutKsAk2EbA35JD4TzHdZH9grDHn5HoC4q19ItB2mEIC
         PY+cyxus50f/HThRD6llFDhLKznTnpBk5YWdUZxPEMzXdcCJulscOxMmLDObER+JAsaW
         yadl7hFeqeATpZH1uGlnwKjKJse5sXg35dx10KJzJA9EryFTNsOR73Jf6+sAn/EgE+eI
         HzlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679595448;
        h=to:subject:message-id:date:from:sender:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PWjuUdddXVIX3wjRB5dWQS9F349qmdJdF939/C+mfBA=;
        b=LoROfOOMy6i/XjKjYKKbSOiFuSPQ88OnxtgOJJvx4ytFwwkcpA44GYOYt7aUjUA+O/
         9KEyss5fsD8q2NZvBgHPE07UwlXndUU72wCYw1sFdVK8WAPBzYwDRmPBNSOv72xYIaZd
         2DjG21mseVkJlgYZy0yXHzkpoXcvodTiy3MBCtUqSLKkNbWdf3q71E2ANejxkaM5pJUR
         uFqJFt4aONNVG7XAuMLzbPEpeBWBFU7LVEbEFHlaN9Qijr9zq521LXVxplK3qCCi4V5W
         IZY6zoJniZOcNATevVg8qTsk6ESruZTftERKRxwEcSKUv2Mx7GfcQFJXe61Q0bPHvIq6
         u8JA==
X-Gm-Message-State: AO0yUKVp+UHDZdInfm6sudQxhyeVjxuAabkf0kpTtDf8T/2ll6LYnfPr
        ZCbH/W+lH1GzP18g3r5XgSm17UeBWiQ5Il+U6GM=
X-Google-Smtp-Source: AK7set/97yoX8AFCg3s5MpoHYIJvvTJc5wu1AsTRbZIInVC6axnqwYMwZolgtjRJX7D8Q5tP9x5KJ9RlIvNZGLXWqCE=
X-Received: by 2002:a17:902:daca:b0:19f:3b0f:4d8d with SMTP id
 q10-20020a170902daca00b0019f3b0f4d8dmr3132662plx.7.1679595447560; Thu, 23 Mar
 2023 11:17:27 -0700 (PDT)
MIME-Version: 1.0
Sender: mrs.alicerobert@gmail.com
Received: by 2002:a05:7022:2191:b0:60:97a8:441b with HTTP; Thu, 23 Mar 2023
 11:17:27 -0700 (PDT)
From:   Dina Mckenna <dinamckenna9@gmail.com>
Date:   Thu, 23 Mar 2023 18:17:27 +0000
X-Google-Sender-Auth: rjgXFMdlYw1yAOGWVW91m2_6KCk
Message-ID: <CAGnJkm_Ghdiyo7390vborWy=XwfQJ0nt+wrtYNP=KtKjBfNTDg@mail.gmail.com>
Subject: Hello,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=7.8 required=5.0 tests=ADVANCE_FEE_5_NEW_MONEY,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        LOTS_OF_MONEY,MONEY_FRAUD_8,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        UNDISC_MONEY,URG_BIZ autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:1032 listed in]
        [list.dnswl.org]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [dinamckenna9[at]gmail.com]
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.9 URG_BIZ Contains urgent matter
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        *  2.0 MONEY_FRAUD_8 Lots of money and very many fraud phrases
        *  3.0 ADVANCE_FEE_5_NEW_MONEY Advance Fee fraud and lots of money
        *  2.0 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello My Dear,

 I am sending the same message to you. My names are Mrs. Dina Mckenna
Howley, a widow diagnosed with brain tumor disease which has gotten to
a very bad stage, Please I want you to understand the most important
reason why I am contacting you through this medium is because I need
your sincerity and ability to carry out this transaction and fulfill
my final wish in implementing the charitable investment project in
your country as it requires absolute trust and devotion without any
failure, which i believe that you will not expose this to anyone or
betray this trust and confident that I am about to entrust on you for
the mutual benefit of the orphans and the less privilege. I have some
funds I inherited from my late husband, the sum of ( .$ 11,000,000.00
). deposited with the Bank. Having known my present health condition,
I decided to entrust this fund to you believing that you will utilize
it the way i am going to instruct herein.

It will be my pleasure to compensate you as my Investment
Manager/Partner with 35 % percent of the total money for your effort
in handling the transaction, 5% percent for any expenses or processing
charges fee that will involve during this process while 60% of the
fund will be Invested into the charity project there in your country.
Therefore I am waiting for your prompt respond, if only you are
interested in this humanitarian project for further details of the
transaction and execution of this charitable project for the glory and
honor of God the merciful compassionate.. Your urgent reply will be
appreciated..

God bless you.
Sincerely Sister in Christ
Mrs. Dina. Mckenna Howley.
