Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11F876CD4C3
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 10:37:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229549AbjC2Ig6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 04:36:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230351AbjC2Ig4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 04:36:56 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5937411C
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 01:36:55 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id e21so15260490ljn.7
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 01:36:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680079013;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M/xTfrQqdPOr1VUHDT+Xi7DQz6WS1kxLC72o+Ktlx4I=;
        b=p2o7LkjvWeqhqR1RKjzxBfXlcfSihucbat9diMVrvSv1WD6n2m2KAqwcWb80HfmP+y
         lKhKbl4FsRTq/u4Q8GMBGoqANkJseRef84IcyepO7CqkYgr0M7QHDfwWuHZAkQ5gWQYB
         tWrCJFcdSjk2I4Vumg3FQ3x5dXkH2Ht8KE/rp7R+LqZ7YBsH+AOoDX4A8NqXoE4FoqRC
         micX1WTx9Kreb0JbAF+IBhITjORuKQY3d0iO4edSlYrEn1Y2XJtCuxhmxn/mh5P0xNDB
         Dq6xvvB1EsWvD8vwLF/by8C5BkOptxQlTaz4eXg8q+DVcqxgAk3bhvuz8thicLLxm+mO
         aNKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680079013;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M/xTfrQqdPOr1VUHDT+Xi7DQz6WS1kxLC72o+Ktlx4I=;
        b=AlwZxAIVjc0huuAGOUo/TsBsL1sTPhILaFM3KS7gjHkdcbUMnlG+/GpTqVOiEM/DU3
         Bzt63prcfECJf6GGinFF0xzZk9Y7oBBsbDsJiChBNSQv7P+czDWCWN4gkTW3GE6+Aa0V
         a1i4+V8EfNpDuJaoPqc4KINfMkajLUr+k756pJpZUB8Xu7qKiAZ55iN5wZ9kMairq5oE
         Gy2zIozuHv/hrlS3644pLOpCa2Uh9RZfG8+xMXVQfxbDlB1tfbUWUbTexnkWexIobzqk
         fZFEhuM7uR4PVLNsTo/LRvLQ988a8PUCSjp66F1xYCjp7k3brV9gclVG0KIIcG73DDyz
         uwqA==
X-Gm-Message-State: AAQBX9cN36Z9wC01HgxguCgUdnYCZjZVHQadCSjRlWY9YjnnyHBRYOgN
        YSMIJ7SyOE7hedgGGNUg521EugBMTz3gORB9HhRkRg==
X-Google-Smtp-Source: AKy350au2Z3WXceuIA+YYWZfaLMQVGEW7Enc0KrPMuuwmNNa7EeF+qBAEs5vHu4zkzvycHr2enqaEg==
X-Received: by 2002:a2e:a48e:0:b0:290:8289:8cba with SMTP id h14-20020a2ea48e000000b0029082898cbamr434794lji.8.1680079013617;
        Wed, 29 Mar 2023 01:36:53 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id n1-20020ac24901000000b004eb0c18efc2sm1712311lfi.221.2023.03.29.01.36.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Mar 2023 01:36:53 -0700 (PDT)
Message-ID: <b66f708c-5369-c1c9-5506-c609a245bf4c@linaro.org>
Date:   Wed, 29 Mar 2023 10:36:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v1 1/2] ARM: dts: aspeed: greatlakes: Add gpio names
Content-Language: en-US
To:     Delphine CC Chiu <Delphine_CC_Chiu@Wiwynn.com>, patrick@stwcx.xyz,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
References: <20230329083235.24123-1-Delphine_CC_Chiu@Wiwynn.com>
 <20230329083235.24123-2-Delphine_CC_Chiu@Wiwynn.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230329083235.24123-2-Delphine_CC_Chiu@Wiwynn.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,WEIRD_QUOTING autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/03/2023 10:32, Delphine CC Chiu wrote:
> From: Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>
> 
> Add GPIO names for SOC lines.
> 
> Signed-off-by: Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>
> ---
>  .../dts/aspeed-bmc-facebook-greatlakes.dts    | 49 +++++++++++++++++++
>  1 file changed, 49 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/aspeed-bmc-facebook-greatlakes.dts b/arch/arm/boot/dts/aspeed-bmc-facebook-greatlakes.dts
> index 8c05bd56ce1e..59819115c39d 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-facebook-greatlakes.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-facebook-greatlakes.dts
> @@ -238,4 +238,53 @@
>  &gpio0 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_gpiu1_default &pinctrl_gpiu7_default>;
> +	status = "okay";

Was it disabled before?

> +	gpio-line-names =
> +	/*A0-A7*/ "","","","","","","","",
> +	/*B0-B7*/ "power-bmc-nic","presence-ocp-debug",
> +		  "power-bmc-slot1","power-bmc-slot2",
> +		  "power-bmc-slot3","power-bmc-slot4","","",
> +	/*C0-C7*/ "presence-ocp-nic","","","reset-cause-nic-primary",
> +		  "reset-cause-nic-secondary","","","",
> +	/*D0-D7*/ "","","","","","","","",
> +	/*E0-E7*/ "","","","","","","","",
> +	/*F0-F7*/ "slot1-bmc-reset-button","slot2-bmc-reset-button",
> +		  "slot3-bmc-reset-button","slot4-bmc-reset-button",
> +		  "","","","presence-emmc",
> +	/*G0-G7*/ "","","","","","","","",
> +	/*H0-H7*/ "","","","",
> +		  "presence-mb-slot1","presence-mb-slot2",
> +		  "presence-mb-slot3","presence-mb-slot4",
> +	/*I0-I7*/ "","","","","","","bb-bmc-button","",
> +	/*J0-J7*/ "","","","","","","","",
> +	/*K0-K7*/ "","","","","","","","",
> +	/*L0-L7*/ "","","","","","","","",
> +	/*M0-M7*/ "","power-nic-bmc-enable","","usb-bmc-enable","","reset-cause-usb-hub","","",
> +	/*N0-N7*/ "","","","","bmc-ready","","","",
> +	/*O0-O7*/ "","","","","","","fan0-bmc-cpld-enable","fan1-bmc-cpld-enable",
> +	/*P0-P7*/ "fan2-bmc-cpld-enable","fan3-bmc-cpld-enable",
> +		  "reset-cause-pcie-slot1","reset-cause-pcie-slot2",
> +		  "reset-cause-pcie-slot3","reset-cause-pcie-slot4","","",
> +	/*Q0-Q7*/ "","","","","","","","",
> +	/*R0-R7*/ "","","","","","","","",
> +	/*S0-S7*/ "","","power-p5v-usb","presence-bmc-tpm","","","","",
> +	/*T0-T7*/ "","","","","","","","",
> +	/*U0-U7*/ "","","","","","","","GND",
> +	/*V0-V7*/ "bmc-slot1-ac-button","bmc-slot2-ac-button",
> +		  "bmc-slot3-ac-button","bmc-slot4-ac-button",
> +		  "","","","",
> +	/*W0-W7*/ "","","","","","","","",
> +	/*X0-X7*/ "","","","","","","","",
> +	/*Y0-Y7*/ "","","","reset-cause-emmc","","","","",
> +	/*Z0-Z7*/ "","","","","","","","";
> +};
> +
> +&gpio1 {
> +	status = "okay";

Same question...
Best regards,
Krzysztof

