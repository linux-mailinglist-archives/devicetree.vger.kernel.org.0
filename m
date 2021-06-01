Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 173BA396F1F
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 10:39:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233381AbhFAIla (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 04:41:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233509AbhFAIl3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 04:41:29 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94A5CC06174A
        for <devicetree@vger.kernel.org>; Tue,  1 Jun 2021 01:39:47 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id t4-20020a1c77040000b029019d22d84ebdso986910wmi.3
        for <devicetree@vger.kernel.org>; Tue, 01 Jun 2021 01:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=fwYLGPFkwdh/HThdI1LQ3D7Sa+CANFeet/ms5ocqzVg=;
        b=B8zAxfBioT7FIrTPBqWd98uxG5BN/M+fF/ODhvHVjHbm2UohHiYDbeMNxfMajPAMcN
         f1TfeFpiniII0WX488Rnu8cDcDGa1NS8jPpeOKG7QNw/4dEfi/9hR9wcGk1iHcQtc3XW
         fwuv4sngTpPZRjS+qZv3DRKN09fENXysswgSWZwbZoaHAZn1sDJXu/8AQerOxDk+Mpkq
         EcmUjU1R1JgIFlIBmAbVIZ4Q3gHEyapU815+zLyLV6Ys1/sRy60o7eS+iwp+Ir4bysSE
         BF3Y45hJ7bjUnZrSPquk83OcKbAfEwLfm/LkiHw+3Kphxg1G2vTmPIMi40z56yavzghD
         Anfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=fwYLGPFkwdh/HThdI1LQ3D7Sa+CANFeet/ms5ocqzVg=;
        b=AcCIlJ8rsntqnQ9qvUTPePazANvayztXrXL4xxfXVYbkWPrI/XibtxaR1uUin5SRmU
         BXSJn7Xuo7wgPZX/MZdj5DnNT98/OVQG93KanoH6/V98CsVoHV+AZ/Jbh60iU0vApbAq
         i41Hq1Hh/grrb/8UZMcmCpiNXkY1TctfUA2R3sdn0Unv/JmLQYlrlDDIW60oBqrx9SEu
         2kR+C8EsD+rtZe3XECVpFuC/EsIEfcc1+m16OEvW8sIzl+XVtil2mksQbsnj0gWV/cMb
         9mG3MgzQo9udfSVelZMlMdAPUkc9z3hpoQKeHM82sy/xEa5aHQk26486Smx4nOUiQ69L
         0KIw==
X-Gm-Message-State: AOAM530UEeNh93Q8RGEudaoMuHIfUqCqj4dUhBVw+wl87WbvnuULzMvc
        BwWBv7s6byElAECLXU+xMdt7cg==
X-Google-Smtp-Source: ABdhPJyIDHtN04BJpvc9WwnHgqypN0MUAhE9fAvsxWnWmyuTTr0flvdH2YtxWENeyFD6zSQEG76auA==
X-Received: by 2002:a1c:1902:: with SMTP id 2mr24673720wmz.128.1622536786207;
        Tue, 01 Jun 2021 01:39:46 -0700 (PDT)
Received: from dell ([91.110.221.249])
        by smtp.gmail.com with ESMTPSA id r14sm2152563wrx.74.2021.06.01.01.39.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 01:39:45 -0700 (PDT)
Date:   Tue, 1 Jun 2021 09:39:44 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Robert Marko <robert.marko@sartura.hr>
Cc:     linux-kernel@vger.kernel.org, linus.walleij@linaro.org,
        bgolaszewski@baylibre.com, linux-gpio@vger.kernel.org,
        p.zabel@pengutronix.de, robh+dt@kernel.org,
        devicetree@vger.kernel.org, luka.perkov@sartura.hr,
        jmp@epiphyte.org, pmenzel@molgen.mpg.de, buczek@molgen.mpg.de
Subject: Re: [PATCH v3 1/6] mfd: simple-mfd-i2c: Add Delta TN48M CPLD support
Message-ID: <20210601083944.GW543307@dell>
References: <20210531125143.257622-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210531125143.257622-1-robert.marko@sartura.hr>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 31 May 2021, Robert Marko wrote:

> Delta TN48M switches have a Lattice CPLD that serves
> multiple purposes including being a GPIO expander.
> 
> So, lets use the simple I2C MFD driver to provide the MFD core.
> 
> Also add a virtual symbol which pulls in the simple-mfd-i2c driver and
> provide a common symbol on which the subdevice drivers can depend on.
> 
> Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> ---
> Changes in v2:
> * Drop the custom MFD driver and header
> * Use simple I2C MFD driver
> 
>  drivers/mfd/Kconfig          | 10 ++++++++++
>  drivers/mfd/simple-mfd-i2c.c |  1 +
>  2 files changed, 11 insertions(+)

I responded to a previous version of this.

The question still remains - why do you need one single Regmap
encompassing all functionality.  The register banks look separated to
me at first glance.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
