Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B0D1330CECB
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 23:29:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235589AbhBBW0U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 17:26:20 -0500
Received: from vps0.lunn.ch ([185.16.172.187]:45016 "EHLO vps0.lunn.ch"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235414AbhBBWZJ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 2 Feb 2021 17:25:09 -0500
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
        (envelope-from <andrew@lunn.ch>)
        id 1l745n-003r13-L8; Tue, 02 Feb 2021 23:24:15 +0100
Date:   Tue, 2 Feb 2021 23:24:15 +0100
From:   Andrew Lunn <andrew@lunn.ch>
To:     Russell King <rmk+kernel@armlinux.org.uk>
Cc:     Rob Herring <robh+dt@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Maxime Ripard <mripard@kernel.org>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: ethernet-controller: fix fixed-link
 specification
Message-ID: <YBnRD8QF5OeEPju0@lunn.ch>
References: <E1l6AQp-00060t-En@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1l6AQp-00060t-En@rmk-PC.armlinux.org.uk>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jan 31, 2021 at 10:58:15AM +0000, Russell King wrote:
> The original fixed-link.txt allowed a pause property for fixed link.
> This has been missed in the conversion to yaml format.
> 
> Fixes: 9d3de3c58347 ("dt-bindings: net: Add YAML schemas for the generic Ethernet options")
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
