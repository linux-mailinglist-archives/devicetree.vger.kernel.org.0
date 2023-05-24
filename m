Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 62CE070FB5E
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 18:08:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230330AbjEXQIb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 12:08:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231148AbjEXQI3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 12:08:29 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD69F123
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 09:08:28 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 69EC163EFD
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 16:08:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30A88C433D2;
        Wed, 24 May 2023 16:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684944507;
        bh=EhIrAt3qf72WnPgippbdlYJyH91c3TbKRVQYH5h9ekw=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=UDL48NOaLdw0AKXhOOplPGQVXObIXn5pw1nrqFRQ8ll+KHYGE/BWNxR+YXOED1s7I
         DFtvV9K1TU/VHZpp0ob+7zW4i6EbGfUA4K0yFH5wzfLpLq+bv0rqteWlLlLO0jmhrw
         sS+ueIc55+KMRGGoEns5qNN5yOy5HDF1hLq2EOA5ds+UktbbBMtqTlgSPoB0fse5/2
         Ym/ZfuAQ7F85n7uq9AGlwjipAN5aLfOIzCIPpS52XLfFgUbLZB7hCIRHMlyg/sqWrU
         6tDYsRvOZnp+9xjzvIP3k2CaGr+MJdrxBl6ZtbR5JGE4Cd74JS6VdaCAEkJoM4qrac
         /rAJXlJhQnECw==
Message-ID: <383971f3-3302-b306-610f-486498262805@kernel.org>
Date:   Wed, 24 May 2023 11:08:25 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] arm64: dts: Unify pinctrl-single pin group nodes for
 altera
To:     Tony Lindgren <tony@atomide.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     devicetree@vger.kernel.org
References: <20230523065808.15417-1-tony@atomide.com>
Content-Language: en-US
From:   Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <20230523065808.15417-1-tony@atomide.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 5/23/23 01:58, Tony Lindgren wrote:
> We want to unify the pinctrl-single pin group nodes to use naming "pins".
> Otherwise non-standad pin group names will add make dtbs checks errors
> when the pinctrl-single yaml binding gets merged.
> 
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>   arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
> --- a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
> +++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
> @@ -66,14 +66,14 @@ sdmmca-ecc@ff8c8c00 {
>   };
>   
>   &pinctrl0 {
> -	i2c1_pmx_func: i2c1-pmx-func {
> +	i2c1_pmx_func: i2c1-pins {
>   		pinctrl-single,pins = <
>   			0x78   0x4   /* I2C1_SDA (IO6-B) PIN30SEL) */
>   			0x7c   0x4   /* I2C1_SCL (IO7-B) PIN31SEL */
>   		>;
>   	};
>   
> -	i2c1_pmx_func_gpio: i2c1-pmx-func-gpio {
> +	i2c1_pmx_func_gpio: i2c1-gpio-pins {
>   		pinctrl-single,pins = <
>   			0x78   0x8   /* I2C1_SDA (IO6-B) PIN30SEL) */
>   			0x7c   0x8   /* I2C1_SCL (IO7-B) PIN31SEL */

Applied!

Thanks,
Dinh
