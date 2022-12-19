Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1C84650ECB
	for <lists+devicetree@lfdr.de>; Mon, 19 Dec 2022 16:41:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231958AbiLSPlz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Dec 2022 10:41:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231766AbiLSPlt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Dec 2022 10:41:49 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA7A99FCD
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 07:41:48 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id o6so9355129lfi.5
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 07:41:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OPySi+jcQcviSPVv+LV6bNjIASezBPf2TkmclDtC97I=;
        b=y/v4lZjONmbQR/D/77RrBWQP3QA4QH4hATJnZAyKgb3O+MOSBZUTS9GEUT6JaHJCUU
         p4AoIGGJ+xqjqvyWNacJYYEhMqycevbfuiceGnvalU0N7MNF+r3CWFuNPhbFOQNjuhrX
         cLNybl7T1XX036UOKtcIE/T67lztkxqjJYb6qvsSTlRIi85ervroihKKoODBCFFlMsg5
         2xZYX1kaLXc9YCNvwqYE4CHN2QzEOfEDXHehl5w6fYwQfBbEGUci5wj7ZO82qFqbp/Eu
         vxg2c5hfPjOlbHMvahqmTkOQbP8neUntViK/2uz34hynkOthiYPnsx/3iPTCwv8AXapq
         /pgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OPySi+jcQcviSPVv+LV6bNjIASezBPf2TkmclDtC97I=;
        b=pj9l0SMY/3FG6NAgetX8cHLzpYH6h0iTdj6f/hFqx7oPrRzqKvdNSt7nKweBWGAt1n
         rbxeO2Ps9Hv/4NUqnMQUYoLC3HF/Ug14cxXK0Gcr10vUaYWdT4k0fOOc/mouHyrSnzPS
         pjFzNmT3jzkMGtvwvoOFu2ftZMu1JSiKRdD1vsaSFMZs0mVDzVcEXRDGws5+GaKsBc/Q
         qs97F4I1BxDqIW+QBYb0hSJ2XnIQ7pTp2r8pZt/qUfc05gVJKLzuRwyzUU+30ws2t3zV
         LaJ+3agrMFTeIseC5rUmj9II9ANol84xvYrWgmxHmIE4rynAU9/jMWwH7MZp+BUK9Prt
         VbSQ==
X-Gm-Message-State: ANoB5pk+wBf97SXlWQMlUAXKTKv51HoC033bDOS7f+m7go9AgvLC7RZa
        XvUlLXkCEgiFEkgb+dmFQqGHHQ==
X-Google-Smtp-Source: AA0mqf6a7A4r0Kj20/hU8dHWnzLl6CeRPebS6PaL/n/nEVJgIoVR1cN4kaJKuM9FLe3zbzGz0tm+cg==
X-Received: by 2002:a05:6512:b91:b0:4b6:ed8b:4f16 with SMTP id b17-20020a0565120b9100b004b6ed8b4f16mr12729404lfv.52.1671464507096;
        Mon, 19 Dec 2022 07:41:47 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id f3-20020a056512360300b00492ca820e15sm1129467lfs.270.2022.12.19.07.41.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Dec 2022 07:41:46 -0800 (PST)
Message-ID: <c008733c-b47b-606e-f8e6-d5ea14e5befb@linaro.org>
Date:   Mon, 19 Dec 2022 16:41:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 1/5] drivers: mmc: sdhci-cadence: SD6 controller support
Content-Language: en-US
To:     Piyush Malgujar <pmalgujar@marvell.com>, linux-mmc@vger.kernel.org,
        linux-kernel@vger.kernel.org, adrian.hunter@intel.com,
        ulf.hansson@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, yamada.masahiro@socionext.com,
        devicetree@vger.kernel.org
Cc:     jannadurai@marvell.com, cchavva@marvell.com,
        Dhananjay Kangude <dkangude@cadence.com>
References: <20221219142418.27949-1-pmalgujar@marvell.com>
 <20221219142418.27949-2-pmalgujar@marvell.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221219142418.27949-2-pmalgujar@marvell.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/12/2022 15:24, Piyush Malgujar wrote:
> From: Dhananjay Kangude <dkangude@cadence.com>
> 
> This patch includes changes done to support SD6 controller:

Do not use "This commit/patch".
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

> - Added SD6 related ops which are isolated from SD4
> - changes to support HS400, HS400ES emmc mode
> - Updated HS200 tuning values and support to read tune configuration
>   from FDT.
> - Support to configure host side drive strength and slew
>   and read it from device tree
> 


(...)

>  
> @@ -455,7 +1752,14 @@ static const struct of_device_id sdhci_cdns_match[] = {
>  		.compatible = "socionext,uniphier-sd4hc",
>  		.data = &sdhci_cdns_uniphier_pltfm_data,
>  	},
> -	{ .compatible = "cdns,sd4hc" },
> +	{
> +		.compatible = "cdns,sd4hc",
> +		.data = &sdhci_cdns_sd4_of_data,
> +	},
> +	{
> +		.compatible = "cdns,sd6hc",
> +		.data = &sdhci_cdns_sd6_of_data,
> +	},

Your bindings said something different - every sd4hc is compatible with
sd6hc.

Best regards,
Krzysztof

