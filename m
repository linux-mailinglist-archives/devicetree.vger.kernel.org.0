Return-Path: <devicetree+bounces-810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6033A7A334A
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 00:57:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE79A281948
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 22:57:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B73431C2A2;
	Sat, 16 Sep 2023 22:57:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0065A12B80
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 22:57:51 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E080CD1;
	Sat, 16 Sep 2023 15:57:50 -0700 (PDT)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9284483F;
	Sun, 17 Sep 2023 00:56:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1694904973;
	bh=LbtNwIHbMSW9Zx11VGrEELQWksycsdSVxqz6smEIOdM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=f5KlHDGi99s2RCP+snITThR5K1/VI9NWsOXULlVYjDqVbjVrAg8R3ZrMKdupfgxLQ
	 Ibh8w8CXf3C+NoWxYbMpMcfUNYC2BMQV1URU0qtpF8G0dL6AhUGOR+PORpvY4PNP4x
	 vuS4MJ75FvXMwnpNMHyjr8npicANltvOprZ1yCwQ=
Date: Sun, 17 Sep 2023 01:57:59 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, Jacopo Mondi <jacopo@jmondi.org>,
	Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] media: dt-bindings: media: i2c: Add MT9M114
 camera sensor binding
Message-ID: <20230916225759.GB8524@pendragon.ideasonboard.com>
References: <20220207012055.15158-1-laurent.pinchart@ideasonboard.com>
 <20220207012055.15158-2-laurent.pinchart@ideasonboard.com>
 <YgKfdR72TNavj68v@paasikivi.fi.intel.com>
 <YgK6xAgAVHUSsQND@pendragon.ideasonboard.com>
 <YggZqM81nCJcv4vZ@paasikivi.fi.intel.com>
 <YggwuBlEmjzhxYt1@pendragon.ideasonboard.com>
 <Y/QHzsYzwDG2uclC@pendragon.ideasonboard.com>
 <Y/S8N0c8W/qQtjOj@kekkonen.localdomain>
 <Y/S9kx33unHSQpfl@pendragon.ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <Y/S9kx33unHSQpfl@pendragon.ideasonboard.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Sakari,

On Tue, Feb 21, 2023 at 02:48:19PM +0200, Laurent Pinchart wrote:
> On Tue, Feb 21, 2023 at 02:42:31PM +0200, Sakari Ailus wrote:
> > On Tue, Feb 21, 2023 at 01:52:46AM +0200, Laurent Pinchart wrote:
> > > > > > > > +        properties:
> > > > > > > > +          bus-type:
> > > > > > > > +            enum: [4, 5, 6]
> > > > > > > 
> > > > > > > With bus-type 5, shouldn't you have the parallel interface sync signal
> > > > > > > polarity properties? Possibly also others if the hardware supports them.
> > > > > > 
> > > > > > As far as I can tell, the hardware has fixed polarities for all signals.
> > > > > > Both hsync and vsync (called LINE_VALID and FRAME_VALID here) are active
> > > > > > high.
> > > > > 
> > > > > Right, then you won't need these.
> > > > > 
> > > > > What about the link-frequencies property?
> > > > 
> > > > That's something I've meant to ask, should the link-frequencies property
> > > > be specified for parallel buses too, or only CSI-2 ?
> > > 
> > > Any feedback on this ?
> > 
> > Yes.
> > 
> > It very likely matters there as well but probably less so than on CSI-2.
> > 
> > link-frequencies isn't specific to CSI-2 either.
> > 
> > > > We also need to document how a DT writer should select the link
> > > > frequencies. The process is complicated, saying that the property is
> > > > required without explaining how the values can be computed (EMC
> > > > constraints aside, just from a functional point of view) isn't nice. If
> > > > you explain this to me, I can put it in a patch :-)
> > > 
> > > Or on this ? :-)
> > 
> > Generally the hardware people will tell you this when it matters. :-) But
> > on a development board you can probably have anything the hardware
> > supports.
> > 
> > I guess we could add a few words on this to e.g.
> > Documentation/driver-api/media/camera-sensor.rst .
> 
> Please :-) When the sensor driver supports multiple link frequencies,
> and in particular a continuous range of frequencies, I want a document I
> can point people to precisely answer the "I have no idea about those
> stuff, what value do I put in my device tree?" question. It should
> include a clear procedure to calculate a value, not just a generic
> statement along the lines of "pick a value that is suitable for you".

Could you help me with this ? :-)

> > Most drivers will support a few frequencies only and sometimes the vendor,
> > due to someone needing it, provides another configuration with a different
> > frequency. Many sensors also have datasheets that are precise enough to
> > calculate this yourself.

-- 
Regards,

Laurent Pinchart

