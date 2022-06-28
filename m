Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB85C55D838
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:19:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231248AbiF1Ho7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jun 2022 03:44:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242502AbiF1Ho5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jun 2022 03:44:57 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E255C5FA4
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 00:44:56 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id b26so3963496wrc.2
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 00:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=5H1mguhlGlNE+GWEBFzmUzu3jZEIPkPLdTRT9w2uOKo=;
        b=BJgrfuvwpW56jMN72obAVA/0xnNs8+8gUvT0DGMobWm10k01IUnnkXIlHvq8hitxjq
         4p7H1zi628KcAUuDBSoFJf/gBFOIsbXRc6w4hXnWfGG0V2Cx4TdQeRM3ydj1mc9RT7I7
         9tvj9qOPSI7H+ocEyWnpH18gizXlg3Yl1bVKV//jXuK7hKRpnUZuWDK2X+NybqXBNyCK
         SHH9b8JRXd6JlJRlV3y6dV471yC8KdAYJSJ0Sww9xTYo39DffPofokP8ICy4XA6Z4NHZ
         K+a1atmF1UVunHn2fZw4ELyICSxp85SJteX7Rpc6Impf6SBZt93wcvySrxtf0yddZ5c2
         mfZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=5H1mguhlGlNE+GWEBFzmUzu3jZEIPkPLdTRT9w2uOKo=;
        b=12TApb9NlvNoqa1C8fTh5rg1Tt9eYwUxu+4VBeKwLM2Qqo11ZfwDHfSsoCl/EZRZgW
         RigH4WPGR5+0z3xToh7xeIZfnqthv47W/KSltSdQQzyLLOz0M0m8JEi/eH2AqaJI+qn4
         HYQdS2dsPqh1JmPufx3fhNjnI7/TCtv8z/Lw2vffT3pA8mf8tBZyZKycwaY7EhOxy5uE
         8kggr+8jVSvm8fd65q3zoUhTxoDnIXq3AGIFPrqpdLSKhCcoOGsyP4DRZCJs+c2PKW4T
         V+Uy4ebO3Ypl/2ZQ3o4YWcw0IrNZxyJIfqtGa3O49c/HaSJe4Tf+CQF01S9Yr452zCp2
         xTLw==
X-Gm-Message-State: AJIora8xqs22arH78IEi5pXj7PQH8QF6r6Ei9R90QyJtwgt/DO9fe+u1
        b/cbMKToNeflqv08vkuoZ119Mw==
X-Google-Smtp-Source: AGRyM1s7Qvx379UP+GqEp+cBmTCKDD9iL5YJ3vtgweBBsYExkbzbeVr/D3R6itSfsxK0g5/0q+qMmA==
X-Received: by 2002:a5d:6487:0:b0:21b:983c:5508 with SMTP id o7-20020a5d6487000000b0021b983c5508mr15829304wri.185.1656402295454;
        Tue, 28 Jun 2022 00:44:55 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id k31-20020a05600c1c9f00b0039c5642e430sm16508027wms.20.2022.06.28.00.44.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 00:44:54 -0700 (PDT)
Date:   Tue, 28 Jun 2022 08:44:52 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Stefan Wahren <stefan.wahren@i2se.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Peter Robinson <pbrobinson@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH V4 06/11] mfd: bcm2835-pm: Use 'reg-names' to get
 resources
Message-ID: <YrqxdAgCKRL3tCTg@google.com>
References: <20220625113619.15944-1-stefan.wahren@i2se.com>
 <20220625113619.15944-7-stefan.wahren@i2se.com>
 <YrnZUqQsKVVGHUGh@google.com>
 <7ef987c7-1d99-bd63-f7fa-66bd12811716@gmail.com>
 <4607b996-51ac-0b3f-e046-5611774362ca@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4607b996-51ac-0b3f-e046-5611774362ca@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 27 Jun 2022, Florian Fainelli wrote:

> 
> 
> On 6/27/2022 9:28 AM, Florian Fainelli wrote:
> > On 6/27/22 09:22, Lee Jones wrote:
> > > On Sat, 25 Jun 2022, Stefan Wahren wrote:
> > > 
> > > > From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > > > 
> > > > If available in firmware, find resources by their 'reg-names' position
> > > > instead of relying on hardcoded offsets. Care is taken to support old
> > > > firmware nonetheless.
> > > > 
> > > > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > > > Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> > > > ---
> > > >   drivers/mfd/bcm2835-pm.c | 61 +++++++++++++++++++++++++++-------------
> > > >   1 file changed, 41 insertions(+), 20 deletions(-)
> > > 
> > > Anything preventing me from applying the two MFD patches?
> > > 
> > 
> > They are self contained and cater to being backward/forward compatible
> > with Device Tree changes, so not really no. If that is how you want it,
> > please proceed in taking the 2 MFD patches and I will apply the rest.
> 
> Actually there is a dependency between patch 10 which uses pm->rpivid_asb
> and patch 7 which introduces it. I can give you my acked-by for patches 8-11
> so you can take them via the MFD tree if you would like.

That works too.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
