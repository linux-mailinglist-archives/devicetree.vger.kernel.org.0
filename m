Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 646AA28C705
	for <lists+devicetree@lfdr.de>; Tue, 13 Oct 2020 04:07:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728553AbgJMCHI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Oct 2020 22:07:08 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:50088 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726168AbgJMCHI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Oct 2020 22:07:08 -0400
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3BEEDA42;
        Tue, 13 Oct 2020 04:07:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1602554825;
        bh=faWxdeUdzwGgd/jdihkSsVgvmpiWFPdtpRaopaRFFgU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=FWzWrgms5AnQ5j0dxgRvZj1ljA30FYKM26WFUb4UG3G0QrOafcvS05e2JR4MMoSMZ
         mLD650iS6w2fq+3BI293vsXLWZBMw/Jh2ChVyV2N7lmh+ISjiwIriQ1R+kcBC9RqFq
         hoc688eHC3if1k1U7nA8ANv7QAUZqsTRYG4A+RYU=
Date:   Tue, 13 Oct 2020 05:06:19 +0300
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
Message-ID: <20201013020619.GG3942@pendragon.ideasonboard.com>
References: <20201007012438.27970-1-laurent.pinchart@ideasonboard.com>
 <20201007012438.27970-4-laurent.pinchart@ideasonboard.com>
 <7b8df7af-5ca8-708b-4975-2fdf4280116f@denx.de>
 <20201009235843.GR25040@pendragon.ideasonboard.com>
 <9c7615d6-0f69-5f67-0795-b86ecea2eea8@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <9c7615d6-0f69-5f67-0795-b86ecea2eea8@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

On Sat, Oct 10, 2020 at 10:47:05AM +0200, Marek Vasut wrote:
> On 10/10/20 1:58 AM, Laurent Pinchart wrote:
> > Hi Marek,
> 
> Hi,
> 
> > On Wed, Oct 07, 2020 at 10:40:26AM +0200, Marek Vasut wrote:
> >> On 10/7/20 3:24 AM, Laurent Pinchart wrote:
> >>
> >> [...]
> >>
> >>> +          bus-width:
> >>> +            enum: [16, 18, 24]
> >>> +            description: |
> >>> +              The output bus width. This value overrides the configuration
> >>> +              derived from the connected device (encoder or panel). It should
> >>> +              only be specified when PCB routing of the data signals require a
> >>> +              different bus width on the LCDIF and the connected device. For
> >>> +              instance, when a 18-bit RGB panel has its R[5:0], G[5:0] and
> >>> +              B[5:0] signals connected to LCD_DATA[7:2], LCD_DATA[15:10] and
> >>> +              LCD_DATA[23:18] instead of LCD_DATA[5:0], LCD_DATA[11:6] and
> >>> +              LCD_DATA[17:12], bus-width should be set to 24.
> >>
> >> The iMX6 IPUv3 uses interface-pix-fmt which is a bit more flexible, but
> >> I'm not sure whether it's the right way to go about this, see:
> >> Documentation/devicetree/bindings/display/imx/fsl-imx-drm.txt
> > 
> > I think specifying the bus with is better. It's a standard property, but
> > more than that, a given bus width can carry different formats. For
> > instance, a 24-bus could carry RGB666 data (with dithering for the
> > LSBs).
> 
> I think that's exactly what the interface-pix-fmt was trying to solve
> for the IPUv3, there you could have e.g. both RGB666 and LVDS666 , which
> were different.

My point is that the driver should support multiple formats that can be
carried over a given bus width, with the actual format to be used
queried from the sink (usually a panel) instead of being hardcoded in
DT.

-- 
Regards,

Laurent Pinchart
