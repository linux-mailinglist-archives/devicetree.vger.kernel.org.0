Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D3575289C92
	for <lists+devicetree@lfdr.de>; Sat, 10 Oct 2020 02:04:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728431AbgJJACO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Oct 2020 20:02:14 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:38118 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728557AbgJIX7h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Oct 2020 19:59:37 -0400
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7BB2E528;
        Sat, 10 Oct 2020 01:59:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1602287967;
        bh=hQoSfHq4w68Q8YI1olTrIlcr8qpEmfR2zY8Trc10LPQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=AsJihnaGYD4EMaCzVQqF4DINZ64tw+G+q3wq70IU/ZmJ1uUpGVFszJS7uphcJQMqa
         wV1hAmWrF4dNnbBgkNgeKkARaIoBsI4oUlvDWlrbDnL0YMZs8XldaGim+Ekm/reGxs
         /Ai5vx69tPuw2kfzG25e6Ufgw6rY6V5OVAf+a5vk=
Date:   Sat, 10 Oct 2020 02:58:43 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org, Stefan Agner <stefan@agner.ch>,
        devicetree@vger.kernel.org,
        Guido =?utf-8?Q?G=C3=BCnther?= <agx@sigxcpu.org>,
        Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 3/7] dt-bindings: display: mxsfb: Add a bus-width
 endpoint property
Message-ID: <20201009235843.GR25040@pendragon.ideasonboard.com>
References: <20201007012438.27970-1-laurent.pinchart@ideasonboard.com>
 <20201007012438.27970-4-laurent.pinchart@ideasonboard.com>
 <7b8df7af-5ca8-708b-4975-2fdf4280116f@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <7b8df7af-5ca8-708b-4975-2fdf4280116f@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

On Wed, Oct 07, 2020 at 10:40:26AM +0200, Marek Vasut wrote:
> On 10/7/20 3:24 AM, Laurent Pinchart wrote:
> 
> [...]
> 
> > +          bus-width:
> > +            enum: [16, 18, 24]
> > +            description: |
> > +              The output bus width. This value overrides the configuration
> > +              derived from the connected device (encoder or panel). It should
> > +              only be specified when PCB routing of the data signals require a
> > +              different bus width on the LCDIF and the connected device. For
> > +              instance, when a 18-bit RGB panel has its R[5:0], G[5:0] and
> > +              B[5:0] signals connected to LCD_DATA[7:2], LCD_DATA[15:10] and
> > +              LCD_DATA[23:18] instead of LCD_DATA[5:0], LCD_DATA[11:6] and
> > +              LCD_DATA[17:12], bus-width should be set to 24.
> 
> The iMX6 IPUv3 uses interface-pix-fmt which is a bit more flexible, but
> I'm not sure whether it's the right way to go about this, see:
> Documentation/devicetree/bindings/display/imx/fsl-imx-drm.txt

I think specifying the bus with is better. It's a standard property, but
more than that, a given bus width can carry different formats. For
instance, a 24-bus could carry RGB666 data (with dithering for the
LSBs).

-- 
Regards,

Laurent Pinchart
