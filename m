Return-Path: <devicetree+bounces-902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5A17A3E68
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 00:20:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3A9642812FB
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 22:20:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E668DF4F9;
	Sun, 17 Sep 2023 22:20:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F096FC1
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 22:20:31 +0000 (UTC)
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3DB09F
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 15:20:29 -0700 (PDT)
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 907A93F664
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 22:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1694989227;
	bh=MHzNwi9slcSY5+J98yaBWBbVj/QNNWWNlukZ9uThGv4=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=E0HOkLmSw3xdHh7GOECFgt3CI03zvVSxKPv0yP8EE1iRY2ggbe9HaNosms7mt3LO+
	 osBxY23eXCpuMWI4Ulh26HfLMIhgBuPN9mh9tcMKZhn0DWREpefFAh9ytHZ2MisAQ1
	 E0D3oQU39MbWhueh32J9CGDfmRyN93Llnlbv174B8wSpPLUhsUBzU/tSepyV6P1hkb
	 iAPJteePNprD8QeyR0d+VS3eVVanKPlebkvQ7TKEzPlz2qUYBlxNcNnHv/+8bl3G0f
	 6kCeymmix7XgJyuibKlju1V2YNm05JqC7V0q5+pZ+cE70JA5X1C6InW4OwseVF5uVL
	 7Tz4zLxpakMhQ==
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-41219864601so46090921cf.0
        for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 15:20:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694989224; x=1695594024;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MHzNwi9slcSY5+J98yaBWBbVj/QNNWWNlukZ9uThGv4=;
        b=dKSqaThg+kFmzKjLC5cD3V5fWN7ZoxaXrB2yJEguINcCnl/ruKieAttzjBYqkT1C/N
         7ub0D/Caa7ua8orBfkz7rYbCUAt0PaxJE/9JYw0p1GWX2FCISIoWOGpE047XU7lyLoPq
         pNVpNZWJ3p8Ltw0TU4oEzbyigQ9UWDf1t6bgawKuebZN5b63EcAvVcRH/rSqXgHkX+Qj
         2M2Jc5zwYcmch0BX09zvNxTpQ6HwOmtuDKx6l02g+s1B3i9vihITwftrUls5aMwBrZFn
         b6Dw9UNCZ22GIaYl+rxRMezh7KiX+vA9r7ypPqK206HMqeXmKT9Bx1pqregSvZ98s4EC
         1dXg==
X-Gm-Message-State: AOJu0YwCHGPAw3xwaAHqaIwjfIawWFYcJ2lp1DdSNmKJd/QiHQBTtteP
	fE0tLr6xLKvvbygy9YFdvvF/pkAc5Ixv8oEIFM8TxEFGnaDziYgKlftrH3bravJJwo/nt8Q/Z4F
	fYQfncveVDXwCtsFrDk8lLvol5Kh3u2rLn5wwNpLmMNdVrZckbGAeRpY=
X-Received: by 2002:a05:622a:1d1:b0:412:4847:20af with SMTP id t17-20020a05622a01d100b00412484720afmr9875878qtw.23.1694989224328;
        Sun, 17 Sep 2023 15:20:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGrYqzVM75uuKU/x9guzZO42+l/vGRJORhbptSN1kBCkn8+skT6lT5TltjUNQpFf7InVCnN+h8fL47vFAieQJ4=
X-Received: by 2002:a05:622a:1d1:b0:412:4847:20af with SMTP id
 t17-20020a05622a01d100b00412484720afmr9875856qtw.23.1694989224089; Sun, 17
 Sep 2023 15:20:24 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Sun, 17 Sep 2023 15:20:23 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20230915102243.59775-20-minda.chen@starfivetech.com>
References: <20230915102243.59775-1-minda.chen@starfivetech.com> <20230915102243.59775-20-minda.chen@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Sun, 17 Sep 2023 15:20:23 -0700
Message-ID: <CAJM55Z8ES9ip53R14OoKVphEr14BFOwk88DCZEp13oGrnPkdvg@mail.gmail.com>
Subject: Re: [PATCH v6 19/19] riscv: dts: starfive: add PCIe dts configuration
 for JH7110
To: Minda Chen <minda.chen@starfivetech.com>, 
	Daire McNamara <daire.mcnamara@microchip.com>, Conor Dooley <conor@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-pci@vger.kernel.org, 
	=?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Mason Huo <mason.huo@starfivetech.com>, Leyfoon Tan <leyfoon.tan@starfivetech.com>, 
	Kevin Xie <kevin.xie@starfivetech.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Minda Chen wrote:
> Add PCIe dts configuraion for JH7110 SoC platform.
>
> Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
> Reviewed-by: Hal Feng <hal.feng@starfivetech.com>
> Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
> ---
>  .../jh7110-starfive-visionfive-2.dtsi         | 63 +++++++++++++
>  arch/riscv/boot/dts/starfive/jh7110.dtsi      | 88 +++++++++++++++++++
>  2 files changed, 151 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> index d79f94432b27..8c84852f1c06 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> @@ -402,6 +402,53 @@
>  		};
>  	};
>
> +	pcie0_pins: pcie0-0 {
> +		wake-pins {
> +			pinmux = <GPIOMUX(32, GPOUT_LOW,
> +					      GPOEN_DISABLE,
> +					      GPI_NONE)>;
> +			bias-pull-up;
> +			drive-strength = <2>;
> +			input-enable;
> +			input-schmitt-disable;
> +			slew-rate = <0>;
> +		};
> +		clkreq-pins {
> +			pinmux = <GPIOMUX(27, GPOUT_LOW,
> +					      GPOEN_DISABLE,
> +					      GPI_NONE)>;
> +			bias-pull-down;
> +			drive-strength = <2>;
> +			input-enable;
> +			input-schmitt-disable;
> +			slew-rate = <0>;
> +		};
> +	};
> +
> +	pcie1_pins: pcie1-0 {
> +		wake-pins {
> +			pinmux = <GPIOMUX(21, GPOUT_LOW,
> +					      GPOEN_DISABLE,
> +					      GPI_NONE)>;
> +			bias-pull-up;
> +			drive-strength = <2>;
> +			input-enable;
> +			input-schmitt-disable;
> +			slew-rate = <0>;
> +		};
> +
> +		clkreq-pins {
> +			pinmux = <GPIOMUX(29, GPOUT_LOW,
> +					      GPOEN_DISABLE,
> +					      GPI_NONE)>;
> +			bias-pull-down;
> +			drive-strength = <2>;
> +			input-enable;
> +			input-schmitt-disable;
> +			slew-rate = <0>;
> +		};
> +	};
> +
>  	spi0_pins: spi0-0 {
>  		mosi-pins {
>  			pinmux = <GPIOMUX(52, GPOUT_SYS_SPI0_TXD,
> @@ -499,6 +546,22 @@
>  	};
>  };
>
> +&pcie0 {
> +	pinctrl-names = "default";
> +	perst-gpios = <&sysgpio 26 GPIO_ACTIVE_LOW>;
> +	pinctrl-0 = <&pcie0_pins>;
> +	phys = <&pciephy0>;
> +	status = "okay";
> +};
> +
> +&pcie1 {
> +	pinctrl-names = "default";
> +	perst-gpios = <&sysgpio 28 GPIO_ACTIVE_LOW>;
> +	pinctrl-0 = <&pcie1_pins>;
> +	phys = <&pciephy1>;
> +	status = "okay";
> +};

These nodes are out of place. The order is
- root node
- clocks sorted alphabetically
- other node references sorted alphabetically

>  &tdm {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&tdm_pins>;
> diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> index e85464c328d0..97fe5a242d60 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> @@ -1045,5 +1045,93 @@
>  			#reset-cells = <1>;
>  			power-domains = <&pwrc JH7110_PD_VOUT>;
>  		};
> +
> +		pcie0: pcie@940000000 {
> +			compatible = "starfive,jh7110-pcie";
> +			reg = <0x9 0x40000000 0x0 0x1000000>,
> +			      <0x0 0x2b000000 0x0 0x100000>;
> +			reg-names = "cfg", "apb";
> +			linux,pci-domain = <0>;
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +			#interrupt-cells = <1>;
> +			ranges = <0x82000000  0x0 0x30000000  0x0 0x30000000 0x0 0x08000000>,
> +				 <0xc3000000  0x9 0x00000000  0x9 0x00000000 0x0 0x40000000>;
> +			interrupts = <56>;
> +			interrupt-parent = <&plic>;

Is interrupt-parent not inherited from the soc bus like other peripherals?

> +			interrupt-map-mask = <0x0 0x0 0x0 0x7>;
> +			interrupt-map = <0x0 0x0 0x0 0x1 &pcie_intc0 0x1>,
> +					<0x0 0x0 0x0 0x2 &pcie_intc0 0x2>,
> +					<0x0 0x0 0x0 0x3 &pcie_intc0 0x3>,
> +					<0x0 0x0 0x0 0x4 &pcie_intc0 0x4>;
> +			msi-controller;
> +			device_type = "pci";
> +			starfive,stg-syscon = <&stg_syscon>;
> +			bus-range = <0x0 0xff>;
> +			clocks = <&syscrg JH7110_SYSCLK_NOC_BUS_STG_AXI>,
> +				 <&stgcrg JH7110_STGCLK_PCIE0_TL>,
> +				 <&stgcrg JH7110_STGCLK_PCIE0_AXI_MST0>,
> +				 <&stgcrg JH7110_STGCLK_PCIE0_APB>;
> +			clock-names = "noc", "tl", "axi_mst0", "apb";
> +			resets = <&stgcrg JH7110_STGRST_PCIE0_AXI_MST0>,
> +				 <&stgcrg JH7110_STGRST_PCIE0_AXI_SLV0>,
> +				 <&stgcrg JH7110_STGRST_PCIE0_AXI_SLV>,
> +				 <&stgcrg JH7110_STGRST_PCIE0_BRG>,
> +				 <&stgcrg JH7110_STGRST_PCIE0_CORE>,
> +				 <&stgcrg JH7110_STGRST_PCIE0_APB>;
> +			reset-names = "mst0", "slv0", "slv", "brg",
> +				      "core", "apb";
> +			status = "disabled";
> +
> +			pcie_intc0: interrupt-controller {
> +				#address-cells = <0>;
> +				#interrupt-cells = <1>;
> +				interrupt-controller;
> +			};
> +		};
> +
> +		pcie1: pcie@9c0000000 {
> +			compatible = "starfive,jh7110-pcie";
> +			reg = <0x9 0xc0000000 0x0 0x1000000>,
> +			      <0x0 0x2c000000 0x0 0x100000>;
> +			reg-names = "cfg", "apb";
> +			linux,pci-domain = <1>;
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +			#interrupt-cells = <1>;
> +			ranges = <0x82000000  0x0 0x38000000  0x0 0x38000000 0x0 0x08000000>,
> +				 <0xc3000000  0x9 0x80000000  0x9 0x80000000 0x0 0x40000000>;
> +			interrupts = <57>;
> +			interrupt-parent = <&plic>;

ditto.

> +			interrupt-map-mask = <0x0 0x0 0x0 0x7>;
> +			interrupt-map = <0x0 0x0 0x0 0x1 &pcie_intc1 0x1>,
> +					<0x0 0x0 0x0 0x2 &pcie_intc1 0x2>,
> +					<0x0 0x0 0x0 0x3 &pcie_intc1 0x3>,
> +					<0x0 0x0 0x0 0x4 &pcie_intc1 0x4>;
> +			msi-controller;
> +			device_type = "pci";
> +			starfive,stg-syscon = <&stg_syscon>;
> +			bus-range = <0x0 0xff>;
> +			clocks = <&syscrg JH7110_SYSCLK_NOC_BUS_STG_AXI>,
> +				 <&stgcrg JH7110_STGCLK_PCIE1_TL>,
> +				 <&stgcrg JH7110_STGCLK_PCIE1_AXI_MST0>,
> +				 <&stgcrg JH7110_STGCLK_PCIE1_APB>;
> +			clock-names = "noc", "tl", "axi_mst0", "apb";
> +			resets = <&stgcrg JH7110_STGRST_PCIE1_AXI_MST0>,
> +				 <&stgcrg JH7110_STGRST_PCIE1_AXI_SLV0>,
> +				 <&stgcrg JH7110_STGRST_PCIE1_AXI_SLV>,
> +				 <&stgcrg JH7110_STGRST_PCIE1_BRG>,
> +				 <&stgcrg JH7110_STGRST_PCIE1_CORE>,
> +				 <&stgcrg JH7110_STGRST_PCIE1_APB>;
> +			reset-names = "mst0", "slv0", "slv", "brg",
> +				      "core", "apb";
> +			status = "disabled";
> +
> +			pcie_intc1: interrupt-controller {
> +				#address-cells = <0>;
> +				#interrupt-cells = <1>;
> +				interrupt-controller;
> +			};
> +		};
>  	};
>  };
> --
> 2.17.1

