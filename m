Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 68DC322325F
	for <lists+devicetree@lfdr.de>; Fri, 17 Jul 2020 06:29:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725300AbgGQE3x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Jul 2020 00:29:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725936AbgGQE3w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Jul 2020 00:29:52 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95AD4C08C5C0
        for <devicetree@vger.kernel.org>; Thu, 16 Jul 2020 21:29:52 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id z13so9603294wrw.5
        for <devicetree@vger.kernel.org>; Thu, 16 Jul 2020 21:29:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1tDBsEB/Y/GIBrRp2Nt+MzFeYT1byF7qFbjareBCBb8=;
        b=V0eo/BmTHHgK+MlrVTN9OKc/H0lfIajVou8J3eEOOCwqBMOECUTa9e8NprwMkAoeIF
         c4QWTWJFytRLVhS1HGJyQn7Bq7ilD1sQRV9+lE0xozhev03WbAuGqnOED/+wk+hHaLUr
         //gJmvR8REfhlvfNHblPj9u5xK3eI//Sp2aWIrsw50oklO7+opPpOFTiKm21R5Ki70Tl
         VrKVComa+BsYwbMH7WxeFjYM57H6L6ygZfEQZ5LEv2y6empJkio+mO+aPZ8hpMvctir6
         +mVIiEi5oU0Klk6V3dw7EEaBsEo5XyL6DldI22qVjT2rCD7TJFKE7B+e4aFz1VbrBND9
         h1cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1tDBsEB/Y/GIBrRp2Nt+MzFeYT1byF7qFbjareBCBb8=;
        b=WT3kG4tpeSoUukfFlHFOukJ7b5Eri/HyjXE7DmoT8u73Xwtar8k0Dn5RNUp12YGXvE
         HokSp6rQzpoflkeMFDfgctaD3AEjnrhYP9VwA6TyloNA/RoRAbx2v3lT9HKlhZKVFChO
         gmPZN9fnk9935N8gGOapSlu8AOJ5NBHnISBrDFp/643ihjp/PdhU3X8Uvh8d31a9RSkp
         JkMAInjGeNZfLc20TvDNLvCGrmxs/0Y1ab2h7RGBZQI/vt0Y+jBxBBmMtCO8q3/c5awA
         w4uK0jHU8laRMoehpVRfQFnJJ4Y9kqvUfIe38Bc2xdhZE1ByActZ+p7tf4CZQ24B4tmz
         YjNA==
X-Gm-Message-State: AOAM531dVcq9/0dRJY10o8U9p8qrja42bJw3Wbk+NFz3aM0RY2hHI725
        OXcGvtIJfOEUSWC0Fjam1FUHWQ==
X-Google-Smtp-Source: ABdhPJwABlZse6fgnC9vqzXT9wBMJCvVaIPVCzgJiMranO0cboa0iq7rxUuUl+OShnPM6guwowLlqw==
X-Received: by 2002:a5d:4c8a:: with SMTP id z10mr8170440wrs.384.1594960191110;
        Thu, 16 Jul 2020 21:29:51 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:9880:a643:3e69:6393? ([2a01:e34:ed2f:f020:9880:a643:3e69:6393])
        by smtp.googlemail.com with ESMTPSA id r28sm12716371wrr.20.2020.07.16.21.29.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jul 2020 21:29:50 -0700 (PDT)
Subject: Re: [PATCH v5 6/6] MAINTAINERS: Add maintainers for MIPS core drivers
To:     Serge Semin <Sergey.Semin@baikalelectronics.ru>,
        Thomas Gleixner <tglx@linutronix.de>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Serge Semin <fancer.lancer@gmail.com>,
        Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
        Rob Herring <robh+dt@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Jason Cooper <jason@lakedaemon.net>,
        Marc Zyngier <maz@kernel.org>, James Hogan <jhogan@kernel.org>,
        linux-mips@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20200714125753.22466-1-Sergey.Semin@baikalelectronics.ru>
 <20200714125753.22466-7-Sergey.Semin@baikalelectronics.ru>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <53a3785b-2f6f-35de-a5ac-565f059cd1f4@linaro.org>
Date:   Fri, 17 Jul 2020 06:29:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200714125753.22466-7-Sergey.Semin@baikalelectronics.ru>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/07/2020 14:57, Serge Semin wrote:
> Add Thomas and myself as maintainers of the MIPS CPU and GIC IRQchip, MIPS
> GIC timer and MIPS CPS CPUidle drivers.
> 
> Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>
> Acked-by: Marc Zyngier <maz@kernel.org>

Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>

> ---
> 
> Changelog v3:
> - Keep the files list alphabetically ordered.
> - Add Thomas as the co-maintainer of the designated drivers.
> ---
>  MAINTAINERS | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 2926327e4976..20532e0287d7 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -11278,6 +11278,17 @@ F:	arch/mips/configs/generic/board-boston.config
>  F:	drivers/clk/imgtec/clk-boston.c
>  F:	include/dt-bindings/clock/boston-clock.h
>  
> +MIPS CORE DRIVERS
> +M:	Thomas Bogendoerfer <tsbogend@alpha.franken.de>
> +M:	Serge Semin <fancer.lancer@gmail.com>
> +L:	linux-mips@vger.kernel.org
> +S:	Supported
> +F:	drivers/bus/mips_cdmm.c
> +F:	drivers/clocksource/mips-gic-timer.c
> +F:	drivers/cpuidle/cpuidle-cps.c
> +F:	drivers/irqchip/irq-mips-cpu.c
> +F:	drivers/irqchip/irq-mips-gic.c
> +
>  MIPS GENERIC PLATFORM
>  M:	Paul Burton <paulburton@kernel.org>
>  L:	linux-mips@vger.kernel.org
> 


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
