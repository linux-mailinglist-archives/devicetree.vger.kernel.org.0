Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D04D32B007B
	for <lists+devicetree@lfdr.de>; Thu, 12 Nov 2020 08:44:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725960AbgKLHoh convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 12 Nov 2020 02:44:37 -0500
Received: from guitar.tcltek.co.il ([192.115.133.116]:47149 "EHLO
        mx.tkos.co.il" rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725898AbgKLHoh (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 12 Nov 2020 02:44:37 -0500
X-Greylist: delayed 597 seconds by postgrey-1.27 at vger.kernel.org; Thu, 12 Nov 2020 02:44:37 EST
Received: from tarshish (unknown [10.0.8.3])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mx.tkos.co.il (Postfix) with ESMTPS id 4841B440697;
        Thu, 12 Nov 2020 09:34:36 +0200 (IST)
References: <20201112072133.17039-1-zajec5@gmail.com>
User-agent: mu4e 1.4.13; emacs 26.3
From:   Baruch Siach <baruch@tkos.co.il>
To:     =?utf-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        devicetree@vger.kernel.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        bcm-kernel-feedback-list@broadcom.com,
        =?utf-8?Q?Ra?= =?utf-8?Q?fa=C5=82_Mi=C5=82ecki?= 
        <rafal@milecki.pl>, Will Deacon <will@kernel.org>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH V3 1/3] arm64: add config for Broadcom BCM4908 SoCs
In-reply-to: <20201112072133.17039-1-zajec5@gmail.com>
Date:   Thu, 12 Nov 2020 09:34:35 +0200
Message-ID: <87r1ozav04.fsf@tarshish>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rafał,

On Thu, Nov 12 2020, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
>
> Add ARCH_BCM4908 config that can be used for compiling DTS files.
>
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  arch/arm64/Kconfig.platforms | 8 ++++++++
>  arch/arm64/configs/defconfig | 1 +
>  2 files changed, 9 insertions(+)
>
> diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
> index 6f2494dd6d60..d1c02a4a93c8 100644
> --- a/arch/arm64/Kconfig.platforms
> +++ b/arch/arm64/Kconfig.platforms
> @@ -43,6 +43,14 @@ config ARCH_BCM2835
>  	  This enables support for the Broadcom BCM2837 and BCM2711 SoC.
>  	  These SoCs are used in the Raspberry Pi 3 and 4 devices.
>  
> +config ARCH_BCM4908
> +	bool "Broadcom BCM4908 family"
> +	select GPIOLIB
> +	help
> +	  This enables support for the Broadcom BCM4906, BCM4908 and
> +	  BCM49408 SoCs. These SoCs use Cortex-B53 cores and can be

Is Cortex-B53 an official name? I see reference to Brahma-B53 in other
places like Documentation/arm64/silicon-errata.rst.

baruch

> +	  found in home routers.
> +
>  config ARCH_BCM_IPROC
>  	bool "Broadcom iProc SoC Family"
>  	select COMMON_CLK_IPROC
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 17a2df6a263e..ead6fa942994 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -32,6 +32,7 @@ CONFIG_ARCH_AGILEX=y
>  CONFIG_ARCH_SUNXI=y
>  CONFIG_ARCH_ALPINE=y
>  CONFIG_ARCH_BCM2835=y
> +CONFIG_ARCH_BCM4908=y
>  CONFIG_ARCH_BCM_IPROC=y
>  CONFIG_ARCH_BERLIN=y
>  CONFIG_ARCH_BRCMSTB=y


-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.52.368.4656, http://www.tkos.co.il -
