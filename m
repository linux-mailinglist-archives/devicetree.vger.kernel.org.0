Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 18FEF2A1CBF
	for <lists+devicetree@lfdr.de>; Sun,  1 Nov 2020 10:02:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726145AbgKAJCA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Nov 2020 04:02:00 -0500
Received: from mail.kernel.org ([198.145.29.99]:50366 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726285AbgKAJB7 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 1 Nov 2020 04:01:59 -0500
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 6A8B620882;
        Sun,  1 Nov 2020 09:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1604221319;
        bh=IcpStLi0D09bnIG0HgOV/kZ1/AZcaDTMnfElIUZYMl0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=zX8QVjzmnYQbnO6ItnGzJ2YHNjHeXsIZQVHbWPrhpoQKT9L88gGw001Sji+bF5jmm
         eD8Ue9ldN50ztI9NhKao1XBkv7hAJH6koPmnuuGnB2EOZmOnDPS84B85pgKaTk9CL7
         LQhmeY5Dbg0AdpUCxNL4wmAJPSjqeMOrHIkq/F4o=
Date:   Sun, 1 Nov 2020 17:01:54 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Sergey Matyukevich <geomatsi@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>
Subject: Re: [PATCH v3] arm: dts: imx6qdl-udoo: fix rgmii phy-mode for
 ksz9031 phy
Message-ID: <20201101090153.GK31601@dragon>
References: <20201024201120.3582-1-geomatsi@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201024201120.3582-1-geomatsi@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Oct 24, 2020 at 11:11:20PM +0300, Sergey Matyukevich wrote:
> Commit bcf3440c6dd7 ("net: phy: micrel: add phy-mode support for the
> KSZ9031 PHY") fixed micrel phy driver adding proper support for phy
> modes. Adapt imx6q-udoo board phy settings : explicitly set required
> delay configuration using "rgmii-id".
> 
> Fixes: cbd54fe0b2bc ("ARM: dts: imx6dl-udoo: Add board support based
> off imx6q-udoo").
> 
> Signed-off-by: Sergey Matyukevich <geomatsi@gmail.com>

Applied, thanks.
