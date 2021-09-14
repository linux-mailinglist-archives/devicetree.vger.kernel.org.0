Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B76E40B401
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 17:59:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235048AbhINQAz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 12:00:55 -0400
Received: from vps0.lunn.ch ([185.16.172.187]:40944 "EHLO vps0.lunn.ch"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235098AbhINQAz (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Sep 2021 12:00:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=yP9sqpmeviA1gb8gdGm9Zr+sde7rymb2vu5e6GQu/qg=; b=DDxkZfiV6LZzhfKWyqCXV3BhOw
        QQgPt6wYz+nyhuYoBzaMdZICvs/MIrii8ETTiOfOOCa4wqAbXpitBrFSsmOgFusg/DHNyn8CqEhYg
        PXARVojjKYadX+59MKV9KVTZMnAcLKo43wQQXWIzbEHdYDF4BBEJ6FDrtr+TZ8tgN2O8=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1mQAqN-006cRo-UL; Tue, 14 Sep 2021 17:59:35 +0200
Date:   Tue, 14 Sep 2021 17:59:35 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Daniel Palmer <daniel@0x0f.com>
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org, maz@kernel.org,
        tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
        romain.perier@gmail.com
Subject: Re: [PATCH 0/3] SigmaStar SSD20XD GPIO interrupt controller
Message-ID: <YUDG58WfACd8GYf5@lunn.ch>
References: <20210914100415.1549208-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210914100415.1549208-1-daniel@0x0f.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 14, 2021 at 07:04:12PM +0900, Daniel Palmer wrote:
> In new SigmaStar SoCs they have moved away from having a few
> interrupt capable GPIOs and instead have chained yet another
> interrupt controller in to provide interrupt support for
> all of the GPIOs.
> 
> I'm hardly an IRQ expert so I expect I've made a total
> mess of this. No one else was going to write this driver
> so I had a go.

Hi Daniel

How are the GPIOs mapped to the interrupts? Is it a simple 1:1?

The GPIO core has some support for the GPIO drivers to be also
interrupt controllers. So if this interrupt control is dedicated to
GPIO, you would be better to make it part of the GPIO driver.

      Andrew
