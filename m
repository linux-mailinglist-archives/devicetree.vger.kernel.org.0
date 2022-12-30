Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C808A65961E
	for <lists+devicetree@lfdr.de>; Fri, 30 Dec 2022 09:13:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234455AbiL3IM6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Dec 2022 03:12:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229663AbiL3IM5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Dec 2022 03:12:57 -0500
Received: from mail-vs1-xe31.google.com (mail-vs1-xe31.google.com [IPv6:2607:f8b0:4864:20::e31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41D33186AD
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 00:12:56 -0800 (PST)
Received: by mail-vs1-xe31.google.com with SMTP id a66so20628210vsa.6
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 00:12:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ovjF9LP8AGSgXaaf5365MzNw6zGtX3G+dhQI2d2MZj0=;
        b=aMTf6useIPW5ahkjqv6bsmW6ZzSOKFmJYGo1CjnRcdKkeryXRbZbItOjrvSg14iDos
         9TEuP+z48lFXwYWYeXsvOUAl4v5p8GORFfq/vefBEXkVLm8yssJ2zXlS6SnDnXUFX+Re
         oU77MB/+WyaZj7GOn7rFf7dg0x0Mu7uOV/+QY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ovjF9LP8AGSgXaaf5365MzNw6zGtX3G+dhQI2d2MZj0=;
        b=ASPsxSmjyQYWS0T7RO6FyYrxPa1SQInbzZiHJqMzvEd9nHdW/gdaRYvcm555PPMUW5
         b5sUyUJZ4dsyyISajKPJC1RiWy4CN1tuSG8wUgcyB9QFrmbMm1ElC8l+YdA0o0EkkTdY
         bop6G7ZeliAn+tWgTJOnuyBgUtBvTcCzKG6WkyMFJxjK+gWKX+P/y4FywV4//aZAkcBq
         u4LBvkbSzSHPZi/PGG6G6rcMtA87JUXaF8iO5I3yDeVlWM9PvO6oGhIbMC3+QOBZtnl5
         r2VDq/O3xGHRes7vaW9rWka+iMaypjm64MEaK0umsyOH/R1byh3buUVJxsUA8zyaX+Fz
         JItg==
X-Gm-Message-State: AFqh2krmjsfeS1WFV8KIw3lxw7ssEKHnr7PBeULJb4Wd5ejCD4oieXtk
        3XaqyFhYOfy4YvDR2cRFWylLghOhNoFhLEin7qKw4Q==
X-Google-Smtp-Source: AMrXdXvj4BRr4R5dsv0zqB2v+B0EHWVqgAJmDHpFhhUkVRCeouysE+BnS2J/faKZK+rkLbAqbDs51urSHbAva+OZeOQ=
X-Received: by 2002:a05:6102:3d9f:b0:3c4:4918:80c with SMTP id
 h31-20020a0561023d9f00b003c44918080cmr2676056vsv.9.1672387975420; Fri, 30 Dec
 2022 00:12:55 -0800 (PST)
MIME-Version: 1.0
References: <20221223094259.87373-19-angelogioacchino.delregno@collabora.com> <20221229082103.21064-1-miles.chen@mediatek.com>
In-Reply-To: <20221229082103.21064-1-miles.chen@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 30 Dec 2022 16:12:44 +0800
Message-ID: <CAGXv+5Eq=VDfM35u0bxAS_-Dxv9yUpNAFqar_nCyC=5tXbtMFw@mail.gmail.com>
Subject: Re: [PATCH v2 18/23] clk: mediatek: clk-mtk: Register MFG notifier in mtk_clk_simple_probe()
To:     Miles Chen <miles.chen@mediatek.com>
Cc:     angelogioacchino.delregno@collabora.com,
        chun-jie.chen@mediatek.com, daniel@makrotopia.org,
        devicetree@vger.kernel.org, fparent@baylibre.com,
        ikjn@chromium.org, johnson.wang@mediatek.com,
        jose.exposito89@gmail.com, kernel@collabora.com,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        matthias.bgg@gmail.com, msp@baylibre.com, mturquette@baylibre.com,
        nfraprado@collabora.com, pablo.sun@mediatek.com,
        rex-bc.chen@mediatek.com, robh+dt@kernel.org, ryder.lee@kernel.org,
        sam.shih@mediatek.com, sboyd@kernel.org, weiyi.lu@mediatek.com,
        y.oudjana@protonmail.com, yangyingliang@huawei.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 29, 2022 at 4:21 PM Miles Chen <miles.chen@mediatek.com> wrote:
>
> >In preparation for commonizing topckgen probe on various MediaTek SoCs
> >clock drivers, add the ability to register the MFG MUX notifier in
> >mtk_clk_simple_probe() by passing a custom notifier register function
> >pointer, as this function will be slightly different across different
> >SoCs.
> >
> >Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> >---
> > drivers/clk/mediatek/clk-mtk.c | 8 ++++++++
> > drivers/clk/mediatek/clk-mtk.h | 3 +++
> > 2 files changed, 11 insertions(+)
> >
> >diff --git a/drivers/clk/mediatek/clk-mtk.c b/drivers/clk/mediatek/clk-mtk.c
> >index b0a6225cd7b2..df6281492fb6 100644
> >--- a/drivers/clk/mediatek/clk-mtk.c
> >+++ b/drivers/clk/mediatek/clk-mtk.c
> >@@ -533,6 +533,14 @@ int mtk_clk_simple_probe(struct platform_device *pdev)
> >                       goto unregister_composites;
> >       }
> >
> >+      if (mcd->clk_notifier_func) {
> >+              struct clk *mfg_mux = clk_data->hws[mcd->mfg_clk_idx]->clk;
> >+
> >+              r = mcd->clk_notifier_func(&pdev->dev, mfg_mux);
> >+              if (r)
> >+                      goto unregister_clks;
> >+      }
>
> Should we have a IS_ERR_OR_NULL() check for clk_data->hws[mcd->mfg_clk_idx]?

With a big warning to signal that something in the driver isn't written
correctly, such as no MFG clock actually being included in the driver.

ChenYu
