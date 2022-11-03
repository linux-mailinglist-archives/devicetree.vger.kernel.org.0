Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9406E617AFB
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 11:41:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230196AbiKCKl3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 06:41:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229788AbiKCKl2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 06:41:28 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 781AC631A
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 03:41:26 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id q9so4180950ejd.0
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 03:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WJokNyfXsCHzHhZF3TL//PDU1JvZ46K3PIWK/gOZZuI=;
        b=cFIhQ81JA3YY/XzEOzxBh6nMxd5/p5ttgyCdyUDqeCiaKaENelgFHPrucTAMElMzNO
         jdkFcxkGaNeX2NdnlnwQQis5j+qJdPNDxB1cT3tDyP7uKMjwoXyk+/MiwOp1qAbVda2D
         PY9IGj+5FibWVQbKinJlLwfagyMh8ShnSoeaE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WJokNyfXsCHzHhZF3TL//PDU1JvZ46K3PIWK/gOZZuI=;
        b=PTMYMTHwg7D+1/jLnF2eRy+JZUyPIGXuy86T3vnhBEycfgANuQ6b/9e7cu19y0famk
         ucu4zaAD4SPB3AMtT/BtFTWZd4Cq+RuNS8AquvBbfA+44Zkq0do254ewV8Og9bXfHGBP
         WDqjG84v+YBbP8po7chn8SZcVR3A85IQLlVNw9hl0G3Dso2my1GIF96SU6lYEhGHzCwz
         sedRi7DnstN8+dIT1eLHGkcdu6ul7hzOe/4TvQDtr+973GL69Z+5A6lNjxg6pOBlIEbI
         U0JHOb9EbpOPoTQ74PLs1HtZGFx0kAdl8T8uT0AB6NI/UyyfNI279elVDCPn93yUx5QO
         qKUA==
X-Gm-Message-State: ACrzQf2wLavFuRj20kP9yhSAzlrObUyOz6YDBDnTuGIr2qqFWmKFBMW0
        /ICq70ETSf4opnbFnikJJRyrgw==
X-Google-Smtp-Source: AMsMyM5ATwqnrGV+GBiR/mYmj1FwznRzYR4xh+/j7BPh0zdyKAJcKFGz+rW5zZceGoP+CRZqkxY9Mw==
X-Received: by 2002:a17:906:6a27:b0:7a6:c537:ba4 with SMTP id qw39-20020a1709066a2700b007a6c5370ba4mr26921174ejc.517.1667472085066;
        Thu, 03 Nov 2022 03:41:25 -0700 (PDT)
Received: from tom-ThinkPad-T14s-Gen-2i (net-188-217-54-207.cust.vodafonedsl.it. [188.217.54.207])
        by smtp.gmail.com with ESMTPSA id e25-20020a170906315900b007836d075152sm316558eje.187.2022.11.03.03.41.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Nov 2022 03:41:23 -0700 (PDT)
Date:   Thu, 3 Nov 2022 11:41:21 +0100
From:   Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
To:     Aakarsh Jain <aakarsh.jain@samsung.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        m.szyprowski@samsung.com, andrzej.hajda@intel.com,
        mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
        ezequiel@vanguardiasur.com.ar, jernej.skrabec@gmail.com,
        benjamin.gaignard@collabora.com, krzysztof.kozlowski+dt@linaro.org,
        stanimir.varbanov@linaro.org, dillon.minfei@gmail.com,
        david.plowman@raspberrypi.com, mark.rutland@arm.com,
        robh+dt@kernel.org, krzk+dt@kernel.org, andi@etezian.org,
        alim.akhtar@samsung.com, aswani.reddy@samsung.com,
        pankaj.dubey@samsung.com, smitha.t@samsung.com
Subject: Re: [PATCH 1/3] arm64: exynos: Add new compatible string for
 Exynos3250 SoC.
Message-ID: <20221103104121.GA4937@tom-ThinkPad-T14s-Gen-2i>
References: <CGME20221102125810epcas5p36e6caf41f602debe17f25f13969fd6dc@epcas5p3.samsung.com>
 <20221102130602.48969-1-aakarsh.jain@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221102130602.48969-1-aakarsh.jain@samsung.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Aakarsh,

On Wed, Nov 02, 2022 at 06:36:00PM +0530, Aakarsh Jain wrote:
> Exynos3250 uses the same compatible as Exynos5420, but both
> the MFC IPs found in these SoC are different interms of clock
> property. So using same compatible for both SoC is not correct.
> Lets have a separate compatible for Exynos3250 and Exynos5420
> to differentiate these SoCs.
> 
> Suggested-by: Alim Akhtar <alim.akhtar@samsung.com> 
> Signed-off-by: Aakarsh Jain <aakarsh.jain@samsung.com>
> ---
>  Documentation/devicetree/bindings/media/s5p-mfc.txt | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> We are already in process of converting this txt file to yaml.
> https://patchwork.kernel.org/project/linux-media/patch/
> 20221011122516.32135-2-aakarsh.jain@samsung.com/
> modifying this txt binding for completeness.
> 
> diff --git a/Documentation/devicetree/bindings/media/s5p-mfc.txt b/Documentation/devicetree/bindings/media/s5p-mfc.txt
> index aa54c8159d9f..4ff1898e5a51 100644
> --- a/Documentation/devicetree/bindings/media/s5p-mfc.txt
> +++ b/Documentation/devicetree/bindings/media/s5p-mfc.txt
> @@ -11,9 +11,10 @@ Required properties:
>  	(a) "samsung,mfc-v5" for MFC v5 present in Exynos4 SoCs
>  	(b) "samsung,mfc-v6" for MFC v6 present in Exynos5 SoCs
>  	(c) "samsung,mfc-v7" for MFC v7 present in Exynos5420 SoC
> -	(d) "samsung,mfc-v8" for MFC v8 present in Exynos5800 SoC
> -	(e) "samsung,exynos5433-mfc" for MFC v8 present in Exynos5433 SoC
> -	(f) "samsung,mfc-v10" for MFC v10 present in Exynos7880 SoC
> +	(d) "samsung,exynos3250-mfc" for MFC v7 present in Exynos3250 SoC
> +	(e) "samsung,mfc-v8" for MFC v8 present in Exynos5800 SoC
> +	(f) "samsung,exynos5433-mfc" for MFC v8 present in Exynos5433 SoC
> +	(g) "samsung,mfc-v10" for MFC v10 present in Exynos7880 SoC
>  
>    - reg : Physical base address of the IP registers and length of memory
>  	  mapped region.
> -- 
> 2.17.1
> 

Looks good to me.

Reviewed-by: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>

Regards,
Tommaso

-- 
Tommaso Merciai
Embedded Linux Engineer
tommaso.merciai@amarulasolutions.com
__________________________________

Amarula Solutions SRL
Via Le Canevare 30, 31100 Treviso, Veneto, IT
T. +39 042 243 5310
info@amarulasolutions.com
www.amarulasolutions.com
