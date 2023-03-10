Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 52DDE6B4680
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 15:43:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232878AbjCJOnt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 09:43:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232880AbjCJOnc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 09:43:32 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 296B05BD9B
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 06:43:23 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id j11so21370601edq.4
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 06:43:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678459402;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JYMEdjeleSWWpXin+nV8OWvud5LsPZ8G/6AgyZ+yAwQ=;
        b=dyVAJ7eu/3a4Va5UtYhwVcbyFbDZz+mUrkWue+/ZeULTxrL+HQcyDqTd5cix+XtfxF
         SzBBDrIXZoFe/dqF/muPu05TUeNINPBMDlb1C7U/oQO2fB4cvy39qIkiYaiwMKiVxtlX
         KFzS5UmjoQ0zAnBXuHyv083PXHcK3mno2vK9ZXLB1ekJuB90bnrXP1XYfbCRD3cB3aEG
         eYSZqopzPKNIol8R4lp2C6fVDVjQloFSowH+Y+vum1zXMTECctTspaEABEl/fxcXYf/u
         4OhR61yzeBveMA6G30JseUSfNyQubIrtmsUdHfG0XbC90zhJf9z+fWZ3tcSGrHzrfdYU
         wxeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678459402;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JYMEdjeleSWWpXin+nV8OWvud5LsPZ8G/6AgyZ+yAwQ=;
        b=1eVHBWL8eSrdhaU3pBXG0JmVYMy4wU/00Oan1PwhtJaaUzZ8DnX7mg+Z9P9eprs6iP
         EKoNgS7ZjnJrnNjikfBy6h2DZXTrjr4upBp0ce8oZhXqNBFqERf8zEd9pBWmSkxRNtyC
         RgxEO5inYvPBoARVAjbDkbJgEK4/GKLw5B3HpgXiC0VMltG7B5oV1a2C2IIihFExD7nB
         fopojBTjWgThBXNt/ydfyD+psrSNGyfXtLZ8i+2O0OMnwpWD3kX87x5Nia5I19Kqj6T/
         6JFuK2Ff+HVB5c2ry5hC60FTYnS05ZHYHG4V1fRRuMorMI0lFwSZ/EQzu31HKz77+c01
         4xKg==
X-Gm-Message-State: AO0yUKVdhd5GFNFNSnJvJA5GW6nfyCGOY97KH46NEes63yjrtmjmxBuM
        v3gBukJPL/Q4UWN8gW/yatTJbOHUflcOKhapwAQ=
X-Google-Smtp-Source: AK7set845QJSc/SjAXM6QM3dwBDS1eo1cerd3I4zY5AKmphjSWiUT+Tw3zhF0l6YLSy+ywhLwM2bfQ==
X-Received: by 2002:aa7:d952:0:b0:4c6:f2cd:9d72 with SMTP id l18-20020aa7d952000000b004c6f2cd9d72mr24748846eds.5.1678459402436;
        Fri, 10 Mar 2023 06:43:22 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:45c4:46be:ec71:4a51? ([2a02:810d:15c0:828:45c4:46be:ec71:4a51])
        by smtp.gmail.com with ESMTPSA id 23-20020a170906319700b008c06de45e75sm1034415ejy.107.2023.03.10.06.43.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Mar 2023 06:43:22 -0800 (PST)
Message-ID: <8caa7218-41c2-04b4-e7b3-ee0fb43079a3@linaro.org>
Date:   Fri, 10 Mar 2023 15:43:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/7] dt-bindings: clock: exynos850: Add power-domains
 property
Content-Language: en-US
To:     Sam Protsenko <semen.protsenko@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Chanho Park <chanho61.park@samsung.com>,
        David Virag <virag.david003@gmail.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20230308233822.31180-1-semen.protsenko@linaro.org>
 <20230308233822.31180-2-semen.protsenko@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230308233822.31180-2-semen.protsenko@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/03/2023 00:38, Sam Protsenko wrote:
> Document power-domains property in Exynos850 clock controller.

This we see from the diff. You need to say why, e.g. "several clock
controllers are part of their power domain and require domain to be on
for operation."

> 
> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> ---
>  .../devicetree/bindings/clock/samsung,exynos850-clock.yaml     | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/clock/samsung,exynos850-clock.yaml b/Documentation/devicetree/bindings/clock/samsung,exynos850-clock.yaml
> index 8aa87b8c1b33..cc1e9173b272 100644
> --- a/Documentation/devicetree/bindings/clock/samsung,exynos850-clock.yaml
> +++ b/Documentation/devicetree/bindings/clock/samsung,exynos850-clock.yaml
> @@ -54,6 +54,9 @@ properties:
>    "#clock-cells":
>      const: 1
>  
> +  power-domains:
> +    maxItems: 1
> +
>    reg:
>      maxItems: 1
>  

Best regards,
Krzysztof

