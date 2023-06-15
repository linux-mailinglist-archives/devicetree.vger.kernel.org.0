Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD0F2730EC6
	for <lists+devicetree@lfdr.de>; Thu, 15 Jun 2023 07:45:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229652AbjFOFpM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jun 2023 01:45:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229622AbjFOFpK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jun 2023 01:45:10 -0400
Received: from mailrelay6-1.pub.mailoutpod2-cph3.one.com (mailrelay6-1.pub.mailoutpod2-cph3.one.com [46.30.211.181])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 489432717
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 22:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ravnborg.org; s=rsa1;
        h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
         from:date:from;
        bh=h5pMA/hSUlIpnru+BknnSTSCea5kR4oFVO4lq53j9NA=;
        b=LGHzjAeI4nZmz6YCwStCQhMGVbRwUMv8+S1Kqm+YS3efHeiRE75nwvd5M241wovHumEztU3it0gTF
         LjEnHd7NFKFkLiZflSiBWnssompoNAEAtJ1mufglHhani0CR5Skrr8GyUIDVqjX0eljP6SsBkayac4
         Rees3F5b/0zesPx4c+RPRvCp0X0vI6OmHbCytLjcy03WvZtl6czzC8PXOvfmS2xmvxJw9PdAnZnvn9
         tcbMqCGLFcL5OZYH1k00fOdIdsKV+HOwEYItr8GOHou3jvlvRstypl+8es42atSlnsmZyP6oXzF9Op
         mbjVT8PHFB0QGmdU2y0JPb5f6eB9LZQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
        d=ravnborg.org; s=ed1;
        h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
         from:date:from;
        bh=h5pMA/hSUlIpnru+BknnSTSCea5kR4oFVO4lq53j9NA=;
        b=9ZokVGj0b15kYp+f55nOPKIjibS0i6GRPHXDkHSRF7Sz0MnhxkSFtPvRnUVaCJy6gaMk9ACJrV2th
         GawO/76Ag==
X-HalOne-ID: 9844fc82-0b3f-11ee-8adb-6f01c1d0a443
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
        by mailrelay6 (Halon) with ESMTPSA
        id 9844fc82-0b3f-11ee-8adb-6f01c1d0a443;
        Thu, 15 Jun 2023 05:43:47 +0000 (UTC)
Date:   Thu, 15 Jun 2023 07:43:46 +0200
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Sebastian Reichel <sre@kernel.org>
Cc:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Maxime Ripard <mripard@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH 1/7] drm/panel: sitronix-st7789v: Prevent core spi
 warnings
Message-ID: <20230615054346.GA1537028@ravnborg.org>
References: <20230609145951.853533-1-miquel.raynal@bootlin.com>
 <20230609145951.853533-2-miquel.raynal@bootlin.com>
 <b4ae6e9c-b548-b1e3-42f9-e24aacaf2b38@wolfvision.net>
 <20230613085630.4a48fa8b@xps-13>
 <20230614232217.d7lf4l3y7oqmjisy@mercury.elektranox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230614232217.d7lf4l3y7oqmjisy@mercury.elektranox.org>
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_MSPIKE_H5,
        RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE,
        URIBL_BLACK autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 15, 2023 at 01:22:17AM +0200, Sebastian Reichel wrote:
> Hi,
> 
> On Tue, Jun 13, 2023 at 08:56:30AM +0200, Miquel Raynal wrote:
> > Hi Michael,
> > 
> > michael.riesch@wolfvision.net wrote on Tue, 13 Jun 2023 08:15:26 +0200:
> > 
> > > Hi Miquel,
> > > 
> > > On 6/9/23 16:59, Miquel Raynal wrote:
> > > > The spi core warns us about using an of_device_id table without a  
> > > 
> > > s/spi/SPI ?
> > 
> > Actually both are accepted in the kernel, IIRC it depends whether you
> > refer to the name of the bus or the Linux subsystem. Same for picking
> > "a" vs "an" before "spi/SPI". An attempt to use a unique formatting was
> > actually canceled because both are used equivalently and I believe even
> > the spi maintainer and the spi-nor maintainer kind of disagreed on the
> > default :)
> > 
> > > > spi_device_id table aside for module utilities in orter to not rely on  
> > > 
> > > s/in orter to/in order to ?
> > 
> > Yes, sorry for this typo as well as the two others you rightly pointed
> > out in another patch. I'll fix them.
> > 
> > > > OF modaliases. Just add this table using the device name without the
> > > > vendor prefix (as it is usually done).
> > > >
> > > > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > > > ---
> > > >  drivers/gpu/drm/panel/panel-sitronix-st7789v.c | 7 +++++++
> > > >  1 file changed, 7 insertions(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c  
> > > b/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
> > > > index bbc4569cbcdc..c67b9adb157f 100644
> > > > --- a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
> > > > +++ b/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
> > > > @@ -400,9 +400,16 @@ static const struct of_device_id  
> > > st7789v_of_match[] = {
> > > >  };
> > > >  MODULE_DEVICE_TABLE(of, st7789v_of_match);
> > > >
> > > > +static const struct spi_device_id st7789v_ids[] = {
> > > > +	{ "st7789v", },
> > > > +	{ /* sentinel */ }
> > > > +};
> > > > +MODULE_DEVICE_TABLE(spi, st7789v_ids);
> > > > +
> > > >  static struct spi_driver st7789v_driver = {
> > > >  	.probe = st7789v_probe,
> > > >  	.remove = st7789v_remove,
> > > > +	.id_table = st7789v_ids,
> > > >  	.driver = {
> > > >  		.name = "st7789v",
> > > >  		.of_match_table = st7789v_of_match,  
> > > 
> > > May I point to you Sebastian Reichel's series that features a partial
> > > overlap with your work? [0]
> > 
> > Woow. That driver has been untouched for years and now two
> > contributions at the same time.
> 
> Three actually. Michael also submitted a series :)
> 
> > Sebastian, what is the current state of your series?
> 
> The DT changes got Ack'd by Rob and I have the R-B from Michael
> (minus a minor comment to make the panel struct 'static const').
> It's mainly waiting for a review from Sam.
> 
> I was a bit distracted by a boot regression on the devices and
> some other projects. The boot regression got solved, so I can
> prepare a new version if that makes things easier.
> 
> > Shall I base my work on top of yours? Or is it still too
> > premature and we shall instead try to merge both and contribute a new
> > version of the series bringing support for the two panels?
> 
> I suppose whatever is easier for Sam to review.

Hi Sebastian.

Too much panel stuff going on, so I miss the most and I am happy to see
other people do a lot of good work here.
Can i get a pointer to lore or so, then I will try to take a look.

	Sam
