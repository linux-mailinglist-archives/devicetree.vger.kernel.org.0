Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FE3170BF86
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 15:21:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233117AbjEVNVB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 09:21:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230060AbjEVNVA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 09:21:00 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87A1292
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 06:20:59 -0700 (PDT)
Received: from [127.0.0.1] (unknown [62.91.23.180])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id AE5518445D;
        Mon, 22 May 2023 15:20:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684761658;
        bh=fcQzW5CPlskOBHG5lzXTaCBlAoEX2FRZSCXZyg2rF64=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=eKevYdR9yHm4/VYUDf3acVRGjAhN4oREttSHCPIVA090tmVIX5GaU4mQ/dt15l+fY
         Bc/OnUCNdM2/t5OnZMboyoJeaUvQi243pf65jm3cFK5pLFu7RheXKp0CF+esSrQfn6
         Vj2J740dVqvXfNYSMN7yjLGnSAsOp6YFIqgmV1D+4JgGDXL7wqrG12nePIm3+iNcgk
         d8dJGjHmYJjsgAxFWwkpKJuJ2fD6VdbR3KX72Cf5lKAeqtl/LQ0D33C/SRYH0Xz4+q
         F06n3+uZH7Ne1DyFA5m0y+pl5GKUt+UgSUU+kf0Tp8ZljmYTJREmB9uYTwC+11IbBN
         rQDvKd3ura6BA==
Message-ID: <a5edfa01-3471-2cb2-c827-064f4386b076@denx.de>
Date:   Mon, 22 May 2023 15:20:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v5 3/4] ARM: dts: imx6sx: Add LDB support
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        conor+dt@kernel.org, Fabio Estevam <festevam@denx.de>
References: <20230522125129.526604-1-festevam@gmail.com>
 <20230522125129.526604-3-festevam@gmail.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20230522125129.526604-3-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/22/23 14:51, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> i.MX6SX has an LVDS controller that is connected to the eLCDIF.
> 
> Add support for it.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Changes since v4:
> - None.
> 
>   arch/arm/boot/dts/imx6sx.dtsi | 39 +++++++++++++++++++++++++++++++++++
>   1 file changed, 39 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
> index 4233943a1cca..442106565025 100644
> --- a/arch/arm/boot/dts/imx6sx.dtsi
> +++ b/arch/arm/boot/dts/imx6sx.dtsi
> @@ -844,7 +844,38 @@ iomuxc: pinctrl@20e0000 {
>   			gpr: iomuxc-gpr@20e4000 {
>   				compatible = "fsl,imx6sx-iomuxc-gpr",
>   					     "fsl,imx6q-iomuxc-gpr", "syscon";

Maybe this "fsl,imx6q-iomuxc-gpr" should be dropped here.
