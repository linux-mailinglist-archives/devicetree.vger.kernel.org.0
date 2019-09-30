Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2ADFFC27AC
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2019 23:03:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729158AbfI3VDI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Sep 2019 17:03:08 -0400
Received: from foss.arm.com ([217.140.110.172]:34456 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727118AbfI3VDI (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 30 Sep 2019 17:03:08 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BC9E71000;
        Mon, 30 Sep 2019 10:27:22 -0700 (PDT)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 781A03F534;
        Mon, 30 Sep 2019 10:27:22 -0700 (PDT)
Received: by e110455-lin.cambridge.arm.com (Postfix, from userid 1000)
        id 377CD682570; Mon, 30 Sep 2019 18:27:21 +0100 (BST)
Date:   Mon, 30 Sep 2019 18:27:21 +0100
From:   Liviu Dudau <liviu.dudau@arm.com>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     robh@kernel.org, tomeu.vizoso@collabora.com, sudeep.holla@arm.com,
        devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
        dri-devel@lists.freedesktop.org, steven.price@arm.com,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: juno: add GPU subsystem
Message-ID: <20190930172721.3yatbfxcyb4gteed@e110455-lin.cambridge.arm.com>
References: <88dc6386929b3dcd7a65ba8063628c62b66b330c.1569856049.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <88dc6386929b3dcd7a65ba8063628c62b66b330c.1569856049.git.robin.murphy@arm.com>
User-Agent: NeoMutt/20180716
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 30, 2019 at 04:24:58PM +0100, Robin Murphy wrote:
> Since we now have bindings for Mali Midgard GPUs, let's use them to
> describe Juno's GPU subsystem, if only because we can. Juno sports a
> Mali-T624 integrated behind an MMU-400 (as a gesture towards
> virtualisation), in their own dedicated power domain with DVFS
> controlled by the SCP.
> 
> CC: Liviu Dudau <liviu.dudau@arm.com>

Acked-by: Liviu Dudau <liviu.dudau@arm.com>

Thanks,
Liviu

> CC: Sudeep Holla <sudeep.holla@arm.com>
> CC: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  .../bindings/gpu/arm,mali-midgard.yaml        |  5 +++-
>  arch/arm64/boot/dts/arm/juno-base.dtsi        | 27 +++++++++++++++++++
>  2 files changed, 31 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml
> index 47bc1ac36426..018f3ae4b43c 100644
> --- a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml
> @@ -22,6 +22,10 @@ properties:
>            - enum:
>               - amlogic,meson-gxm-mali
>            - const: arm,mali-t820
> +      - items:
> +          - enum:
> +             - arm,juno-mali
> +          - const: arm,mali-t624
>        - items:
>            - enum:
>               - rockchip,rk3288-mali
> @@ -39,7 +43,6 @@ properties:
>               - samsung,exynos5433-mali
>            - const: arm,mali-t760
>  
> -          # "arm,mali-t624"
>            # "arm,mali-t628"
>            # "arm,mali-t830"
>            # "arm,mali-t880"
> diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
> index 26a039a028b8..9e3e8ce6adfe 100644
> --- a/arch/arm64/boot/dts/arm/juno-base.dtsi
> +++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
> @@ -35,6 +35,18 @@
>  		clock-names = "apb_pclk";
>  	};
>  
> +	smmu_gpu: iommu@2b400000 {
> +		compatible = "arm,mmu-400", "arm,smmu-v1";
> +		reg = <0x0 0x2b400000 0x0 0x10000>;
> +		interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
> +		#iommu-cells = <1>;
> +		#global-interrupts = <1>;
> +		power-domains = <&scpi_devpd 1>;
> +		dma-coherent;
> +		status = "disabled";
> +	};
> +
>  	smmu_pcie: iommu@2b500000 {
>  		compatible = "arm,mmu-401", "arm,smmu-v1";
>  		reg = <0x0 0x2b500000 0x0 0x10000>;
> @@ -487,6 +499,21 @@
>  		};
>  	};
>  
> +	gpu: gpu@2d000000 {
> +		compatible = "arm,juno-mali", "arm,mali-t624";
> +		reg = <0 0x2d000000 0 0x10000>;
> +		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "gpu", "job", "mmu";
> +		clocks = <&scpi_dvfs 2>;
> +		power-domains = <&scpi_devpd 1>;
> +		dma-coherent;
> +		/* The SMMU is only really of interest to bare-metal hypervisors */
> +		/* iommus = <&smmu_gpu 0>; */
> +		status = "disabled";
> +	};
> +
>  	sram: sram@2e000000 {
>  		compatible = "arm,juno-sram-ns", "mmio-sram";
>  		reg = <0x0 0x2e000000 0x0 0x8000>;
> -- 
> 2.21.0.dirty
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
====================
| I would like to |
| fix the world,  |
| but they're not |
| giving me the   |
 \ source code!  /
  ---------------
    ¯\_(ツ)_/¯
