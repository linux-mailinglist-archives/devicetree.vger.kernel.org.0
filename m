Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B88DA25DA83
	for <lists+devicetree@lfdr.de>; Fri,  4 Sep 2020 15:53:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730692AbgIDNxK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Sep 2020 09:53:10 -0400
Received: from vps0.lunn.ch ([185.16.172.187]:42974 "EHLO vps0.lunn.ch"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1730690AbgIDNxJ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 4 Sep 2020 09:53:09 -0400
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
        (envelope-from <andrew@lunn.ch>)
        id 1kEC99-00DCbH-FY; Fri, 04 Sep 2020 15:52:55 +0200
Date:   Fri, 4 Sep 2020 15:52:55 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Helmut Grohne <helmut.grohne@intenta.de>
Cc:     Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Ludovic Desroches <ludovic.desroches@microchip.com>,
        Woojung Huh <woojung.huh@microchip.com>,
        Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
        Vivien Didelot <vivien.didelot@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        netdev@vger.kernel.org
Subject: Re: [PATCH v2] net: dsa: microchip: look for phy-mode in port nodes
Message-ID: <20200904135255.GM3112546@lunn.ch>
References: <20200824.153738.1423061044322742575.davem@davemloft.net>
 <20200904081438.GA14387@laureti-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200904081438.GA14387@laureti-dev>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> +			dev_warn(dev->dev,
> +				 "Using legacy switch \"phy-mode\" missing on port %d node. Please update your device tree.\n",

That message seems mangled.

> +			if (!p->interface) {
> +				if (dev->compat_interface) {
> +					dev_warn(dev->dev,
> +						 "Using legacy switch \"phy-mode\" missing on port %d node. Please update your device tree.\n",
> +						 i);

Same warning again.

     Andrew
