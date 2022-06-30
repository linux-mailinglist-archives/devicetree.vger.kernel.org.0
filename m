Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DB765622F2
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 21:18:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236377AbiF3TS4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 15:18:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232971AbiF3TS4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 15:18:56 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B575340C3
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 12:18:55 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id o25so8410870ejm.3
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 12:18:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=7w5OzUyrKBr7BCgXCHhdgRFzQT4xsZpFPm8KzjByaI4=;
        b=zCeMUNOfntMVAU5Y7fXXHfAKu+zJfL/KMa4HLDyGpOVZ6UdbmR1l/o+NZx+u+y4SO7
         Jz5KU6n1YkD1wXb2Nevnugb1+jC1XVcReK/TCp5LH606t+u08i3wBZ6KU6EOAlJggHRJ
         EDBYU4P04OevgoI32J/3BnD4FzAg8fLl1h7Wi1dKbEuiYGqcjGrWUfFlnyBxEyqR3dOS
         OLOLxNl2MzWfwc+OljIXYPHPtZ7dIsBz7arrBlL6Smt6GbZIp70d2TxNXQ5sK93pPYxD
         0+2M161XdiC3Bf8GRfhb94lzGZtSk2eYo3Ce/tcXu70Cy02diKj8ms9p8skb9yRI/mnN
         5KOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=7w5OzUyrKBr7BCgXCHhdgRFzQT4xsZpFPm8KzjByaI4=;
        b=P3E6Dl7a/Pd6jWXgXJUNJdO39h/5RoDbr81KkF/WvO3BTCSEXYC6E/4SJ0Ze7I6R1b
         8LPeypTQnJpX3q2blJAeEMKOvmCak6Jl4gUithpTffeM5OxwXAoJ8QouYXlsfd7ebeAQ
         XNauBwapzIsZHNNCKF0ptbMIGJCOFn9G7UFSiChMXGJnxzhBcJh4l+HHsGJjAuvwl4Xa
         w5v3JMCAk4UH72O0kA4eab1bTI2Q67lI02cGdcFt4xb339VA+L9wZshTU48ObYdntIPv
         mNvSwzR1uW48adU2y5G2vQ6aAEZMPlsOD7DwdKGPyoUFwoo78VhFNrxLopyW3mgDDutW
         Kamw==
X-Gm-Message-State: AJIora8eRRVpiixNZ5H9MQCIM3M2vbH3x3mdzFuRmcCcixkwUb+67+GG
        aNXRm+ugLcFQjtBxLZE+be/kBg==
X-Google-Smtp-Source: AGRyM1srhyIGbBAQSZ2gSpw2QM/aUcoX6PxApzziyDFXIwNHe90zVHuEOcJjIkuOrCKF39Lp0gJwIg==
X-Received: by 2002:a17:906:7482:b0:722:ea8f:3a12 with SMTP id e2-20020a170906748200b00722ea8f3a12mr10565319ejl.220.1656616733710;
        Thu, 30 Jun 2022 12:18:53 -0700 (PDT)
Received: from [192.168.0.190] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id q22-20020aa7da96000000b004357cec7e48sm9859911eds.13.2022.06.30.12.18.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jun 2022 12:18:52 -0700 (PDT)
Message-ID: <116f0087-17d1-652f-23f5-b114e6082273@linaro.org>
Date:   Thu, 30 Jun 2022 21:18:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH net-next 4/4] ARM: dts: lan966x: use new
 microchip,lan9668-switch compatible
Content-Language: en-US
To:     Michael Walle <michael@walle.cc>,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Horatiu Vultur <horatiu.vultur@microchip.com>
Cc:     UNGLinuxDriver@microchip.com, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220630140237.692986-1-michael@walle.cc>
 <20220630140237.692986-5-michael@walle.cc>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220630140237.692986-5-michael@walle.cc>
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

On 30/06/2022 16:02, Michael Walle wrote:
> The old generic microchip,lan966x-switch compatible string was
> deprecated. Use the new one.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---
>  arch/arm/boot/dts/lan966x.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/lan966x.dtsi b/arch/arm/boot/dts/lan966x.dtsi
> index 48971d80c82c..da0657c57cdf 100644
> --- a/arch/arm/boot/dts/lan966x.dtsi
> +++ b/arch/arm/boot/dts/lan966x.dtsi
> @@ -85,7 +85,7 @@ soc {
>  		ranges;
>  
>  		switch: switch@e0000000 {
> -			compatible = "microchip,lan966x-switch";
> +			compatible = "microchip,lan9668-switch";

While technically correct, the change cannot go via independent trees
and may break out-of-tree users of this DTS.

Usually the nicer way is to use two compatibles (the old as fallback).
Anyway, this one is fine with me - up to subarch maintainer.

Best regards,
Krzysztof
