Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 565DA732C85
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 11:56:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229654AbjFPJ4S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 05:56:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229516AbjFPJ4R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 05:56:17 -0400
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::225])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 691032D59
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 02:56:14 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686909373;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=8/T4ahbYYhg9xGxNTufEKBAfGkusYwd6bc/dclvufaU=;
        b=Sx1FgyZNi7Iq7mGdv/wHgfG3TQOPJHaRKmm5BPiZaOayV6HAUct1qvoWRvhHe29vP9/iIY
        Lb1aACB10guksm0QOI/OGB3PeNyGR9HiakjV4CzVGU1AHvU5cdnmTi7jmH8E2Ggv76R97C
        9mOcAvgpGMooOz7fMVusUl9PYZ3BnpBph7/WuwCh7OD7Um+WRRWDcMAYQutW9AEGmhc0pZ
        SNX275wOJb8ZUQF0SZiafa5xptpHXPOdmc0khHqJUAJd7UyndInwJPLT2MxKuvU1e2Jq7s
        e0LXaaHlT/vIxV8UuOf3/fEMVQwNcLYfDbB/mMBtJp/F8ovIfFjhB0b0hibapA==
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id AA3BF1C0003;
        Fri, 16 Jun 2023 09:56:12 +0000 (UTC)
Date:   Fri, 16 Jun 2023 11:56:11 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Maxime Ripard <mripard@kernel.org>,
        dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 3/7] drm/panel: sitronix-st7789v: Specify the expected
 bus format
Message-ID: <20230616115611.77b8aff9@xps-13>
In-Reply-To: <20230610201246.GD1041001@ravnborg.org>
References: <20230609145951.853533-1-miquel.raynal@bootlin.com>
        <20230609145951.853533-4-miquel.raynal@bootlin.com>
        <20230610201246.GD1041001@ravnborg.org>
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

Hi Sam,

sam@ravnborg.org wrote on Sat, 10 Jun 2023 22:12:46 +0200:

> On Fri, Jun 09, 2023 at 04:59:47PM +0200, Miquel Raynal wrote:
> > The LCD controller supports RGB444, RGB565 and RGB888. The value that is
> > written in the COLMOD register indicates using RGB888, so let's clearly
> > specify the in-use bus format. =20
>=20
> Confused.
> MEDIA_BUS_FMT_RGB666_1X18 assumes 6 bits per color.
> But RGB888 is 8 bits per color.
>=20
> Something that I have forgotten, or is this inconsistent?

That is a typo indeed, I meant RBG666.

Thanks, Miqu=C3=A8l
