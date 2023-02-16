Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F19066994CF
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 13:52:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229627AbjBPMwQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 07:52:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229674AbjBPMwP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 07:52:15 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 907CC269F
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 04:52:13 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id z13so1502414wmp.2
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 04:52:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=3fURNFwbiEdBhrpBfrsEhNqdNbbdKyGMjFWCZrl9ICw=;
        b=MJSZe0XdE7hWpZfFDi3EAkuzdy7c8YEweCJMwKpcADEai0u15DFqmcOkoDvjExQTNa
         PGvJhh9XBhw+UlOIjzHld3Z4O/lHXZ9C8pFO+ro0isFF2RQ5zY2K/WpESSPUOPNeCjoq
         qgabMPLc1NtSucZ27e1l/6zEIEtkMJxo7xgmEVyh87W4Gcljm/psyRzfY6g0ThJdTlI5
         7LuIoRsBmosiX4RMdTXEMoOTJ3whb/qzFnzNk+EwuL7NeeecTUc9SdpT9iiAEXlYrp5Y
         CZhO2/lEDx4zE4tyB8FjuUYCICQHMS+dWFhicTSx3izpzO2TnpSdIfK2Dj//V1eslWid
         ooxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3fURNFwbiEdBhrpBfrsEhNqdNbbdKyGMjFWCZrl9ICw=;
        b=IRquVJon5D1hnyw8F1waPjdXro6wDsZ6TDI4kbTej5BlNDNI8pEDmpRsJblP2sZJvC
         Ps6qf0Oiyh8waJO6yW7FfnnwyEWEwFqOJrCDbTSDEh4A5sZ6v+wkI040dGWcPsA4Zr/f
         yAXaa/GLuMZJrhocfQetYtR9QXqr8WvANCLxCdIcYOyU1dQHKxUfuFJ0HDRGc2ndBOIm
         PbDBWLwc+LMdRqum9NX4UpJGybyTBuSnCN65JVvz7MufZBSoNxxQWf61AqaSnqt5cNyH
         /z99Z25IO1F24ErPTT6UzBktdvALhStKbiyRuJ6KKX7BgnMmTa80+cSq9ai1LGrnzTsv
         2ruA==
X-Gm-Message-State: AO0yUKV9S1mDjEOia1THqm7NECQ1Skr5aGFhS0orTYNhwwyAFZaqN0zr
        J32GPOpA7hUf4g3H+d4Wz1vwI728YxlPlY51izE=
X-Google-Smtp-Source: AK7set94rPRKvqc3t74D75F2PTN7qeKsoMoOgT33uDhuTptxL7rcZglfbf8sW5s9AoblSSdXHQpAGg==
X-Received: by 2002:a05:600c:4b29:b0:3e2:147f:ac1a with SMTP id i41-20020a05600c4b2900b003e2147fac1amr1256780wmp.21.1676551932009;
        Thu, 16 Feb 2023 04:52:12 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:13e4:d5bc:1ce7:c1b6? ([2a01:e0a:982:cbb0:13e4:d5bc:1ce7:c1b6])
        by smtp.gmail.com with ESMTPSA id a4-20020a05600c348400b003df5be8987esm5308945wmq.20.2023.02.16.04.52.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Feb 2023 04:52:11 -0800 (PST)
Message-ID: <21ae5f5f-2336-db5b-f98a-f83391e1becd@linaro.org>
Date:   Thu, 16 Feb 2023 13:52:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] dt-bindings: mmc: meson-gx: fix interrupt binding
Content-Language: en-US
To:     Heiner Kallweit <hkallweit1@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <d5542f6e-920e-93cf-a453-b0601d03f48d@gmail.com>
Organization: Linaro Developer Services
In-Reply-To: <d5542f6e-920e-93cf-a453-b0601d03f48d@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/02/2023 12:49, Heiner Kallweit wrote:
> Reflect in the binding that the cd interrupt is optional,
> and add a description of the interrupts.
> 
> Fixes: 09b31a610328 ("dt-bindings: mmc: meson-gx: support specifying cd interrupt")
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---
>   .../devicetree/bindings/mmc/amlogic,meson-gx-mmc.yaml         | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/amlogic,meson-gx-mmc.yaml b/Documentation/devicetree/bindings/mmc/amlogic,meson-gx-mmc.yaml
> index c8c30300d..cd3f75821 100644
> --- a/Documentation/devicetree/bindings/mmc/amlogic,meson-gx-mmc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/amlogic,meson-gx-mmc.yaml
> @@ -28,7 +28,11 @@ properties:
>       maxItems: 1
>   
>     interrupts:
> +    minItems: 1
>       maxItems: 2
> +    description:
> +      mmc controller instance interrupt
> +      optional card detect interrupt

I would instead write:

interrupts:
   minItems: 1
   items:
     - description: mmc controller instance
     - description: card detect

and drop maxItems.

Neil
>   
>     clocks:
>       maxItems: 3

