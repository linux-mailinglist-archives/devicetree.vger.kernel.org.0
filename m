Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 44B532C4920
	for <lists+devicetree@lfdr.de>; Wed, 25 Nov 2020 21:35:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729906AbgKYUed (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Nov 2020 15:34:33 -0500
Received: from vps0.lunn.ch ([185.16.172.187]:50270 "EHLO vps0.lunn.ch"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729826AbgKYUec (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 25 Nov 2020 15:34:32 -0500
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
        (envelope-from <andrew@lunn.ch>)
        id 1ki1Uj-008qXx-8L; Wed, 25 Nov 2020 21:34:29 +0100
Date:   Wed, 25 Nov 2020 21:34:29 +0100
From:   Andrew Lunn <andrew@lunn.ch>
To:     George McCollister <george.mccollister@gmail.com>
Cc:     Vivien Didelot <vivien.didelot@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vladimir Oltean <olteanv@gmail.com>,
        "David S . Miller " <davem@davemloft.net>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH net-next v2 1/3] dsa: add support for Arrow XRS700x tag
 trailer
Message-ID: <20201125203429.GF2073444@lunn.ch>
References: <20201125193740.36825-1-george.mccollister@gmail.com>
 <20201125193740.36825-2-george.mccollister@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201125193740.36825-2-george.mccollister@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> +static struct sk_buff *xrs700x_rcv(struct sk_buff *skb, struct net_device *dev,
> +				   struct packet_type *pt)
> +{
> +	int source_port;
> +	u8 *trailer;
> +
> +	if (skb_linearize(skb))
> +		return NULL;

Something for Vladimir:

Could this linearise be moved into the core, depending on the
tail_tag?

> +	if (pskb_trim_rcsum(skb, skb->len - 1))
> +		return NULL;

And the overhead is also in dsa_devlink_ops, so maybe this can be
moved as well?

      Andrew
