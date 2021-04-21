Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04395366681
	for <lists+devicetree@lfdr.de>; Wed, 21 Apr 2021 09:51:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237454AbhDUHwP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Apr 2021 03:52:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237471AbhDUHwP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Apr 2021 03:52:15 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F728C06174A
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 00:51:42 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id o21-20020a1c4d150000b029012e52898006so705496wmh.0
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 00:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=2P4oG7HNo+SuYtU66Lpge91f6btqFbYk+DdM40W1Mys=;
        b=z3/u6OZkBdphC2McY1DgqhO0PkFD9aCB11OnPgMNqnUFI9fFLvHqHdCLSkbDWb+B6Q
         ftXq1w29JCnXnxlxqaMsjQt2nQwCzgTF/kNyaxxGDDgn1r4oFzilmDLU1W14pbD1FWwk
         MlFyJvZ30zLWCgv5gf0rg3BGODpkBuIzBqa25zDix0mr+RapkLBufyD9UGU7bdxA1J6w
         vyZkvwJJfzllprlKirReAKAN4FLmMHHU/Ui8TqyBrXBaMSkqyt/8sU9TtJ0MqbLFrjwh
         KraiH4ER1pxa2bCgPYmgA7GLBmf5BsNHF137kkIgSkSwVgp2GlUxFHU75hZwqPAwjXSI
         4Onw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=2P4oG7HNo+SuYtU66Lpge91f6btqFbYk+DdM40W1Mys=;
        b=g1mr6GQo9Lb+MRRfkcdBDl5xhSdDCF7vtdx3hZJ4aIeJQ2jZQxCwnkgLpOxoiJA1RT
         hm5th6Ks1WVInAyM6hBDbmM7maWIeP56C0gUhvZr68IkDxDBA7TlmxpOP35Y1oJXHvo+
         fPUBIQbJal8hv8GYmimISu39kIzWTetVuB9JB3VH0u4MSMyoBQUFUedgighXCC7lg+Wc
         3BwCcl9BlPsmOFDgkPFSkJYMD4RIg25S2jCLWQEvoDiaLIManWplrZOOX1tc+qd59v76
         bLUBbWx5P8Jja+qo79fFsDRJfcHOeZPriYd/H0FjMSTe3XgcRaQPBp5upmwcX+6zhZcX
         Rnfw==
X-Gm-Message-State: AOAM533Ol0CbOB7JRmK3MOHKRv50oasnmybjvBiBzYIimbcYt2ukKqYj
        oQU5jjM6DdTsh2G3znsDddWxyA==
X-Google-Smtp-Source: ABdhPJxGfIwVljwt0ch8b7JClfDnBt9G4Bnf4/bwNmrGSmCntIKRvd9mMKse0unWvkoTLCcXvbeiqg==
X-Received: by 2002:a05:600c:4149:: with SMTP id h9mr8215720wmm.43.1618991501104;
        Wed, 21 Apr 2021 00:51:41 -0700 (PDT)
Received: from ?IPv6:2a01:e0a:90c:e290:f781:73d5:3127:752d? ([2a01:e0a:90c:e290:f781:73d5:3127:752d])
        by smtp.gmail.com with ESMTPSA id m2sm1386979wmq.15.2021.04.21.00.51.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Apr 2021 00:51:40 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: amlogic: misc DT schema fixups
To:     Kevin Hilman <khilman@baylibre.com>, Arnd Bergmann <arnd@arndb.de>,
        soc@kernel.org, Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
References: <20210420230402.8807-1-khilman@baylibre.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <0a28f65f-716a-d67e-6fc4-2785c19b7ab3@baylibre.com>
Date:   Wed, 21 Apr 2021 09:51:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210420230402.8807-1-khilman@baylibre.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/04/2021 01:04, Kevin Hilman wrote:
> Take a pass at cleaning up a bunch of warnings
> from 'make dtbs_check' that have crept in.
> 
> Signed-off-by: Kevin Hilman <khilman@baylibre.com>
> ---
>  .../devicetree/bindings/gpu/arm,mali-bifrost.yaml  |  5 +++++
>  .../bindings/media/amlogic,axg-ge2d.yaml           |  1 +
>  Documentation/devicetree/bindings/media/rc.yaml    |  4 ++++
>  .../devicetree/bindings/sound/amlogic,t9015.yaml   |  1 +
>  arch/arm64/boot/dts/amlogic/meson-a1.dtsi          |  4 ++--
>  arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi  | 14 +++++++-------
>  .../arm64/boot/dts/amlogic/meson-g12b-gsking-x.dts |  2 +-
>  .../boot/dts/amlogic/meson-g12b-gtking-pro.dts     |  4 ++--
>  arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts  |  2 +-
>  .../boot/dts/amlogic/meson-g12b-odroid-n2.dtsi     |  4 ++--
>  .../arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts |  2 +-
>  .../dts/amlogic/meson-gxl-s905d-mecool-kii-pro.dts |  2 +-
>  .../boot/dts/amlogic/meson-gxl-s905d-sml5442tw.dts |  8 ++++----
>  .../boot/dts/amlogic/meson-gxm-mecool-kiii-pro.dts |  2 +-
>  .../boot/dts/amlogic/meson-gxm-minix-neo-u9h.dts   |  2 +-
>  .../boot/dts/amlogic/meson-gxm-wetek-core2.dts     |  2 +-
>  arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi |  4 ++--
>  .../arm64/boot/dts/amlogic/meson-sm1-odroid-c4.dts |  2 +-
>  18 files changed, 38 insertions(+), 27 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> index 184492162e7e..db2240bad012 100644
> --- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> @@ -69,6 +69,11 @@ properties:
>  
>        where voltage is in V, frequency is in MHz.
>  
> +  dma-coherent:
> +    description: |
> +      Present if page table walks made by the SMMU are cache coherent with the
> +      CPU.
> +
>  required:
>    - compatible
>    - reg

I think this one should go in a separate patch since it's not amlogic only.

> diff --git a/Documentation/devicetree/bindings/media/amlogic,axg-ge2d.yaml b/Documentation/devicetree/bindings/media/amlogic,axg-ge2d.yaml
> index bee93bd84771..f3a337954eb3 100644
> --- a/Documentation/devicetree/bindings/media/amlogic,axg-ge2d.yaml
> +++ b/Documentation/devicetree/bindings/media/amlogic,axg-ge2d.yaml
> @@ -33,6 +33,7 @@ required:
>    - interrupts
>    - clocks
>    - resets
> +  - reset-names

Remove the reset-names from DT instead

>  
>  additionalProperties: false
>  
> diff --git a/Documentation/devicetree/bindings/media/rc.yaml b/Documentation/devicetree/bindings/media/rc.yaml
> index 946441b4e1a5..c4a088669112 100644
> --- a/Documentation/devicetree/bindings/media/rc.yaml
> +++ b/Documentation/devicetree/bindings/media/rc.yaml
> @@ -90,9 +90,12 @@ properties:
>        - rc-leadtek-y04g0051
>        - rc-lme2510
>        - rc-manli
> +      - rc-mecool-kii-pro
> +      - rc-mecool-kiii-pro
>        - rc-medion-x10
>        - rc-medion-x10-digitainer
>        - rc-medion-x10-or2x
> +      - rc-minix-neo
>        - rc-msi-digivox-ii
>        - rc-msi-digivox-iii
>        - rc-msi-tvanywhere
> @@ -145,6 +148,7 @@ properties:
>        - rc-videomate-s350
>        - rc-videomate-tv-pvr
>        - rc-videostrong-kii-pro
> +      - rc-vega-s9x
>        - rc-wetek-hub
>        - rc-wetek-play2
>        - rc-winfast
> diff --git a/Documentation/devicetree/bindings/sound/amlogic,t9015.yaml b/Documentation/devicetree/bindings/sound/amlogic,t9015.yaml
> index c7613ea728d4..7bcbed603824 100644
> --- a/Documentation/devicetree/bindings/sound/amlogic,t9015.yaml
> +++ b/Documentation/devicetree/bindings/sound/amlogic,t9015.yaml
> @@ -41,6 +41,7 @@ required:
>    - clocks
>    - clock-names
>    - resets
> +  - reset-names

Remove the reset-names from DT instead

>  
>  additionalProperties: false
>  
> diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> index 755b4ad15184..b4000cf65a9a 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> @@ -88,13 +88,13 @@ reset: reset-controller@0 {
>  				#reset-cells = <1>;
>  			};
>  
> -			periphs_pinctrl: pinctrl@0400 {
> +			periphs_pinctrl: pinctrl@400 {
>  				compatible = "amlogic,meson-a1-periphs-pinctrl";
>  				#address-cells = <2>;
>  				#size-cells = <2>;
>  				ranges;
>  
> -				gpio: bank@0400 {
> +				gpio: bank@400 {
>  					reg = <0x0 0x0400 0x0 0x003c>,
>  					      <0x0 0x0480 0x0 0x0118>;
>  					reg-names = "mux", "gpio";
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> index 3dd2a5a8739b..793d48f72390 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> @@ -128,9 +128,9 @@ soc {
>  
>  		pcie: pcie@fc000000 {
>  			compatible = "amlogic,g12a-pcie", "snps,dw-pcie";
> -			reg = <0x0 0xfc000000 0x0 0x400000
> -			       0x0 0xff648000 0x0 0x2000
> -			       0x0 0xfc400000 0x0 0x200000>;
> +			reg = <0x0 0xfc000000 0x0 0x400000>,
> +			      <0x0 0xff648000 0x0 0x2000>,
> +			      <0x0 0xfc400000 0x0 0x200000>;
>  			reg-names = "elbi", "cfg", "config";
>  			interrupts = <GIC_SPI 221 IRQ_TYPE_LEVEL_HIGH>;
>  			#interrupt-cells = <1>;
> @@ -140,8 +140,8 @@ pcie: pcie@fc000000 {
>  			#address-cells = <3>;
>  			#size-cells = <2>;
>  			device_type = "pci";
> -			ranges = <0x81000000 0 0 0x0 0xfc600000 0 0x00100000
> -				  0x82000000 0 0xfc700000 0x0 0xfc700000 0 0x1900000>;
> +			ranges = <0x81000000 0 0 0x0 0xfc600000 0 0x00100000>,
> +				 <0x82000000 0 0xfc700000 0x0 0xfc700000 0 0x1900000>;
>  
>  			clocks = <&clkc CLKID_PCIE_PHY
>  				  &clkc CLKID_PCIE_COMB
> @@ -2009,7 +2009,7 @@ mux {
>  				};
>  			};
>  
> -			vrtc: rtc@0a8 {
> +			vrtc: rtc@a8 {
>  				compatible = "amlogic,meson-vrtc";
>  				reg = <0x0 0x000a8 0x0 0x4>;
>  			};
> @@ -2187,7 +2187,7 @@ gpio_intc: interrupt-controller@f080 {
>  				amlogic,channel-interrupts = <64 65 66 67 68 69 70 71>;
>  			};
>  
> -			watchdog: wdt@f0d0 {
> +			watchdog: watchdog@f0d0 {
>  				compatible = "amlogic,meson-gxbb-wdt";
>  				reg = <0x0 0xf0d0 0x0 0x10>;
>  				clocks = <&xtal>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-gsking-x.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-gsking-x.dts
> index 211191f66344..6c7bfacbad78 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-gsking-x.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-gsking-x.dts
> @@ -12,7 +12,7 @@
>  #include <dt-bindings/sound/meson-g12a-tohdmitx.h>
>  
>  / {
> -	compatible = "azw,gsking-x", "amlogic,g12b";
> +	compatible = "azw,gsking-x", "amlogic,s922x", "amlogic,g12b";
>  	model = "Beelink GS-King X";
>  
>  	aliases {
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-gtking-pro.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-gtking-pro.dts
> index 0e331aa5a2d7..707daf92787b 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-gtking-pro.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-gtking-pro.dts
> @@ -11,7 +11,7 @@
>  #include <dt-bindings/sound/meson-g12a-tohdmitx.h>
>  
>  / {
> -	compatible = "azw,gtking", "amlogic,g12b";
> +	compatible = "azw,gtking", "amlogic,s922x", "amlogic,g12b";
>  	model = "Beelink GT-King Pro";
>  
>  	aliases {
> @@ -35,7 +35,7 @@ power-button {
>  	leds {
>  		compatible = "gpio-leds";
>  
> -		white {
> +		led-white {
>  			label = "power:white";
>  			gpios = <&gpio_ao GPIOAO_11 GPIO_ACTIVE_HIGH>;
>  			default-state = "on";
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts
> index a7db84a500bb..5d96c1449050 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts
> @@ -11,7 +11,7 @@
>  #include <dt-bindings/sound/meson-g12a-tohdmitx.h>
>  
>  / {
> -	compatible = "azw,gtking", "amlogic,g12b";
> +	compatible = "azw,gtking", "amlogic,s922x", "amlogic,g12b";
>  	model = "Beelink GT-King";
>  
>  	aliases {
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> index 473b81c652cf..344573e157a7 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> @@ -42,7 +42,7 @@ emmc_pwrseq: emmc-pwrseq {
>  	leds {
>  		compatible = "gpio-leds";
>  
> -		blue {
> +		led-blue {
>  			label = "n2:blue";
>  			gpios = <&gpio_ao GPIOAO_11 GPIO_ACTIVE_HIGH>;
>  			linux,default-trigger = "heartbeat";
> @@ -497,7 +497,7 @@ &gpio {
>  	 * This signal should be handled by a USB specific power sequence
>  	 * in order to reset the Hub when USB bus is powered down.
>  	 */
> -	usb-hub {
> +	hog-0 {
>  		gpio-hog;
>  		gpios = <GPIOH_4 GPIO_ACTIVE_HIGH>;
>  		output-high;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
> index bfaf7f41a2d6..201596247fd9 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
> @@ -257,7 +257,7 @@ &gpio_ao {
>  	 * This signal should be handled by a USB specific power sequence
>  	 * in order to reset the Hub when USB bus is powered down.
>  	 */
> -	usb-hub {
> +	hog-0 {
>  		gpio-hog;
>  		gpios = <GPIOAO_4 GPIO_ACTIVE_HIGH>;
>  		output-high;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-mecool-kii-pro.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-mecool-kii-pro.dts
> index 5ab5d3aa0646..c529b6c860a4 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-mecool-kii-pro.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-mecool-kii-pro.dts
> @@ -44,7 +44,7 @@ button@0 {
>  	leds {
>  		compatible = "gpio-leds";
>  
> -		blue {
> +		led-blue {
>  			color = <LED_COLOR_ID_BLUE>;
>  			function = LED_FUNCTION_POWER;
>  			gpios = <&gpio GPIODV_24 GPIO_ACTIVE_HIGH>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-sml5442tw.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-sml5442tw.dts
> index ad6d72254150..b331a013572f 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-sml5442tw.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-sml5442tw.dts
> @@ -16,28 +16,28 @@ / {
>  	leds {
>  		compatible = "gpio-leds";
>  
> -		yellow {
> +		led-yellow {
>  			color = <LED_COLOR_ID_YELLOW>;
>  			function = LED_FUNCTION_STATUS;
>  			gpios = <&gpio_ao GPIOAO_6 GPIO_ACTIVE_HIGH>;
>  			default-state = "off";
>  		};
>  
> -		blue {
> +		led-blue {
>  			color = <LED_COLOR_ID_BLUE>;
>  			function = LED_FUNCTION_STATUS;
>  			gpios = <&gpio GPIODV_28 GPIO_ACTIVE_HIGH>;
>  			default-state = "off";
>  		};
>  
> -		green {
> +		led-green {
>  			color = <LED_COLOR_ID_GREEN>;
>  			function = LED_FUNCTION_STATUS;
>  			gpios = <&gpio_ao GPIOAO_9 GPIO_ACTIVE_HIGH>;
>  			default-state = "on";
>  		};
>  
> -		red {
> +		led-red {
>  			color = <LED_COLOR_ID_RED>;
>  			function = LED_FUNCTION_STATUS;
>  			gpios = <&gpio GPIODV_27 GPIO_ACTIVE_HIGH>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-mecool-kiii-pro.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-mecool-kiii-pro.dts
> index 0651756d7fb5..ebebf344b715 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxm-mecool-kiii-pro.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxm-mecool-kiii-pro.dts
> @@ -49,7 +49,7 @@ button@0 {
>  	leds {
>  		compatible = "gpio-leds";
>  
> -		blue {
> +		led-blue {
>  			color = <LED_COLOR_ID_BLUE>;
>  			function = LED_FUNCTION_POWER;
>  			gpios = <&gpio GPIODV_24 GPIO_ACTIVE_HIGH>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-minix-neo-u9h.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-minix-neo-u9h.dts
> index a414cd39c2b1..ea9f234d1fc7 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxm-minix-neo-u9h.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxm-minix-neo-u9h.dts
> @@ -17,7 +17,7 @@ / {
>  	leds {
>  		compatible = "gpio-leds";
>  
> -		white {
> +		led-white {
>  			color = <LED_COLOR_ID_WHITE>;
>  			function = LED_FUNCTION_POWER;
>  			gpios = <&gpio_ao GPIOAO_9 GPIO_ACTIVE_HIGH>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-wetek-core2.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-wetek-core2.dts
> index ec794c134c15..1e7f77f9b533 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxm-wetek-core2.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxm-wetek-core2.dts
> @@ -22,7 +22,7 @@ memory@0 {
>  	leds {
>  		compatible = "gpio-leds";
>  
> -		blue {
> +		led-blue {
>  			color = <LED_COLOR_ID_BLUE>;
>  			function = LED_FUNCTION_STATUS;
>  			gpios = <&gpio GPIODV_24 GPIO_ACTIVE_HIGH>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
> index 877e3b989203..66d67524b031 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
> @@ -43,14 +43,14 @@ button-function {
>  	leds {
>  		compatible = "gpio-leds";
>  
> -		white {
> +		led-white {
>  			color = <LED_COLOR_ID_WHITE>;
>  			function = LED_FUNCTION_STATUS;
>  			gpios = <&gpio_ao GPIOAO_4 GPIO_ACTIVE_HIGH>;
>  			linux,default-trigger = "heartbeat";
>  		};
>  
> -		red {
> +		led-red {
>  			color = <LED_COLOR_ID_RED>;
>  			function = LED_FUNCTION_STATUS;
>  			gpios = <&gpio_expander 5 GPIO_ACTIVE_HIGH>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid-c4.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid-c4.dts
> index b2a4e823c1d8..8c327c03d845 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid-c4.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid-c4.dts
> @@ -47,7 +47,7 @@ &gpio {
>  	 * This signal should be handled by a USB specific power sequence
>  	 * in order to reset the Hub when USB bus is powered down.
>  	 */
> -	usb-hub {
> +	hog-0 {
>  		gpio-hog;
>  		gpios = <GPIOH_4 GPIO_ACTIVE_HIGH>;
>  		output-high;
> 

Apart that, the other changes are OK.


Neil
