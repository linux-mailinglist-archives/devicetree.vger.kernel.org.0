Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5712670D1DF
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 04:57:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229475AbjEWC5R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 22:57:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234019AbjEWC5Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 22:57:16 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7E5FCA
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 19:57:15 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id CAFA9847BE;
        Tue, 23 May 2023 04:57:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684810634;
        bh=8AAqF3xwlmhW2ldCS5zk3+DV9EoRz3uqNlpfxu7uDSM=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=Aq0Q7EWHGSWraobmVX5c0I8LqaGHqe5dV/nBIvAlGYEHczatx2IPkJGOPB5Rlo//N
         RlIhYukbYRldpvGzxNEx8QdBopZc2/4puLHnt+YxngS01tDhxsHX/u/ZmjZ5IPiO3n
         qxfwkk3MMB9pFRmPEFjZfD5F8yb2JTZm9Hmj1cW+R0uF+iBxENvqeOeRJ6tf84Sz7k
         Nvqfy6tnjIc7u8Sq80mvbysq5g7QhVWILGgQ8zsoyE9wdyyRnSJDPAYQyBx7MBq84i
         KbPQ4BVMer5eXexMdhgK4ri3EW9JQAfKp3gpFsnIa4sT/5R4z4M8cSOra8SffyUO8w
         cafAvxXRNg92g==
Message-ID: <d8c34831-c89a-0c09-d874-9f7778c7aa33@denx.de>
Date:   Tue, 23 May 2023 04:29:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v6 4/5] ARM: dts: imx6sx: Add LDB support
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        conor+dt@kernel.org, bhelgaas@google.com,
        Fabio Estevam <festevam@denx.de>
References: <20230522201404.660242-1-festevam@gmail.com>
 <20230522201404.660242-4-festevam@gmail.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20230522201404.660242-4-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/22/23 22:14, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> i.MX6SX has an LVDS controller that is connected to the eLCDIF.
> 
> Add support for it.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Changes since v5:
> - Dropped fsl,imx6q-iomuxc-gpr" and "reg-names" (Marek).
> 
>   arch/arm/boot/dts/imx6sx.dtsi | 43 ++++++++++++++++++++++++++++++++---
>   1 file changed, 40 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
> index 4233943a1cca..8dd38107bed2 100644
> --- a/arch/arm/boot/dts/imx6sx.dtsi
> +++ b/arch/arm/boot/dts/imx6sx.dtsi
> @@ -841,10 +841,39 @@ iomuxc: pinctrl@20e0000 {
>   				reg = <0x020e0000 0x4000>;
>   			};
>   
> -			gpr: iomuxc-gpr@20e4000 {
> -				compatible = "fsl,imx6sx-iomuxc-gpr",
> -					     "fsl,imx6q-iomuxc-gpr", "syscon";
> +			gpr: syscon@20e4000 {
> +				compatible = "fsl,imx6sx-iomuxc-gpr", "syscon";
> +				#address-cells = <1>;
> +				#size-cells = <1>;
>   				reg = <0x020e4000 0x4000>;
> +
> +				lvds_bridge: bridge@18 {
> +					compatible = "fsl,imx6sx-ldb";
> +					reg = <0x18 0x4>;
> +					clocks = <&clks IMX6SX_CLK_LDB_DI0>;
> +					clock-names = "ldb";

Since there is only once clock, is this clock-names even needed ?
