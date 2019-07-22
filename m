Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C8E7970CE4
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2019 00:59:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729596AbfGVW7R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 18:59:17 -0400
Received: from mail-io1-f67.google.com ([209.85.166.67]:43885 "EHLO
        mail-io1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729308AbfGVW7R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 18:59:17 -0400
Received: by mail-io1-f67.google.com with SMTP id k20so77669753ios.10
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2019 15:59:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=fDJqr6GWcr9ig5DA7FE+3vbG3kRwvM5Fll1NbT8oWRI=;
        b=G/JMoB2U8NhVwrr3tVaBVdqeScbTVE109LEB7N7CUll8H02AkCuicsq53Vn9ey1qxV
         OKLcgJE8wOF2Mk7U+YgqN+vZZX0vRgpYGR7G3+i1JGu5f4RehSWg+PNPNsmX89geKmox
         bFQh6tIyKb+IxBKq8qB+Nn4Rq5tc8VYkar1LeMl7n0VaC5fSmRk5rwtA1DmB39p14Sdh
         4zowZGwyvyzTe6LXTw7AJ+8YrxnXrtvrPuzl8rLzoGBOXmF1eL3S8becTafdWD9++TTB
         4rBsNre/HLdolEBrt6NnOwuwehlNiAE94a97M9DY+/l6+0i8+/3zzksx0+x+9ta8WOhm
         uILw==
X-Gm-Message-State: APjAAAXwqdgZ3iv0pPP/ttHc876Vo/G/EkkjB86Nvoqro+dQNQW/d5Il
        V90BuSVA9p44OfrJTP+qtQ==
X-Google-Smtp-Source: APXvYqz4SWOwnL5xGzRejeuam3XaiSK0jdjRPXaphY+2+qgXomogjRmjnBIPkwC4Uzh2OZmcWZmH4w==
X-Received: by 2002:a02:b90e:: with SMTP id v14mr37523500jan.122.1563836356179;
        Mon, 22 Jul 2019 15:59:16 -0700 (PDT)
Received: from localhost ([64.188.179.254])
        by smtp.gmail.com with ESMTPSA id v13sm34048161ioq.13.2019.07.22.15.59.15
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 22 Jul 2019 15:59:15 -0700 (PDT)
Date:   Mon, 22 Jul 2019 16:59:14 -0600
From:   Rob Herring <robh@kernel.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     broonie@kernel.org, bgoswami@codeaurora.org, vkoul@kernel.org,
        devicetree@vger.kernel.org, lgirdwood@gmail.com,
        mark.rutland@arm.com, alsa-devel@alsa-project.org, srini@kernel.org
Subject: Re: [PATCH 1/6] ASoC: dt-bindings: add dt bindings for
 WCD9340/WCD9341 audio codec
Message-ID: <20190722225914.GB2917@bogus>
References: <20190702080920.22623-1-srinivas.kandagatla@linaro.org>
 <20190702080920.22623-2-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190702080920.22623-2-srinivas.kandagatla@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 02, 2019 at 09:09:15AM +0100, Srinivas Kandagatla wrote:
> This patch adds bindings for wcd9340/wcd9341 audio codec which can
> support both SLIMbus and I2S/I2C interface.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> ---
>  .../bindings/sound/qcom,wcd934x.txt           | 188 ++++++++++++++++++
>  1 file changed, 188 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/qcom,wcd934x.txt
> 
> diff --git a/Documentation/devicetree/bindings/sound/qcom,wcd934x.txt b/Documentation/devicetree/bindings/sound/qcom,wcd934x.txt
> new file mode 100644
> index 000000000000..2b48c98b5b7d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/qcom,wcd934x.txt
> @@ -0,0 +1,188 @@
> +QCOM WCD9340/9341 Codec Bindings
> +
> +Qualcomm WCD9340/WCD9341 Codec is a standalone Hi-Fi audio codec IC, supports
> +Qualcomm Technologies, Inc. (QTI) multimedia solutions, including
> +the MSM8996, MSM8976, and MSM8956 chipsets. It has in-built
> +Soundwire controller, interrupt mux. It supports both I2S/I2C and
> +SLIMbus audio interfaces.
> +
> +Required properties with SLIMbus Interface:
> +
> +- compatible:
> +	Usage: required
> +	Value type: <stringlist>
> +	Definition: For SLIMbus interface it should be "slimMID,PID",
> +		    textual representation of Manufacturer ID, Product Code,
> +		    shall be in lower case hexadecimal with leading zeroes
> +		    suppressed.  Refer to slimbus/bus.txt for details.
> +		    Should be:
> +		    "slim217,250" for SDM845/SDA845 SoCs with SLIMbus.
> +
> +- reg
> +	Usage: required
> +	Value type: <u32 u32>
> +	Definition: Should be ('Device index', 'Instance ID')
> +
> +- interrupts
> +	Usage: required
> +	Value type: <prop-encoded-array>
> +	Definition: Interrupts via WCD INTR1 and INTR2 pins

Example only has 1 irq.

> +
> +- interrupt-names:
> +	Usage: required
> +	Value type: <String array>
> +	Definition: Interrupt names of WCD INTR1 and INTR2
> +	Should be: "intr1", "intr2"
> +
> +- reset-gpios:
> +	Usage: required
> +	Value type: <String Array>

Really?

> +	Definition: Reset gpio line
> +
> +- slim-ifc-dev:
> +	Usage: required
> +	Value type: <phandle>
> +	Definition: SLIM interface device
> +
> +- clocks:
> +	Usage: required
> +	Value type: <prop-encoded-array>
> +	Definition: See clock-bindings.txt section "consumers". List of
> +                three clock specifiers for mclk, mclk2 and slimbus clock.
> +
> +- clock-names:
> +	Usage: required
> +	Value type: <string>
> +	Definition: Must contain "mclk", "mclk2" and "slimbus" strings.
> +
> +- vdd-buck-supply:
> +	Usage: required
> +	Value type: <phandle>
> +	Definition: Should contain a reference to the 1.8V buck supply
> +
> +- vdd-buck-sido-supply:
> +	Usage: required
> +	Value type: <phandle>
> +	Definition: Should contain a reference to the 1.8V SIDO buck supply
> +
> +- vdd-rx-supply:
> +	Usage: required
> +	Value type: <phandle>
> +	Definition: Should contain a reference to the 1.8V rx supply
> +
> +- vdd-tx-supply:
> +	Usage: required
> +	Value type: <phandle>
> +	Definition: Should contain a reference to the 1.8V tx supply
> +
> +- vdd-vbat-supply:
> +	Usage: Optional
> +	Value type: <phandle>
> +	Definition: Should contain a reference to the vbat supply
> +
> +- vdd-micbias-supply:
> +	Usage: required
> +	Value type: <phandle>
> +	Definition: Should contain a reference to the micbias supply
> +
> +- vdd-io-supply:
> +	Usage: required
> +	Value type: <phandle>
> +	Definition: Should contain a reference to the 1.8V io supply
> +
> +- qcom,micbias1-lvl:
> +	Usage: required
> +	Value type: <u32>
> +	Definition: Should be voltage in milli Volts for micbias1 output
> +	Supported values are in inbetween 1800mV-2850mV
> +
> +- qcom,micbias2-lvl:
> +	Usage: required
> +	Value type: <u32>
> +	Definition: Should be voltage in milli Volts for micbias2 output
> +	Supported values are in inbetween 1800mV-2850mV
> +
> +- qcom,micbias3-lvl:
> +	Usage: required
> +	Value type: <u32>
> +	Definition: Should be voltage in milli Volts for micbias3 output
> +	Supported values are in inbetween 1800mV-2850mV
> +
> +- qcom,micbias4-lvl:
> +	Usage: required
> +	Value type: <u32>
> +	Definition: Should be voltage in milli Volts for micbias4 output
> +	Supported values are in inbetween 1800mV-2850mV
> +
> +- clock-output-names:
> +	Usage: required
> +	Value type: <string>
> +	Definition: Should be the "mclk", corresponding to name
> +			of the clk output.
> +
> +- clock-frequency:
> +	Usage: required
> +	Definition: Indicating the frequency of mclk output.
> +
> +- interrupt-controller:
> +	Usage: required
> +	Definition: Indicating that this is a interrupt controller
> +
> +- #interrupt-cells:
> +	Usage: required
> +	Value type: <int>
> +	Definition: should be 1
> +
> +- #clock-cells:
> +	Usage: required
> +	Value type: <int>
> +	Definition: should be 0, as there is only one clock out supported.
> +
> +#sound-dai-cells
> +	Usage: required
> +	Value type: <u32>
> +	Definition: Must be 1
> +
> +Example:
> +
> +wcd9340: audio-codec@1{
> +	compatible = "slim217,250";
> +	reg  = <1 0>;
> +	reset-gpios = <&tlmm 64 0>;
> +	slim-ifc-dev  = <&wcd9340_ifd>;
> +	vdd-buck-supply = <&vreg_s4a_1p8>;
> +	vdd-buck-sido-supply = <&vreg_s4a_1p8>;
> +	vdd-tx-supply = <&vreg_s4a_1p8>;
> +	vdd-rx-supply = <&vreg_s4a_1p8>;
> +	vdd-io-supply = <&vreg_s4a_1p8>;
> +	qcom,micbias1-lvl = <1800>;
> +	qcom,micbias2-lvl = <1800>;
> +	qcom,micbias3-lvl = <1800>;
> +	qcom,micbias4-lvl = <1800>;
> +
> +	interrupt-parent = <&tlmm>;
> +	interrupts = <54 IRQ_TYPE_LEVEL_HIGH>;
> +	interrupt-names  = "intr1";
> +	interrupt-controller;
> +	#interrupt-cells = <1>;
> +
> +	#clock-cells = <0>;
> +	clock-frequency = <9600000>;
> +	clock-output-names = "mclk";
> +	#sound-dai-cells = <1>;
> +
> +	pinctrl@42 {
> +		compatible = "qcom,wcd9340-pinctrl";
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		gpio-ranges = <&wcdpinctrl 0 0 5>;
> +		reg = <0x42 0x2>;
> +		...
> +	};
> +
> +	soundwire@c85{

Child nodes need documenting.

> +		compatible = "qcom,soundwire-v1.3.0";
> +		reg = <0xc85 0x40>;
> +		...
> +	};
> +};
> -- 
> 2.21.0
> 
