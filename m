Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 43521200A77
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2020 15:42:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732846AbgFSNmW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Jun 2020 09:42:22 -0400
Received: from vps0.lunn.ch ([185.16.172.187]:48938 "EHLO vps0.lunn.ch"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1732663AbgFSNmW (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 19 Jun 2020 09:42:22 -0400
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
        (envelope-from <andrew@lunn.ch>)
        id 1jmHHe-001HPc-FJ; Fri, 19 Jun 2020 15:42:18 +0200
Date:   Fri, 19 Jun 2020 15:42:18 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Kurt Kanzenbach <kurt@linutronix.de>
Cc:     Vivien Didelot <vivien.didelot@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Kamil Alkhouri <kamil.alkhouri@hs-offenburg.de>,
        ilias.apalodimas@linaro.org
Subject: Re: [RFC PATCH 6/9] net: dsa: hellcreek: Add debugging mechanisms
Message-ID: <20200619134218.GD304147@lunn.ch>
References: <20200618064029.32168-1-kurt@linutronix.de>
 <20200618064029.32168-7-kurt@linutronix.de>
 <20200618173458.GH240559@lunn.ch>
 <875zbnqwo2.fsf@kurt>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <875zbnqwo2.fsf@kurt>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> > Are trace registers counters?
> 
> No. The trace registers provide bits for error conditions and if packets
> have been dropped e.g. because of full queues or FCS errors, and so on.

Is there some documentation somewhere? A better understanding of what
they can do might help figure out the correct API.

     Andrew
