Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30E85379EB8
	for <lists+devicetree@lfdr.de>; Tue, 11 May 2021 06:43:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229809AbhEKEoW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 May 2021 00:44:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229548AbhEKEoW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 May 2021 00:44:22 -0400
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B00A8C061574
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 21:43:16 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id c8-20020a9d78480000b0290289e9d1b7bcso16480813otm.4
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 21:43:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=t6IRcBGYCOTUbL8z6SUEUBoF0mJvtqPt5zeQmnnFxik=;
        b=G3qHG41R4J+SIQ0TOHoAYpj+/ngyVrduOebcDHoEwTIEd+jmoCcwygmQTtrPv9EaOt
         Ckz7VEsRZ0Rs759+n+ZR4XChA9kt0snmUyX2g0bmAhuXoVshOWQ5GBxxZ3i1F0b8yVdq
         H3wQkzWiaKjDPbcay0t28gvzzUng8UBPxqOSv9S+VGAh4Bvy4i+F0MzLUpQzVLLFCL7C
         pwdESHLLy3ei9Qw+nxeIu/lBlAeixxlFL4e4gwNGZewHMxqrN5Nt0QdGKnxgRivz6VYD
         zaDOObGJPy5H+a5mbRx5gM5s4wgdjPXgQ67h6m2ObdV4hxZjJ8YGl31t71/8ARxbEowZ
         M/7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=t6IRcBGYCOTUbL8z6SUEUBoF0mJvtqPt5zeQmnnFxik=;
        b=BuA1mPfSDg/uyyfV1N3xGINb4YqVDC/n6qoVYXaagA6PLQmKlMQXeWCmh1SoAG0voU
         FDC2pPUhDIh3Wh61hTgekEwKo/t42DbMeSZCnA77mMyP48dYbBR1orXrM23BBZM/FcpL
         ciloDO6CcuTzRgCXZHOIdzBwDSpm0J9+yD9c8KucjcERyqFYZjbQmqC3yRLqtBrDTkgu
         2ujzuPE8Fsw4xs+g4nQ0iiqFltO9/D/1CJCxUJ4/vUjJmx+Lk5dYAFhUU1Rl9+5UdkCN
         MridK5M6trfrZjqIOAO5zoSEx0+LXYViwH6baTZ8hCsCiCFIr9FLbBoPrTcIpVjgh6BD
         BI1w==
X-Gm-Message-State: AOAM53183+ud8r5oBm36ymYkO0szUkuwbdGuhuk2Hu2kSdUvhCHNPJbK
        H2OJREOlByDuyMduNVLGnlv7Zg==
X-Google-Smtp-Source: ABdhPJxzymCUyIAna2oQgiJVXDT4++v8/avfRVij5tHOOtsqFayJF3Xbx0o8b1O7ZNsi9NI7ZofNYw==
X-Received: by 2002:a9d:7e91:: with SMTP id m17mr24115875otp.192.1620708196065;
        Mon, 10 May 2021 21:43:16 -0700 (PDT)
Received: from yoga ([2607:fb90:e623:42c1:10df:adff:fec2:f1d])
        by smtp.gmail.com with ESMTPSA id c9sm3082269ooq.31.2021.05.10.21.43.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 21:43:15 -0700 (PDT)
Date:   Mon, 10 May 2021 23:43:12 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Felipe Balbi <balbi@kernel.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Felipe Balbi <felipe.balbi@microsoft.com>
Subject: Re: [PATCH] arm64: dts: qcom: add initial device-tree for Microsoft
 Surface Duo
Message-ID: <20210511044312.GK2484@yoga>
References: <20210510120547.1315536-1-balbi@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210510120547.1315536-1-balbi@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 10 May 07:05 CDT 2021, Felipe Balbi wrote:

> From: Felipe Balbi <felipe.balbi@microsoft.com>
> 
> Microsoft Surface Duo is based on SM8150 chipset. This new Device Tree
> is a copy of sm8150-mtp with a the addition of the volume up key and
> relevant i2c nodes.
> 

This is really nice to see. Some comments below.

[..]
> diff --git a/arch/arm64/boot/dts/qcom/sm8150-microsoft-surface-duo.dts b/arch/arm64/boot/dts/qcom/sm8150-microsoft-surface-duo.dts
> new file mode 100644
> index 000000000000..f53d4b3dd482
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sm8150-microsoft-surface-duo.dts
> @@ -0,0 +1,545 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (C) 2021, Microsoft Corporation
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include "sm8150.dtsi"
> +#include "pm8150.dtsi"
> +#include "pm8150b.dtsi"
> +#include "pm8150l.dtsi"
> +
> +/ {
> +	model = "Microsoft Surface Duo";
> +	compatible = "microsoft,surface-duo", "qcom,sm8150-mtp";
> +
> +	aliases {
> +		serial0 = &uart2;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	vph_pwr: vph-pwr-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vph_pwr";
> +		regulator-min-microvolt = <3700000>;
> +		regulator-max-microvolt = <3700000>;
> +	};
> +
> +	/*
> +	 * Apparently RPMh does not provide support for PM8150 S4 because it
> +	 * is always-on; model it as a fixed regulator.
> +	 */
> +	vreg_s4a_1p8: pm8150-s4 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg_s4a_1p8";
> +
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +
> +		regulator-always-on;
> +		regulator-boot-on;
> +
> +		vin-supply = <&vph_pwr>;
> +	};
> +
> +	gpio_keys {
> +		compatible = "gpio-keys";
> +
> +		vol_up {
> +			label = "Volume Up";
> +			gpios = <&pm8150_gpios 6 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_VOLUMEUP>;
> +		};
> +	};
> +};
> +
> +&tlmm {

Please sort all nodes alphabetically.

> +	da7280_intr_default: da7280-intr-default {
> +		pins = "gpio42";
> +		function = "gpio";
> +		bias-pull-up;
> +		input-enable;
> +	};
> +};
[..]
> +&remoteproc_adsp {
> +	status = "okay";
> +	firmware-name = "qcom/sm8150/adsp.mdt";

For platforms where we have a Dragonboard or similar we push the
test-signed firmware to qcom/<platform>/. I presume that the Duo
wouldn't run on the test-signed firmware.

So I think it's better to make this qcom/sm8150/ms-duo/adsp.mdt...from
the start.

> +};
> +
> +&remoteproc_cdsp {
> +	status = "okay";
> +	firmware-name = "qcom/sm8150/cdsp.mdt";
> +};
> +
> +&remoteproc_mpss {
> +	status = "okay";
> +	firmware-name = "qcom/sm8150/modem.mdt";
> +};
> +
> +&remoteproc_slpi {
> +	status = "okay";
> +	firmware-name = "qcom/sm8150/slpi.mdt";
> +};

Regards,
Bjorn
