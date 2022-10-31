Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BFEE161319D
	for <lists+devicetree@lfdr.de>; Mon, 31 Oct 2022 09:21:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229468AbiJaIVZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Oct 2022 04:21:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229677AbiJaIVY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Oct 2022 04:21:24 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2B45BF50
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 01:21:22 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id z14so14824979wrn.7
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 01:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=B6O0yq/kArzQA3EjTthD7t4BqBLyfgCNNdUUmUdG3qU=;
        b=n2+3G4DwdjxIILUE+TM1kBRvlJ1r5Ef4wwxfEB/z9yEBBjVQ/zvTcveHW9rytFRzZN
         iVHADrFJWkyY26if4PdWZoAaE0CItMH7Xmg2k2W9Ac59XLxBsyqSegC/t4CnJLX5hHkJ
         aObwh9I8MtBOJPyx+s9NrarMSicJBG7k4aZ0Hit0+vNkjQddSvkm5uMR1Tb47CGyfbND
         o0RGKndoy4qEzSCXdIChH1tTDQVcS6+w9R1Lq7HpJEHuuRA7oVLoMc0nQnfUf+hOjRAD
         GJHmxc0P6ipbwEz+FwcPaBve7R3ajScbNjxOGJ/7X35Kq3M7BMeQw9bN9YK8qkUQ2H3U
         m6BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B6O0yq/kArzQA3EjTthD7t4BqBLyfgCNNdUUmUdG3qU=;
        b=N6/RoPHj0AG4GDAQhWQJlle4KHSodE3699x5RoUPS4u359x75YSLkSnZG+bfA70CNm
         hkoumbLT0LH0ebBw3pzi28IARdZ1fZ2p5PTM1s13OIthCbuOMW4UV0x5+Tg2gWkw++Lz
         hJUceaycwS4Zm3H4a20Z1HDCkI5/wDviHGpUq3ZrrkFs1u2dqd+0vpftYibKHOaPwtHa
         Zc0p7EN5tb75LAXls1Zs26+RDj3nQ099/Ma0+IHH43NHeNs2dOF3rZF3FNa7wKECjJ/I
         JEpm/gaEqeFuMxU07uU5pNDmjVfTVJIA4IMOd7K4eHuRoxo/9/WdBgr9+FVu+ai085bt
         4Sdg==
X-Gm-Message-State: ACrzQf3uixtpeMbNTUh5h11cNo2dk0hlZXnnwH+MwiPg8cYRbMgLp7gf
        7EiR8+kCzi307kly2wHMxbCwxQLIxzqABg==
X-Google-Smtp-Source: AMsMyM57VcVHDP0Am5dwUDQkFQhUoaIjsha3sPb6oMcU0/C65JrHbcwoqHOdZqTThXawgWqT7nV1Dw==
X-Received: by 2002:adf:f88b:0:b0:236:7134:d4ec with SMTP id u11-20020adff88b000000b002367134d4ecmr6779896wrp.669.1667204481398;
        Mon, 31 Oct 2022 01:21:21 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:898:f380:f572:21f0:736:a7ca? ([2a01:e0a:898:f380:f572:21f0:736:a7ca])
        by smtp.gmail.com with ESMTPSA id k3-20020a05600c1c8300b003c6b7f5567csm21814431wms.0.2022.10.31.01.21.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Oct 2022 01:21:21 -0700 (PDT)
Message-ID: <3ee78024-036d-d459-50a6-9402a79aee89@linaro.org>
Date:   Mon, 31 Oct 2022 09:21:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCHv2 5/6] arm64: dts: meson: remove clock-frequency from rtc
Content-Language: en-US
To:     Sebastian Reichel <sebastian.reichel@collabora.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Heiko Stuebner <heiko@sntech.de>,
        linux-rockchip@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-rtc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@collabora.com
References: <20221024165549.74574-1-sebastian.reichel@collabora.com>
 <20221024165549.74574-6-sebastian.reichel@collabora.com>
Organization: Linaro Developer Services
In-Reply-To: <20221024165549.74574-6-sebastian.reichel@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/10/2022 18:55, Sebastian Reichel wrote:
> 'clock-frequency' is not part of the DT binding and not supported by the
> Linux driver.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>   arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts | 1 -
>   arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts      | 1 -
>   arch/arm64/boot/dts/amlogic/meson-gxm-minix-neo-u9h.dts    | 1 -
>   3 files changed, 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
> index 6ab1cc125b96..202deb4e2d63 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
> @@ -140,7 +140,6 @@ rtc: rtc@51 {
>   		compatible = "haoyu,hym8563";
>   		reg = <0x51>;
>   		#clock-cells = <0>;
> -		clock-frequency = <32768>;
>   		clock-output-names = "xin32k";
>   	};
>   };
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
> index f43c45daf7eb..b21172ece1fa 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
> @@ -270,7 +270,6 @@ rtc: rtc@51 {
>   		compatible = "haoyu,hym8563";
>   		reg = <0x51>;
>   		#clock-cells = <0>;
> -		clock-frequency = <32768>;
>   		clock-output-names = "xin32k";
>   	};
>   };
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-minix-neo-u9h.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-minix-neo-u9h.dts
> index b8ef3bd8b840..1703da3235ea 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxm-minix-neo-u9h.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxm-minix-neo-u9h.dts
> @@ -89,7 +89,6 @@ rtc: rtc@51 {
>   		compatible = "haoyu,hym8563";
>   		reg = <0x51>;
>   		#clock-cells = <0>;
> -		clock-frequency = <32768>;
>   		clock-output-names = "xin32k";
>   		wakeup-source;
>   	};


Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
