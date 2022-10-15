Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE8D85FFA28
	for <lists+devicetree@lfdr.de>; Sat, 15 Oct 2022 15:08:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229493AbiJONI3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 Oct 2022 09:08:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbiJONI1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 15 Oct 2022 09:08:27 -0400
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com [IPv6:2607:f8b0:4864:20::729])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0A6B43638
        for <devicetree@vger.kernel.org>; Sat, 15 Oct 2022 06:08:23 -0700 (PDT)
Received: by mail-qk1-x729.google.com with SMTP id o22so4146334qkl.8
        for <devicetree@vger.kernel.org>; Sat, 15 Oct 2022 06:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fjC7jEytVKXJVgRjARBxS9bRABpR9vl2xMPYrpvZuQI=;
        b=QClVS7NUb/iB5Ua8GQ16TmTF5F7UL8N5mD2YXniExkTfOcF1P/7mcvUdPMeOSVSn64
         9d5sd6jLfM8KqdxZxlb7G7NOf9lw3eop2iUZuuY6xs8mxizX/LpwSqveX56DZDeySgBN
         XlMkOC8KDBUfNn19uMfP9VACRucW6dKLm2gnJqWB/st7SsMgUrmhBh3Pgujhe316WolF
         MGeNRU30fWmgX6R2v07IwfbdrQfX+gRcjltTCLd0hRjlk+Vh+iZ+rh77BhuN2j5U7aJX
         Zm8f1kt3R5fxGxaAYCgMzzqEm28SiBt2IJOAD3LyHgubNOYK5296sfKbOFKsBhQb2OR3
         qqAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fjC7jEytVKXJVgRjARBxS9bRABpR9vl2xMPYrpvZuQI=;
        b=PH5ux9srl8ikUnCT4uMLyuqK6NmbB5jM4sn1FgV0IgiKqyWnlpthRekHuoUY7rnTpB
         iKIx41sDLPKtwHiFPhimPpQaSevT4jzrzpr69aXCSvDINcxQOSu+LGBYVfEpgILCUYDQ
         yakK/oxEn3jSCrpZlRY79lRCqEX2M/5gPygBY29/5Rb7VpwzN2q2wOxopdH2ERKHbkF7
         Wv7qudzw4Wpp+dZv9LcP8it9H6IJQkYRM8r/NiatpPGDYJnx7VA2XVh0SglEJ7Re/0Et
         WUeq2TjoAoE7i8PTM4jWaGBDdx+Cc0r6Z77GO2A+wUGhGSqu9Crh/mHYmSdxHWnJlaNQ
         7LtQ==
X-Gm-Message-State: ACrzQf1keIksC7+Vjg1QeZX6sMLzl33vvHh/3bir8+5INSoDYzlpqBND
        rGPo3QielDrspBrQGxt8YG9bkQ==
X-Google-Smtp-Source: AMsMyM7EAMOkskKHaPAzb9I+BlOWpqmDe9R7GT7hLAwdENiMFx108c+lpI3KR/CDo91zj6P15+fuUg==
X-Received: by 2002:a05:620a:454e:b0:6ec:61a0:1865 with SMTP id u14-20020a05620a454e00b006ec61a01865mr1741589qkp.414.1665839302985;
        Sat, 15 Oct 2022 06:08:22 -0700 (PDT)
Received: from ?IPV6:2601:42:0:3450:161:5720:79e9:9739? ([2601:42:0:3450:161:5720:79e9:9739])
        by smtp.gmail.com with ESMTPSA id 66-20020a370745000000b006cfc1d827cbsm4597308qkh.9.2022.10.15.06.08.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Oct 2022 06:08:22 -0700 (PDT)
Message-ID: <28fe43a1-426d-e08e-35af-a315197acfba@linaro.org>
Date:   Sat, 15 Oct 2022 09:08:21 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH] dt-bindings: ti-serdes-mux: Add defines for J784S4 SoC
Content-Language: en-US
To:     Matt Ranostay <mranostay@ti.com>, peda@axentia.se,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        vigneshr@ti.com
Cc:     devicetree@vger.kernel.org
References: <20221015055024.191855-1-mranostay@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221015055024.191855-1-mranostay@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/10/2022 01:50, Matt Ranostay wrote:
> There are 4 lanes in the single instance of J784S4 SERDES. Each SERDES
> lane mux can select up to 4 different IPs. Define all the possible
> functions.
> 
> Signed-off-by: Matt Ranostay <mranostay@ti.com>
> ---
>  include/dt-bindings/mux/ti-serdes.h | 62 +++++++++++++++++++++++++++++
>  1 file changed, 62 insertions(+)
> 
> Related patchset series for j784s4 support:
> Link: https://lore.kernel.org/linux-arm-kernel/20221014082314.118361-1-a-nandan@ti.com/
> 
> diff --git a/include/dt-bindings/mux/ti-serdes.h b/include/dt-bindings/mux/ti-serdes.h
> index d3116c52ab72..669ca2d6abce 100644
> --- a/include/dt-bindings/mux/ti-serdes.h
> +++ b/include/dt-bindings/mux/ti-serdes.h
> @@ -117,4 +117,66 @@
>  #define J721S2_SERDES0_LANE3_USB		0x2
>  #define J721S2_SERDES0_LANE3_IP4_UNUSED		0x3
>  
> +/* J784S4 */
> +
> +#define J784S4_SERDES0_LANE0_IP1_UNUSED		0x0

You shouldn't store register values in the bindings. It's not their
purpose and there is no single need.

Although pattern already started here, so that's not a problem of this
patch:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

