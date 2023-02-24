Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1B686A1B29
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 12:10:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230397AbjBXLKe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 06:10:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230095AbjBXLKF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 06:10:05 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A826C6A4F
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 03:09:42 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id l2-20020a05600c1d0200b003e1f6dff952so1896052wms.1
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 03:09:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NZLgGbzYMjAzej3DGyr9UAP/ybR/0Ek6icgQ+DcCBHc=;
        b=Iu9e0+yoOMJyPP1DwYpXIIP9s6Bi+zJHDMccwayOxQ/Vw5TS74+FN8LBeHZazsyzNS
         /f3fJ3+a1u7yiB7pl7SFYrwLZgIVNEnPQn6v1Dzi8vq85D7ao539SfcEhCTWDHraKlWp
         KktVa9GGnEk1nJdMBtToh1RVJI6dQgS+vBu/CcTIgZi0s7e7X0D+spZ2dfQoCnfX/O4N
         4+TtCv5Vl4UPHWCODVEuvmiBBF7JEZlUFvuxhUJHFCqORRtyfV5ucfjPWxqVFbYYY2SW
         fNGllGHbQCG7Z71iDdS7szZSlngAHBmAsCGJvIGICc77+K+4ZciGQPOb2okZknqZvQ/l
         Z1WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NZLgGbzYMjAzej3DGyr9UAP/ybR/0Ek6icgQ+DcCBHc=;
        b=7LUuYyCdkG01c38OKqWejhbaefINpFSB22PVBPIZ7407gbhUKit4oJm+lHFmotawvR
         tPSJaChxPfgBEdW81X8heoX188QeUx6zYFlRRICF5tAlxsieHBGoRBU7rkyUw6Bp8I2w
         IGhmNaFWVr/Q3eShdO/SNuzZAGnIsXYgiaQjacvlAS2/WptB6oSuj9wyaErK8i/NT0aj
         DIHAaqawJpBu0tXwMAtGVyaZNRqAeVm5uwiTrY/Fv1LxDJBYNus23FFoPLl/Mf4yGV/X
         qYjLyE4FMASOGx77T3ndfCtFw87xdiN4RrxUfRb/M23NXs4wsDcbGUyo1M9arBR2R0r+
         ueAw==
X-Gm-Message-State: AO0yUKVLvzBxT0Jx3D57gIa6IdCDcspKcytOmA5WWJk3A4j+/ic7ndXH
        l88Hc+Xd3wrKttgpiLbLP62M5g==
X-Google-Smtp-Source: AK7set+QsSPhmANXMAmCwprRZOYWjaSTm3y6grWcXfx2bgZgbD0wCNjkRxCF6ITQZdC0GZCugESXCQ==
X-Received: by 2002:a05:600c:30ca:b0:3df:12ac:7cc9 with SMTP id h10-20020a05600c30ca00b003df12ac7cc9mr5480813wmn.15.1677236981130;
        Fri, 24 Feb 2023 03:09:41 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id jb17-20020a05600c54f100b003e200d3b2d1sm2425610wmb.38.2023.02.24.03.09.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Feb 2023 03:09:40 -0800 (PST)
Message-ID: <7e236ecc-1cb4-b53b-fb68-c23aa45c4cd2@linaro.org>
Date:   Fri, 24 Feb 2023 12:09:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v11 3/8] arm64: dts: ti: k3-j721s2-mcu-wakeup: Add support
 of OSPI
Content-Language: en-US
To:     Ravi Gunasekaran <r-gunasekaran@ti.com>, nm@ti.com, afd@ti.com,
        vigneshr@ti.com, kristo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, s-vadapalli@ti.com,
        vaishnav.a@ti.com
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230224102438.6541-1-r-gunasekaran@ti.com>
 <20230224102438.6541-4-r-gunasekaran@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230224102438.6541-4-r-gunasekaran@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/02/2023 11:24, Ravi Gunasekaran wrote:
> From: Aswath Govindraju <a-govindraju@ti.com>
> 
> Add support for two instance of OSPI in J721S2 SoC.
> 
> Reviewed-by: Vaishnav Achath <vaishnav.a@ti.com>
> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> Signed-off-by: Matt Ranostay <mranostay@ti.com>
> Signed-off-by: Ravi Gunasekaran <r-gunasekaran@ti.com>
> ---
> Changes from v10:
> * Documented the reason for disabling the nodes by default.
> * Removed Link tag from commmit message
> 
> Changes from v9:
> * Disabled fss, ospi nodes by default in common DT file
> 
> Changes from v8:
> * Updated "ranges" property to fix dtbs warnings
> 
> Changes from v7:
> * Removed "reg" property from syscon node
> * Renamed the "syscon" node to "bus" to after change in
>   compatible property
> 
> Changes from v6:
> * Fixed the syscon node's compatible property
> 
> Changes from v5:
> * Updated the syscon node's compatible property
> * Removed Cc tags from commit message
> 
> Changes from v4:
> * No change
> 
> Changes from v3:
> * No change
> 
> Changes from v2:
> * No change
> 
> Changes from v1:
> * No change
> 
>  .../boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi     | 62 +++++++++++++++++++
>  1 file changed, 62 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
> index 0af242aa9816..5005a3ebbd34 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
> @@ -306,4 +306,66 @@
>  			ti,cpts-periodic-outputs = <2>;
>  		};
>  	};
> +
> +	fss: bus@47000000 {
> +		compatible = "simple-bus";
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges = <0x00 0x47000000 0x00 0x47000000 0x00 0x00068400>,
> +			 <0x05 0x00000000 0x05 0x00000000 0x01 0x00000000>,
> +			 <0x07 0x00000000 0x07 0x00000000 0x01 0x00000000>;
> +
> +		/*
> +		 * Disable the node by default in the common include file.
> +		 * And enable it in the board specific DT file where the
> +		 * pinmux property is added.

Why? Bus does not need pinmux.

> +		 */
> +		status = "disabled";
> +
> +		ospi0: spi@47040000 {
> +			compatible = "ti,am654-ospi", "cdns,qspi-nor";
> +			reg = <0x00 0x47040000 0x00 0x100>,
> +			      <0x05 0x00000000 0x01 0x00000000>;
> +			interrupts = <GIC_SPI 840 IRQ_TYPE_LEVEL_HIGH>;
> +			cdns,fifo-depth = <256>;
> +			cdns,fifo-width = <4>;
> +			cdns,trigger-address = <0x0>;
> +			clocks = <&k3_clks 109 5>;
> +			assigned-clocks = <&k3_clks 109 5>;
> +			assigned-clock-parents = <&k3_clks 109 7>;
> +			assigned-clock-rates = <166666666>;
> +			power-domains = <&k3_pds 109 TI_SCI_PD_EXCLUSIVE>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			/*
> +			 * Disable the node by default in the common include
> +			 * file. And enable it in the board specific DT file
> +			 * where the pinmux property is added.

Isn't this comment obvious? It's what we do everywhere on every platform
every SoC?

> +			 */
> +			status = "disabled";
> +		};
> +
> +		ospi1: spi@47050000 {
> +			compatible = "ti,am654-ospi", "cdns,qspi-nor";
> +			reg = <0x00 0x47050000 0x00 0x100>,
> +			      <0x07 0x00000000 0x01 0x00000000>;
> +			interrupts = <GIC_SPI 841 IRQ_TYPE_LEVEL_HIGH>;
> +			cdns,fifo-depth = <256>;
> +			cdns,fifo-width = <4>;
> +			cdns,trigger-address = <0x0>;
> +			clocks = <&k3_clks 110 5>;
> +			power-domains = <&k3_pds 110 TI_SCI_PD_EXCLUSIVE>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			/*
> +			 * Disable the node by default in the common include
> +			 * file. And enable it in the board specific DT file
> +			 * where the pinmux property is added.
> +			 */
> +			status = "disabled";
> +		};
> +

No need for blank line.

> +	};
>  };

Best regards,
Krzysztof

