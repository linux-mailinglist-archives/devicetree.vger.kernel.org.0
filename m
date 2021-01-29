Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 55D9E30860A
	for <lists+devicetree@lfdr.de>; Fri, 29 Jan 2021 07:55:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230121AbhA2Guf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Jan 2021 01:50:35 -0500
Received: from mail.kernel.org ([198.145.29.99]:37470 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229463AbhA2Gud (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 29 Jan 2021 01:50:33 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 96EC864DD9;
        Fri, 29 Jan 2021 06:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1611902992;
        bh=MxLQ3fOy+T9I9LHcp7Ol4yyNUBceobxO+an6lTsHbe0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=uagCQy5hZQmT0tl2oJOCSvS8LaGqw7xLqjw7NBPPOEPufrd1PB2GyTuNCmivpn0CZ
         Gsf/qxYO6JjdaeT5XpFMwi9NdOmazqEJci8n+xEe4zVuyIjvUpxbJRkMuGXs7exewt
         qJKzwHRpJ1x8L11Pq6LSxBI35i+glbcqKRSYH/CNzOMh2DT51OTJen+hQHDrTk3rc+
         qziNKeqha0Y5RcbUWZaTn4YWYXHcayJha5UxeOdED9B1hYqYBtn71fj2ztShohcUXo
         5RQxdDttcvMx4xLAo7ejwDoeenyvPOEznBu2UTaZ++i61NGjMixIP1Y8ditnNH7/di
         b0JysYArdGhXw==
Date:   Fri, 29 Jan 2021 14:49:46 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Russell King <rmk+kernel@armlinux.org.uk>
Cc:     Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: lx2160a-cex7: increase at8035 PHY gigabit Tw
 parameter
Message-ID: <20210129064945.GF4356@dragon>
References: <E1l0Ydz-0002pe-7p@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1l0Ydz-0002pe-7p@rmk-PC.armlinux.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jan 15, 2021 at 11:36:39PM +0000, Russell King wrote:
> Increase the SmartEEE Tw parameter for Atheros PHYs to stop gigabit
> links from sporadically dropping. Testing on this platform shows that
> a value of 24 results in a stable link, whereas 23 or below has the
> occasional drop.
> 
> Tested with a Netgear GS116 unmanaged switch link partner with Cat 5e
> cabling.
> 
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Applied, thanks.
