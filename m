Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10B91707652
	for <lists+devicetree@lfdr.de>; Thu, 18 May 2023 01:15:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229612AbjEQXPs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 19:15:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229458AbjEQXPr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 19:15:47 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FF4026B6
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 16:15:45 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 0565886124;
        Thu, 18 May 2023 01:15:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684365343;
        bh=EVuFO1TPddO2l32tQefguqPU10FZpAuGqm287keLok4=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=UZ+8WV4fCH3UBXnZIYK1AhpuL73RxvkK9EdEFRuWKsqBfaxssbdPWfHkyc7EJoy5m
         kZcpIcJBr6iGxeZJnpDXSvXWGyJ+0DjWArgc5ABd7zO0EX+tRHCzHdYzH5WquPzHRz
         iOeWQCIBHwBQvS5T9gw2GZ+UjImPhocITPEDSyIBTqXtZRgxqyiT4sK16IWkFUkJ8a
         fAkHMRA8pBLv4PoDNc65xlfYOvSFx970FCl0kpHv4ObQeHQ01B4urnWZycPBX8BGkO
         4Nb/hlzxD4CjQuhSUyo5xRvuffyBPGAhsp4a7qKf+GDRvYa2gIiFX1ZYgwlfPY6KXu
         qi8ujrJ8wl7Tw==
Message-ID: <16ecb29a-4d52-9464-ecb0-2e45262af105@denx.de>
Date:   Thu, 18 May 2023 01:15:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] ARM: dts: imx6sx: Add LDB support
To:     Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
References: <20230517210210.12183-1-festevam@gmail.com>
Content-Language: en-US
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20230517210210.12183-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/17/23 23:02, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> i.MX6SX has an LVDS controller that is connected to the eLCDIF.
> 
> Add support for it.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>   arch/arm/boot/dts/imx6sx.dtsi | 41 ++++++++++++++++++++++++++++++++++-
>   1 file changed, 40 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
> index 4233943a1cca..7a8a00d81666 100644
> --- a/arch/arm/boot/dts/imx6sx.dtsi
> +++ b/arch/arm/boot/dts/imx6sx.dtsi
> @@ -843,8 +843,39 @@ iomuxc: pinctrl@20e0000 {
>   
>   			gpr: iomuxc-gpr@20e4000 {
>   				compatible = "fsl,imx6sx-iomuxc-gpr",
> -					     "fsl,imx6q-iomuxc-gpr", "syscon";
> +					     "fsl,imx6q-iomuxc-gpr", "simple-bus", "syscon";

Can we really combine simple-bus and syscon or do we need something like

5a51e1f2b0834 ("arm64: dts: imx8mp: Drop simple-bus from 
fsl,imx8mp-media-blk-ctrl")
9cb6d1b39a8f5 ("soc: imx: imx8m-blk-ctrl: Scan subnodes and bind drivers 
to them")

?

> +				#address-cells = <1>;
> +				#size-cells = <1>;
>   				reg = <0x020e4000 0x4000>;

[...]
