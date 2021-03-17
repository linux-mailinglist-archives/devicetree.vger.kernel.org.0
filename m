Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E8F1433EAE5
	for <lists+devicetree@lfdr.de>; Wed, 17 Mar 2021 08:56:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230134AbhCQH4A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Mar 2021 03:56:00 -0400
Received: from mail.kernel.org ([198.145.29.99]:34834 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230469AbhCQHzf (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 17 Mar 2021 03:55:35 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 25B2264F8B;
        Wed, 17 Mar 2021 07:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1615967735;
        bh=alngLx9tXk1ipW8WZIsctnl+ZPMW7qOAVsYxBnuytno=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=vOB6tAjybOwr4Qe11lkjcO+m2ecSrKvVG6C9MvnjrHx7BbBqyw7p9a0vElS3ixe4u
         giUbJ3bVAufU7XPnFpjY+egkmT4+tRIYeLgxidbVOWCgyPTkxRaGxRGRQzygsAO9tO
         M0idbl58r6xyJQUW+DfzrtYKmQli8HwM4CVsX8BX7gyzDHk51h++LXISSPlP9vWs7T
         wY+bt5kdaEwPhLynb+9alA31RasH7BnQfy41ql5xbkEn9o/Ip4EsXTVJUIWeKHH/oY
         htiq78fzA2MCcSMa3hZXR0X2/qzxc1QQj9dvgwVg60Tf2yUxgfLUbZ8dbPmmzK8dAR
         yd1PX5XRSVWtg==
Date:   Wed, 17 Mar 2021 15:55:30 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc:     Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Jon Nettleton <jon@solid-run.com>
Subject: Re: [PATCH] arm64: dts: lx2160a-clearfog-itx: add SFP support
 [*experimental*]
Message-ID: <20210317075529.GR11246@dragon>
References: <E1lJfLu-0000Q2-Nl@rmk-PC.armlinux.org.uk>
 <20210315070314.GN11246@dragon>
 <20210315100207.GL1463@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210315100207.GL1463@shell.armlinux.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 15, 2021 at 10:02:07AM +0000, Russell King - ARM Linux admin wrote:
> On Mon, Mar 15, 2021 at 03:03:15PM +0800, Shawn Guo wrote:
> > On Tue, Mar 09, 2021 at 04:36:58PM +0000, Russell King wrote:
> > > Add 2x2 SFP+ cage support for clearfog-itx boards.
> > > 
> > > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> > 
> > What is the implication of [*experimental*] in subject?
> 
> Oh, I should've dropped that, thanks for pointing it out.
> 
> It was experimental as we didn't know which direction NXP were heading
> with the PCS support on the LX2160A until it was finally merged into
> net-next.

Fixed it up and applied, thanks.
