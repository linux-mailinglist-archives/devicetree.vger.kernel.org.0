Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7283F4635E3
	for <lists+devicetree@lfdr.de>; Tue, 30 Nov 2021 14:55:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241863AbhK3N6e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Nov 2021 08:58:34 -0500
Received: from vps0.lunn.ch ([185.16.172.187]:59298 "EHLO vps0.lunn.ch"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S241852AbhK3N6U (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 30 Nov 2021 08:58:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=KCc2MMCWZ8q6d2gB0zQijecdCHnObUuCL3+wBGe+gv8=; b=WFIMvfTrivvLpWcvPEXD1RapuL
        918PXEecSkmLieG+sM+uwnNiCw4gqtKWmQlnyhMRW0Tl0F6tZG/k7o6amBgSx1eFNhoARuZVei+xv
        6XhQa3uIyWqrAkZZ+IJAkq/KSEhhwzem0MVQLSLI3oBTAE+kvF3JydqBHLJceOxTihz0=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1ms3as-00F6S2-Va; Tue, 30 Nov 2021 14:54:50 +0100
Date:   Tue, 30 Nov 2021 14:54:50 +0100
From:   Andrew Lunn <andrew@lunn.ch>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King <linux@armlinux.org.uk>,
        "David S . Miller" <davem@davemloft.net>,
        Rob Herring <robh+dt@kernel.org>,
        Jakub Kicinski <kuba@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/1] dt-bindings: net: Reintroduce PHY no lane swap
 binding
Message-ID: <YaYtKhrBAOaktQn6@lunn.ch>
References: <20211130082756.713919-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211130082756.713919-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 30, 2021 at 09:27:56AM +0100, Alexander Stein wrote:
> This binding was already documented in phy.txt, commit 252ae5330daa
> ("Documentation: devicetree: Add PHY no lane swap binding"), but got
> accidently removed during YAML conversion in commit d8704342c109
> ("dt-bindings: net: Add a YAML schemas for the generic PHY options").
> 
> Note: 'enet-phy-lane-no-swap' and the absence of 'enet-phy-lane-swap' are
> not identical, as the former one disable this feature, while the latter
> one doesn't change anything.
> 
> Fixes: d8704342c109 ("dt-bindings: net: Add a YAML schemas for the generic PHY options")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
