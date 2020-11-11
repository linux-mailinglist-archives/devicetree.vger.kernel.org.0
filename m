Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB06F2AE541
	for <lists+devicetree@lfdr.de>; Wed, 11 Nov 2020 02:04:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731805AbgKKBEa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Nov 2020 20:04:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730894AbgKKBE3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Nov 2020 20:04:29 -0500
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EE56C0613D1
        for <devicetree@vger.kernel.org>; Tue, 10 Nov 2020 17:04:28 -0800 (PST)
Received: by mail-pf1-x443.google.com with SMTP id y7so466147pfq.11
        for <devicetree@vger.kernel.org>; Tue, 10 Nov 2020 17:04:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rQTT04wcfpF7QK3jMNSOeddpWQqsTYbtkHPF2TgnhDw=;
        b=rstR4NoObJzeoh+3p/JZ53mnW/kAlu+1apkEbE1fD9J5w+fxgAaUW4nBT0Qbz07+Te
         OqmJJzaSzoKgR4OYO8VFRtlxL4rh9QuIukY7tHjv30R4N30bcUwmN2WdzQE7y9Yx851D
         KMNj8MbF51ymPuL4xJz2DiaN/KaR26DKXFNMXFeqWIKYtmnz81xql0Wlony23a9bTjuG
         02iiYcXNjjRDsg3l2kiK7SGySVAqfNgNMfgoeTHHhYhpmhZsWpGv/Jr6FHjfZA9BXCS3
         bjd1vfo8sJgNDFJ8CpjxGRCbdbINNdhvOJ+HHWtFfhJWKV1n7n24AakwN3Yf2FDihXB+
         IMwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rQTT04wcfpF7QK3jMNSOeddpWQqsTYbtkHPF2TgnhDw=;
        b=NPMsAyVJnFS4RWVr3dyOQ5gNtTqraTA6uN6xe9aQndFmGoahQhC2IrX4MVQiTuTGJI
         U5h0ptfxw3jAo4grNzAlKm6H0IhT8xRV20Zoc9YJzkPT1fxAFXQMDe14+DQhRCl3XqGY
         U0e/LD6T1ECus1yyt50AdMEuVCet1q5hbZObypPHAZ5mks+eOQj7tX4Ss8Rlk7WP4VLU
         YkW4Ey4X6n3nInHFcZa1tKH39zIxFX7YGvMdozTxwghD5VZitaqqEWQ03Uc0V3ZjPmyp
         jR16sWHsdGhG866t6CLbeIl8M0hsnC7gCXiGi49eH83ogPR7EnEUqScdvqbnN1BqQ5U8
         bj1w==
X-Gm-Message-State: AOAM531YCySVJ0Ejiyzhnz4xsO3XwYFQpwXI9/fVxnAr52uxvRNiK0VP
        GsI5oqZbT9KtluwcUcHygWk=
X-Google-Smtp-Source: ABdhPJxhG5chZ2tKt1wDz5JBCkRGdM/AGvYGGjlnMRg3hkAzNvxoqiN7lYUBq0ijd1Zgf7MmnG3ivg==
X-Received: by 2002:aa7:8586:0:b029:18c:3aa6:b8bb with SMTP id w6-20020aa785860000b029018c3aa6b8bbmr7828086pfn.39.1605056668116;
        Tue, 10 Nov 2020 17:04:28 -0800 (PST)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
        by smtp.gmail.com with ESMTPSA id i3sm244193pjd.33.2020.11.10.17.04.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 17:04:26 -0800 (PST)
Subject: Re: [PATCH V2 2/2] arm64: dts: broadcom: add BCM4908 and Asus
 GT-AC5300 early DTS files
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20201105085458.21121-1-zajec5@gmail.com>
 <20201105085458.21121-2-zajec5@gmail.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <a4a1d02f-c950-62ab-fb49-b5819cf1cd11@gmail.com>
Date:   Tue, 10 Nov 2020 17:04:25 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.4.1
MIME-Version: 1.0
In-Reply-To: <20201105085458.21121-2-zajec5@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 11/5/2020 12:54 AM, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> They don't descibe hardware fully yet but it's enough to boot a system.
> 
> Some missing blocks:
> 1. PMC (Power Management Controller?)
> 2. Ethernet
> 3. Crypto
> 4. Thermal
> 
> Asus DTS is missing defining full NAND partitions layout and buttons.
> 
> Further changes will fill those gaps as soon as required bindings will
> be found / tested / added.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>

We would need a board/SoC binding document under
Documentation/devicetree/bindings/arm/bcm/ which describes the 4908 SoC
and its possible boards at least.

[snip]
h
> +
> +&nandcs {
> +	nand-ecc-strength = <4>;
> +	nand-ecc-step-size = <512>;
> +	nand-on-flash-bbt;
> +	brcm,nand-has-wp;
> +
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	partitions {
> +		compatible = "fixed-partitions";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +		partition@0 {
> +			label = "cferom";
> +			reg = <0x000000000000 0x000000100000>;

You can probably trim the leading zeroes.

> +		};
> +	};
> +};
> diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
> new file mode 100644
> index 000000000000..3bbefc86b978
> --- /dev/null
> +++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
> @@ -0,0 +1,188 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +/dts-v1/;
> +
> +/ {
> +	interrupt-parent = <&gic>;
> +
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +
> +	aliases {
> +		serial0 = &uart0;
> +	};
> +
> +	chosen {
> +		bootargs = "earlycon=bcm63xx_uart,0xff800640";

We talked about it before, but the earlycon should be dropped from the
.dtsi file, it does not really belong there.

The rest looks good to me!
-- 
Florian
