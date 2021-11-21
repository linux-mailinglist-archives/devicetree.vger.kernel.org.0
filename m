Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D32A45818B
	for <lists+devicetree@lfdr.de>; Sun, 21 Nov 2021 03:43:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237184AbhKUCqe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Nov 2021 21:46:34 -0500
Received: from mail.kernel.org ([198.145.29.99]:43538 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S237161AbhKUCqe (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 20 Nov 2021 21:46:34 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6A16360698;
        Sun, 21 Nov 2021 02:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1637462609;
        bh=9/D7lUphZrSzio9G81Lw95T8EKDqNeXSq4bqSOkONyM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=gFK63R/cnOrEuHAZhhzNK5CwIc20np89kmZamGKtyyBlMG7rB6ePr7PaDiIMTUFAJ
         Y82L6yMYCVQ0CHEU91NqHY4mo2Eq95iori9Th91KhRcQZwcGQZ3iATwYKKSDERWUY4
         zDxfQHGlKaBhYinqy22E5FpLqQuC+EWJb69tB/pCf977PWXl+D5AsyrNG2eaxjuQZh
         gOB0IypCtiVtY4GgZ3LepKJa976nmHx1T8lxxPVPyLDSq9GkWWgYn2tlicznbXacBC
         /bDGvmibHCNzwsbK/zrs5m/cP/fw7kJxr/RQUrhbkXgy3XxAlP26JJ5MHpRRKy/1yt
         vBL4pp8xX6MVA==
Date:   Sun, 21 Nov 2021 10:43:24 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc:     Andrew Lunn <andrew@lunn.ch>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Stefan Agner <stefan@agner.ch>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: vf610-zii-dev-rev-b: correct phy-mode for 6185
 dsa link
Message-ID: <20211121024320.GI31998@dragon>
References: <E1mdDr3-006f6l-QZ@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1mdDr3-006f6l-QZ@rmk-PC.armlinux.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 20, 2021 at 04:50:13PM +0100, Russell King (Oracle) wrote:
> DT currently lists the port mode for the 88E6352 switch 1 to 88E6185
> switch 2 as "rgmii-id" but referring to the schematics, it is in fact
> a serdes link. The 88E6352 is configured with P5_MODE=6, S_SEL=1 and
> S_MODE=1, which means port 5 is configured as 1000BASE-X.
> 
> This is confirmed by the value in the 88E6352 port 5 status register,
> 0x4e09, where C_MODE=9 meaning 1000BASE-X. It is also confirmed by
> the 88E6185 port 9 status register, 0x5e8c, where C_MODE=4 meaning
> cross-chip SERDES mode is selected.
> 
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>

Applied, thanks.
