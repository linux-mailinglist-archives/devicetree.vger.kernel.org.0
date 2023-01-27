Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BFE567EAC8
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 17:23:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234840AbjA0QX4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 11:23:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234846AbjA0QXy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 11:23:54 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4636383955
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 08:23:53 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id bg13-20020a05600c3c8d00b003d9712b29d2so5777444wmb.2
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 08:23:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=65MO12imV1nqCcpTeXSLh3c/aVlDLZs9NEXVWBJqWRk=;
        b=wVDHfwnW/Z2+BDsP/bNqlYsc+0Obb42FoQhtkUt3II9REyXmgmnN9Mnv9bbVeXBfRy
         +56GhmfJLXI/J64TBWemi9pxLT0PrwyXIgdO5HGtoOFKAUlfjcWkiaCTmtJThB8VmwUh
         LcByHD0PCiN3MabUOD0/xVnZiHPcYIezFr+QVPtC5yK2K18vrqjnmpOBWMgpMcyQMYnN
         fv58JdLgiEN/PI8SITq8NU06Rv+mq/02zbEac+Gnvo4i2izPeLKdKhjHe4+f7PLMZJBa
         rUuR1rMx2E1XsLDuYDlpA0w3wNC1urnmV/n1KPAqCwPrjuq2HpZIIYF+l8UTVUHBqByb
         sinQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=65MO12imV1nqCcpTeXSLh3c/aVlDLZs9NEXVWBJqWRk=;
        b=apSavw8T/L1O/avXsOgyLxjtVRVrYlbianM+sKbgwAcAQGbU9bnoGVw0iXI5tZzNkc
         xF0MqZGOf6/qrmm8l23yXBG2u+6Q5L3C/eAajdrXhnoHHetiW0TyyOUIGL3MbH/SfmqA
         qGrBKx8i8DkCAR5DhFR2LRBZyVYY/oyXjj8zczqz9CURW4xBx79mG4j1agWOr+AOSgRV
         3/YZY+9cHxX+JxExCKphs2GEzXs3qJx1EDHrZoo2mS96N9X5G4zOsj5WAKakoZRSlzLV
         uudahUoDAa6gAj4q7TFkri04shWfGdAQ/3s/26ig4txj8UxToDkkcq64RJUVXsvOKoq7
         dFew==
X-Gm-Message-State: AFqh2kqSj9Fj6E7HPEL+poG2fZDSokzi2X4xKfsft/1F2RI/d1Gq1zq9
        Eb8mfyITOmnAnFug1CWTXkRivQ==
X-Google-Smtp-Source: AMrXdXuidEmKRArhNg4hR1+6a9tqUH+Fvwc/xoaTWpcivHWXGGhJYiSN6tDkGVlXLzZqW9icUMm8dg==
X-Received: by 2002:a05:600c:1d22:b0:3d9:6bc3:b8b9 with SMTP id l34-20020a05600c1d2200b003d96bc3b8b9mr40855982wms.9.1674836631849;
        Fri, 27 Jan 2023 08:23:51 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:d4ec:15ea:873c:61e6? ([2a01:e0a:982:cbb0:d4ec:15ea:873c:61e6])
        by smtp.gmail.com with ESMTPSA id v6-20020a05600c444600b003db09692364sm9191058wmn.11.2023.01.27.08.23.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jan 2023 08:23:51 -0800 (PST)
Message-ID: <7e52a67a-ac64-2340-3b52-83e334440d7c@linaro.org>
Date:   Fri, 27 Jan 2023 17:23:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 2/5] arm64: dts: meson: bananapi-m5: remove redundant
 status from sound node
Content-Language: en-US
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230127142221.3718184-1-christianshewitt@gmail.com>
 <20230127142221.3718184-3-christianshewitt@gmail.com>
Organization: Linaro Developer Services
In-Reply-To: <20230127142221.3718184-3-christianshewitt@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/01/2023 15:22, Christian Hewitt wrote:
> The sound device is enabled by default so remove the redundant status.
> 
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>   arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts
> index 3c1267a7ffef..86f0afe6491e 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts
> @@ -233,7 +233,6 @@ sound {
>   		assigned-clock-rates = <294912000>,
>   				       <270950400>,
>   				       <393216000>;
> -		status = "okay";
>   
>   		dai-link-0 {
>   			sound-dai = <&frddr_a>;

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
