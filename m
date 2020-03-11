Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A49A3181242
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2020 08:46:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726310AbgCKHq1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Mar 2020 03:46:27 -0400
Received: from mail.kernel.org ([198.145.29.99]:47366 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726160AbgCKHq1 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 11 Mar 2020 03:46:27 -0400
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id B27B9206B7;
        Wed, 11 Mar 2020 07:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1583912786;
        bh=wPWavU0XnNFcX/SZ6TFjnJus+JRvVZy3+xSxDbg/boM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=h+4oCQZiitlQdZsnfxzykvSh+zavohpJ0bhv88o/Z8aQdiDBJPrjQ6u9vn/ze5HZy
         bcDa55DQjSL/qM6V0RtxfCMBcc4+qv7LE5FC34a2UYQppOJosBWSzFS6RyKS481isn
         O9wTYS+JNCD+0gBBv9SFTHBEC3aAr6VR94ZM/XDk=
Date:   Wed, 11 Mar 2020 15:46:18 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Russell King <rmk+kernel@armlinux.org.uk>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: imx6qdl-sr-som-ti: indicate powering off wifi
 is safe
Message-ID: <20200311074617.GU29269@dragon>
References: <E1j7I7v-0004dS-5u@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1j7I7v-0004dS-5u@rmk-PC.armlinux.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 27, 2020 at 12:18:51PM +0000, Russell King wrote:
> We need to indicate that powering off the TI WiFi is safe, to avoid:
> 
> wl18xx_driver wl18xx.2.auto: Unbalanced pm_runtime_enable!
> wl1271_sdio mmc0:0001:2: wl12xx_sdio_power_on: failed to get_sync(-13)
> 
> which prevents the WiFi being functional.
> 
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Applied, thanks.
