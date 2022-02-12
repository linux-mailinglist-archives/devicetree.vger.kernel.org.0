Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BB754B3345
	for <lists+devicetree@lfdr.de>; Sat, 12 Feb 2022 06:46:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231708AbiBLFqk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Feb 2022 00:46:40 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:55790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231688AbiBLFqg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 12 Feb 2022 00:46:36 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AF5B28E3E
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 21:46:34 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id C014F608D5
        for <devicetree@vger.kernel.org>; Sat, 12 Feb 2022 05:46:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CD39C340ED;
        Sat, 12 Feb 2022 05:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1644644793;
        bh=D8Z7s01IRXNMSKDuM2y3UXpuZ9sPd9PVWLyQABy4pE4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=LfdSAuG7i8zkiDFXomC+6PKzqNDPkVibzZzI6+8ERXRPGJbSVM88H7bTRGR0xssip
         sLDrYieXdZbg/RYLkm63X/eXkpjGWe/xgtHQR2QpEZbBkvZxmQslvqNJt/qCBeX0AM
         nCFTx6hAqYqJ0lVQqbbDWUjpBoLf/hNbsMyQEnRtU9tPtZtmIDI14Uu5XbYhsgqeOv
         QWVS/fZSTE2XwLCxZ8Vu7Arqee3dJTS43efVg3sAjvX/7Y0MzMhICI6RnXyxaK7nQL
         vPahL74BI0z3KsDv4MpgBqwBXugSopbp/SbiakgUkGRYDFyNrrk9eNR1QNdzfVLfxa
         Rn9/IZwY2QwIQ==
Date:   Sat, 12 Feb 2022 13:46:27 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Andrej Picej <andrej.picej@norik.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        robh+dt@kernel.org, kernel@pengutronix.de, leoyang.li@nxp.com,
        krzysztof.kozlowski@canonical.com, festevam@gmail.com,
        linux@rempel-privat.de, arnd@arndb.de, linux-imx@nxp.com,
        y.bas@phytec.de
Subject: Re: [PATCH RESEND 3/4] ARM: dts: imx6ul: phycore: Change USB LDO
 voltage for usb compliance
Message-ID: <20220212054627.GZ4909@dragon>
References: <20220131080526.1171072-1-andrej.picej@norik.com>
 <20220131080526.1171072-4-andrej.picej@norik.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220131080526.1171072-4-andrej.picej@norik.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 31, 2022 at 09:05:25AM +0100, Andrej Picej wrote:
> From: Yunus Bas <y.bas@phytec.de>
> 
> According to the NXP usb compliance reference, the USB data lines for
> Full/Low speed are connected to the ARM USB LDO, which is set to
> minimum-voltage = 2.6V and maximum-voltage = 3.4 V. When the regulator
> is deactivated, the data lines are defaulty driven with 2.6V, which is
> not USB Full-Speed compliant. To be compliant, we need to activate the
> USB LDO regulator and set it to the value of 3V, which is the specified
> value in the USB specification.
> 
> Signed-off-by: Yunus Bas <y.bas@phytec.de>
> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
> ---
>  arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi b/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
> index 3cddc68917a0..2e03be3d43ec 100644
> --- a/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
> +++ b/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
> @@ -83,6 +83,11 @@ eeprom@52 {
>  	};
>  };
>  
> +&reg_3p0 {
> +	regulator-min-microvolt = <3000000>;
> +	regulator-always-on;

Rather than setting it always-on, shouldn't the consumer of the
regulator turn it on/off as needed?

Shawn

> +};
> +
>  &snvs_poweroff {
>  	status = "okay";
>  };
> -- 
> 2.25.1
> 
