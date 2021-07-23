Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CFA5E3D36DE
	for <lists+devicetree@lfdr.de>; Fri, 23 Jul 2021 10:36:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234442AbhGWH4S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 03:56:18 -0400
Received: from mail.kernel.org ([198.145.29.99]:41116 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234276AbhGWH4R (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 23 Jul 2021 03:56:17 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id CFD5760E77;
        Fri, 23 Jul 2021 08:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627029405;
        bh=UyVuqNmKaOLCkr5dhRsTE6bDJ2Pg+oAGurbYq8p5lCQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=KfuwdXTzWBtlxfv0mIC7O1od0ef4CDsyZVwt9YRDw7Wa+5LKnmAY/6u6zLocwlLnG
         IHlcmVYX+x3AtEtWkH3dxTiqO72OkhkDEh4C4A65HQknRypiegceZ5QBgfk3ORvRD4
         ifmguEpWfA41wmXWOERXnC1+B4E3MBAI2nVc6/MyTrPs4gD97V4R7JPHHpxE1tVyOM
         agh3gOQ9UYo/P3BrMwhMrWNtj5ClCgR4quLoyJ+kHFLM73qo3+c2qKVgFMySXfecuT
         3qEGaYfcmTUMGsOtEr/oDb+BVKlnOlkKTC8zSqWqqI0ar/4SJJ0hKa1ejtzkNoQgHN
         MYDHcHVuwo1HA==
Date:   Fri, 23 Jul 2021 16:36:41 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Mathew McBride <matt@traverse.com.au>
Cc:     Li Yang <leoyang.li@nxp.com>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/5] arm64: dts: ls1088a: add missing PMU node
Message-ID: <20210723083640.GJ30773@dragon>
References: <20210722042450.11862-1-matt@traverse.com.au>
 <20210722042450.11862-3-matt@traverse.com.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210722042450.11862-3-matt@traverse.com.au>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 22, 2021 at 04:24:47AM +0000, Mathew McBride wrote:
> The Performance Manager Unit was not described in the DTS
> which meant performance event monitoring was not possible.
> 
> This was exposed by a change to the PMU handling in KVM
> in 5.11-rc3 which now prevents a PMU being exposed to a
> guest when the host does not provide one:
> "KVM: arm64: Don't access PMCR_EL0 when no PMU is available"
> 
> Signed-off-by: Mathew McBride <matt@traverse.com.au>
> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> index 79ceadc9dc4a..752c7f41e6b1 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> @@ -189,6 +189,11 @@ timer {
>  			     <1 10 IRQ_TYPE_LEVEL_LOW>;/* Hypervisor PPI */
>  	};
>  
> +	pmu {
> +		compatible = "arm,armv8-pmuv3";
> +		interrupts = <1 7 0x8>; /* PMU PPI, Level low type */

Use define GIC_PPI and IRQ_TYPE_LEVEL_LOW, so that you can drop the
comment.

Shawn

> +	};
> +
>  	psci {
>  		compatible = "arm,psci-0.2";
>  		method = "smc";
> -- 
> 2.30.1
> 
