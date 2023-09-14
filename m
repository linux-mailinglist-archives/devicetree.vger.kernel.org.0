Return-Path: <devicetree+bounces-185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD36F7A0182
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 12:19:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7A65C282395
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 10:19:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C418E1F18D;
	Thu, 14 Sep 2023 10:19:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8B9B1D524
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 10:19:25 +0000 (UTC)
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3DF11BE8
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 03:19:24 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4013454fa93so8856875e9.0
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 03:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694686763; x=1695291563; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DSE6vNwk20eh8NCSE2NhhZGBduenyT49EAR4BzWUtsc=;
        b=uxUr+z/OTPrjlFvXF8oy3cMnno8G30upc5Rh5b/5nQqoT86P42alX1+KUYsQUcethH
         GMMImZ9r+AWI8jvGI3TW1DHmVG+Iqa/tAMEb7NHFhQRcL4nwXA7LJhJdX+O1tXiY01H0
         0skHo3OSj/6g8YP2n9QRwkOzsEEMV1A20H47hHQqnUpcf1CY3UzW7CslVsIhrrbFdsQ6
         +gmZRVvNEcqWrKNOQawLRz4YzX0SZGll4MgCp3QxKywu3/vzFncVtkRXeyqHlUyGsqfI
         ONYyHLPOdrPgkk4tuDBNDsYViszWx7cAU6jpxgSA2d9sxJgduIxEHhzc7K3YXtXayMiW
         avxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694686763; x=1695291563;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DSE6vNwk20eh8NCSE2NhhZGBduenyT49EAR4BzWUtsc=;
        b=Y671Wy+Z+VqaNJh5nBEgw2ALGMA/dimdn0D+nhSn3xYEv3zZZbox2Tz+C4NdM4jLkP
         BqUUuw0+mZDLxjRwFkF9j6sV0gLKmBZsG3KDcEKfavQiB3cwExEtRtrmWja0/u75j6YX
         e2GVIho/MMTAbf7PcvyGvJPqGq5iLNkbNwazinAviQbmMgUEYA03O7TCt50JoiOb3xuo
         XwBzbTyScyQJFzyRKZQVMQGO1iINuOvvHb0QZeBI9XJG3bGWWYiBuvd2N/CufLjwKDMk
         uASoa+0Nm7t+SiL3+bw0dMmL3xdUwKV+WOO3jUttc+XbpqTHgEDT8LHE8k2RQ/2r1QJy
         MTxg==
X-Gm-Message-State: AOJu0YwK3KAXfuqBzwEoWtJZeU3Rl2PLmW1H1BUsVLM9yO/ye+PHdF60
	ABy5uAq9zbevU07Bn8wlG5QfqQ==
X-Google-Smtp-Source: AGHT+IF6v82RzlrnfNjx4ipBuZ7qR28aYGyW2mBEYRyGX0ND6yLnJ39DaT4XSfL2o3/dNZl7/S4StA==
X-Received: by 2002:a7b:ca47:0:b0:3fe:4cbc:c345 with SMTP id m7-20020a7bca47000000b003fe4cbcc345mr4307221wml.41.1694686763321;
        Thu, 14 Sep 2023 03:19:23 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id q5-20020a7bce85000000b004013797efb6sm4437044wmj.9.2023.09.14.03.19.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 03:19:22 -0700 (PDT)
Message-ID: <3e0df2c9-f4c5-ce7b-5b19-de8530a25d95@linaro.org>
Date: Thu, 14 Sep 2023 12:19:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 2/2] arm64: dts: imx93: add DDR controller node
To: Xu Yang <xu.yang_2@nxp.com>, will@kernel.org, mark.rutland@arm.com,
 robh+dt@kernel.org, shawnguo@kernel.org
Cc: krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-imx@nxp.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, ye.li@nxp.com
References: <20230914102038.2944844-1-xu.yang_2@nxp.com>
 <20230914102038.2944844-2-xu.yang_2@nxp.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230914102038.2944844-2-xu.yang_2@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 14/09/2023 12:20, Xu Yang wrote:
> Add DDR controller node which will be used by EDAC driver later, also
> move the DDR PMU node as the subnode of the DDR controller.
> 
> Signed-off-by: Ye Li <ye.li@nxp.com>
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx93.dtsi | 18 ++++++++++++++----
>  1 file changed, 14 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
> index 6f85a05ee7e1..992bdeef70cd 100644
> --- a/arch/arm64/boot/dts/freescale/imx93.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
> @@ -917,10 +917,20 @@ media_blk_ctrl: system-controller@4ac10000 {
>  			status = "disabled";
>  		};
>  
> -		ddr-pmu@4e300dc0 {
> -			compatible = "fsl,imx93-ddr-pmu";
> -			reg = <0x4e300dc0 0x200>;
> -			interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
> +		ddr: memory-controller@4e300000 {
> +			compatible = "simple-mfd";

No, that's not allowed alone.

It does not look like you tested the DTS against bindings. Please run
`make dtbs_check W=1` (see
Documentation/devicetree/bindings/writing-schema.rst or
https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
for instructions).

Best regards,
Krzysztof


