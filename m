Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CCBA3D5B75
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2019 08:38:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726618AbfJNGiv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Oct 2019 02:38:51 -0400
Received: from mail.kernel.org ([198.145.29.99]:55168 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726406AbfJNGiu (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 14 Oct 2019 02:38:50 -0400
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 6F21A205C9;
        Mon, 14 Oct 2019 06:38:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1571035130;
        bh=Pv06LrYxjw3dHimznfA8fTDJTvLiXVi82RdsmJkilkE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Ym2zzes0RgPVlJ41alo9e1pNe5Qf3s7zFAPxMepB3RtBqegaPeXybOPzzIpmG0TJ1
         LSr5uCoUiiaRbILPn7fNnqhYRxcSssqzA4YEaw6aDgsprEg8VtLKm9Lq68JdG3OAhx
         Mroj1/L0ashHD5GNl001HEb+1+AV5+5C4fnuFReI=
Date:   Mon, 14 Oct 2019 14:38:07 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     =?iso-8859-1?Q?S=E9bastien?= Szymanski 
        <sebastien.szymanski@armadeus.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Mark Rutland <mark.rutland@arm.com>,
        Fabio Estevam <festevam@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Julien Boibessot <julien.boibessot@armadeus.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 1/1] ARM: dts: imx28: add poweroff support
Message-ID: <20191014063801.GD12262@dragon>
References: <20190923091700.22517-1-sebastien.szymanski@armadeus.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190923091700.22517-1-sebastien.szymanski@armadeus.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 23, 2019 at 11:17:00AM +0200, Sébastien Szymanski wrote:
> This add poweroff support using the generic syscon-poweroff driver.
> 
> Signed-off-by: Sébastien Szymanski <sebastien.szymanski@armadeus.com>
> ---
>  arch/arm/boot/dts/imx28.dtsi | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/imx28.dtsi b/arch/arm/boot/dts/imx28.dtsi
> index e14d8ef0158b..37fa8131a022 100644
> --- a/arch/arm/boot/dts/imx28.dtsi
> +++ b/arch/arm/boot/dts/imx28.dtsi
> @@ -1114,8 +1114,16 @@
>  			};
>  
>  			power: power@80044000 {
> +				compatible = "syscon", "simple-mfd";
>  				reg = <0x80044000 0x2000>;
> -				status = "disabled";
> +
> +				mxs_poweroff: mxs-poweroff {

Node name should be generic.  So 'poweroff' might be better.

> +					compatible = "syscon-poweroff";
> +					regmap = <&power>;
> +					offset = <0x104>;
> +					value = <0x3E770001>;

Use lowercase for hex value.

> +					status = "disabled";

Why need to disable it by default?

Shawn

> +				};
>  			};
>  
>  			saif1: saif@80046000 {
> -- 
> 2.21.0
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
