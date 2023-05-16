Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A1B9704F46
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 15:28:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231921AbjEPN2G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 09:28:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231624AbjEPN2F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 09:28:05 -0400
X-Greylist: delayed 534 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 16 May 2023 06:28:03 PDT
Received: from mail.bugwerft.de (mail.bugwerft.de [46.23.86.59])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id F09EF10DA
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 06:28:03 -0700 (PDT)
Received: from [192.168.178.97] (p57bc99b5.dip0.t-ipconnect.de [87.188.153.181])
        by mail.bugwerft.de (Postfix) with ESMTPSA id 3DFEB2804E6;
        Tue, 16 May 2023 13:18:57 +0000 (UTC)
Message-ID: <314a54b4-cfe9-5870-a755-dd71909ea1c4@zonque.org>
Date:   Tue, 16 May 2023 15:18:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH] ARM: dts: pxa300-raumfeld: Replace deprecated spi-gpio
 properties
To:     Fabio Estevam <festevam@gmail.com>
Cc:     haojian.zhuang@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
References: <20230516131630.580213-1-festevam@gmail.com>
Content-Language: en-US
From:   Daniel Mack <daniel@zonque.org>
In-Reply-To: <20230516131630.580213-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/16/23 15:16, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> As stated in Documentation/devicetree/bindings/spi/spi-gpio.yaml,
> 'gpio-miso', 'gpio-mosi' and 'gpio-sck' are deprecated properties.
> 
> Use the recommeded 'miso-gpios', 'mosi-gpios' and 'sck-gpios' instead.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Reviewed-by: Daniel Mack <daniel@zonque.org>

> ---
>  arch/arm/boot/dts/pxa300-raumfeld-common.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/pxa300-raumfeld-common.dtsi b/arch/arm/boot/dts/pxa300-raumfeld-common.dtsi
> index 147c99191dc2..5e93f315588a 100644
> --- a/arch/arm/boot/dts/pxa300-raumfeld-common.dtsi
> +++ b/arch/arm/boot/dts/pxa300-raumfeld-common.dtsi
> @@ -74,9 +74,9 @@ spi: spi {
>  		#size-cells = <0>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&spi_pins>;
> -		gpio-sck = <&gpio 95 GPIO_ACTIVE_HIGH>;
> -		gpio-miso = <&gpio 98 GPIO_ACTIVE_HIGH>;
> -		gpio-mosi = <&gpio 97 GPIO_ACTIVE_HIGH>;
> +		sck-gpios = <&gpio 95 GPIO_ACTIVE_HIGH>;
> +		miso-gpios = <&gpio 98 GPIO_ACTIVE_HIGH>;
> +		mosi-gpios = <&gpio 97 GPIO_ACTIVE_HIGH>;
>  		cs-gpios = <
>  			&gpio 34 GPIO_ACTIVE_HIGH
>  			&gpio 125 GPIO_ACTIVE_HIGH

