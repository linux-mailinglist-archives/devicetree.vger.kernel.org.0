Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DC5EA4FEF2
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2019 04:02:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726836AbfFXCC0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jun 2019 22:02:26 -0400
Received: from mail.kernel.org ([198.145.29.99]:41332 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726543AbfFXCC0 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 23 Jun 2019 22:02:26 -0400
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 4F4202054F;
        Mon, 24 Jun 2019 02:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1561341745;
        bh=Bn7UoFve4cZCWL5q6OYgRzDWd8sX0VxTtUWVf0R+mL8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=pmPw7GaoUQCLfl0vL4q9rzC2fFVZE+HRV4JF2i7KXmYVh36zShWtupvNITqmizguE
         0fgT7B+hV4/FC+sRaUfrJg4FW+jRQkDNDsAKK+932DEDsP21Ano+dfKc+j098imGFM
         T8Jnqc7E4sbm8XapSUA24mqoD9G1tcIosDYYSI1g=
Date:   Mon, 24 Jun 2019 10:02:14 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Zhi Li <lznuaa@gmail.com>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH V12 3/4] arm64: dts: imx8qxp: added ddr performance
 monitor nodes
Message-ID: <20190624020210.GJ3800@dragon>
References: <CAHrpEqT_34eNK-EzRgs-ocDD6pfLzD=FU8n83HgSQVsimJRxPw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHrpEqT_34eNK-EzRgs-ocDD6pfLzD=FU8n83HgSQVsimJRxPw@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 19, 2019 at 01:46:00PM -0500, Zhi Li wrote:
> Add ddr performance monitor
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>
> ---
> 
> Resent without base64 encode
> 
> Notes:
>     No change from v9 to v12
> 
>     Change from v8 to v9
>     * put ddr-pmu under ddr_subsystem bus
> 
>     Change from v3 to v8
>     * none
> 
>     Change from v2 to v3
>     * ddr_pmu0 -> ddr-pmu
> 
>  arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> index 0683ee2..a33e08c 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> @@ -378,6 +378,20 @@
>                 };
>         };
> 
> +       ddr_subsyss: bus@5c000000 {
> +               compatible = "simple-bus";
> +               #address-cells = <1>;
> +               #size-cells = <1>;
> +               ranges = <0x5c000000 0x0 0x5c000000 0x1000000>;
> +
> +               ddr-pmu@5c020000 {
> +                       compatible = "fsl,imx8-ddr-pmu";
> +                       reg = <0x5c020000 0x10000>;
> +                       interrupt-parent = <&gic>;
> +                       interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
> +               };
> +       };
> +
>         lsio_subsys: bus@5d000000 {
>                 compatible = "simple-bus";
>                 #address-cells = <1>;

The patch format is corrupted.  All tabs are turned into spaces here.  I
manually apply the patch, but please avoid it next time.

Shawn

> --
> 2.5.2
