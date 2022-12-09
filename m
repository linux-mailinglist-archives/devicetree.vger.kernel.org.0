Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 003A4647F6A
	for <lists+devicetree@lfdr.de>; Fri,  9 Dec 2022 09:40:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229807AbiLIIkN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Dec 2022 03:40:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229775AbiLIIkE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Dec 2022 03:40:04 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6490A60E9D
        for <devicetree@vger.kernel.org>; Fri,  9 Dec 2022 00:39:52 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id y25so5936239lfa.9
        for <devicetree@vger.kernel.org>; Fri, 09 Dec 2022 00:39:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/O5h04PEE+ASwOC4yZVV1MN8tZ7/07CpqnbwV/QNyBc=;
        b=vayNdAAy9o5wMVJc65uANQqa9ES1RCQR1w0PAAiENZdEpf/du+Zx5xBbUAQ45ooH8J
         HUhC7y5au/1d1/Qqbwx2/af1FKsVft4S8op0mdjv4+IkXxDbYePTgY4z203RJiG0rvtH
         NazYoSmdxsMW6q9m+GaV7NcZX3mO0zAXvrcXV1Gtpx83CXmPvFVw0hh5bgY6UCE94TQ1
         FbOERFZpE0NRdEGYYwj6MjPBduhaWz9KVaevYGAg+6Cr7eOuuFRZ0YXBVaFrQLaZfRq/
         XG4KiGeYmWcDAelz1y6mLDEuv9kjWoYc8rSh1P1Ynh++tbDSGIBxup5dKjMzpauWJfSh
         r7uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/O5h04PEE+ASwOC4yZVV1MN8tZ7/07CpqnbwV/QNyBc=;
        b=GJ9cwqvCLEsrgLmpp7fA2WY7KLn0GT954x9ywyKw0vuwbYI5ei3Jv5RUv9pcpElc3M
         XSJ7XwyTgbJ+sqAnHVIp8fPNW9oFeVRmDRpGyI3i5wrOyBc6vTqvEIxmAdXtL/W9CDVn
         BjOBfQGhRsSHm5fs8lnKaMnDzaARHKp/R3qNZhKc05uHfFIFJdI1FH0L9QViiDVYinsK
         P1gW4u+xKfPIBh8R4SOWr7M16CfIS18uqey4ZJcyfmrwPgbkGAgZ6pDNmqfBTRFPSuGW
         bIM4bCou41vmfWTUDmP44xvf4gJo2ebhB/dp0ZYA1U1DiLMcgbKGE7ZmshKx5Fz/MILx
         pujA==
X-Gm-Message-State: ANoB5pkbM2w8riRGCavrRtuog0h6b0OL4cNx2U17ew1ujUo7UitSp5hC
        kfNnykPm5AAX/cCB9eVVnuUtiA==
X-Google-Smtp-Source: AA0mqf5YLeUewxpyIwaAS1tTiG2Um6Z20fBicXYa41DQoajn1Cy5lhYmJtOYvHKsiFWZ3J8AeUaetA==
X-Received: by 2002:a05:6512:224e:b0:4a4:68b7:e74a with SMTP id i14-20020a056512224e00b004a468b7e74amr1753878lfu.52.1670575190758;
        Fri, 09 Dec 2022 00:39:50 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id j3-20020ac25503000000b004b5748fa3afsm167050lfk.107.2022.12.09.00.39.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Dec 2022 00:39:50 -0800 (PST)
Message-ID: <07fbe219-9034-65f6-963a-037de9bb6d79@linaro.org>
Date:   Fri, 9 Dec 2022 09:39:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 1/2] dt-bindings: drm/bridge: ti-sn65dsi83: Add enable
 delay property
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Marek Vasut <marex@denx.de>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
References: <20221209083339.3780776-1-alexander.stein@ew.tq-group.com>
 <20221209083339.3780776-2-alexander.stein@ew.tq-group.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221209083339.3780776-2-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/12/2022 09:33, Alexander Stein wrote:
> It takes some time until the enable GPIO has settled when turning on.
> This delay is platform specific and may be caused by e.g. voltage
> shifts, capacitors etc.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  .../devicetree/bindings/display/bridge/ti,sn65dsi83.yaml      | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> index 48a97bb3e2e0d..3f50d497cf8ac 100644
> --- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> @@ -32,6 +32,10 @@ properties:
>      maxItems: 1
>      description: GPIO specifier for bridge_en pin (active high).
>  
> +  ti,enable-delay-us:
> +    default: 10000
> +    description: Enable time delay for enable-gpios

Aren't you now mixing two separate delays? One for entire block on (I
would assume mostly fixed delay) and one depending on regulators
(regulator-ramp-delay, regulator-enable-ramp-delay). Maybe you miss the
second delays in your power supply? If so, the first one might be fixed
and hard-coded in the driver?


Best regards,
Krzysztof

