Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EDF3646D9AF
	for <lists+devicetree@lfdr.de>; Wed,  8 Dec 2021 18:30:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231658AbhLHReA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Dec 2021 12:34:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237857AbhLHRd7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Dec 2021 12:33:59 -0500
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 777CAC061746
        for <devicetree@vger.kernel.org>; Wed,  8 Dec 2021 09:30:27 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id w1so10796482edc.6
        for <devicetree@vger.kernel.org>; Wed, 08 Dec 2021 09:30:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ydOJ0hWrH2W863CXj5rQJLRBf2Rbaq8al5HKjs+MyVo=;
        b=ShR73ntBzMEb995czFVKuH8ZLEJZUxeLPIVLlBpLGte9x1IWheq8x2oO+lV0T+F+um
         m46ZS5+GKmoKJKgUtdans/WAj35TOVx9K3fKTnVjIz0AHutPzKgIjw9hDnqalTmq0BNr
         hSTGLd9E4+yuIzOMoiSf5YVcBvL1xmlKG3pIRta6N/kKtVGwk0/oj8dWzOtVCZb7ru02
         7jIgmhaA8b+ZCK1zpAmFZUZi9a0A3lL0+Tkw68q/6zlp7d+I74e7lwyH1vs/RgfXeMsc
         znyMmIkygAi/pTEf3e3uan9mcNlCVceFHkd/fEixT4FXOeYvFX376EXSEXXvt17EXMsx
         v3Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ydOJ0hWrH2W863CXj5rQJLRBf2Rbaq8al5HKjs+MyVo=;
        b=6iAs5Fr45+bcp/o14sSpHWGpQFB3XCmTfbAR6wjErWkE+sQyoNpvNNtq+WwI8P70kG
         t2/vsahKX8kRqJGyhTYNP9ZTGezBsiJAyGykbh58NAIlMMKBMuCh9OpxCAbsFZV/vl1H
         R9XKUw9j8quCC+9Su5dytTVw9BlhbgGDwi3AUHy5vnY0K9Hobz6u2ho3XSlpAvZaKvIQ
         pShTRsaRXeaKD6TxeOHUBeY3m//F/jMfgPt39hB661Nxj2V0wxdysvPM59gR7nykQIgQ
         AW3MJTSe6VcReaM4A1p9ko/mrrcIb3d8ounbjr7b/gTLorm/7m8Nz+0/4QDVoemIdCfc
         Ri7Q==
X-Gm-Message-State: AOAM533IYAw6lSz+1UiZJyM9FLjKED7Mjy/Spgl/jOAa0UpePztW/JZm
        L8+1uI8SeSKpatlorFpfZlT2J/uPahc=
X-Google-Smtp-Source: ABdhPJw+ovJtjKkNdHnhkIk7BXnlqFxjaC23mAjpEC1jxW/SwfvYnT2NSYbB3BCv0AVqIS77XrEyRQ==
X-Received: by 2002:a50:9eca:: with SMTP id a68mr21586619edf.127.1638984625713;
        Wed, 08 Dec 2021 09:30:25 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id sd2sm2012033ejc.22.2021.12.08.09.30.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Dec 2021 09:30:25 -0800 (PST)
Subject: Re: [PATCH 13/18] arm64: dts: rockchip: rk3568-evb: Enable VOP2 and
 hdmi
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
References: <20211208151230.3695378-1-s.hauer@pengutronix.de>
 <20211208151230.3695378-14-s.hauer@pengutronix.de>
From:   Johan Jonker <jbx6244@gmail.com>
Message-ID: <bed5f9a3-611b-86be-798e-1034b25e7ba1@gmail.com>
Date:   Wed, 8 Dec 2021 18:30:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211208151230.3695378-14-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Could add a patch version to the subject?

On 12/8/21 4:12 PM, Sascha Hauer wrote:
> This enabled the VOP2 display controller along with hdmi and the
> required port routes which is enough to get a picture out of the
> hdmi port of the board.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../boot/dts/rockchip/rk3568-evb1-v10.dts     | 31 +++++++++++++++++++
>  1 file changed, 31 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> index 184e2aa2416af..b1b0963fa8525 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> @@ -7,6 +7,7 @@
>  /dts-v1/;
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
>  #include "rk3568.dtsi"
>  
>  / {
> @@ -106,6 +107,12 @@ &gmac1m1_rgmii_clk
>  	status = "okay";
>  };
>  
> +&hdmi {

> +	status = "okay";
> +	avdd-0v9-supply = <&vdda0v9_image>;
> +	avdd-1v8-supply = <&vcca1v8_image>;

status below

> +};

===
Example from rk3066a-mk808.dts
In dtsi:
	hdmi {
		ports {
			#address-cells = <1>;
			#size-cells = <0>;
			hdmi_in: port@0 {
				reg = <0>;
				#address-cells = <1>;
				#size-cells = <0>;
			};

			hdmi_out: port@1 {
				reg = <1>;
			};

===
In dts:
	hdmi-con {
		compatible = "hdmi-connector";
		type = "c";

		port {
			hdmi_con_in: endpoint {
				remote-endpoint = <&hdmi_out_con>;
			};
		};
	};

===

&hdmi_out {
	hdmi_out_con: endpoint {
		remote-endpoint = <&hdmi_con_in>;
	};
};

===

> +
>  &i2c0 {
>  	status = "okay";
>  
> @@ -390,3 +397,27 @@ &sdmmc0 {
>  &uart2 {
>  	status = "okay";
>  };
> +
> +&vop {

> +	status = "okay";
> +	assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
> +	assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;

status below

> +};
> +
> +&vop_mmu {
> +	status = "okay";
> +};
> +
> +&hdmi_in {
> +	hdmi_in_vp0: endpoint@0 {
> +		reg = <0>;
> +		remote-endpoint = <&vp0_out_hdmi>;
> +	};
> +};
> +
> +&vp0 {
> +	vp0_out_hdmi: endpoint@RK3568_VOP2_EP_HDMI {
> +		reg = <RK3568_VOP2_EP_HDMI>;
> +		remote-endpoint = <&hdmi_in_vp0>;
> +	};
> +};
> 
