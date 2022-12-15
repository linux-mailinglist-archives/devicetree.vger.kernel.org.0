Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E726664DA2B
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 12:20:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229448AbiLOLUp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 06:20:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229661AbiLOLUk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 06:20:40 -0500
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49604C19
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 03:20:39 -0800 (PST)
Received: by mail-oi1-x233.google.com with SMTP id l127so4999387oia.8
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 03:20:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cmk0PdpBMK0sped7JhGYOwBdXV8EVeBAiY0Lb6X/myc=;
        b=Wka0wIlExft4VpGS8jLFeSOPzzT8wmggrLJis4x7Mzie5Z9AOositkhMfK3TP+uYp5
         GoDJf5iXgh5+zRRcH/yoaJIKf324F84RXMUJdNtpEnsHw8N2n5+/JD8VUy71QlKUxqox
         RCJe4e99/CdKLeDsymFfMT+sIqdgtB0pbc48X4x+/rob6dpe4zYBN2NH0814BQTTf4/r
         gUOPPDYNFRqNX3qzI2rYHlwnUin2LYQQfQbMgjL/R8fUzxAiirfK/qNbOe2DJNVNKnAX
         9NK6rA9Zv5lWo2VBZd1Q73gRRiOZsjRRXSU4HCpTIniKnP9tJnTMcYjingezIYH2wRa0
         d4MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cmk0PdpBMK0sped7JhGYOwBdXV8EVeBAiY0Lb6X/myc=;
        b=5BrfFfa2LYTaIodWSNPDwjEQUn9btY17xqgdVEK2EZfZelO1qBKEjdIjkY7IEfPG+G
         0r4TDYCtxpgOyJPa4g9ng1OPxmjB7gjyJIGKrZC+OjZrThXDh5bEEh3QNK8N33028auJ
         taZS2xntYAnLoDRgMmszkb0TiQkB9ERiV55gPT/Ap314S33URMdjPjiR8HSnX7U54uTq
         B6HRW347b57LQyR+L6LKQFhJGWU0LgYW7FxYyhubNcVstzSpn8luw0II0jm5CG2kNHsN
         DyarlzWZy+9OEz5Ovmbna9mTtYSxyGY6TR9NnX16luV5nnwqpynBh9Gf74lG8YcYhpIU
         PWbA==
X-Gm-Message-State: ANoB5pmc5bzVxhixi70I4DmCWT/+83H0jbhfQi6RFOYW8EVzRCdYGWp6
        eBkdfzldBDY8tr0Wx8ufR0Xcpd7s4LiqOK0fWsPf6w==
X-Google-Smtp-Source: AA0mqf6ul9+QZU4hm6yqMhWx9ryWax/rv5tjNs1P8UrwxuqP7LLLD/URmkKdihtN7/JQhAlX2g6zMdxTJ2U46P3YUvo=
X-Received: by 2002:aca:1c07:0:b0:359:ef86:2f4f with SMTP id
 c7-20020aca1c07000000b00359ef862f4fmr308690oic.14.1671103238656; Thu, 15 Dec
 2022 03:20:38 -0800 (PST)
MIME-Version: 1.0
References: <20221214125821.12489-1-paul@crapouillou.net> <20221214125821.12489-8-paul@crapouillou.net>
In-Reply-To: <20221214125821.12489-8-paul@crapouillou.net>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Thu, 15 Dec 2022 12:20:27 +0100
Message-ID: <CAG3jFytqa7h2kYJAz4meYvCfVK7BJp6KXZvvFY+bSNCuNGvOoA@mail.gmail.com>
Subject: Re: [PATCH 07/10] drm: bridge: it66121: Don't clear DDC FIFO twice
To:     Paul Cercueil <paul@crapouillou.net>
Cc:     Phong LE <ple@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        list@opendingux.net, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 14 Dec 2022 at 13:59, Paul Cercueil <paul@crapouillou.net> wrote:
>
> The DDC FIFO was cleared before the loop in it66121_get_edid_block(),
> and at the beginning of each iteration; which means that it did not have
> to be cleared before the loop.
>
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> ---
>  drivers/gpu/drm/bridge/ite-it66121.c | 16 ----------------
>  1 file changed, 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/ite-it66121.c b/drivers/gpu/drm/bridge/ite-it66121.c
> index 06fa59ae5ffc..5335d4abd7c5 100644
> --- a/drivers/gpu/drm/bridge/ite-it66121.c
> +++ b/drivers/gpu/drm/bridge/ite-it66121.c
> @@ -456,18 +456,6 @@ static inline int it66121_wait_ddc_ready(struct it66121_ctx *ctx)
>         return 0;
>  }
>
> -static int it66121_clear_ddc_fifo(struct it66121_ctx *ctx)
> -{
> -       int ret;
> -
> -       ret = it66121_preamble_ddc(ctx);
> -       if (ret)
> -               return ret;
> -
> -       return regmap_write(ctx->regmap, IT66121_DDC_COMMAND_REG,
> -                           IT66121_DDC_COMMAND_FIFO_CLR);
> -}
> -
>  static int it66121_abort_ddc_ops(struct it66121_ctx *ctx)
>  {
>         int ret;
> @@ -515,10 +503,6 @@ static int it66121_get_edid_block(void *context, u8 *buf,
>         offset = (block % 2) * len;
>         block = block / 2;
>
> -       ret = it66121_clear_ddc_fifo(ctx);
> -       if (ret)
> -               return ret;
> -
>         while (remain > 0) {
>                 cnt = (remain > IT66121_EDID_FIFO_SIZE) ?
>                                 IT66121_EDID_FIFO_SIZE : remain;
> --
> 2.35.1
>

Reviewed-by: Robert Foss <robert.foss@linaro.org>
