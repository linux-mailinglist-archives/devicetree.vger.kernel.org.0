Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7386C34E4B4
	for <lists+devicetree@lfdr.de>; Tue, 30 Mar 2021 11:48:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231653AbhC3JsD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Mar 2021 05:48:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231194AbhC3Jre (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Mar 2021 05:47:34 -0400
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE164C061762
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 02:47:34 -0700 (PDT)
Received: by mail-pg1-x530.google.com with SMTP id t140so3991056pgb.13
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 02:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CGCwqtBh5e8u3epq9hm9uWTKU/mvxMc5LzboEqjR5ac=;
        b=yoVqqgGgj7ynFu+acwLsEEeSTxp3/IH318UbzA+RDe0R5OFjOJBmvLP626r5S2TJxB
         Y0tpOxk8cFsRqmwupoic69xUn/pcuaa8i4u6wd+vlwRXau3v2JduEeZTSEzuMjQ+nqbx
         WoJxiIq+Hh83TdT429V+fLJnpJlR7LjP1omYMRXCiW7P80dIwSsWZ7PTGEKL7ZxDId6O
         mGicXwrLXh0ZWUdFbsAqUjTBmjFbTsYcFSINy0ZV9Kahqlm1qpkYM3cLFSw0mmcvLZ4J
         YcJm3fWf6mFstXdjw1BgC/LnR/UWa6lw6SnahGYRa7zzMBefu+ETf+wpW1xMaEyEMsGS
         8/VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CGCwqtBh5e8u3epq9hm9uWTKU/mvxMc5LzboEqjR5ac=;
        b=F8bxIj4NSsUdZkYUai9NvlfbHrK4wxnRljkyHX6pCVAk5yxu1uqInwtOKmZRZnCw9o
         fQqVVm14tKxylnELRTi9jKdizsE3F9M/NLh7NUagymbWznO6AubcO+tRkDTE8997qn9C
         8B7GjXgZzbGRZ1k9t5z9300OzvLj511U29NWirxokyI7Trs8oZL4CGdp09+yiz0QS+DF
         S4MOyYXcMTuYJLH04USj3lQIDVMkWD29FGycOasC6HyWknSHlwYGw2bGe8qmKNKTNpUX
         5DuUN2SF2NUXY6H6o0qEvnP+dcnVC+dNncg1YMubSR4yKWoWJSAT9nnmTaC5/jKCyk/n
         U7zg==
X-Gm-Message-State: AOAM530NWmrwSUSH2grnYIffTPMiiQMmB07y336OUGk8AGIQgFXgI6wJ
        tBpIm+c/hKLTJh+vFTENAXU8EN5dDN3UZshcFb58Ug==
X-Google-Smtp-Source: ABdhPJxKR+SUTvxcY30ps7I6bqWV/0GIM4bydaCDZ5OATZ4vJbib2heJudE4XVfjMcSHYfSbjImq0lOEfhuZJiOgvA0=
X-Received: by 2002:a63:7708:: with SMTP id s8mr21456979pgc.265.1617097654308;
 Tue, 30 Mar 2021 02:47:34 -0700 (PDT)
MIME-Version: 1.0
References: <1615952569-4711-1-git-send-email-victor.liu@nxp.com> <1615952569-4711-15-git-send-email-victor.liu@nxp.com>
In-Reply-To: <1615952569-4711-15-git-send-email-victor.liu@nxp.com>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Tue, 30 Mar 2021 11:47:23 +0200
Message-ID: <CAG3jFys3sgrL_q-gifNrLhbGzKRbjkvVTHckYNTTBET5oWJtKw@mail.gmail.com>
Subject: Re: [PATCH v6 14/14] MAINTAINERS: add maintainer for DRM bridge
 drivers for i.MX SoCs
To:     Liu Ying <victor.liu@nxp.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        linux-media <linux-media@vger.kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>, shawnguo@kernel.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de,
        Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>, kishon@ti.com,
        Vinod Koul <vkoul@kernel.org>, lee.jones@linaro.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hey Liu,

Reviewed-by: Robert Foss <robert.foss@linaro.org>

On Wed, 17 Mar 2021 at 04:57, Liu Ying <victor.liu@nxp.com> wrote:
>
> Add myself as the maintainer of DRM bridge drivers for i.MX SoCs.
>
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v5->v6:
> * No change.
>
> v4->v5:
> * No change.
>
> v3->v4:
> * No change.
>
> v2->v3:
> * No change.
>
> v1->v2:
> * No change.
>
>  MAINTAINERS | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 4b705ba..488e0ef 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -5939,6 +5939,16 @@ F:       Documentation/devicetree/bindings/display/imx/
>  F:     drivers/gpu/drm/imx/
>  F:     drivers/gpu/ipu-v3/
>
> +DRM DRIVERS FOR FREESCALE IMX BRIDGE
> +M:     Liu Ying <victor.liu@nxp.com>
> +L:     dri-devel@lists.freedesktop.org
> +S:     Maintained
> +F:     Documentation/devicetree/bindings/display/bridge/fsl,imx8qxp-ldb.yaml
> +F:     Documentation/devicetree/bindings/display/bridge/fsl,imx8qxp-pixel-combiner.yaml
> +F:     Documentation/devicetree/bindings/display/bridge/fsl,imx8qxp-pixel-link.yaml
> +F:     Documentation/devicetree/bindings/display/bridge/fsl,imx8qxp-pxl2dpi.yaml
> +F:     drivers/gpu/drm/bridge/imx/
> +
>  DRM DRIVERS FOR GMA500 (Poulsbo, Moorestown and derivative chipsets)
>  M:     Patrik Jakobsson <patrik.r.jakobsson@gmail.com>
>  L:     dri-devel@lists.freedesktop.org
> --
> 2.7.4
>
