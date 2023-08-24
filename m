Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F09B77875C7
	for <lists+devicetree@lfdr.de>; Thu, 24 Aug 2023 18:44:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239792AbjHXQn5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Aug 2023 12:43:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242749AbjHXQnj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Aug 2023 12:43:39 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A34E1BF8
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 09:43:22 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2bcc846fed0so54255861fa.2
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 09:43:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692895400; x=1693500200;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MhNikzhh9eyMrDoIEuRkwpx1JH9DFmpQLb9Zaw13Qy0=;
        b=PDjoFLERmxIiohisUaSL6+3gzt3DAVcvCSfU+4Kk+INBbN1VhCkpmAgGL3i4tr/sTe
         0T9p+F3BFITd33UsV+z2Su7H0N4dpwumQXIiGRhl7BRgVbLiJpKv7roXVYzwuVxn8+AF
         T1yP1U6JwXwk3tkvvQV/+1PRoQTk5eC4aNyg1oCM+v7xvICYl9uCD/pleJVojDKM2dUD
         u46d0HSd78nc1KTR6AwfEuI83txDBhELpYo1Jv4wXdrlGyzDwBd06UHR7YITsw6HNTBQ
         yqSOO2BNTuU9z6bYXzl/Tnsx5p/sUe+4SBaUtTUFPIp3mD3NWxKm2C7/Thy2vVEkhjK0
         TRew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692895400; x=1693500200;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MhNikzhh9eyMrDoIEuRkwpx1JH9DFmpQLb9Zaw13Qy0=;
        b=h7rMZnoDx9J78+nGF0T0m4ABWH89LoWDf3KHGM1XEIBKLHqirsC96s1ZMhP/56wpqo
         H1zbt9WaveJJ+QesD4AqK3SNQtGrc863jzkEfk+68KHIS/s9ifIrtJxUADfwSN60JIwE
         83pjXr9MNwxL0pnSnzB9oGyUcHrLA/x1DQJhN04P5maHmuPqZqnPO1EPmv4EiF3gpOBI
         tsDg1RsRgp4MmeXtvCYZye+owgFR9zs134pM1XmOnxxiCGpxmZA4XmwMq4OE8NbPJSQZ
         YU4CDSmXnDBePejVAdJw3b2fcEkwfa9tHjQPQXWRHdsZ6Ys36kxCkprkNQQPbQqSw9/h
         lN9A==
X-Gm-Message-State: AOJu0Yzgiro+svoFQLzzZsiT+7vskVRZRo9rdWI7Kye1DgNqi7UZ8zhs
        m+JCnNY8Eyl3j+4/TCM3/i/usw==
X-Google-Smtp-Source: AGHT+IEUCWFeSlki8RwvSQkR7uTgoukotEH1DBXjt3MQ0tdHbYwZNDakkUYgqZ8EKbxOphgoG97j2Q==
X-Received: by 2002:a05:6512:3e9:b0:4fb:8de9:ac0e with SMTP id n9-20020a05651203e900b004fb8de9ac0emr9588579lfq.1.1692895400332;
        Thu, 24 Aug 2023 09:43:20 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id o15-20020aa7dd4f000000b0051dd19d6d6esm10781906edw.73.2023.08.24.09.43.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Aug 2023 09:43:19 -0700 (PDT)
Message-ID: <c9ede9cd-282a-37b9-4fbb-5b27fb276247@linaro.org>
Date:   Thu, 24 Aug 2023 18:43:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v2 1/3] arm64: dts: imx93: add edma1 and edma2
Content-Language: en-US
To:     Frank Li <Frank.Li@nxp.com>, festevam@gmail.com
Cc:     clin@suse.com, conor+dt@kernel.org, devicetree@vger.kernel.org,
        eagle.zhou@nxp.com, imx@lists.linux.dev, joy.zou@nxp.com,
        kernel@pengutronix.de, krzysztof.kozlowski+dt@linaro.org,
        leoyang.li@nxp.com, linux-arm-kernel@lists.infradead.org,
        linux-imx@nxp.com, linux-kernel@vger.kernel.org,
        pierre.gondois@arm.com, robh+dt@kernel.org, s.hauer@pengutronix.de,
        shawnguo@kernel.org, shenwei.wang@nxp.com, sherry.sun@nxp.com
References: <20230824163922.2952403-1-Frank.Li@nxp.com>
 <20230824163922.2952403-2-Frank.Li@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230824163922.2952403-2-Frank.Li@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/08/2023 18:39, Frank Li wrote:
> Add edma<n> nodes.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx93.dtsi | 116 +++++++++++++++++++++++
>  1 file changed, 116 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
> index 6f85a05ee7e1..acdca18673b7 100644
> --- a/arch/arm64/boot/dts/freescale/imx93.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
> @@ -185,6 +185,46 @@ aips1: bus@44000000 {
>  			#size-cells = <1>;
>  			ranges;
>  
> +			edma1: dma-controller@44000000{

Missing space. In other places as well.

> +				compatible = "fsl,imx93-edma3";
> +				reg = <0x44000000 0x200000>;
> +				#dma-cells = <3>;
> +				dma-channels = <31>;


...

> +				clocks = <&clk IMX93_CLK_EDMA2_GATE>;
> +				clock-names = "dma";
> +				fsl,edma-axi;
> +				status = "okay";

Drop.

> +			};
> +
>  			wakeupmix_gpr: syscon@42420000 {
>  				compatible = "fsl,imx93-wakeupmix-syscfg", "syscon";
>  				reg = <0x42420000 0x1000>;

Best regards,
Krzysztof

