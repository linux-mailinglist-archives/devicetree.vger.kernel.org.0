Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D427F41C87E
	for <lists+devicetree@lfdr.de>; Wed, 29 Sep 2021 17:32:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345207AbhI2Pdm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Sep 2021 11:33:42 -0400
Received: from foss.arm.com ([217.140.110.172]:49508 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1345343AbhI2Pdm (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 29 Sep 2021 11:33:42 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E0FD7101E;
        Wed, 29 Sep 2021 08:32:00 -0700 (PDT)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C0F3A3F793;
        Wed, 29 Sep 2021 08:32:00 -0700 (PDT)
Received: by e110455-lin.cambridge.arm.com (Postfix, from userid 1000)
        id 7A5156855E7; Wed, 29 Sep 2021 16:31:59 +0100 (BST)
Date:   Wed, 29 Sep 2021 16:31:59 +0100
From:   Liviu Dudau <liviu.dudau@arm.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Sudeep Holla <sudeep.holla@arm.com>, devicetree@vger.kernel.org,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [RFC PATCH] arm: dts: vexpress: Set chosen 'stdout-path'
Message-ID: <YVSG784Ev71DUZyR@e110455-lin.cambridge.arm.com>
References: <20210924214844.1890478-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210924214844.1890478-1-robh@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Fri, Sep 24, 2021 at 04:48:44PM -0500, Rob Herring wrote:
> Using chosen 'stdout-path' is the preferred way to set the console, but
> several Arm, Ltd. platforms don't set it. Set it to the 1st serial port.
> 
> Cc: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> RFC because I don't have any idea what the baud rate is for real boards. 
> If anyone knows, please comment and I'll add it.

I believe all of them default to 115200,8n1 but I'm only sure about the first two
boards.

Best regards,
Liviu

> 
>  arch/arm/boot/dts/vexpress-v2p-ca15-tc1.dts | 4 +++-
>  arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts  | 4 +++-
>  arch/arm/boot/dts/vexpress-v2p-ca5s.dts     | 4 +++-
>  arch/arm/boot/dts/vexpress-v2p-ca9.dts      | 4 +++-
>  arch/arm64/boot/dts/arm/foundation-v8.dtsi  | 4 +++-
>  arch/arm64/boot/dts/arm/fvp-base-revc.dts   | 4 +++-
>  arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts  | 4 +++-
>  7 files changed, 21 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/vexpress-v2p-ca15-tc1.dts b/arch/arm/boot/dts/vexpress-v2p-ca15-tc1.dts
> index 679537e17ff5..c296a3677447 100644
> --- a/arch/arm/boot/dts/vexpress-v2p-ca15-tc1.dts
> +++ b/arch/arm/boot/dts/vexpress-v2p-ca15-tc1.dts
> @@ -20,7 +20,9 @@ / {
>  	#address-cells = <2>;
>  	#size-cells = <2>;
>  
> -	chosen { };
> +	chosen {
> +		stdout-path = "serial0";
> +	};
>  
>  	aliases {
>  		serial0 = &v2m_serial0;
> diff --git a/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts b/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
> index 511e87cc2bc5..7b7c1ec2f542 100644
> --- a/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
> +++ b/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
> @@ -20,7 +20,9 @@ / {
>  	#address-cells = <2>;
>  	#size-cells = <2>;
>  
> -	chosen { };
> +	chosen {
> +		stdout-path = "serial0";
> +	};
>  
>  	aliases {
>  		serial0 = &v2m_serial0;
> diff --git a/arch/arm/boot/dts/vexpress-v2p-ca5s.dts b/arch/arm/boot/dts/vexpress-v2p-ca5s.dts
> index 3b88209bacea..9b70ae1d3e35 100644
> --- a/arch/arm/boot/dts/vexpress-v2p-ca5s.dts
> +++ b/arch/arm/boot/dts/vexpress-v2p-ca5s.dts
> @@ -20,7 +20,9 @@ / {
>  	#address-cells = <1>;
>  	#size-cells = <1>;
>  
> -	chosen { };
> +	chosen {
> +		stdout-path = "serial0";
> +	};
>  
>  	aliases {
>  		serial0 = &v2m_serial0;
> diff --git a/arch/arm/boot/dts/vexpress-v2p-ca9.dts b/arch/arm/boot/dts/vexpress-v2p-ca9.dts
> index 5916e4877eac..4eef3db16b3d 100644
> --- a/arch/arm/boot/dts/vexpress-v2p-ca9.dts
> +++ b/arch/arm/boot/dts/vexpress-v2p-ca9.dts
> @@ -20,7 +20,9 @@ / {
>  	#address-cells = <1>;
>  	#size-cells = <1>;
>  
> -	chosen { };
> +	chosen {
> +		stdout-path = "serial0";
> +	};
>  
>  	aliases {
>  		serial0 = &v2m_serial0;
> diff --git a/arch/arm64/boot/dts/arm/foundation-v8.dtsi b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
> index fbf13f7c2baf..6eb14717cb4d 100644
> --- a/arch/arm64/boot/dts/arm/foundation-v8.dtsi
> +++ b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
> @@ -18,7 +18,9 @@ / {
>  	#address-cells = <2>;
>  	#size-cells = <2>;
>  
> -	chosen { };
> +	chosen {
> +		stdout-path = "serial0";
> +	};
>  
>  	aliases {
>  		serial0 = &v2m_serial0;
> diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
> index 5f519affe728..a6165a472a7b 100644
> --- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
> +++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
> @@ -24,7 +24,9 @@ / {
>  	#address-cells = <2>;
>  	#size-cells = <2>;
>  
> -	chosen { };
> +	chosen {
> +		stdout-path = "serial0";
> +	};
>  
>  	aliases {
>  		serial0 = &v2m_serial0;
> diff --git a/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts b/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts
> index 258991ad7cc0..f8dee952cefc 100644
> --- a/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts
> +++ b/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts
> @@ -23,7 +23,9 @@ / {
>  	#address-cells = <2>;
>  	#size-cells = <2>;
>  
> -	chosen { };
> +	chosen {
> +		stdout-path = "serial0";
> +	};
>  
>  	aliases {
>  		serial0 = &v2m_serial0;
> -- 
> 2.30.2
> 

-- 
====================
| I would like to |
| fix the world,  |
| but they're not |
| giving me the   |
 \ source code!  /
  ---------------
    ¯\_(ツ)_/¯
