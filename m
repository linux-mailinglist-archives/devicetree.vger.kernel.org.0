Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F15997558B9
	for <lists+devicetree@lfdr.de>; Mon, 17 Jul 2023 02:03:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230247AbjGQAD4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Jul 2023 20:03:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230128AbjGQADz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Jul 2023 20:03:55 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1605D3
        for <devicetree@vger.kernel.org>; Sun, 16 Jul 2023 17:03:53 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 8FA8F60C61
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 00:03:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2346C433C7;
        Mon, 17 Jul 2023 00:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689552232;
        bh=IkPueG9cGYZxeD7AOs2Fq1L4D9d8CqsT9Y8ASg5S9XE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=sV1Z8b7nhjBFThca5bIrYWe+6v/SDLCQ9aSzj7xG8fZSperhw0X2cX/hsBiJB9TNO
         WVqr4k/Shwre47l+i7ZHvYOXTTOW/ARPDCJyZzk05gzfCoekBtdM0UZ6++yFSUZKjL
         zgEnkjPetdPYV8BrlUDNluRwAm5+BkAS7gRnrg8rm3AUmGUnsEHfTcUmZtrPtRDh90
         BZ9V0MQeTFOOZEJU6SqXsPMqPjdbNNV8QIf4Ut9jhXH7P9hM7jzHPPh0gNmWxlbr1a
         lpuw4p0jxIBdlwMZwF/xCIZEnn+XzNgz1vgcrxsxi/M7HvcuJT9/vE9SAvZVMCC+8g
         eSPESdQlHFAmg==
Date:   Mon, 17 Jul 2023 08:03:42 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Xu Yang <xu.yang_2@nxp.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, jun.li@nxp.com
Subject: Re: [PATCH] ARM: dts: imx6sll: fix wrong property name in usbphy node
Message-ID: <20230717000342.GA9559@dragon>
References: <20230606060106.2948626-1-xu.yang_2@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230606060106.2948626-1-xu.yang_2@nxp.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 06, 2023 at 02:01:06PM +0800, Xu Yang wrote:
> Property name "phy-3p0-supply" is used instead of "phy-reg_3p0-supply".
> 
> Fixes: 9f30b6b1a957 ("ARM: dts: imx: Add basic dtsi file for imx6sll")
> cc: <stable@vger.kernel.org>
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>

It doesn't apply to v6.5-rc1.  Could you rebase and resend?

Shawn

> ---
>  arch/arm/boot/dts/imx6sll.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/imx6sll.dtsi b/arch/arm/boot/dts/imx6sll.dtsi
> index 2873369a57c0..3659fd5ecfa6 100644
> --- a/arch/arm/boot/dts/imx6sll.dtsi
> +++ b/arch/arm/boot/dts/imx6sll.dtsi
> @@ -552,7 +552,7 @@ usbphy2: usb-phy@20ca000 {
>  				reg = <0x020ca000 0x1000>;
>  				interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clks IMX6SLL_CLK_USBPHY2>;
> -				phy-reg_3p0-supply = <&reg_3p0>;
> +				phy-3p0-supply = <&reg_3p0>;
>  				fsl,anatop = <&anatop>;
>  			};
>  
> -- 
> 2.34.1
> 
