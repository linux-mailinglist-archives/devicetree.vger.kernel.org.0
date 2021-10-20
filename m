Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 40B10434F51
	for <lists+devicetree@lfdr.de>; Wed, 20 Oct 2021 17:49:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230082AbhJTPv7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Oct 2021 11:51:59 -0400
Received: from relay5-d.mail.gandi.net ([217.70.183.197]:48111 "EHLO
        relay5-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229952AbhJTPv7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Oct 2021 11:51:59 -0400
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
        by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 953581C0002;
        Wed, 20 Oct 2021 15:49:41 +0000 (UTC)
Date:   Wed, 20 Oct 2021 17:49:41 +0200
From:   Alexandre Belloni <alexandre.belloni@bootlin.com>
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Horatiu Vultur <horatiu.vultur@microchip.com>, kishon@ti.com,
        robh+dt@kernel.org, andrew@lunn.ch, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] phy: Add lan966x ethernet serdes PHY driver
Message-ID: <YXA6lZBTeA6aNxVD@piout.net>
References: <20211015123920.176782-1-horatiu.vultur@microchip.com>
 <20211015123920.176782-4-horatiu.vultur@microchip.com>
 <YW8HIHTCVgB+URJ5@matsya>
 <20211020091733.fxph2pq3xa3byvry@soft-dev3-1.localhost>
 <YXA3VVUGEjUR4HDC@matsya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YXA3VVUGEjUR4HDC@matsya>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/10/2021 21:05:49+0530, Vinod Koul wrote:
> > > > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > > 
> > > Any reason why this is dual licensed, why not GPL only?
> > 
> > No reason, I think I copy this from a different file.
> 
> Please have a chat with your lawyers on the correct license this should
> have!
Dual GPL and MIT was Microsemi's policy, I'm not sure it carried over to
Microchip.

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
