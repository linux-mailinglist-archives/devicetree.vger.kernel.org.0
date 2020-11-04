Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63D3C2A674E
	for <lists+devicetree@lfdr.de>; Wed,  4 Nov 2020 16:19:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729457AbgKDPTU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Nov 2020 10:19:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728522AbgKDPTU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Nov 2020 10:19:20 -0500
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AD79C0613D3
        for <devicetree@vger.kernel.org>; Wed,  4 Nov 2020 07:19:20 -0800 (PST)
Received: by mail-wm1-x342.google.com with SMTP id c18so2721436wme.2
        for <devicetree@vger.kernel.org>; Wed, 04 Nov 2020 07:19:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=D9YsrGN9wWLv3mX7dkJBqjaJH+HqiYhxAqtKcEQZoEQ=;
        b=ESOcqmcmdlSBpst0NLiwQTyp6ATQj/xVBJ8v/wHN0bGElMDhQzgtCbKjzMxYDimtOM
         QyBNdwZVHihtaYz9l9uXrPp5n8/UvcnVUMbVR1HBqL2iXmZFIDbNHdmwG8j4vvoCs1vq
         Q+0Embfu1d/pSYvA8ayGkQZsCW3dBfwAlpCTj6Z4sykz4keNk22VH+wgAMOuCuiHmQ0l
         Ib+NRQBONXAI+teuxoTRmG8CEjgy8p0VEWvPaSpCAkSMDVFQgWcWS+BD4vzNAi/2F5Vg
         gL1e+/LmL+JNuWxR+7yOpRWHPwGPoxebE4aZO2NDOTSobd1QUU9XN0++hxyXyZApuiTK
         lGcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=D9YsrGN9wWLv3mX7dkJBqjaJH+HqiYhxAqtKcEQZoEQ=;
        b=m7t6tS3EFaI4x1QsjQZlpXP2svdx26Cb3q432PvpzYmM9S8kYBqUr4cNU96wZMS5lJ
         E1DuVcwqJZjttmbEtkMW8X6ZMTU/H+QI9/e+q/TrPCjAv/Ydwdcau6wKMl3E5ZnaXP4O
         pQmig/bLrdcxbfkR/DyB0JcgTj5T132ugv9HM3VFBkvBaLVJRb7iYZKZKG538oFEr61E
         /sL0FtPqo1IGx8fcadFVIxCcP9qadhrml/Yf19yuwi9jpsi+xfh+ThsmAWuiiZb0fZh7
         NUdZ98DWaDyD864McxkGdbGDitgaoEvhfrpkyKJczWCpuoovrYysCaaUfemN3exbS6B8
         9RkQ==
X-Gm-Message-State: AOAM530M27ofl6+0EODRc2Kdtox7KGkzTKKrSZTt4NW5yaBezyHij05f
        AQNpiN7Xp/eGltbOXL/BuQ1a0A==
X-Google-Smtp-Source: ABdhPJwjO9gdBQ3A1EtXca/y3WeuvIcYU20JPYHU2jSpFYSGJCsfNFJNSgvD9gAQ0LrvY1egrHrDjw==
X-Received: by 2002:a1c:6405:: with SMTP id y5mr5165258wmb.150.1604503158966;
        Wed, 04 Nov 2020 07:19:18 -0800 (PST)
Received: from dell ([91.110.221.242])
        by smtp.gmail.com with ESMTPSA id d20sm3205552wra.38.2020.11.04.07.19.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Nov 2020 07:19:18 -0800 (PST)
Date:   Wed, 4 Nov 2020 15:19:16 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: mfd: rohm,bd71837-pmic: Add common
 properties
Message-ID: <20201104151916.GL4488@dell>
References: <20200917193754.542-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200917193754.542-1-krzk@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 17 Sep 2020, Krzysztof Kozlowski wrote:

> Add common properties appearing in DTSes (clock-names,
> clock-output-names) with the common values (actually used in DTSes) to
> fix dtbs_check warnings like:
> 
>   arch/arm64/boot/dts/freescale/imx8mq-librem5-r2.dt.yaml:
>     pmic@4b: 'clock-names', 'clock-output-names', do not match any of the regexes: 'pinctrl-[0-9]+'
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v1:
> 1. Define the names, as used in existing DTS files.
> ---
>  .../devicetree/bindings/mfd/rohm,bd71837-pmic.yaml          | 6 ++++++
>  1 file changed, 6 insertions(+)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
