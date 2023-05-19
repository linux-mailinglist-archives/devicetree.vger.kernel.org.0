Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8FCF8709608
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 13:16:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231371AbjESLQQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 May 2023 07:16:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231293AbjESLQP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 May 2023 07:16:15 -0400
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 2CD4E107
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 04:16:14 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTPS id 2A97F80F9;
        Fri, 19 May 2023 11:16:13 +0000 (UTC)
Date:   Fri, 19 May 2023 14:16:11 +0300
From:   Tony Lindgren <tony@atomide.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>
Cc:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: Unify pinctrl-single pin group nodes for
 stingray
Message-ID: <20230519111611.GX14287@atomide.com>
References: <20230519072522.52263-1-tony@atomide.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230519072522.52263-1-tony@atomide.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

* Tony Lindgren <tony@atomide.com> [230519 07:27]:
> We want to unify the pinctrl-single pin group nodes as these will add
> make dtbs checks errors when pinctrl-single yaml binding is merged.
...
> --- a/arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi
> +++ b/arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi
> @@ -299,7 +299,7 @@ spi1_pins: pinmux_spi1_sck_nand {
>  				>;
>  			};
>  
> -			nuart_pins: pinmux_uart0_sin_nitro {
> +			nuart_pins: uart0-sin-nitro-pins {
>  				pinctrl-single,pins = <
>  					0x20c MODE_NITRO /* nuart_rxd */
>  					0x210 MODE_NITRO /* nuart_txd */
> @@ -319,7 +319,7 @@ uart0_pins: pinumux_uart0_sin_nand {

Looks like I missed the misspelled "pinumux" node, will send out v2
version of the patch.

Regards,

Tony
