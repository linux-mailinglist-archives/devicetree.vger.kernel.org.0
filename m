Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A70138C9A8
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 17:02:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237188AbhEUPDk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 May 2021 11:03:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231261AbhEUPDh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 May 2021 11:03:37 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F922C061574
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 08:02:13 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id x8so21380265wrq.9
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 08:02:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=iI+XKzlAf3f1hN1QD2LhQTdtVCnY+TpUzlIH07KWlic=;
        b=M6JM6cQpNzSU4E1Vl9k/reolNw1UiYOoJbJsRHjoSBHcn0JgpnRdxXZO7U0OZd5+MX
         HMa80350SnG6Rs09OkcxCsHy3135+dFwKX7PE4z2fy+xFdArgDmwue3OeAvAftMRehl3
         qaOfNYaXH3yPr6m112hdkADdW8GhVZHuZxwuWLg79jmjo3NCNnX8E4XXpAJa1HxSiX1q
         xlPQEfym8kXuYVwS+drfoEGZaBUsmZ/3l0gX2yS0su8Dl0Wgv88hWh/y0VYgqcRQD9kt
         q47jckayZnb6+oKsxp+6vLsDK+aFIixUbrYWiBaJKtKg6wvNuwlac0nPLT2jNWwIy9lN
         fZRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=iI+XKzlAf3f1hN1QD2LhQTdtVCnY+TpUzlIH07KWlic=;
        b=YkF5diUr+7cucKiYGbHzUdlM3TTH3u5DyJm5AI4u0j5kADX2yAvzp+1liil9dyc/Az
         n9zQ/vwA95B0N80S1uJLox4yTgFH6X5zybSQvRnMVxrLhPlOg5lO7i4nPNYTWZ93SuRg
         Fq2DiD9Jg9gDtiYN41y9FpQzU4ELHml+3yvfi3Lid/Yu2ite05QczMfJ+CbtbQju11T3
         ukapoe1yRSKXO2MtOQMXb/okfSypZ9jy4PDsJIOmppKaCUP2muldRCDX7/ryrq/wV+RU
         w05BvZn6Ayd9aTkrJ+8rMugQ/7+mOMsmmahRlukM8Bv6WZvvCa3h4OtA9x1YVearN3zY
         HcyQ==
X-Gm-Message-State: AOAM530kbSMcc2TYf7w8VcLP89eAxLENGmJqpth4MLN17RP6vV+tmQIo
        DnIOryIFCRSz2v88p8nrhHlspWni2mDEmZhM
X-Google-Smtp-Source: ABdhPJx3tewqTMW2RfQyk1ppEHB80rp4tHkrMil5Fg3e3Y8IOq1vGAesVHoKRYWNKzdZ9Lhw95Taeg==
X-Received: by 2002:a5d:6485:: with SMTP id o5mr10164241wri.163.1621609331802;
        Fri, 21 May 2021 08:02:11 -0700 (PDT)
Received: from dell ([91.110.221.215])
        by smtp.gmail.com with ESMTPSA id s15sm2904308wrt.54.2021.05.21.08.02.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 May 2021 08:02:11 -0700 (PDT)
Date:   Fri, 21 May 2021 16:02:09 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Min Li <min.li.xe@renesas.com>
Cc:     "sameo@linux.intel.com" <sameo@linux.intel.com>,
        "grant.likely@linaro.org" <grant.likely@linaro.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH mfd v1] mfd: Add Renesas Synchronization Management Unit
 (SMU) support
Message-ID: <20210521150209.GI2549456@dell>
References: <1619466246-11198-1-git-send-email-min.li.xe@renesas.com>
 <20210519080807.GH805368@dell>
 <OS3PR01MB6593794BFE3A4A08C62E708BBA299@OS3PR01MB6593.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <OS3PR01MB6593794BFE3A4A08C62E708BBA299@OS3PR01MB6593.jpnprd01.prod.outlook.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 21 May 2021, Min Li wrote:

> > >
> > > +config MFD_RSMU_I2C
> > > +	tristate "Renesas Synchronization Management Unit with I2C"
> > > +	depends on I2C && OF
> > > +	depends on MFD_RSMU_SPI=n
> > 
> > Not sure I've seen a relationship like this before.
> > 
> > Devices capable of SPI and I2C usually have a core driver which selects one
> > or the other.  It will also save some code duplication you have here.  Please
> > take a look at some other examples in the MFD subsystem.
> 
> 
> Hi Lee
> 
> Thanks for taking your time to review my code. I will start working on the core driver. But
> Kconfig items will stay as MFD_RSMU_I2C and MFD_RSMU_SPI like the existing ones 
> 
> MFD_MADERA_SPI
> MFD_MADERA_I2C

And MFD_MADERA

> MFD_DA9052_SPI
> MFD_DA9052_I2C

And PMIC_DA9052

> MFD_MC13XXX_SPI
> MFD_MC13XXX_I2C

And MFD_MC13XXX

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
