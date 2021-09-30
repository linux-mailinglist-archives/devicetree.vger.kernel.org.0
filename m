Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3023741DA35
	for <lists+devicetree@lfdr.de>; Thu, 30 Sep 2021 14:48:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351064AbhI3Mtn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Sep 2021 08:49:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351066AbhI3Mtl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Sep 2021 08:49:41 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26488C06176A
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 05:47:59 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id t8so9911630wri.1
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 05:47:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=jQcb/IRMulWTMVpLN7/tTW0JOEcywHbsCrqDEOi1tes=;
        b=YciORU29ZLiM3+rVUPyXHQ/8jB28s1o/9oUDvkyfz5GDf+e9xhFV7JeHUgmjYxXHSL
         fZL7VzoVijF/ZysR1BzWIU9+EsUSVjhDNhBbs8K75x2G+e/Ua+OzUhje3IJkab4RJF/b
         2Wj6+P/HBT7whH6TTLSEDgC+28U2SxY8yrUdAohzBjOol2v4ap4D5QRNhb4cXINdH6jb
         ZbGbPo/eatNtfPE1nbbZ9Hfw2GJuSEPeuC/Vis5sLjRvVocs5D2KBxG6Ek6rFDD9iAyk
         eF8BBC+g66Vt5hSQs0mGUGSfSbqoFTtqBXQ4bDutWP9w9td99kj+qE594JunsF0UuI3P
         njRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=jQcb/IRMulWTMVpLN7/tTW0JOEcywHbsCrqDEOi1tes=;
        b=H7SAQtfdQk83qsO+vrB3pgnVLwlAOJpANLxaf1ol+QkhvJR+x1EBY3mf93pZbpMKrH
         50zH/63zzS0c014ddFbaoyPVbPa5lOwJ4ckAYOxXzlejuXBHxBJ9dcya1XPzK8h0/DWU
         qdEgkUjoB3JOLXcbiyb5IkOG8QdyeVc48ZqE3rsTezEBReAMOGqrxmTEbm79dTKuSx4s
         lgKcMNCK7fTXUUM4Su5UuIf27TzuRmbOG0GUJftWWvU9AK1IUbdCPu0eZMWSStKaPKyr
         yYg8GenukvS2jG2gCnk8ddOBu6WWApQy0ILdJgt2vrQz9nnyk59Y45gjzggV68VmJq/g
         K6HA==
X-Gm-Message-State: AOAM531aijUdOugHRwX2ceEaLGtlcg+MXtdWgT7grJd+a9P8UGtYrwtb
        aiCpdg2jRvl7y8CghXILpRxmcg==
X-Google-Smtp-Source: ABdhPJwnejh6dcPEIzPH5qBtw9qE77SEtnm6HLAZlJZXDYk4sIFKXEk4qno2ugj5odIXtRGh9o+kAA==
X-Received: by 2002:a5d:6b46:: with SMTP id x6mr5972981wrw.192.1633006077728;
        Thu, 30 Sep 2021 05:47:57 -0700 (PDT)
Received: from google.com ([95.148.6.233])
        by smtp.gmail.com with ESMTPSA id t16sm5222171wmi.33.2021.09.30.05.47.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Sep 2021 05:47:57 -0700 (PDT)
Date:   Thu, 30 Sep 2021 13:47:55 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <snawrocki@kernel.org>
Subject: Re: [PATCH 10/12] mfd: dt-bindings: samsung,s5m8767: document buck
 and LDO supplies
Message-ID: <YVWx+08egbGPiYYt@google.com>
References: <20210928084949.27939-1-krzysztof.kozlowski@canonical.com>
 <20210928084949.27939-11-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210928084949.27939-11-krzysztof.kozlowski@canonical.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 28 Sep 2021, Krzysztof Kozlowski wrote:

> Document the properties with regulator supplies for bucks and LDOs.  At
> least one board uses it (Exynos5250 Arndale).
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---
>  .../bindings/mfd/samsung,s5m8767.yaml         | 38 +++++++++++++++++++
>  1 file changed, 38 insertions(+)

These all need Rob's Ack.

But can you start with reworking the subject line please.

It should be:

  "dt-bindings: mfd: <component>: <Subject starting with an uppercase char>"

> diff --git a/Documentation/devicetree/bindings/mfd/samsung,s5m8767.yaml b/Documentation/devicetree/bindings/mfd/samsung,s5m8767.yaml
> index 35018346f68b..e97a94cab4e8 100644
> --- a/Documentation/devicetree/bindings/mfd/samsung,s5m8767.yaml
> +++ b/Documentation/devicetree/bindings/mfd/samsung,s5m8767.yaml
> @@ -96,6 +96,44 @@ properties:
>      description: |
>        GPIO specifiers for three host gpio's used for dvs.
>  
> +  vinb1-supply:
> +    description: Power supply for buck1
> +  vinb2-supply:
> +    description: Power supply for buck1
> +  vinb3-supply:
> +    description: Power supply for buck1
> +  vinb4-supply:
> +    description: Power supply for buck1
> +  vinb5-supply:
> +    description: Power supply for buck1
> +  vinb6-supply:
> +    description: Power supply for buck1
> +  vinb7-supply:
> +    description: Power supply for buck1
> +  vinb8-supply:
> +    description: Power supply for buck1
> +  vinb9-supply:
> +    description: Power supply for buck1
> +
> +  vinl1-supply:
> +    description: Power supply for LDO3, LDO10, LDO26, LDO27
> +  vinl2-supply:
> +    description: Power supply for LDO13, LDO16, LDO25, LDO28
> +  vinl3-supply:
> +    description: Power supply for LDO11, LDO14
> +  vinl4-supply:
> +    description: Power supply for LDO4, LDO9
> +  vinl5-supply:
> +    description: Power supply for LDO12, LDO17, LDO19, LDO23
> +  vinl6-supply:
> +    description: Power supply for LDO18, LDO20, LDO21, LDO24
> +  vinl7-supply:
> +    description: Power supply for LDO5, LDO22
> +  vinl8-supply:
> +    description: Power supply for LDO1, LDO6, LDO7, LDO8, LDO15
> +  vinl9-supply:
> +    description: Power supply for LDO2
> +
>    wakeup-source: true
>  
>  required:

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
