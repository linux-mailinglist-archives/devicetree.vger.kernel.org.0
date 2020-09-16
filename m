Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E1B126B97C
	for <lists+devicetree@lfdr.de>; Wed, 16 Sep 2020 03:46:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726174AbgIPBqd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 21:46:33 -0400
Received: from szxga04-in.huawei.com ([45.249.212.190]:12294 "EHLO huawei.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726023AbgIPBqc (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 15 Sep 2020 21:46:32 -0400
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
        by Forcepoint Email with ESMTP id 9BB58704D1F6EFDE3521;
        Wed, 16 Sep 2020 09:46:30 +0800 (CST)
Received: from [10.57.101.250] (10.57.101.250) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.487.0; Wed, 16 Sep 2020 09:46:27 +0800
Subject: Re: [PATCH] arm64: dts: hisilicon: replace status value "ok" by
 "okay"
To:     Adrian Schmutzler <freifunk@adrianschmutzler.de>,
        Rob Herring <robh+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
References: <20200830200551.1474-1-freifunk@adrianschmutzler.de>
From:   Wei Xu <xuwei5@hisilicon.com>
Message-ID: <5F616E73.4080707@hisilicon.com>
Date:   Wed, 16 Sep 2020 09:46:27 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <20200830200551.1474-1-freifunk@adrianschmutzler.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Adrian,

On 2020/8/31 4:05, Adrian Schmutzler wrote:
> While the DT parser recognizes "ok" as a valid value for the
> "status" property, it is actually mentioned nowhere. Use the
> proper value "okay" instead, as done in the majority of files
> already.
> 
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

Thanks!
Applied to the hisilicon arm64 dt tree.

Best Regards,
Wei

> ---
>  .../boot/dts/hisilicon/hi3660-hikey960.dts    |  6 +++---
>  .../boot/dts/hisilicon/hi3670-hikey970.dts    |  2 +-
>  .../arm64/boot/dts/hisilicon/hi6220-hikey.dts | 18 ++++++++---------
>  arch/arm64/boot/dts/hisilicon/hi6220.dtsi     |  2 +-
>  arch/arm64/boot/dts/hisilicon/hip05-d02.dts   |  6 +++---
>  arch/arm64/boot/dts/hisilicon/hip06-d03.dts   | 18 ++++++++---------
>  arch/arm64/boot/dts/hisilicon/hip07-d05.dts   | 20 +++++++++----------
>  7 files changed, 36 insertions(+), 36 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/hisilicon/hi3660-hikey960.dts b/arch/arm64/boot/dts/hisilicon/hi3660-hikey960.dts
> index c1b614dabb8e..963300eede17 100644
> --- a/arch/arm64/boot/dts/hisilicon/hi3660-hikey960.dts
> +++ b/arch/arm64/boot/dts/hisilicon/hi3660-hikey960.dts
> @@ -530,7 +530,7 @@
>  	rt1711h: rt1711h@4e {
>  		compatible = "richtek,rt1711h";
>  		reg = <0x4e>;
> -		status = "ok";
> +		status = "okay";
>  		interrupt-parent = <&gpio27>;
>  		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
>  		pinctrl-names = "default";
> @@ -570,7 +570,7 @@
>  	};
>  
>  	adv7533: adv7533@39 {
> -		status = "ok";
> +		status = "okay";
>  		compatible = "adi,adv7533";
>  		reg = <0x39>;
>  		adi,dsi-lanes = <4>;
> @@ -656,7 +656,7 @@
>  		     &sdio_cfg_func>;
>  	/* WL_EN */
>  	vmmc-supply = <&wlan_en>;
> -	status = "ok";
> +	status = "okay";
>  
>  	wlcore: wlcore@2 {
>  		compatible = "ti,wl1837";
> diff --git a/arch/arm64/boot/dts/hisilicon/hi3670-hikey970.dts b/arch/arm64/boot/dts/hisilicon/hi3670-hikey970.dts
> index 7dac33d4fd5c..7f9f9886c349 100644
> --- a/arch/arm64/boot/dts/hisilicon/hi3670-hikey970.dts
> +++ b/arch/arm64/boot/dts/hisilicon/hi3670-hikey970.dts
> @@ -418,7 +418,7 @@
>  		     &sdio_cfg_func>;
>  	/* WL_EN */
>  	vmmc-supply = <&wlan_en>;
> -	status = "ok";
> +	status = "okay";
>  
>  	wlcore: wlcore@2 {
>  		compatible = "ti,wl1837";
> diff --git a/arch/arm64/boot/dts/hisilicon/hi6220-hikey.dts b/arch/arm64/boot/dts/hisilicon/hi6220-hikey.dts
> index 533ed523888d..91d08673c02e 100644
> --- a/arch/arm64/boot/dts/hisilicon/hi6220-hikey.dts
> +++ b/arch/arm64/boot/dts/hisilicon/hi6220-hikey.dts
> @@ -267,7 +267,7 @@
>  &uart1 {
>  	assigned-clocks = <&sys_ctrl HI6220_UART1_SRC>;
>  	assigned-clock-rates = <150000000>;
> -	status = "ok";
> +	status = "okay";
>  
>  	bluetooth {
>  		compatible = "ti,wl1835-st";
> @@ -278,21 +278,21 @@
>  };
>  
>  &uart2 {
> -	status = "ok";
> +	status = "okay";
>  	label = "LS-UART0";
>  };
>  
>  &uart3 {
> -	status = "ok";
> +	status = "okay";
>  	label = "LS-UART1";
>  };
>  
>  &ade {
> -	status = "ok";
> +	status = "okay";
>  };
>  
>  &dsi {
> -	status = "ok";
> +	status = "okay";
>  
>  	ports {
>  		/* 1 for output port */
> @@ -489,17 +489,17 @@
>  
>  
>  &i2c0 {
> -	status = "ok";
> +	status = "okay";
>  };
>  
>  &i2c1 {
> -	status = "ok";
> +	status = "okay";
>  };
>  
>  &i2c2 {
>  	#address-cells = <1>;
>  	#size-cells = <0>;
> -	status = "ok";
> +	status = "okay";
>  
>  	adv7533: adv7533@39 {
>  		compatible = "adi,adv7533";
> @@ -541,5 +541,5 @@
>  };
>  
>  &spi0 {
> -	status = "ok";
> +	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/hisilicon/hi6220.dtsi b/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
> index 3d189d9f0d24..3bab4bc6ff99 100644
> --- a/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
> +++ b/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
> @@ -371,7 +371,7 @@
>  			clocks = <&sys_ctrl HI6220_EDMAC_ACLK>;
>  			dma-no-cci;
>  			dma-type = "hi6220_dma";
> -			status = "ok";
> +			status = "okay";
>  		};
>  
>  		dual_timer0: timer@f8008000 {
> diff --git a/arch/arm64/boot/dts/hisilicon/hip05-d02.dts b/arch/arm64/boot/dts/hisilicon/hip05-d02.dts
> index e93c65ede06c..369b69b17b91 100644
> --- a/arch/arm64/boot/dts/hisilicon/hip05-d02.dts
> +++ b/arch/arm64/boot/dts/hisilicon/hip05-d02.dts
> @@ -42,15 +42,15 @@
>  };
>  
>  &uart0 {
> -	status = "ok";
> +	status = "okay";
>  };
>  
>  &peri_gpio0 {
> -	status = "ok";
> +	status = "okay";
>  };
>  
>  &lbc {
> -	status = "ok";
> +	status = "okay";
>  	#address-cells = <2>;
>  	#size-cells = <1>;
>  	ranges = <0 0 0x0 0x90000000 0x08000000>,
> diff --git a/arch/arm64/boot/dts/hisilicon/hip06-d03.dts b/arch/arm64/boot/dts/hisilicon/hip06-d03.dts
> index 677862beebef..9f4a930e734d 100644
> --- a/arch/arm64/boot/dts/hisilicon/hip06-d03.dts
> +++ b/arch/arm64/boot/dts/hisilicon/hip06-d03.dts
> @@ -22,37 +22,37 @@
>  };
>  
>  &ipmi0 {
> -	status = "ok";
> +	status = "okay";
>  };
>  
>  &uart0 {
> -	status = "ok";
> +	status = "okay";
>  };
>  
>  &eth0 {
> -	status = "ok";
> +	status = "okay";
>  };
>  
>  &eth1 {
> -	status = "ok";
> +	status = "okay";
>  };
>  
>  &eth2 {
> -	status = "ok";
> +	status = "okay";
>  };
>  
>  &eth3 {
> -	status = "ok";
> +	status = "okay";
>  };
>  
>  &sas1 {
> -	status = "ok";
> +	status = "okay";
>  };
>  
>  &usb_ohci {
> -	status = "ok";
> +	status = "okay";
>  };
>  
>  &usb_ehci {
> -	status = "ok";
> +	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/hisilicon/hip07-d05.dts b/arch/arm64/boot/dts/hisilicon/hip07-d05.dts
> index fcbdffe0868b..81a2312c8a26 100644
> --- a/arch/arm64/boot/dts/hisilicon/hip07-d05.dts
> +++ b/arch/arm64/boot/dts/hisilicon/hip07-d05.dts
> @@ -50,41 +50,41 @@
>  };
>  
>  &uart0 {
> -	status = "ok";
> +	status = "okay";
>  };
>  
>  &ipmi0 {
> -	status = "ok";
> +	status = "okay";
>  };
>  
>  &usb_ohci {
> -	status = "ok";
> +	status = "okay";
>  };
>  
>  &usb_ehci {
> -	status = "ok";
> +	status = "okay";
>  };
>  
>  &eth0 {
> -	status = "ok";
> +	status = "okay";
>  };
>  
>  &eth1 {
> -	status = "ok";
> +	status = "okay";
>  };
>  
>  &eth2 {
> -	status = "ok";
> +	status = "okay";
>  };
>  
>  &eth3 {
> -	status = "ok";
> +	status = "okay";
>  };
>  
>  &sas1 {
> -	status = "ok";
> +	status = "okay";
>  };
>  
>  &p0_pcie2_a {
> -	status = "ok";
> +	status = "okay";
>  };
> 
