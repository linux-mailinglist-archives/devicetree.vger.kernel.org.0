Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5361A72BB12
	for <lists+devicetree@lfdr.de>; Mon, 12 Jun 2023 10:45:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229456AbjFLIov (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jun 2023 04:44:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232183AbjFLIol (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jun 2023 04:44:41 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9662810B
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 01:44:40 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 29A4462185
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 08:44:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10537C433EF;
        Mon, 12 Jun 2023 08:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1686559479;
        bh=PvW69xSn/ZnscQwnR3pGAydQ1x3Pq+L3epgJsaYuygU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=X2U0TNR2frupVx4XLj+Be6LKtikr8mYRTmadd5OPQSEkVshLwIQJ09Va7UsWOTHAz
         VWkfsFGq17SGNmVUEiRlh8wDOP/VbICI7gGF03dkQJGVWJsqlThtb96cUbXGzuTixJ
         SlpZmkT4kPcgMsHhTdU8i3CEG1QcZtQzDOt6A/JExh9q21O/xKQlk+W0HOKVY+QEGF
         NjwbRjwczCDkiopO59wJjmmSDzke3NjXZBqFMD26hDwJ1NI4v9uz//wDzgQ1SWYKSv
         kehLQ530mbO2RC5cWeyszeLXkrkLEM3oDVXGskEZZndpFac5WtiJKyVwtscjFiToIc
         3GwGR/zrk0jnw==
Date:   Mon, 12 Jun 2023 10:44:36 +0200
From:   Maxime Ripard <mripard@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 3/7] drm/panel: sitronix-st7789v: Specify the expected
 bus format
Message-ID: <5fo6iwwx3ljzp6p32vh35lrewpqdpenvpartadsf5dim3ewdm3@wcfnue5kizfj>
References: <20230609145951.853533-1-miquel.raynal@bootlin.com>
 <20230609145951.853533-4-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230609145951.853533-4-miquel.raynal@bootlin.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Jun 09, 2023 at 04:59:47PM +0200, Miquel Raynal wrote:
> The LCD controller supports RGB444, RGB565 and RGB888. The value that is
> written in the COLMOD register indicates using RGB888, so let's clearly
> specify the in-use bus format.
>=20
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  drivers/gpu/drm/panel/panel-sitronix-st7789v.c | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c b/drivers/gpu=
/drm/panel/panel-sitronix-st7789v.c
> index e9ca7ebb458a..0abb45bea18d 100644
> --- a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
> +++ b/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
> @@ -6,6 +6,7 @@
>  #include <linux/delay.h>
>  #include <linux/gpio/consumer.h>
>  #include <linux/module.h>
> +#include <linux/media-bus-format.h>
>  #include <linux/regulator/consumer.h>
>  #include <linux/spi/spi.h>
> =20
> @@ -170,6 +171,7 @@ static int st7789v_get_modes(struct drm_panel *panel,
>  			     struct drm_connector *connector)
>  {
>  	struct drm_display_mode *mode;
> +	u32 bus_format =3D MEDIA_BUS_FMT_RGB666_1X18;

I'm not sure it should be set in stone in the driver.

This is a property of the panel/controller, but also one of the RGB
controller upstream that will and how the board has been wired.

It's not unusual for boards with a limited number of GPIOs to take a
RGB888 panel and connect only as a RGB565 with the lowest bits to the
ground for example.

So I think this should come from the device tree, ideally from the media
graph endpoint.

Maxime
