Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8027D43B208
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 14:11:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234479AbhJZMNo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 08:13:44 -0400
Received: from vps0.lunn.ch ([185.16.172.187]:59444 "EHLO vps0.lunn.ch"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232378AbhJZMNn (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 26 Oct 2021 08:13:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=pUT/QsjAVmo309oFjQKn8aNBmEiYdlm9SPuibVKgDMQ=; b=z+gC0Dl9H9PqpHTXY+WEilBpau
        q89o/HsJV9fF2LYXsxJcql5++f0q5QFTmQ8nQwPA1d7l2kino50rssf5wM0itpA4LsIQKMDz089m3
        qjW1VQOL3apa2twXCvZ3nFTO9tBKl9DJxI3BuZzZJSp4EBZTcXdULMYL1jny4n21NO5M=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1mfLIJ-00Bm9B-VU; Tue, 26 Oct 2021 14:11:07 +0200
Date:   Tue, 26 Oct 2021 14:11:07 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Stefan Agner <stefan@agner.ch>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: vf610-zii-dev-rev-b: specify phy-mode for
 external PHYs
Message-ID: <YXfwW7RRdBKDz3Q4@lunn.ch>
References: <E1mfIqd-001K4C-RP@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1mfIqd-001K4C-RP@rmk-PC.armlinux.org.uk>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Oct 26, 2021 at 10:34:23AM +0100, Russell King (Oracle) wrote:
> Specify the phy-mode for the external PHYs on the third switch on the
> ZII development rev B board so phylink and phylib knows what mode these
> interfaces are configured for.
> 
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
