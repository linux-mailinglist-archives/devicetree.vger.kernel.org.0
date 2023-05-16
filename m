Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 000C9704BEF
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 13:10:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232526AbjEPLKc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 07:10:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232893AbjEPLJr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 07:09:47 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 802F540D0
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 04:09:11 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-3078c092056so7493331f8f.1
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 04:09:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20221208.gappssmtp.com; s=20221208; t=1684235309; x=1686827309;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7gmVftDtLW5Bq6pti6YafdEsiyUqyT43A2Omwaakxwk=;
        b=LwLsUZQCJ9BQm+uAyHzZjWlhXQdTr9J4Bzz7CyarXjqyV9Wl8W1qFQ44W8V9uc3lvE
         1Dunqagq3csnM7bIiopdwirCcF6jnHfX/9cdShBcQ96Xo1jNG3JoSGQzIDs8IDM6cKl6
         5x950rySQPYUQ+jqGZK1+wjxcju50YpN/WdHqErLf/xYldWJb49MfX3e9ZFfgpGgIxmd
         BY4M44MZfGcDLY7JAmzBX+6cUCgqLYsGUTiO2ABAJfKjs4lvrWv+iFsJRQlh836eqzcH
         9xnZvU2/A4YS7W8UUD7LgUekD0zwCFRUFg+mrDt1dvXO0Nj4ai3SVVEu6uLnyRlbWWdo
         d6cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684235309; x=1686827309;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7gmVftDtLW5Bq6pti6YafdEsiyUqyT43A2Omwaakxwk=;
        b=GGvv5VnI935I9ySzUe2KMBWAopTez8Jtwgndoa5J9tEVi5ufMZmkmzHBdOxGuyeks+
         BJSwVaaK1Aq1LPRv4sGVC/xyOpkyJr+pXUaA+WxGtR0P70+JYylwqCNdJq8RbxGtCkeQ
         gi7n87Do+dIz9RX1kLp4r3mWykbXLqmOaHxd9wyf6h6tkc7RKPc709mdKm64EzgFHEHj
         tx+0mQZJFLA0lJ0JKHGoiSdAcGWjJBS1GjD4zugIHB+rDrSfOg+MJbjhNL7N6KvAqL/s
         mfPjZCjWAN5lS7BNmvrVOFgfDGrvgcvDm3qbi6ozQNb9YzowDpUFYgsK5jCgpqVgCDWO
         mJMQ==
X-Gm-Message-State: AC+VfDysrgE4UmVptLMy4jIplORq0xOxi9xs7Jo7m9V14X5RUMnNstyR
        KcVXYkPmFFNXvUP3f8XdlnfJpw==
X-Google-Smtp-Source: ACHHUZ5q+O8uyKnuWnXJ2b2deTk+FtKps6LSn2B07jC3/SzOx8Vnt4UEPNhlJlCK6qfv3Wfv6tN3UQ==
X-Received: by 2002:a5d:69cc:0:b0:306:42bb:53be with SMTP id s12-20020a5d69cc000000b0030642bb53bemr26238529wrw.10.1684235308652;
        Tue, 16 May 2023 04:08:28 -0700 (PDT)
Received: from [192.168.0.105] (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id e10-20020a5d65ca000000b003078681a1e8sm2217158wrw.54.2023.05.16.04.08.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 May 2023 04:08:28 -0700 (PDT)
Message-ID: <1f1c83ea-7fc8-fa81-371a-a78c910b8a5e@monstr.eu>
Date:   Tue, 16 May 2023 13:08:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 15/23] arm64: zynqmp: Add pinctrl emmc description to
 SM-K26
Content-Language: en-US
To:     Michal Simek <michal.simek@amd.com>, linux-kernel@vger.kernel.org,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     Amit Kumar Mahapatra <amit.kumar-mahapatra@xilinx.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Parth Gajjar <parth.gajjar@amd.com>,
        Rob Herring <robh+dt@kernel.org>,
        Srinivas Neeli <srinivas.neeli@xilinx.com>,
        Vishal Sagar <vishal.sagar@amd.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <cover.1683034376.git.michal.simek@amd.com>
 <f61c16e2fd7c91c2be6d6b67c902037580dbd364.1683034376.git.michal.simek@amd.com>
From:   Michal Simek <monstr@monstr.eu>
In-Reply-To: <f61c16e2fd7c91c2be6d6b67c902037580dbd364.1683034376.git.michal.simek@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 5/2/23 15:35, Michal Simek wrote:
> Production SOM has emmc on it and make sense to describe pin description to
> be able use EMMC if it is not configured via psu_init.
> (Still some regs are not handled but this is one step in that direction)
> 
> Signed-off-by: Michal Simek <michal.simek@amd.com>
> ---
> 
>   .../boot/dts/xilinx/zynqmp-sm-k26-revA.dts    | 20 +++++++++++++++++++
>   1 file changed, 20 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts
> index c206021cccf7..e284979fd7b1 100644
> --- a/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts
> +++ b/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts
> @@ -14,6 +14,7 @@
>   #include <dt-bindings/input/input.h>
>   #include <dt-bindings/gpio/gpio.h>
>   #include <dt-bindings/phy/phy.h>
> +#include <dt-bindings/pinctrl/pinctrl-zynqmp.h>
>   
>   / {
>   	model = "ZynqMP SM-K26 Rev1/B/A";
> @@ -85,6 +86,23 @@ &uart1 { /* MIO36/MIO37 */
>   	status = "okay";
>   };
>   
> +&pinctrl0 {
> +	status = "okay";
> +	pinctrl_sdhci0_default: sdhci0-default {
> +		conf {
> +			groups = "sdio0_0_grp";
> +			slew-rate = <SLEW_RATE_SLOW>;
> +			power-source = <IO_STANDARD_LVCMOS18>;
> +			bias-disable;
> +		};
> +
> +		mux {
> +			groups = "sdio0_0_grp";
> +			function = "sdio0";
> +		};
> +	};
> +};
> +
>   &qspi { /* MIO 0-5 - U143 */
>   	status = "okay";
>   	spi_flash: flash@0 { /* MT25QU512A */
> @@ -189,6 +207,8 @@ partition@22A0000 {
>   
>   &sdhci0 { /* MIO13-23 - 16GB emmc MTFC16GAPALBH-IT - U133A */
>   	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_sdhci0_default>;
>   	non-removable;
>   	disable-wp;
>   	bus-width = <8>;

Applied.
M

-- 
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP/Versal ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal/Versal NET SoCs
TF-A maintainer - Xilinx ZynqMP/Versal/Versal NET SoCs
