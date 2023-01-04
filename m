Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0348265DCC8
	for <lists+devicetree@lfdr.de>; Wed,  4 Jan 2023 20:33:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240083AbjADTdT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Jan 2023 14:33:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240077AbjADTdS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Jan 2023 14:33:18 -0500
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 920F41B9D5
        for <devicetree@vger.kernel.org>; Wed,  4 Jan 2023 11:33:15 -0800 (PST)
Received: by mail-lj1-x235.google.com with SMTP id s22so36537027ljp.5
        for <devicetree@vger.kernel.org>; Wed, 04 Jan 2023 11:33:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=F6N+OP+6yy03flX+mI06gXGKWmxb8vTgx5JtQZDesWc=;
        b=ywyJ1diL3UYldnanPgu/gbwLosUj6n9Xuv3577wYf9BSvcU2PDcsjh2ibb8sXd9Tie
         E8aPBCBkVzYCMbxpOU/YKCI9CmG2nYIvmQQ3kh6jz5mxzAmxYrml35vV8rCxjRVeFb1U
         fO4J6FyfrVi5S0U8084vsGWn4mFMng22spHnL0OCYGndX/sdTlO62l2U5oaud7K8q8bS
         EPYLdxoRLKrlnbA6SBQjod7CIIMlmj4hl/vLD8KCEOkMk73GZMehbfs6yKOw8IlliRIi
         3sFKYdwvw8iBK0q7aL4/8QhxNS5xd/ThFdxd2q0xaei41ggJMZ+qVKOtTb/3r27vexB4
         8gPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F6N+OP+6yy03flX+mI06gXGKWmxb8vTgx5JtQZDesWc=;
        b=VAZADxSbvGudTOroBAQ+khlxWXbLr2vFiEFN1+BBf1pyubZgDzqBwxJZJ2g+Yh00qp
         8N6UXCzAcrp7klzkpTRy++H6fkGTXHsOyuN/RCLWPYHIxrXFgI2IogOMEts1+l51Rfb0
         6pYja1j9JDNlCHXs6tkOCKczrdwLZf6FWCeM0e2gh2M6Aryv+Yr1ClqC5sEAJgd7cDPe
         YCe44feSOgsn/sYgAouVZ7fxMDaEW28w46VtAOyCEGY0R4bS/KaEr+dZEnYMjFgKHhMr
         VYg/zN5N9Ci35ITIpU6Lk+hAmowdJzeID5NaiJWz/+0ieyXhn100RTlz6S12kN9LxmjD
         e8tA==
X-Gm-Message-State: AFqh2kqi5gOG8s9k4J3Ms8w5PHY6JZftSt5G59qlP8GFu0JZiOOFcNAS
        GjrGLAUbP0njjA0URHnLPD/TS8NMNVzG3Y5wBCBE0tygAuZSng==
X-Google-Smtp-Source: AMrXdXsw/78tBcgISSlM45Fz8wx/0zC7FLlIbONYasugHZBibZQRhly4sSsbLzK+gYIUEjhvu2ylEmwzLDylydzpIy8=
X-Received: by 2002:a2e:b54c:0:b0:27f:e3e3:7f25 with SMTP id
 a12-20020a2eb54c000000b0027fe3e37f25mr655188ljn.103.1672860793967; Wed, 04
 Jan 2023 11:33:13 -0800 (PST)
MIME-Version: 1.0
References: <20230103170058.810597-1-benjamin.gaignard@collabora.com> <20230103170058.810597-8-benjamin.gaignard@collabora.com>
In-Reply-To: <20230103170058.810597-8-benjamin.gaignard@collabora.com>
From:   Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date:   Wed, 4 Jan 2023 16:33:02 -0300
Message-ID: <CAAEAJfBpGwa-ZDFFCep8rk4+dgLrYOFdfyrqBZP68C+jkN0qMQ@mail.gmail.com>
Subject: Re: [PATCH v2 07/13] media: verisilicon: Check AV1 bitstreams bit depth
To:     Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc:     p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
        daniel.almeida@collabora.com, nicolas.dufresne@collabora.co.uk,
        linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Benjamin,

Thanks for the patch.

On Tue, Jan 3, 2023 at 2:01 PM Benjamin Gaignard
<benjamin.gaignard@collabora.com> wrote:
>
> The driver supports 8 and 10 bits bitstreams, make sure to discard
> other cases.
>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  drivers/media/platform/verisilicon/hantro_drv.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
> index 8e93710dcfed..16539e89935c 100644
> --- a/drivers/media/platform/verisilicon/hantro_drv.c
> +++ b/drivers/media/platform/verisilicon/hantro_drv.c
> @@ -282,7 +282,13 @@ static int hantro_try_ctrl(struct v4l2_ctrl *ctrl)
>                 /* We only support profile 0 */
>                 if (dec_params->profile != 0)
>                         return -EINVAL;
> +       } else if (ctrl->id == V4L2_CID_STATELESS_AV1_SEQUENCE) {
> +               const struct v4l2_ctrl_av1_sequence *sequence = ctrl->p_new.p_av1_sequence;
> +
> +               if (sequence->bit_depth != 8 && sequence->bit_depth != 10)
> +                       return -EINVAL;
>         }
> +
>         return 0;
>  }
>
> @@ -333,7 +339,13 @@ static int hantro_av1_s_ctrl(struct v4l2_ctrl *ctrl)
>
>         switch (ctrl->id) {
>         case V4L2_CID_STATELESS_AV1_SEQUENCE:
> -               ctx->bit_depth = ctrl->p_new.p_av1_sequence->bit_depth;
> +               int bit_depth = ctrl->p_new.p_av1_sequence->bit_depth;
> +
> +               if (vb2_is_streaming(v4l2_m2m_get_src_vq(ctx->fh.m2m_ctx)))
> +                       if (ctx->bit_depth != bit_depth)
> +                               return -EINVAL;
> +

Please use the v4l2_ctrl_grab API. Can you send a separate series to address
this for the other codecs?

Thanks a lot!
Ezequiel

> +               ctx->bit_depth = bit_depth;
>                 break;
>         default:
>                 return -EINVAL;
> --
> 2.34.1
>
