Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A5A36921BD
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 16:14:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232372AbjBJPOn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Feb 2023 10:14:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232530AbjBJPOm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Feb 2023 10:14:42 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CB395774A
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 07:14:41 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id r2so5374485wrv.7
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 07:14:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ZuYyqtTfQoaB/YinZiK/H1Kg2PxBItRwrhxGc1ifTPY=;
        b=QDUWpLtpzE+XalO0fqwhj1CLkdX2Ddht71y5GiHaN93Qp19hkDkz1jxukzpufMfNfT
         1hmEh6rPxwvY5xJtNp6xwhU5cxsRLwA+lCM60nZdl8yUk5onQAwlWLDZClgCNYPR3saD
         A2vkFUtARs4jLNcb4Olg9a+Dca45YYZSBtce/dme+XvGI4Cf4fKq9FsdTdcO175U3v9b
         g5eKWUgFggkkv4tGy7hkFGUaG63TYLyuSlT8j+0EnSGxNm+vaXp4QyEoGTHSWLgy7wbI
         A4firhDZXW1opDS5uPOvDCFl7jnx+o5xH6GXGnjXcrdWGeDzbRrk//6yTqSMl7x/0LgE
         5YxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZuYyqtTfQoaB/YinZiK/H1Kg2PxBItRwrhxGc1ifTPY=;
        b=0jNUMc23iU4J2ebJx6C7kgCEmuprhN3YobIlox96r6HQwCd2pB9gziVXvaJfX/7kCP
         HGmJlxn2BJxLY681aiwQGzpYsCrWhX2gzKnqdNhz0V61JvrckKc2zhYXl5JujQr1+KuX
         Nre77+AxbzIdYlnFmO3Sv60cmA+LZAqictq5xbMgEJQAIzLQMNEzCHEm3KkKDVol0gJV
         vRztx6OwaCTuNRkZ/n2TG0Bbjf0w2NFMO53HHCtqYC3DX9TI0CyxLdfPJg9s6j+r4yw3
         p8gjRboBjiMrnofIvdN7ymL3vV4phm9kK1cOrO0RhlpEWSmW3FaYQNyoOfyy53z9cSAm
         zQ9w==
X-Gm-Message-State: AO0yUKUEz5wZbWyondnMznlRr8PZLb9LngtPUj+uCqVWszhPsjcHacdV
        t8EqbXzr+dIolGjYtq7jUWwP8g==
X-Google-Smtp-Source: AK7set+nlaHpmo6Bs3gY2OVBvVY1h55OP7NP0XAGbd/Fjf9fgUN2YGOeCg4yPACuTKPR8BEkKlNEqA==
X-Received: by 2002:a5d:60c6:0:b0:2bf:f735:1310 with SMTP id x6-20020a5d60c6000000b002bff7351310mr14873983wrt.2.1676042079709;
        Fri, 10 Feb 2023 07:14:39 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:5a65:5553:55cf:3027? ([2a01:e0a:982:cbb0:5a65:5553:55cf:3027])
        by smtp.gmail.com with ESMTPSA id a1-20020adff7c1000000b002c54a2037d1sm1688188wrq.75.2023.02.10.07.14.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Feb 2023 07:14:38 -0800 (PST)
Message-ID: <304e5e96-5387-4e72-b1ba-6dc28afea9cc@linaro.org>
Date:   Fri, 10 Feb 2023 16:14:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/3] arm64: dts: meson: gxbb-kii-pro: complete the
 bluetooth node
Content-Language: en-US
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Ferass El Hafidi <vitali64pmemail@protonmail.com>
References: <20230210122817.1027765-1-christianshewitt@gmail.com>
 <20230210122817.1027765-3-christianshewitt@gmail.com>
Organization: Linaro Developer Services
In-Reply-To: <20230210122817.1027765-3-christianshewitt@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/02/2023 13:28, Christian Hewitt wrote:
> Add missing content to the bluetooth node to align it with the content
> used in (all) other GXBB dts files.
> 
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> Tested-by: Ferass El Hafidi <vitali64pmemail@protonmail.com>
> ---
>   arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts
> index 9bfdb54d912a..435ae2aa404e 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts
> @@ -72,5 +72,10 @@ &uart_A {
>   
>   	bluetooth {
>   		compatible = "brcm,bcm4335a0";
> +		shutdown-gpios = <&gpio GPIOX_20 GPIO_ACTIVE_HIGH>;
> +		host-wakeup-gpios = <&gpio GPIOX_21 GPIO_ACTIVE_HIGH>;
> +		max-speed = <2000000>;
> +		clocks = <&wifi32k>;
> +		clock-names = "lpo";
>   	};
>   };

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
