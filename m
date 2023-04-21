Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1E696EA560
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 09:56:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231479AbjDUH4r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 03:56:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231562AbjDUH4S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 03:56:18 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3E2C976A
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 00:55:36 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-94f3df30043so183477566b.2
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 00:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682063735; x=1684655735;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=icCkL2wTulVKK7rxSu5Chcaz3mQsRWh3/xnVNzWjUns=;
        b=kvKb+oBZetN+GOuGfTTVBss4GILjlOjsLI9uDKFkBaIoQ8wwohYAhwf8ZvVMEZeH0F
         X/P4ApW0xUbmIzq9GWu258NygxVWbSbPxODSs33OcEW3VDYnqs7gbYdLfoMNvexMEUD0
         0uh5Mq0ZDGa1ihPEFlmpxeXJ6UWxkLBTH7hO4S9y+vkNwyl6fNjzig+kkuydvu+HCrgJ
         ijY0JqITmGS3lxWGgkJCfQRp9EkbZiMfuL8gct3FjnG5N62mivpGQM81Gja5XsaniSNd
         vC9EZdvbVZElguDnNucFWe05uc9P71MWDs9fzNlKO0RKf7e13LlD3I8WYtZcgsHnnqoI
         3Czw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682063735; x=1684655735;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=icCkL2wTulVKK7rxSu5Chcaz3mQsRWh3/xnVNzWjUns=;
        b=I8UCGciRB4h59ozWBz+RR11OmMjKxuQpqu2Hr6RxcvEaP3/SY0j2y6ypeC6UFNNIZc
         HIVNwWD+4PSR1dKGYpou6zj8jqxxpHFWnj2lMRHPcxAEjJ4OAlDLvnRX+6bZvn6+Izez
         DsxRDbdChUOmPmWqD6udD3iqs5Uxc764Dq8YcOBm19oYWKix8SQwjVXHJ209auhimkF7
         xgpRZ48q2FoqGwD5HO1WyOrZw9HvfHvWjz3NC9lvhqhcEysgWjbq4O3qra9YVus7N/nR
         OinyL0pNGHfzXglUj8qVRVekPmZjf7Xbxx6xyywuRYJdlTpYXd/ebmktGFsBNi3HOr/6
         5q3A==
X-Gm-Message-State: AAQBX9dN/pQ89tVxLQZtJlMB0fQYzM+LBqVjgxIjwU/xf9qNZoRJRDL0
        +YGjUefKjaSbd7cmfksZVyXltw==
X-Google-Smtp-Source: AKy350Z2Dy5TumdB1/mpdTNLYgUfb6R6xvVIqMJQdqDBTZFRF1QsCz9+chCegvX3M+zt9XWrEkQpVQ==
X-Received: by 2002:a17:906:c287:b0:94f:6852:549b with SMTP id r7-20020a170906c28700b0094f6852549bmr1838699ejz.9.1682063735142;
        Fri, 21 Apr 2023 00:55:35 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:668b:1e57:3caa:4d06? ([2a02:810d:15c0:828:668b:1e57:3caa:4d06])
        by smtp.gmail.com with ESMTPSA id bp23-20020a170907919700b0094f44bdf7acsm1750560ejb.57.2023.04.21.00.55.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 00:55:34 -0700 (PDT)
Message-ID: <d3bbd951-67b0-95a3-8f26-a100d6ed12e6@linaro.org>
Date:   Fri, 21 Apr 2023 09:55:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v3 2/3] ARM: dts: Add nvmem node for BCM2711 bootloader
 public key
Content-Language: en-US
To:     "Ivan T. Ivanov" <iivanov@suse.de>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Tim Gover <tim.gover@raspberrypi.com>
References: <20230420122924.37997-1-iivanov@suse.de>
 <20230420122924.37997-3-iivanov@suse.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230420122924.37997-3-iivanov@suse.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/04/2023 14:29, Ivan T. Ivanov wrote:
> From: Tim Gover <tim.gover@raspberrypi.com>
> 
> Make a copy of the bootloader secure-boot public key available to the OS
> via an nvmem node. The placement information is populated by the
> Raspberry Pi firmware[1] if a public key is present in the BCM2711
> bootloader EEPROM.
> 
> [1] https://www.raspberrypi.com/documentation/computers/configuration.html#nvmem-nodes
> 
> Signed-off-by: Tim Gover <tim.gover@raspberrypi.com>
> [iivanov] Added link to documentation.
> Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>
> ---
>  arch/arm/boot/dts/bcm2711-rpi.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/bcm2711-rpi.dtsi b/arch/arm/boot/dts/bcm2711-rpi.dtsi
> index 98817a6675b9..e30fbe84f9c3 100644
> --- a/arch/arm/boot/dts/bcm2711-rpi.dtsi
> +++ b/arch/arm/boot/dts/bcm2711-rpi.dtsi
> @@ -15,6 +15,7 @@ aliases {
>  		ethernet0 = &genet;
>  		pcie0 = &pcie0;
>  		blconfig = &blconfig;
> +		blpubkey = &blpubkey;
>  	};
>  };
>  
> @@ -67,6 +68,19 @@ blconfig: nvram@0 {
>  		no-map;
>  		status = "disabled";
>  	};
> +
> +	/*
> +	 * RPi4 will copy the binary public key blob (if present) from the bootloader
> +	 * into memory for use by the OS.
> +	 */
> +	blpubkey: nvram@1 {
> +		compatible = "raspberrypi,bootloader-public-key", "nvmem-rmem";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		reg = <0x0 0x0 0x0>;
> +		no-map;
> +		status = "disabled";

Why this is disabled? What external resources are missing?

Best regards,
Krzysztof

