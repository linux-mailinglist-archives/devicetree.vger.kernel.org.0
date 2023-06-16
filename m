Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85176732D22
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 12:13:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244839AbjFPKNz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 06:13:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244732AbjFPKNu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 06:13:50 -0400
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::228])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1ABA194
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 03:13:48 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686910427;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=dCdt8ydTrXKYCxEhLduicCEBqeIoTgA8Fak1EkYImKY=;
        b=jxD9vDfdrnO5MEeSTKs8pQxGzfjl+tfzg5bRvfNCMCt6GJvElxt3Y3QW0vXzLmi4cWRoFd
        T7yA1v57ezMZF59OaW5W2w60RpDyrVwXT0b/f00E7Vjx/UNVu0D8ZJAAStpwHMjsiuuxE6
        lqOZs/gfrLpxUySMMcPxv8UCrvJQAYqVgpWXO2Ql5VEOaOZkNe0vQDloSIdeScnZla4q2h
        TQ+MWUmFepU4+7mr8E0r5tk7RycpjDO9xawi9r0MFIsXKgwIHLrIwszR0A3iU9Ovmqjkvl
        P7jV8/Zq7nsqO9D6+W4KqX1gXsnlxbE5SKoUQpapQAa0UkcGO9LMCrcgUd56og==
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 7765A1BF213;
        Fri, 16 Jun 2023 10:13:46 +0000 (UTC)
Date:   Fri, 16 Jun 2023 12:13:45 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Sebastian Reichel <sre@kernel.org>
Cc:     Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Maxime Ripard <mripard@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH 7/7] drm/panel: sitronix-st7789v: Check display ID
Message-ID: <20230616121345.2501c36a@xps-13>
In-Reply-To: <20230614232724.yer2ikvfzmaiejrd@mercury.elektranox.org>
References: <20230609145951.853533-1-miquel.raynal@bootlin.com>
        <20230609145951.853533-8-miquel.raynal@bootlin.com>
        <20230610204525.GA1042549@ravnborg.org>
        <20230614232724.yer2ikvfzmaiejrd@mercury.elektranox.org>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sebastian,

sre@kernel.org wrote on Thu, 15 Jun 2023 01:27:24 +0200:

> Hi,
>=20
> On Sat, Jun 10, 2023 at 10:45:25PM +0200, Sam Ravnborg wrote:
> > Hi Miquel,
> >=20
> > On Fri, Jun 09, 2023 at 04:59:51PM +0200, Miquel Raynal wrote: =20
> > > A very basic debugging rule when a device is connected for the first
> > > time is to access a read-only register which contains known data in
> > > order to ensure the communication protocol is properly working. This
> > > driver lacked any read helper which is often a critical peace for
> > > fastening bring-ups.
> > >=20
> > > Add a read helper and use it to verify the communication with the pan=
el
> > > is working as soon as possible in order to fail early if this is not =
the
> > > case. =20
> >=20
> > The read helper seems like a log of general boiler plate code.
> > I briefly looked into the use of regmap for the spi communication,
> > but it did not look like it supported the bit9 stuff.
> >=20
> > I did not stare enough to add a reviewd by, but the approach is fine
> > and it is good to detech issues early. =20
>=20
> The st7789v datasheet describes a setup where SPI is connected
> unidirectional (i.e. without MISO). In that case the ID check
> will fail.

Right. I'll add a (spi->mode & SPI_NO_RX) check, as the default is to
have both lines, if there is no MISO line, I'd expect it to be
described in the DT, otherwise the description is broken.

Thanks,
Miqu=C3=A8l
