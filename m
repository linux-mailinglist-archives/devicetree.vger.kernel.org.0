Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4DCE2716EF5
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 22:38:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229991AbjE3UiG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 16:38:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231330AbjE3UiG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 16:38:06 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0E6D193
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 13:37:39 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 702216336C
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 20:37:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2623C433A1
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 20:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685479058;
        bh=BmuRWUnnLUJ6wKqnziT7mvO4yByxbGFWDNPAdo7vvIQ=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=NIm9qoqq/JdGM4I+9hNxqCjIi4R3g5V9GPZKR59yYdCmt8RFBOQfdt+g7jDWo/Syw
         ueVdWDce3/O9mux9hsmPzcRRtHbkiVHCIar2WAaIhYrVdcbraYful3UbjE/EN6Ch75
         PpWIZ927IaigB3x67L1xALPY3yFhUdApdn3tmHOAGNsk5Y1nWAIA5ZoU18WOSMQ2kk
         KqPee6YDQxS8kKoe92iYoO6hbBL/tTZEo00qr89eyr5NNaTpqgkMlk/0EwlkmAVdwg
         rPiX4467KSdAjrnL4FGkkK8WhcFsA1d/DeBZxenRNU2IMKH9zRAhIRBULIu+/zMaH7
         ygf9X1wXa5tyQ==
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-1b04706c974so21142105ad.2
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 13:37:38 -0700 (PDT)
X-Gm-Message-State: AC+VfDwZ94Lr1fVi9LhLyz5BXGcaCyn81JvX8me1JSj3qUhMz5+dKv05
        0FphfSniwooAVe79suSQHwwQd5/vKn3VyyCoWOLqoQ==
X-Google-Smtp-Source: ACHHUZ7Uoc+NqQ7Tszpt2VVC0190x6eSQZupgLeOT3JinpbUmGlCFqZtMK0irKDZAgtcO7sBCrNe4fAXfwxc03SvL/k=
X-Received: by 2002:a17:902:c244:b0:1b0:26f0:4c72 with SMTP id
 4-20020a170902c24400b001b026f04c72mr3559911plg.28.1685479058385; Tue, 30 May
 2023 13:37:38 -0700 (PDT)
MIME-Version: 1.0
References: <20230530192805.648646-1-marex@denx.de> <20230530192805.648646-2-marex@denx.de>
In-Reply-To: <20230530192805.648646-2-marex@denx.de>
From:   Robert Foss <rfoss@kernel.org>
Date:   Tue, 30 May 2023 22:37:27 +0200
X-Gmail-Original-Message-ID: <CAN6tsi4CYkq2OmGDQnQNXM5XZwXvrAzE0dLRrMTBAN-prAG7ig@mail.gmail.com>
Message-ID: <CAN6tsi4CYkq2OmGDQnQNXM5XZwXvrAzE0dLRrMTBAN-prAG7ig@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/bridge: tc358762: Add reset GPIO support
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-7.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 30, 2023 at 9:28=E2=80=AFPM Marek Vasut <marex@denx.de> wrote:
>
> Add reset GPIO support. The reset GPIO is cleared after supply regulator
> was enabled, and set before supply regulator is disabled.
>
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
> Cc: Jonas Karlman <jonas@kwiboo.se>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> Cc: Marek Vasut <marex@denx.de>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Robert Foss <rfoss@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> ---
>  drivers/gpu/drm/bridge/tc358762.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>
> diff --git a/drivers/gpu/drm/bridge/tc358762.c b/drivers/gpu/drm/bridge/t=
c358762.c
> index 77f7f7f547570..5641395fd310e 100644
> --- a/drivers/gpu/drm/bridge/tc358762.c
> +++ b/drivers/gpu/drm/bridge/tc358762.c
> @@ -11,6 +11,7 @@
>   */
>
>  #include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
>  #include <linux/mod_devicetable.h>
>  #include <linux/module.h>
>  #include <linux/of_graph.h>
> @@ -63,6 +64,7 @@ struct tc358762 {
>         struct drm_bridge bridge;
>         struct regulator *regulator;
>         struct drm_bridge *panel_bridge;
> +       struct gpio_desc *reset_gpio;
>         bool pre_enabled;
>         int error;
>  };
> @@ -138,6 +140,9 @@ static void tc358762_post_disable(struct drm_bridge *=
bridge)
>
>         ctx->pre_enabled =3D false;
>
> +       if (ctx->reset_gpio)
> +               gpiod_set_value_cansleep(ctx->reset_gpio, 0);
> +
>         ret =3D regulator_disable(ctx->regulator);
>         if (ret < 0)
>                 dev_err(ctx->dev, "error disabling regulators (%d)\n", re=
t);
> @@ -152,6 +157,11 @@ static void tc358762_pre_enable(struct drm_bridge *b=
ridge)
>         if (ret < 0)
>                 dev_err(ctx->dev, "error enabling regulators (%d)\n", ret=
);
>
> +       if (ctx->reset_gpio) {
> +               gpiod_set_value_cansleep(ctx->reset_gpio, 1);
> +               usleep_range(5000, 10000);
> +       }
> +
>         ret =3D tc358762_init(ctx);
>         if (ret < 0)
>                 dev_err(ctx->dev, "error initializing bridge (%d)\n", ret=
);
> @@ -185,6 +195,11 @@ static int tc358762_parse_dt(struct tc358762 *ctx)
>
>         ctx->panel_bridge =3D panel_bridge;
>
> +       /* Reset GPIO is optional */
> +       ctx->reset_gpio =3D devm_gpiod_get_optional(dev, "reset", GPIOD_O=
UT_LOW);
> +       if (IS_ERR(ctx->reset_gpio))
> +               return PTR_ERR(ctx->reset_gpio);
> +
>         return 0;
>  }
>
> --
> 2.39.2
>

This all looks good, snoozing it for a few days before applying.

Reviewed-by: Robert Foss <rfoss@kernel.org>
