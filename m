Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3ABE0257AC6
	for <lists+devicetree@lfdr.de>; Mon, 31 Aug 2020 15:49:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726858AbgHaNtA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Aug 2020 09:49:00 -0400
Received: from vps0.lunn.ch ([185.16.172.187]:34134 "EHLO vps0.lunn.ch"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728021AbgHaNs7 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 31 Aug 2020 09:48:59 -0400
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
        (envelope-from <andrew@lunn.ch>)
        id 1kCkB0-00CeIv-0F; Mon, 31 Aug 2020 15:48:50 +0200
Date:   Mon, 31 Aug 2020 15:48:49 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Adrian Schmutzler <freifunk@adrianschmutzler.de>
Cc:     Jason Cooper <jason@lakedaemon.net>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: kirkwood: replace status value "ok" by "okay"
Message-ID: <20200831134849.GC2403519@lunn.ch>
References: <20200830193543.50530-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200830193543.50530-1-freifunk@adrianschmutzler.de>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Aug 30, 2020 at 09:35:43PM +0200, Adrian Schmutzler wrote:
> While the DT parser recognizes "ok" as a valid value for the
> "status" property, it is actually mentioned nowhere. Use the
> proper value "okay" instead, as done in the majority of files
> already.
> 
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
