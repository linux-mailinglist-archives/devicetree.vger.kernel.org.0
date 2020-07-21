Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D6A9722836D
	for <lists+devicetree@lfdr.de>; Tue, 21 Jul 2020 17:18:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728644AbgGUPSP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jul 2020 11:18:15 -0400
Received: from vps0.lunn.ch ([185.16.172.187]:47434 "EHLO vps0.lunn.ch"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728072AbgGUPSP (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 21 Jul 2020 11:18:15 -0400
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
        (envelope-from <andrew@lunn.ch>)
        id 1jxu1p-006Bdr-OB; Tue, 21 Jul 2020 17:18:01 +0200
Date:   Tue, 21 Jul 2020 17:18:01 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Russell King <rmk+kernel@armlinux.org.uk>
Cc:     Gregory Clement <gregory.clement@bootlin.com>,
        Jason Cooper <jason@lakedaemon.net>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        "David S. Miller" <davem@davemloft.net>
Subject: Re: [PATCH v2 2/3] ARM: dts: armada-38x: fix NETA lockup when
 repeatedly switching speeds
Message-ID: <20200721151801.GQ1339445@lunn.ch>
References: <20200721143756.GT1605@shell.armlinux.org.uk>
 <E1jxtRe-0003Tn-8Z@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1jxtRe-0003Tn-8Z@rmk-PC.armlinux.org.uk>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 21, 2020 at 03:40:38PM +0100, Russell King wrote:
> To support the change in "phy: armada-38x: fix NETA lockup when
> repeatedly switching speeds" we need to update the DT with the
> additional register.
> 
> Fixes: 14dc100b4411 ("phy: armada38x: add common phy support")
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
