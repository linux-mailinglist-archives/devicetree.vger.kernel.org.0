Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8848B58D42B
	for <lists+devicetree@lfdr.de>; Tue,  9 Aug 2022 09:06:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235879AbiHIHG0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Aug 2022 03:06:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229976AbiHIHGX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Aug 2022 03:06:23 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5847A6
        for <devicetree@vger.kernel.org>; Tue,  9 Aug 2022 00:06:21 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id a9so15735428lfm.12
        for <devicetree@vger.kernel.org>; Tue, 09 Aug 2022 00:06:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=8URyh1XytjOI7H3D3HP16v8tQrsQXMwiBBMB3vPCabE=;
        b=Llkhq2EqMUBxUz6cNUI2HzmcnwKGPVl5SLD7zrh7YC2+GWwTo/MWmOXX6gc6lOMpXw
         pj7BqelB7IHZSX01F5HdYTBQ6g4CEuTYEH2R9vLp7MlgRjRii/I8ulXraP2D/2ncJT3N
         zwKbpOmvtkev43CxOdoSnRUa5OFgjGIeAZtituu7LpSKcLkOJ2kqSacZQLuVAOFaKdXW
         atjlibCT6sV1+gg2it+bBHGWqca7U0Dcqmrc6FoAPYSz5z0hveQiKmB14/t7f1QZ+HXE
         kDCFWcZOHJJD1iOP/LIO/QMmwsHPu1ctnAgOajKRHfkFImlq6ai7hoCYwSfCjA4+gBlY
         uPIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=8URyh1XytjOI7H3D3HP16v8tQrsQXMwiBBMB3vPCabE=;
        b=OeT76EA4C+GWFhC6cALXXi1rzOqTOA6sGQOSkTn/GH/ZmVZWcZSjCNyx0T1LGp4A82
         VcRrkJ3a7aiv4jXr4aKW110A/zRhpGWITjIld5rkRDW3jRH32yqK+hxktglX0q0UcqFN
         2XeHxTKKe/LaLl3Fj5YKv64GUr4leuIwxvnaqmfi10Y4dVnR8nWwBWqZhBsNtg1ZTvW+
         yWOiKnAdavnZVZuiHaaRJL93fX/fv/ADTWDavzhQ58RmG7odsAHSSEu2eYNOBFkRBSuA
         B8kwSY0kTrVwhiQfKXkfCpgd5trFk3nlzYALxdAPIyM2gaIuvoIVCcrVCkfssY52ut2a
         bQVQ==
X-Gm-Message-State: ACgBeo39PH1Fe1cPIrj/h6tVNkwPHeJsUTtrYnEX0En52YAWhIr+Y9x/
        uRg0wm/7gxNfhImn1TJ686syfQ==
X-Google-Smtp-Source: AA6agR6nMk3tWFZBtwubP21tAuJ4Hpg3EzkdiUF0KSno9uJ3cRGt+80ebQfnKS8YbQwcr6Nt9nd4WA==
X-Received: by 2002:a05:6512:ba0:b0:48b:39c:8020 with SMTP id b32-20020a0565120ba000b0048b039c8020mr7220308lfv.686.1660028780056;
        Tue, 09 Aug 2022 00:06:20 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id x4-20020a056512078400b0048a93325906sm1650890lfr.171.2022.08.09.00.06.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Aug 2022 00:06:19 -0700 (PDT)
Message-ID: <be2b90b5-a0f5-0e67-e032-bdde12c56fad@linaro.org>
Date:   Tue, 9 Aug 2022 10:06:18 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 2/2] arm64: dts: exynos: Add SysMMU nodes for Exynos850
Content-Language: en-US
To:     Sam Protsenko <semen.protsenko@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Chanho Park <chanho61.park@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        David Virag <virag.david003@gmail.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220808201724.27831-1-semen.protsenko@linaro.org>
 <20220808201724.27831-3-semen.protsenko@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220808201724.27831-3-semen.protsenko@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/08/2022 23:17, Sam Protsenko wrote:
> Add all SysMMU nodes to Exynos850 SoC device tree.
> 
> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> ---
>  arch/arm64/boot/dts/exynos/exynos850.dtsi | 45 +++++++++++++++++++++++
>  1 file changed, 45 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/exynos/exynos850.dtsi b/arch/arm64/boot/dts/exynos/exynos850.dtsi
> index 8e78b50416d8..4204a443ea4a 100644
> --- a/arch/arm64/boot/dts/exynos/exynos850.dtsi
> +++ b/arch/arm64/boot/dts/exynos/exynos850.dtsi
> @@ -503,6 +503,51 @@ i2c_6: i2c@13890000 {
>  			status = "disabled";
>  		};
>  
> +		sysmmu_aud: sysmmu@14850000 {

Order the nodes by unit address at least within each other.

Best regards,
Krzysztof
