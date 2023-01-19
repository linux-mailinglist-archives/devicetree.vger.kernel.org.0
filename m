Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA237673E1C
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 17:00:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230461AbjASQAz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 11:00:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229576AbjASQAq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 11:00:46 -0500
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [IPv6:2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 211FF4FC20
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 08:00:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=F6rkBamTRJ2YGFGe+C7H+93L+0VqPQvHhb1kLuqbzzs=; b=rGgCskEam2irrZf7vdBWEit9uc
        MQwYFqegpOS1ZtsNWJ7UKIQq7CA5Gp3REyShc2t2Wkz1XWZUOItrHHHO9MlikzdaEN01/m4tKzWXB
        Is6/5rDuQHAWsTI84/ovFMJ1+H5R7wiwxfhcYNHROIpX1UMmP+5MKFEE0hTlTkIPnMyBNoLHb12Bl
        RyDF4MKebGScd10yXB0pGNvpYXNre19Ti2iQ8eCA+sNiM56UacZy3Isb8dkYesPU4+jbS4hg1ZxPp
        L5jSzx3n3XcaJt0lsGigxqYP1bVGYwcaDD1BFXwVVeSJlKHSFUIsDC9+SLeh+EtK1DUnbl4KgJ8Hl
        KPnYJ98g==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:36206)
        by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <linux@armlinux.org.uk>)
        id 1pIXL7-0004XI-5a; Thu, 19 Jan 2023 16:00:32 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
        (envelope-from <linux@shell.armlinux.org.uk>)
        id 1pIXL4-0000b5-RT; Thu, 19 Jan 2023 16:00:30 +0000
Date:   Thu, 19 Jan 2023 16:00:30 +0000
From:   "Russell King (Oracle)" <linux@armlinux.org.uk>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Marek Vasut <marex@denx.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>, soc@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 9/9] [DNI] ARM: multi_v7_defconfig: Enable
 CONFIG_ARM_LPAE for multi_v7_config
Message-ID: <Y8lpHhKKfRNGq1m0@shell.armlinux.org.uk>
References: <20230119144236.3541751-1-alexander.stein@ew.tq-group.com>
 <20230119144236.3541751-10-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230119144236.3541751-10-alexander.stein@ew.tq-group.com>
Sender: Russell King (Oracle) <linux@armlinux.org.uk>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 19, 2023 at 03:42:36PM +0100, Alexander Stein wrote:
> This is necessary to support PCIe on LS1021A.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  arch/arm/configs/multi_v7_defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
> index 441a449172368..f0757f05ec2c2 100644
> --- a/arch/arm/configs/multi_v7_defconfig
> +++ b/arch/arm/configs/multi_v7_defconfig
> @@ -105,6 +105,7 @@ CONFIG_ARCH_VEXPRESS=y
>  CONFIG_ARCH_VEXPRESS_TC2_PM=y
>  CONFIG_ARCH_WM8850=y
>  CONFIG_ARCH_ZYNQ=y
> +CONFIG_ARM_LPAE=y
>  CONFIG_SMP=y
>  CONFIG_NR_CPUS=16
>  CONFIG_ARM_APPENDED_DTB=y

Enabling LPAE will break multi_v7 on CPUs that do not support LPAE,
such as Cortex A9, rendering iMX6 platforms unbootable with this
defconfig.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!
