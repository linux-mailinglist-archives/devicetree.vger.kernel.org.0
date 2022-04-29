Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B9B03514309
	for <lists+devicetree@lfdr.de>; Fri, 29 Apr 2022 09:12:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354986AbiD2HPV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 03:15:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354982AbiD2HPU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 03:15:20 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02BB21ADA5
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 00:12:03 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id j6so13670106ejc.13
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 00:12:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Edd8ZLYtYb/gwlpyDZkQOxSq27PsRFpIp30d8SMER+g=;
        b=tqpFpORB+WKNr57yBie6HkLBpEWBDwutFEby7Q21Gz862pVw5QVxAdeiQt7SQzvXsg
         d8XFA7qTsBmWwXDwR1qPiiw8lpFCyNNrNjfJ+0azA3SAMJCyg2COrurBTlmlKkDzzlJP
         tE9854dsAw5C4y/dCJ2T7ttXIyHf0PzgHqNBzPWYGmaWqYevybj22Sj9Cf2A1CFR8b+1
         EnILFy5/3CtF8TN/JjKOBAar+YMpFdIJpaH4guyFPc37dhUnqygvIHpEJrr6afnaa8Km
         FbfDP4X7LgxAISo1exzuxi/G+/IZKX/TtB9EW/N2AXGqQl9Avp2eer/OxELapy9qMjD+
         P0FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Edd8ZLYtYb/gwlpyDZkQOxSq27PsRFpIp30d8SMER+g=;
        b=oKYMzXSqWdkcegKcEwU6/DyOlZPy91Y9Kra8JHAoK+RJdUgtrjKT3c/vE66wFWsESp
         OOfcQ0D+s7M0tys1RG5PNs/y0e3oGobvCSq1iWeUpRSXE5RhpVG//iIyEuh6mBLTOecS
         2TDLWqSz2uwJCNetKHdgbvee4IyngRvhNGHO0g8PL0EuMN4CuCSPuXBvCwjMAA0VkS6x
         S/ccfjAjbRV4k/42BYfl4OYQLEB+f51pTlVEGMAWQumZqWAZ9LtxSKgJ4OsEUVuSpVFo
         9l5u56rxHun75zg5k1OmimHYMIHwOFm3FDA8zJ23QMqKUvkrpKAJidWLdN8PwtSECxKY
         hRHg==
X-Gm-Message-State: AOAM531N/RPvGt7PAfkb0V5MZ9WBTxZG0akhJjJlwUi4hGYDh1DcKiPh
        VvEJMFeFfX1qeTqJC0niLiEwbw==
X-Google-Smtp-Source: ABdhPJzt/5R7YhS1n1/Tl1fP5rjgP1BaMd1p1mgvE1MTVa32BuX2e89s7ed/ZnNEEjG7z8VMDAwWCQ==
X-Received: by 2002:a17:906:5597:b0:6ce:f3cc:14e8 with SMTP id y23-20020a170906559700b006cef3cc14e8mr34343226ejp.426.1651216321471;
        Fri, 29 Apr 2022 00:12:01 -0700 (PDT)
Received: from [192.168.0.169] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id jl25-20020a17090775d900b006f3ef214dc5sm365463ejc.43.2022.04.29.00.12.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Apr 2022 00:12:00 -0700 (PDT)
Message-ID: <2f600411-d40e-c4e7-fd54-bd15546bf71f@linaro.org>
Date:   Fri, 29 Apr 2022 09:11:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [Patch v9 1/4] memory: tegra: Add memory controller channels
 support
Content-Language: en-US
To:     Ashish Mhetre <amhetre@nvidia.com>, thierry.reding@gmail.com,
        jonathanh@nvidia.com, digetx@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dmitry.osipenko@collabora.com,
        linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     vdumpa@nvidia.com, Snikam@nvidia.com
References: <20220426073827.25506-1-amhetre@nvidia.com>
 <20220426073827.25506-2-amhetre@nvidia.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220426073827.25506-2-amhetre@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/04/2022 09:38, Ashish Mhetre wrote:
> From tegra186 onwards, memory controller support multiple channels.
> Add support for mapping address spaces of these channels.
> Add number of channels supported by tegra186, tegra194 and tegra234.
> In case of old bindings, channels won't be present. If channels are not
> present then print warning and continue so that backward compatibility
> will be preserved in driver.
> During error interrupts from memory controller, appropriate registers
> from these channels need to be accessed for logging error info.
> 
> Reviewed-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> Signed-off-by: Ashish Mhetre <amhetre@nvidia.com>
> ---
>  drivers/memory/tegra/mc.c       |  6 ++++++
>  drivers/memory/tegra/tegra186.c | 34 +++++++++++++++++++++++++++++++++
>  drivers/memory/tegra/tegra194.c |  1 +
>  drivers/memory/tegra/tegra234.c |  1 +

This does not apply, neither on my mem-ctrl-next, nor on master.
Probably because tegra234 is somewhere else (Thierry?). Either you send
it without tegra234 or it goes via Thierry's tree.

Best regards,
Krzysztof
