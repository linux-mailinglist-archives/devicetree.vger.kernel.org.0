Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADDC764DA31
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 12:23:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229848AbiLOLXk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 06:23:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbiLOLXi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 06:23:38 -0500
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FC5325EBD
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 03:23:37 -0800 (PST)
Received: by mail-ot1-x32c.google.com with SMTP id l8-20020a056830054800b006705fd35eceso3380523otb.12
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 03:23:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/7JkFj5wLXXdl9G2ZA60qkoqbyje3qEI4jjTEGmM3vM=;
        b=CcL9N07GTjPa2REqAWIJtlX9R8sbNPxFUb4y+F6SwALx5iNPAG9IeXBD9mG5cFkCQF
         opv16LLuek0HOEcCWRzJEyIpQYIVERKmrVaZQPfKEfS0EXrowm4MpALjz1/Kr7fWJ7OG
         yvaoYl6BCI5nhZe/LSuIc5SVB2A9wSURh8oEPZKgVUJmuGnbznQ5zTa0Cbj2/zRP7aaf
         SJlfYFBb6jlVQhuCCPOYk7VuIwNLG1HIgEApSs0Vymf3F7IxM/UKgjiqd/M2o0DuSh/s
         pngRvKiPrBohN18p/BYPfUBg16kFbAQ7pN8aDfOpUhYRBK8Vzyxt+aZroW4sxFs77l91
         E8pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/7JkFj5wLXXdl9G2ZA60qkoqbyje3qEI4jjTEGmM3vM=;
        b=zmZHJQ7ycqOcgv7SYmT2GdqMrMTLBUEwW7nCN7TAVejQsd6EhN9PAHg0RRr9BsD9U4
         hcvoEKDGx77wQwo5fZ7voA1BPL2X9Qe5iQqLXKhObBPbsZdqUfMHT/RSPpgesU+O9Wi8
         E+CC1ZSbg5ymRawSFtUgqGHCWOWl/B9WnBUuvcFnhym82CQNvqrsThm1zflT2SqudGkE
         MUsP5ZY2R0t5JId43gPlXGe1DkUTLhhatJDoZY8gZqKCI4dDPZiw1aft1uXOMU+jkE07
         nrPxzYuyy0Q5klQnKiFSCNlo09eNa4i1voubBPHj3UpIEwBDlQiTpZCmYlhqonEvEJyO
         kjlA==
X-Gm-Message-State: ANoB5pl1lwqr8hPX/iWJj2zm/aaMe26k2nEk43nWz1H59hMVdarXTKTD
        4PaPwfaHtRhoUgxeFAWcNn8PdPtiIGl0Jh9hfwxmew==
X-Google-Smtp-Source: AA0mqf7pnU7OKXNDp+MRPy8cv53j2kDbmNqbCVlsGOk8psGQmpYGWU8smfmMwi4ZPQssKz+JFhamR8QDS41o5cEc0KA=
X-Received: by 2002:a05:6830:3697:b0:66b:e4f2:7f2a with SMTP id
 bk23-20020a056830369700b0066be4f27f2amr40770639otb.317.1671103416765; Thu, 15
 Dec 2022 03:23:36 -0800 (PST)
MIME-Version: 1.0
References: <20221214125821.12489-1-paul@crapouillou.net> <20221214125821.12489-9-paul@crapouillou.net>
In-Reply-To: <20221214125821.12489-9-paul@crapouillou.net>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Thu, 15 Dec 2022 12:23:25 +0100
Message-ID: <CAG3jFyuHL7oZMMj-2N5B9A0gby5T3wYDAPvLGdApFgXdzWi_qQ@mail.gmail.com>
Subject: Re: [PATCH 08/10] drm: bridge: it66121: Set DDC preamble only once
 before reading EDID
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
> The DDC preamble and target address only need to be set once before
> reading the EDID, even if multiple segments have to be read.
>
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> ---
>  drivers/gpu/drm/bridge/ite-it66121.c | 28 ++++++++++++++++------------
>  1 file changed, 16 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/ite-it66121.c b/drivers/gpu/drm/bridge/ite-it66121.c
> index 5335d4abd7c5..7972003d4776 100644
> --- a/drivers/gpu/drm/bridge/ite-it66121.c
> +++ b/drivers/gpu/drm/bridge/ite-it66121.c
> @@ -506,9 +506,6 @@ static int it66121_get_edid_block(void *context, u8 *buf,
>         while (remain > 0) {
>                 cnt = (remain > IT66121_EDID_FIFO_SIZE) ?
>                                 IT66121_EDID_FIFO_SIZE : remain;
> -               ret = it66121_preamble_ddc(ctx);
> -               if (ret)
> -                       return ret;
>
>                 ret = regmap_write(ctx->regmap, IT66121_DDC_COMMAND_REG,
>                                    IT66121_DDC_COMMAND_FIFO_CLR);
> @@ -519,15 +516,6 @@ static int it66121_get_edid_block(void *context, u8 *buf,
>                 if (ret)
>                         return ret;
>
> -               ret = it66121_preamble_ddc(ctx);
> -               if (ret)
> -                       return ret;
> -
> -               ret = regmap_write(ctx->regmap, IT66121_DDC_HEADER_REG,
> -                                  IT66121_DDC_HEADER_EDID);
> -               if (ret)
> -                       return ret;
> -
>                 ret = regmap_write(ctx->regmap, IT66121_DDC_OFFSET_REG, offset);
>                 if (ret)
>                         return ret;
> @@ -842,9 +830,25 @@ static struct edid *it66121_bridge_get_edid(struct drm_bridge *bridge,
>  {
>         struct it66121_ctx *ctx = container_of(bridge, struct it66121_ctx, bridge);
>         struct edid *edid;
> +       int ret;
>
>         mutex_lock(&ctx->lock);
> +       ret = it66121_preamble_ddc(ctx);
> +       if (ret) {
> +               edid = ERR_PTR(ret);
> +               goto out_unlock;
> +       }
> +
> +       ret = regmap_write(ctx->regmap, IT66121_DDC_HEADER_REG,
> +                          IT66121_DDC_HEADER_EDID);
> +       if (ret) {
> +               edid = ERR_PTR(ret);
> +               goto out_unlock;
> +       }
> +
>         edid = drm_do_get_edid(connector, it66121_get_edid_block, ctx);
> +
> +out_unlock:
>         mutex_unlock(&ctx->lock);
>
>         return edid;
> --
> 2.35.1
>

Reviewed-by: Robert Foss <robert.foss@linaro.org>
