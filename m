Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D7BC3519CC9
	for <lists+devicetree@lfdr.de>; Wed,  4 May 2022 12:17:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348017AbiEDKVa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 06:21:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229778AbiEDKV3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 06:21:29 -0400
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52B6025EB0
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 03:17:53 -0700 (PDT)
Received: by mail-pl1-x629.google.com with SMTP id n18so1015571plg.5
        for <devicetree@vger.kernel.org>; Wed, 04 May 2022 03:17:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=16pteYw1kFtrJHlHKxcHj6pbCmyXWlcmy0HBd0ZDI5o=;
        b=YiR9S7H0J5pVNfuNC2J7Ui3tLQ3JLD8KUp1ycbIIG9ykdngGmxmWPmY+zO5jp94VzN
         z7FCLmvNKQuouxkAPF+DA2WBzOUyn5VcxOBL3+W9I+Bwa0uGkHVR/Jp/X5x22ZJsajZx
         nadxkO3YKULs3lto91ketPCPMpNf+sCygn2bVfS8Wq6IBLjpzWKTZVVSX5xMwDq70udz
         eMm1NqOJ4ZMtV0gj6nxZ37lVgR7HhMrZAgsq8fnJpYsnnfyVXbcIsacWd1UwQreTpCPk
         n5QzA5BMFSoNxG0VfSUYVijSKfLhCUfSfZ+P9Vc+bEtGkV/r6Kff1pgiKyodrN17g5wx
         ix7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=16pteYw1kFtrJHlHKxcHj6pbCmyXWlcmy0HBd0ZDI5o=;
        b=C8kcaj9doEal3j/ZLnqF+NWK7JoSXRs57D10yBHpc2Q93efeIQ/nce3asLBPEA1X6Z
         v23VNJj9E8pds8eiLC04RniyqyqH7Iusl/msSf9dszN5AV4WSpDgzbyT1oROesWrGvq/
         TmMHdptSUb4XDIKtPfTsDqfRfQ3l3Isxy5hq+7Uk8v4M3YmTRDgGxkam9pT0Y93wCHx/
         G89Q04pN0ssVRfmUasVsJKVPrqjt15PIDqtENN0k+mWWTZych3iLBYfhrOjUprtlrHCc
         9VvcjsBENVfco2K1+MIusXCiNNkRQTiD85ANPSgVKI/0PHoa70HdWB8rUsPv2FTLNJh2
         QwYQ==
X-Gm-Message-State: AOAM531T6KrKDbeyzz3OadK+K1Bfuqga1vrcz2rbYrFHd6RTIqI7BVGW
        hPUoUMhd5XKoDS0f1JXqvD1UkQ==
X-Google-Smtp-Source: ABdhPJykOJSIEdtWlEgPag1pW44EnulI2L+WAC9h0zxtfXA5fBS0P4lFv40oX0kD2wQcvtlFj+rE2Q==
X-Received: by 2002:a17:90a:e517:b0:1d7:5bbd:f9f0 with SMTP id t23-20020a17090ae51700b001d75bbdf9f0mr9386904pjy.77.1651659472873;
        Wed, 04 May 2022 03:17:52 -0700 (PDT)
Received: from localhost ([122.162.207.161])
        by smtp.gmail.com with ESMTPSA id ie13-20020a17090b400d00b001da3920d985sm2939471pjb.12.2022.05.04.03.17.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 May 2022 03:17:52 -0700 (PDT)
Date:   Wed, 4 May 2022 15:47:50 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Hector Martin <marcan@marcan.st>
Cc:     "Rafael J. Wysocki" <rafael@kernel.org>,
        Sven Peter <sven@svenpeter.dev>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Marc Zyngier <maz@kernel.org>,
        Mark Kettenis <mark.kettenis@xs4all.nl>,
        linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/4] MAINTAINERS: Add entries for Apple SoC cpufreq
 driver
Message-ID: <20220504101750.wmuicq3dytnxrw5o@vireshk-i7>
References: <20220504075153.185208-1-marcan@marcan.st>
 <20220504075153.185208-2-marcan@marcan.st>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220504075153.185208-2-marcan@marcan.st>
User-Agent: NeoMutt/20180716-391-311a52
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04-05-22, 16:51, Hector Martin wrote:
> Splitting this commit, as usual, to facilitate merges via the SoC tree.
> 
> Signed-off-by: Hector Martin <marcan@marcan.st>
> ---
>  MAINTAINERS | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index edc96cdb85e8..39bfa478fe55 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -1835,6 +1835,7 @@ T:	git https://github.com/AsahiLinux/linux.git
>  F:	Documentation/devicetree/bindings/arm/apple.yaml
>  F:	Documentation/devicetree/bindings/arm/apple/*
>  F:	Documentation/devicetree/bindings/clock/apple,nco.yaml
> +F:	Documentation/devicetree/bindings/cpufreq/apple,soc-cpufreq.yaml
>  F:	Documentation/devicetree/bindings/i2c/apple,i2c.yaml
>  F:	Documentation/devicetree/bindings/interrupt-controller/apple,*
>  F:	Documentation/devicetree/bindings/mailbox/apple,mailbox.yaml
> @@ -1844,6 +1845,7 @@ F:	Documentation/devicetree/bindings/power/apple*
>  F:	Documentation/devicetree/bindings/watchdog/apple,wdt.yaml
>  F:	arch/arm64/boot/dts/apple/
>  F:	drivers/clk/clk-apple-nco.c
> +F:	drivers/cpufreq/apple-soc-cpufreq.c
>  F:	drivers/i2c/busses/i2c-pasemi-core.c
>  F:	drivers/i2c/busses/i2c-pasemi-platform.c
>  F:	drivers/irqchip/irq-apple-aic.c

This should be the last patch instead, or should at least be added
after the files are merged first. If someone checks out at this
commit, the files won't be available but still linked here.

-- 
viresh
