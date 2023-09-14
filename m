Return-Path: <devicetree+bounces-92-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4472179FBE4
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 08:28:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DB9F41F221E4
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 06:28:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 749F23D7F;
	Thu, 14 Sep 2023 06:27:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6977263B
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 06:27:36 +0000 (UTC)
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2687F7
	for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 23:27:35 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-9a9cd066db5so81770266b.0
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 23:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694672854; x=1695277654; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SvJPiborPazhY3z/eKkSPzi9+TFXrHaaVb21iB43NoQ=;
        b=Kt5Tw5KR9yw442FFTMzUcHXDs7uzfWT+mNEtIECVVpNzH8SFpWcs09yMVwD7e6tp34
         ptKbVPIEBSAtR85/HXRaw+s4MsR6KRJ8V1eXou9qz0HJiGEgiPgXU1r2+OIwShuLLAa3
         zqZqmU13K2FUsIo57K0W11N1R7sEQgsyNyw1zO7EYOOZG5BWI0xFdaKmwYzZgtOIZaPZ
         o5hPfPnTpHVDvZDl/N2DQkLBb9PYAen1/KnlABwl7R3JmEmINJseHxUyq51MUTapAN8B
         kfrSz9RBwzF6uPGabJXVmSZss5paewZ3WAwKEEogqHSBmMilR6rVi+TH2Zmrb3R6KFW6
         7mog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694672854; x=1695277654;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SvJPiborPazhY3z/eKkSPzi9+TFXrHaaVb21iB43NoQ=;
        b=uaPDJMHQICHUrcbUS8MHZL+vp1F9s8YK4nByRedLZttqpnbWIOb9kIDbxxdWJHHZYM
         TK3RG9o6OHTLLxGBsmVNwJG5OrVhuFtVJ+aIuM+kwmsMCAj+4ADbCXaPxM/bFRkXep1E
         e3rcFaGq403UlNafOvw4yh2eOd3F+aYhlvtrDK9PJ4w314LOFVUeom7wyYRk6V4Te6Wj
         ehKNXKWBVticzqKLhFkfgqhSLQx0XcEBq5hAvaim6PPMcdMJwVRgHH0F0h9rhR/2uCXa
         cD+p0JQFdP7UgvRyyK9s/gZ7rAD5f+dbEh5gco1ZN2Xp3h+nrOOssFEtM6bj9G+DOkx1
         ZcUQ==
X-Gm-Message-State: AOJu0YzM92KQyeNv8AEX5gW+p5U0+kiTrMwN5ydMwBc3USKKnIJqeTr0
	NWBhCcv6U4+Os8DmJeQiBXBo7Q==
X-Google-Smtp-Source: AGHT+IGPactfC2yeS6QW7dJXDUIVllwKVb9ZV2x84EqGoOiQTTqwSd/i3KRUMgYtnIcrqxiZZV4dKA==
X-Received: by 2002:a17:906:3091:b0:9a5:c944:8e71 with SMTP id 17-20020a170906309100b009a5c9448e71mr3578755ejv.60.1694672854226;
        Wed, 13 Sep 2023 23:27:34 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id mh25-20020a170906eb9900b0099297782aa9sm517731ejb.49.2023.09.13.23.27.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Sep 2023 23:27:33 -0700 (PDT)
Message-ID: <32c82fa2-f8b9-d22d-f0ac-f8d6e48df39d@linaro.org>
Date: Thu, 14 Sep 2023 08:27:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 1/3] arm64: dts: ti: Add GPMC NAND support
Content-Language: en-US
To: Nitin Yadav <n-yadav@ti.com>, nm@ti.com, vigneshr@ti.com, rogerq@ti.com
Cc: kristo@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20230913114711.2937844-1-n-yadav@ti.com>
 <20230913114711.2937844-2-n-yadav@ti.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230913114711.2937844-2-n-yadav@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/09/2023 13:47, Nitin Yadav wrote:
> Add support for AM62Q NAND card: X8 NAND EXPANSION
> BOARD card (PROC143E1) for AM62x LP SK board.
> 
> Signed-off-by: Nitin Yadav <n-yadav@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am62-main.dtsi | 29 ++++++++++++++++++++++++
>  arch/arm64/boot/dts/ti/k3-am62.dtsi      |  2 ++
>  2 files changed, 31 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> index 284b90c94da8..e93e79d8083f 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> @@ -955,4 +955,33 @@ mcasp2: audio-controller@2b20000 {
>  		power-domains = <&k3_pds 192 TI_SCI_PD_EXCLUSIVE>;
>  		status = "disabled";
>  	};
> +	gpmc0: memory-controller@3b000000 {
> +		status = "disabled";

status is never first in DTSI. Really, where did you see such code?

> +		compatible = "ti,am64-gpmc";
> +		power-domains = <&k3_pds 80 TI_SCI_PD_EXCLUSIVE>;

First is compatible, second is reg/reg-names/ranges.


Best regards,
Krzysztof


