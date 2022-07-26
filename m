Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 04FC9580EF8
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 10:28:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238436AbiGZI2v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 04:28:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232405AbiGZI2u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 04:28:50 -0400
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1118B30550
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 01:28:49 -0700 (PDT)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-31f41584236so26297647b3.5
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 01:28:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Mpa0JJFe/o1NTNRH559bW26zASUS//4D+MkenPj6ccY=;
        b=NPBwEfUBCABSz/L5Nbv6D0DQrO1qPm6dRPo/VTF8+3ZhxPPLspDa5r3XzhL91UUbgZ
         C6hqxWR6qkZsRA5tWTHaXxV6w7BwSskbOhGavwZJZxc366i2rULgNDyDS47jHBpPs88T
         juL91n6JeqJkwcVPRD2R/VAWhRT9R/w7URX1A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Mpa0JJFe/o1NTNRH559bW26zASUS//4D+MkenPj6ccY=;
        b=a+YJm5OzTtuTobYuvs7OOZiLwC6MWefkllDGosHl93JspCjmI5KZN70XyfSJQk3f3N
         df8h10L9dnNo4E8rzFLbpb24D7u720fVSSisrsMTVzzHz0wqcc7M99CZbIa5rA9bFX44
         YotSxyVxS3Hp4oYeuoEAfeZCx6MAPg8rxuTBqlMhhqVpiA/0eR264IJI4iqX12p3k1sk
         u4BbPzYvJNndHrvkwotxHkIhxUnEqqnvR14rT9bSzRGZm7/64c96r+hcgupl8RLkgkoh
         zO/SXjLusVdB0yXidoKrikHL71VqxykeGNqezLjQo3KPtWED2FkkgwaT82Z7ywtJuak6
         e7gA==
X-Gm-Message-State: AJIora+rc7RXBfE+qTnurmsU05QmCGygqkeKQ78G1C4DiqxkuuAgpsPx
        bIOi499o08VXEFJj0MIAnHXHJCwy72TskN4wquMlIQ==
X-Google-Smtp-Source: AGRyM1vbFoxeFP4mjwVafsVB5gCnLN7fmZeHslKq8kf0Vhi4/DmExu7sBa48+WYtAYdFfbxIYBqWMUp+WyJf2odrXfU=
X-Received: by 2002:a81:6c94:0:b0:31f:517e:c6ef with SMTP id
 h142-20020a816c94000000b0031f517ec6efmr276610ywc.165.1658824128277; Tue, 26
 Jul 2022 01:28:48 -0700 (PDT)
MIME-Version: 1.0
References: <20220726040155.17206-1-yunfei.dong@mediatek.com> <20220726040155.17206-3-yunfei.dong@mediatek.com>
In-Reply-To: <20220726040155.17206-3-yunfei.dong@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Tue, 26 Jul 2022 16:28:37 +0800
Message-ID: <CAGXv+5FdYKNqG6TQawWpiH29oSAPdZFAy1wHM=qkqDDSbs2CUw@mail.gmail.com>
Subject: Re: [PATCH 3/4] media: mediatek: vcodec: Add mt8188 decoder's chip name
To:     Yunfei Dong <yunfei.dong@mediatek.com>
Cc:     Nicolas Dufresne <nicolas@ndufresne.ca>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Tiffany Lin <tiffany.lin@mediatek.com>,
        Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        George Sun <george.sun@mediatek.com>,
        Xiaoyong Lu <xiaoyong.lu@mediatek.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Fritz Koenig <frkoenig@chromium.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        Irui Wang <irui.wang@mediatek.com>,
        Steve Cho <stevecho@chromium.org>, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 26, 2022 at 12:02 PM Yunfei Dong <yunfei.dong@mediatek.com> wrote:
>
> Getting mt8188's chip name according to decoder compatible name.
>
> Signed-off-by: Yunfei Dong <yunfei.dong@mediatek.com>

This should be squashed with the previous patch adding the compatible
to the driver.

> ---
>  drivers/media/platform/mediatek/vcodec/mtk_vcodec_dec.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/media/platform/mediatek/vcodec/mtk_vcodec_dec.c b/drivers/media/platform/mediatek/vcodec/mtk_vcodec_dec.c
> index 7d194a476713..641f533c417f 100644
> --- a/drivers/media/platform/mediatek/vcodec/mtk_vcodec_dec.c
> +++ b/drivers/media/platform/mediatek/vcodec/mtk_vcodec_dec.c
> @@ -227,6 +227,8 @@ static int mtk_vcodec_dec_get_chip_name(void *priv)
>                 return 8195;
>         else if (of_device_is_compatible(dev->of_node, "mediatek,mt8186-vcodec-dec"))
>                 return 8186;
> +       else if (of_device_is_compatible(dev->of_node, "mediatek,mt8188-vcodec-dec"))
> +               return 8188;
>         else
>                 return 8173;
>  }
> --
> 2.25.1
>
