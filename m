Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E83B6E8B7F
	for <lists+devicetree@lfdr.de>; Thu, 20 Apr 2023 09:35:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229749AbjDTHfg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Apr 2023 03:35:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234115AbjDTHff (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Apr 2023 03:35:35 -0400
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60D2335AF
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 00:35:34 -0700 (PDT)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-54fbb713301so28750487b3.11
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 00:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681976133; x=1684568133;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oRrgwJWD+8vJRxL9WL2rW+4K8XNxrX77Zqnik++vJco=;
        b=V9ZZeQCguzR5s2+a6zt5ViV/VcZ+MawMWiQ9nWrHrmXXlj9v/UaQS/O6PJRaT1tsOf
         h5tuQEjKStlQgMKhkXFOOcFmS8B21iMRc/pb0uRoREw//QmWb6GXKizIyZkwfuZuGyvc
         nRnyrpjDyZwNDguS9iq6WQnUktSEpOTpCGJrLDrolPM6fgKork4xnuTa9B2uFi9C0zcw
         SB6x5/FLx4hgdeIH4iav6r2eq1lLbS9I+A0sikp4EO7/1dkNPVS4XMM5Q+cbDY+g+lEF
         vG4BJH/hcBbMb1ApWBnTaaxzurUWTCqxIik+LXS0lzoFMzLweYAM3YZjRvawKEuA4FsE
         rRsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681976133; x=1684568133;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oRrgwJWD+8vJRxL9WL2rW+4K8XNxrX77Zqnik++vJco=;
        b=BmBGlypD5peTCtbpWa/M1p1bjsGg8LtHP7kq3o8X7Fhfi1TEngd2lJNOqP/DTTlTEa
         7ijwFaauT7iiHhBXbgR7Bjv7gPBVDbbjiZpJL4pxMFU33et89ylpENLRchnKrbjgHikt
         uJFERQTYqfNociIUn69rw5fvS2DuElR4R7b+CqCLCyOrl6r7SIc6+hMy93SG0ODwnn6/
         rZtXJeRxg0LbdUKQQmb7S7CzkqXL4/cFVv9Pnh6n7hk3sLqe6eJxrni934rnuGCFoXS3
         3t4F8m0FPfKnaHEGUKvjtB6fhQlWYhvsnBHWficOzVA8d8cZYy1TkVtfA7iPXt0RLNHf
         xWiQ==
X-Gm-Message-State: AAQBX9efac9i/QzzVpDzxZmY7wQOndnHSKim+C0ZxhybJW6YO8tFu34K
        6J1kiuUBN9tp2j3/CA+DEJb8Jak5Q/QEK/ltzbvyVA==
X-Google-Smtp-Source: AKy350YaQVz1wjGKUyNZHlXqYFpw2kdjS+Sgqe2y5mQGrXyThLkKM3iPTeHdsD8UdaeJzMrBxzAyirCqaJIDymtnh3A=
X-Received: by 2002:a81:61c4:0:b0:555:dc97:8e76 with SMTP id
 v187-20020a8161c4000000b00555dc978e76mr172577ywb.44.1681976133614; Thu, 20
 Apr 2023 00:35:33 -0700 (PDT)
MIME-Version: 1.0
References: <20230416131632.31673-1-aweber.kernel@gmail.com> <20230416131632.31673-3-aweber.kernel@gmail.com>
In-Reply-To: <20230416131632.31673-3-aweber.kernel@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 20 Apr 2023 09:35:22 +0200
Message-ID: <CACRpkdaTmHASz25uzDoeZBG2=e7XRLK67DENfAtCbaFp+AYnYA@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] drm/panel: Add Samsung S6D7AA0 panel controller driver
To:     Artur Weber <aweber.kernel@gmail.com>
Cc:     thierry.reding@gmail.com, sam@ravnborg.org, airlied@gmail.com,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Artur,

thanks for your patch!

On Sun, Apr 16, 2023 at 3:16=E2=80=AFPM Artur Weber <aweber.kernel@gmail.co=
m> wrote:

> Initial driver for S6D7AA0-controlled panels, currently only for the
> LSL080AL02 panel used in the Samsung Galaxy Tab 3 8.0 family of tablets.
>
> It should be possible to extend this driver to work with other panels
> using this IC.
>
> Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
> ---
> Changed in v2:
>  - Removed unused panel_name property from desc struct

Overall this driver looks very good. I could merge it once the DT bindings
are ACKed by the DT maintainers and some minor stuff fixed.

Some comments below:

> +/* Manufacturer command set */
> +#define CMD_BL_CTL             0xc3
> +#define CMD_OTP_RELOAD         0xd0
> +#define CMD_PASSWD1            0xf0
> +#define CMD_PASSWD2            0xf1
> +#define CMD_PASSWD3            0xfc

Some drivers prefix these commands with "MCS" such as
MCS_BL_CTL.

MCS =3D Manufacturer Command Set (I think)

Some just name the identifers after the panel such as
s6d27a1 which has S6D27A1_RESCTL etc.

CMD seems a bit general to me and may be mistaken for
the actual DCS commands.

> +struct s6d7aa0 {
> +       struct drm_panel panel;
> +       struct mipi_dsi_device *dsi;
> +       struct gpio_desc *reset_gpio;
> +       struct regulator *enable_supply;
> +       const struct s6d7aa0_panel_desc *desc;
> +       bool prepared;

Skip this state variable, the core keeps track of whether the
panel is enabled or not.

> +static void s6d7aa0_reset(struct s6d7aa0 *ctx)
> +{
> +       gpiod_set_value_cansleep(ctx->reset_gpio, 0);
> +       msleep(50);

This first de-assertion is unnecessary isn't it?

The reset line will just be asserted longer if it is already asserted.

> +       gpiod_set_value_cansleep(ctx->reset_gpio, 1);
> +       msleep(50);
> +       gpiod_set_value_cansleep(ctx->reset_gpio, 0);
> +       msleep(50);
> +}

(...)

> +static int s6d7aa0_on(struct s6d7aa0 *ctx)
> +{
> +       struct mipi_dsi_device *dsi =3D ctx->dsi;
> +       struct device *dev =3D &dsi->dev;
> +       int ret;
> +
> +       dsi->mode_flags |=3D MIPI_DSI_MODE_LPM;

(...)

> +static int s6d7aa0_off(struct s6d7aa0 *ctx)
> +{
> +       struct mipi_dsi_device *dsi =3D ctx->dsi;
> +       struct device *dev =3D &dsi->dev;
> +       int ret;
> +
> +       dsi->mode_flags &=3D ~MIPI_DSI_MODE_LPM;

I haven't seen this mode flag MIPI_DSI_MODE_LPM set and
masked in other DSI panel drivers! Is this something we should
fix everywhere then? Or even something the core should be
doing?

Yours,
Linus Walleij
