Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BBE0F3305AD
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 02:45:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233558AbhCHBpM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Mar 2021 20:45:12 -0500
Received: from mail.kernel.org ([198.145.29.99]:37172 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233217AbhCHBol (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 7 Mar 2021 20:44:41 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 41E936509D;
        Mon,  8 Mar 2021 01:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1615167881;
        bh=MHkG/akxICqjH69RY2MytTb51EYmYD9/idq/Q5klloQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=RD2zcow4pqUsuy5yIpwlIZ/zRvYhc1Y6b8DlMk126+YWe+nKIQvE0ERAJiW9jmm8A
         O2jU52LaYPlAxjXTV/Ob9PTZ/0UkHKengnr1APjO3n27Fu/RhwlFQ+ulirTkjurlRG
         bjU28MpDgrHXN+fa9gw+9pUlGw6fhOtN2YKz7K88snmJOpzD4Ix7JlZ/D6CqNO1IWk
         tvct/8t5FVdFNPU/GGwz5el5xXvrVyeypSFPnzv2T7HnahRj4CqgLjePOCPRZNbFjD
         SLJ6UDauf3M9OjXzXgjpCwBT463C6GZsnala0uETg2U/YeGl958yC0LbnWJfAO+19Q
         rOQNsHiM5ixtQ==
Date:   Mon, 8 Mar 2021 09:44:35 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Dong Aisheng <aisheng.dong@nxp.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        dongas86@gmail.com, kernel@pengutronix.de, robh+dt@kernel.org,
        linux-imx@nxp.com, jan.kiszka@siemens.com,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        Fabio Estevam <fabio.estevam@nxp.com>
Subject: Re: [PATCH v5 17/18] arm64: defconfig: add imx8qm mek support
Message-ID: <20210308014434.GW543@dragon>
References: <1614950268-22073-1-git-send-email-aisheng.dong@nxp.com>
 <1614950268-22073-19-git-send-email-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1614950268-22073-19-git-send-email-aisheng.dong@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 05, 2021 at 09:17:47PM +0800, Dong Aisheng wrote:
> Except MX8QM pinctrl driver is missing, all other necessary drivers
> for a booting are reused from MX8QXP which are already enabled
> in defconfig.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <kernel@pengutronix.de>
> Cc: Fabio Estevam <fabio.estevam@nxp.com>
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>

s/mek/pinctrl in subject.

Fixed it up and applied.

Shawn

> 
> ---
> ChangeLog:
> v3->v5:
>  * no changes
> v2->v3:
>  * add more commit messages
> v1->v2:
>  * no changes
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index f89f3a5f1d7f..acdfef77e3bf 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -492,6 +492,7 @@ CONFIG_PINCTRL_IMX8MM=y
>  CONFIG_PINCTRL_IMX8MN=y
>  CONFIG_PINCTRL_IMX8MP=y
>  CONFIG_PINCTRL_IMX8MQ=y
> +CONFIG_PINCTRL_IMX8QM=y
>  CONFIG_PINCTRL_IMX8QXP=y
>  CONFIG_PINCTRL_IMX8DXL=y
>  CONFIG_PINCTRL_MSM=y
> -- 
> 2.25.1
> 
