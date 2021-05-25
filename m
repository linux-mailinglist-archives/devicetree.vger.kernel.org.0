Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C74233908DE
	for <lists+devicetree@lfdr.de>; Tue, 25 May 2021 20:23:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232034AbhEYSYq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 May 2021 14:24:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229704AbhEYSYq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 May 2021 14:24:46 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39318C061574
        for <devicetree@vger.kernel.org>; Tue, 25 May 2021 11:23:15 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id h3so4522440wmq.3
        for <devicetree@vger.kernel.org>; Tue, 25 May 2021 11:23:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=hSZqZuABEzIvON8ojKdkELp1gOSuX/1cHHTTz9t4Xgw=;
        b=BXGwq6vDLk02vGw0975Wfa6RDPf6ZeJxD19pr+uk0NXQfD4E7T94BDGcujZo1/AdUX
         W7wbYbWIKX4Y6yki71HDjZEmre932CVI7D01kOwX+KJI2PS6hgaixTiOMLt4OVniz4EN
         JBvpFgB8rUPiQGC5+7WF+HoSc0hruFJG98/rbDsncHr5UtPg/sbYmiGc5quq0MukEmRZ
         Z9r/CpozbSCvK5Vq5ZjixVZzAcN8R+GnpL7w2bhBzI6WMZuRIwuIlpnyxpVywtk8EdAs
         O3YmGHQlZBaB9hv8Y2MrNcb1/k0Evl8muNs5UsajOx2fdwzkCXFmBnQzllrluuEkytEr
         qJ1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=hSZqZuABEzIvON8ojKdkELp1gOSuX/1cHHTTz9t4Xgw=;
        b=O1MmDDg65oSQrElimcUKcmd/qtQy2huIv9bM6Sazm1aw3YfQQf7Bf2UXJayjiOW2/7
         O6ZGRM2s8koe9iCuD9hvMyKiTpXN1o/Xb4SCOFjAxyTEvXx09keV41FzGWXIfjIg56zM
         wIMw3rFulUxiuFcHCTTfpJPo1wiKabsOvd1CGrFZtgtLxRRonCRjSvkKPRDltuKtN/wv
         oXecxwviFXdCsfcvwQFmjpf25gDEt4vGA7tmx4HvE7JUnFVKjGUWx8Yl5uHn5uixQART
         OckyC2S4W0vtHHBazGj9MKHeUXvpCnyhuf9Q2sgHpwwMSkID2Bp9acot+BtUGSMtbkK3
         bHFQ==
X-Gm-Message-State: AOAM5314XBXtN0dPjhx68cnZ4PNSAzMdKVQFKTSNF04hcXECbhfY7TWL
        hIJcGBZNz0VunJH+BHOEyo/dxQ==
X-Google-Smtp-Source: ABdhPJzFzDFyTevYMtBDV0/rex1lDMsYaD5IAdYaJw4DgVU/+RI82ttETzAiyCDf+z03EVE5SawnPw==
X-Received: by 2002:a1c:b384:: with SMTP id c126mr25214598wmf.110.1621966993714;
        Tue, 25 May 2021 11:23:13 -0700 (PDT)
Received: from dell ([91.110.221.223])
        by smtp.gmail.com with ESMTPSA id i5sm17414871wrw.29.2021.05.25.11.23.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 May 2021 11:23:13 -0700 (PDT)
Date:   Tue, 25 May 2021 19:23:11 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Min Li <min.li.xe@renesas.com>
Cc:     "sameo@linux.intel.com" <sameo@linux.intel.com>,
        "grant.likely@linaro.org" <grant.likely@linaro.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH mfd v1] mfd: Add Renesas Synchronization Management Unit
 (SMU) support
Message-ID: <20210525182311.GE4005783@dell>
References: <1619466246-11198-1-git-send-email-min.li.xe@renesas.com>
 <20210519080807.GH805368@dell>
 <OS3PR01MB6593170DE2814540F6C3F900BA259@OS3PR01MB6593.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <OS3PR01MB6593170DE2814540F6C3F900BA259@OS3PR01MB6593.jpnprd01.prod.outlook.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 25 May 2021, Min Li wrote:

> > 
> > > +/* Current mfd device index */
> > > +static atomic_t rsmu_ndevs = ATOMIC_INIT(0);
> > 
> > Counting/indexing this way is generally not good/required.
> > 
> 
> Hi Lee
> 
> Since there could be more than one devices attached to the system, I am using this counter to track the index of each device.
> How would you suggest to do it? Thanks

Why do you need to track how many there are?

We don't usually do that at all.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
