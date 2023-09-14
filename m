Return-Path: <devicetree+bounces-274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A55A07A09C5
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 17:52:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2892E1C21125
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 15:52:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17AD421351;
	Thu, 14 Sep 2023 15:47:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C920CA78
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 15:47:23 +0000 (UTC)
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25FB0DD
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 08:47:23 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-404573e6c8fso8631265e9.1
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 08:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694706441; x=1695311241; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2Y1+S4YPUZHV6bEDYOM6jByjByZjivqS16bGhRJtub4=;
        b=Yib7Uw7qTmLuP3MPrOqEXKVfWJZMSh5TlU5g//mn/wq2N7dI4BNGXHizZUtM+JuuPI
         ui5J5NByMIHbOWf0kj87XCmOU0lpIQMte8gf8B8+S1eMW0+r9yxWuIWH4XUvtbWQN30D
         Bqd7NP1pKNAol+pvcd/tVpN27T5bnTfOHcQDbyXPQdm1bM/qLlqLrE/vMEFBOiAh6B9c
         82w48p7gnKE89anaDJ+GADDrMqwCttGZPKQ3S2b2fjAw2xrdoJ0LNwfrf+IKrmMwZUd8
         gmVLhOju+eit3O/3l3Op/cJUeAwyw2FF/3zAx+HOULQFLTCXfzdhJsDXg2VJeoDjjdk6
         DaXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694706441; x=1695311241;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2Y1+S4YPUZHV6bEDYOM6jByjByZjivqS16bGhRJtub4=;
        b=HKUhzz8yGhUVyWBiCWeC80n3wlcPCxcNkqm9J5TFYq87d592JX4jMliJEUSRhNz7L/
         g8LB4y5ywsZ6FfV76u6TbEHBo33oHf44XK6/UtcOER+JvvV5NPgFWb7J4TVvXSJsXo3t
         ZSwhV2j/oU3AdODUprwPhUqJiRTn6DSRnS3m0xJq4rDHjnwGtINQws40xQCqhd/WAZe2
         mimtG1bhbCX+dPusN71gNpqFPlO+dHJGNK72K+L7q0DhuU2MBYcweuVkSy/tN5BoG995
         ycf3EzxHebgUfK8ugv5tWcSM/q8EHQH03bL5s/qNLMQ1ekdYzfIwDlok6dPAmIVe2YmW
         tiMw==
X-Gm-Message-State: AOJu0Yyd5sRpSS8AxdNGr6DfxVJ/0jRwg2hU/1p8anANCq9UslnluzfN
	EP/MFGd6n/K9KR4kdeO4TBZOFQ==
X-Google-Smtp-Source: AGHT+IFUiLqOu3FSpTNqE/FXs43Z+oCWKwTaAmpfJPvf5bz0GF4UwkZUD95wwrG8Nb/qPK6zVr0y3A==
X-Received: by 2002:a5d:61c4:0:b0:313:e971:53af with SMTP id q4-20020a5d61c4000000b00313e97153afmr5290417wrv.32.1694706441479;
        Thu, 14 Sep 2023 08:47:21 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id x2-20020adfec02000000b003179d7ed4f3sm2055514wrn.12.2023.09.14.08.47.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 08:47:20 -0700 (PDT)
Message-ID: <1ae7f23c-af9d-8ac6-49fd-46b607de971c@linaro.org>
Date: Thu, 14 Sep 2023 17:47:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH] arm64: dts: ls208xa: use a pseudo-bus to constrain usb
 dma size
Content-Language: en-US
To: Laurentiu Tudor <laurentiu.tudor@nxp.com>, shawnguo@kernel.org,
 leoyang.li@nxp.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230914145652.25728-1-laurentiu.tudor@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230914145652.25728-1-laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 14/09/2023 16:56, Laurentiu Tudor wrote:
> Wrap the usb controllers in an intermediate simple-bus and use it to
> constrain the dma address size of these usb controllers to the 40b
> that they generate toward the interconnect. This is required because
> the SoC uses 48b address sizes and this mismatch would lead to smmu
> context faults [1] because the usb generates 40b addresses while the
> smmu page tables are populated with 48b wide addresses.
> 
> [1]
> xhci-hcd xhci-hcd.0.auto: xHCI Host Controller
> xhci-hcd xhci-hcd.0.auto: new USB bus registered, assigned bus number 1
> xhci-hcd xhci-hcd.0.auto: hcc params 0x0220f66d hci version 0x100 quirks 0x0000000002000010
> xhci-hcd xhci-hcd.0.auto: irq 108, io mem 0x03100000
> xhci-hcd xhci-hcd.0.auto: xHCI Host Controller
> xhci-hcd xhci-hcd.0.auto: new USB bus registered, assigned bus number 2
> xhci-hcd xhci-hcd.0.auto: Host supports USB 3.0 SuperSpeed
> arm-smmu 5000000.iommu: Unhandled context fault: fsr=0x402, iova=0xffffffb000, fsynr=0x0, cbfrsynra=0xc01, cb=3
> 
> Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> ---
>  .../arm64/boot/dts/freescale/fsl-ls208xa.dtsi | 46 +++++++++++--------
>  1 file changed, 27 insertions(+), 19 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
> index d2f5345d0560..47cc7699ca16 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
> @@ -1186,26 +1186,34 @@
>  			dma-coherent;
>  		};
>  
> -		usb0: usb@3100000 {
> -			status = "disabled";
> -			compatible = "snps,dwc3";
> -			reg = <0x0 0x3100000 0x0 0x10000>;
> -			interrupts = <0 80 0x4>; /* Level high type */
> -			dr_mode = "host";
> -			snps,quirk-frame-length-adjustment = <0x20>;
> -			snps,dis_rxdet_inp3_quirk;
> -			snps,incr-burst-type-adjustment = <1>, <4>, <8>, <16>;
> -		};
> +		aux_bus: aux_bus {

No underscores in node names. The node name should be anyway generic, so
 just "bus".



Best regards,
Krzysztof


