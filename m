Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9EA65099FD
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 09:56:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1386292AbiDUHxl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Apr 2022 03:53:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1386315AbiDUHxc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Apr 2022 03:53:32 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FF6E11A00
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 00:50:36 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id bv19so8267777ejb.6
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 00:50:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=VnKtNPMLPSJU8KSy7Xeg6aL3o6g3ixxa3Q5xm1hg/n0=;
        b=EtqegGBE8Ps3wvXJGWd5bbopLvSQFeg6ngay/NRim+Xdr+UZsByjuMFU/sZyl4yITk
         1nqOaYLcq6ftHOKfdcOJRIcMZTk6wSXMUh9dgNu0UtZK9TmdvQpmS/wSjKqpZtr+Q/at
         ZJ+AT9dxmlufLcdOXdKEEu6/b0gwxgXnhK9AWcpvwcqKYqdQQLF9m9P2OdWBacea3xu4
         agjfUhBh9KsyBy4ivRj1nWrCEXrwkswtxyVnPlzunHVYG2MTeXog0QPmbdpZsStAGESk
         t/u3XrbzIwS4xOFpmBDTNxBoPcUn4ZWieu+4Zs6gamhap8ZF2fn464BotlTfCvBgO9Bo
         qrtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=VnKtNPMLPSJU8KSy7Xeg6aL3o6g3ixxa3Q5xm1hg/n0=;
        b=iFH5ePcWpzY7QQ8Vam9VbWQ1WWRxM0SN4reJmFKMW/gsWjM74E5AY39hWOurPDcMW1
         JvtyUqsEJWIIg7lzll60qH3WA4paPnn/9RgqtY9JZILReQ9X0y19TtaU9HqnyQloPFYP
         LDNUqfvDtdW8rc6PmCmbOBHTie2DnE6/0OvOg68wNsWcWjhIpMRHKXiL2na35rJrniH1
         Gg8VphaK9ooiMBysyhitrQN8CNKa15acSBfGtc4OwdiiouUs3m2pbgC6GtG9cvC1CJXI
         blsaTTME8vGQzwkrOw2l8az6vRtFT6jE9rP/GGZxM2lBa/kJ00A/dedeZMABXsiLje38
         MtyA==
X-Gm-Message-State: AOAM5325TJ903u2oAjOjVmN5pS0DcxkAT+DhwuoItx7fuq7td9dGRi4q
        WoQz8QKBclSrhQAj0cDahm6HGA==
X-Google-Smtp-Source: ABdhPJxr+sWJTc4G5EupC3NLw6toYBSJ+ilrfVXesOtVBlP+cS53drpDAonoOwRSqDOXZx7Fw63QiA==
X-Received: by 2002:a17:907:7249:b0:6ef:aed9:762 with SMTP id ds9-20020a170907724900b006efaed90762mr16539441ejc.198.1650527434543;
        Thu, 21 Apr 2022 00:50:34 -0700 (PDT)
Received: from [192.168.0.226] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id i22-20020a1709063c5600b006e8a8a48baesm7623728ejg.99.2022.04.21.00.50.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Apr 2022 00:50:34 -0700 (PDT)
Message-ID: <ddc2fb97-dfe9-3730-5781-1e60a1138bdf@linaro.org>
Date:   Thu, 21 Apr 2022 09:50:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 14/15] arm64: dts: renesas: Add Renesas R8A779G0 SoC
 support
Content-Language: en-US
To:     Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
        geert+renesas@glider.be, magnus.damm@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org
Cc:     linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-serial@vger.kernel.org
References: <20220420084255.375700-1-yoshihiro.shimoda.uh@renesas.com>
 <20220420084255.375700-15-yoshihiro.shimoda.uh@renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220420084255.375700-15-yoshihiro.shimoda.uh@renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/04/2022 10:42, Yoshihiro Shimoda wrote:
> Add initial support for the Renesas R8A779G0 (R-Car V4H) SoC.
> 
> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> ---
>  arch/arm64/boot/dts/renesas/r8a779g0.dtsi | 122 ++++++++++++++++++++++
>  1 file changed, 122 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/renesas/r8a779g0.dtsi
> 
> diff --git a/arch/arm64/boot/dts/renesas/r8a779g0.dtsi b/arch/arm64/boot/dts/renesas/r8a779g0.dtsi
> new file mode 100644
> index 000000000000..eb5a9ca837c7
> --- /dev/null
> +++ b/arch/arm64/boot/dts/renesas/r8a779g0.dtsi
> @@ -0,0 +1,122 @@
> +// SPDX-License-Identifier: (GPL-2.0 or MIT)
> +/*
> + * Device Tree Source for the R-Car V4H (R8A779G0) SoC
> + *
> + * Copyright (C) 2022 Renesas Electronics Corp.
> + */
> +
> +#include <dt-bindings/clock/r8a779g0-cpg-mssr.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/power/r8a779g0-sysc.h>
> +
> +/ {
> +	compatible = "renesas,r8a779g0";
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		a76_0: cpu@0 {
> +			compatible = "arm,cortex-a76";
> +			reg = <0>;
> +			device_type = "cpu";
> +			power-domains = <&sysc R8A779G0_PD_A1E0D0C0>;
> +		};
> +	};
> +
> +	extal_clk: extal {

Generic node names. If you need some differentiating prefix, how about
"extal-clock"?

> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		/* This value must be overridden by the board */
> +		clock-frequency = <0>;
> +	};
> +
> +	extalr_clk: extalr {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		/* This value must be overridden by the board */
> +		clock-frequency = <0>;
> +	};
> +
> +	pmu_a76 {

No underscores in node names.

> +		compatible = "arm,cortex-a76-pmu";
> +		interrupts-extended = <&gic GIC_PPI 7 IRQ_TYPE_LEVEL_LOW>;
> +	};
> +
> +	/* External SCIF clock - to be overridden by boards that provide it */
> +	scif_clk: scif {

Generic node names, so scif-clock?

Best regards,
Krzysztof
