Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A0CE5E98AA
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 07:09:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232951AbiIZFJl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 01:09:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231727AbiIZFJk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 01:09:40 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 104F565B5
        for <devicetree@vger.kernel.org>; Sun, 25 Sep 2022 22:09:38 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id lc7so11712013ejb.0
        for <devicetree@vger.kernel.org>; Sun, 25 Sep 2022 22:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=vrb/QOBCOlwnil4xOu2RseRmD1KSKb1sCTEzWBoOr7A=;
        b=CjyMr8K5Wev1LqZH4hcWNR4hCa7hpv03fz6sO4CQoigIqQfzbByI+PeL62qb6OS5f6
         B6/UPRBG20hOIgzFCctOTxKGY7MWWmlbPU/fK1U2S6LaPHoAmR3Xm7v0Rx0GkuSc2vyE
         VrIRqSRv6Ih1HnvvylK+fBM5Zj+XYDUmwevzo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=vrb/QOBCOlwnil4xOu2RseRmD1KSKb1sCTEzWBoOr7A=;
        b=0WpWqSy8QXDcrUiNk7yUwo6lX5xfbQIpAojuwtRk3OSZSR1cCCaxf1NPgH+1ILM63Z
         9X5fxIylKYQzZELfijxhQywWQydkFRtmD9ip+lpMXKchhz4dp3kO3Tw5dX7IJ0CIql5t
         3NtvOG/czm6PUh3vHvTqvoBIqgBoWrDvEWfrrPnbMWs67Empg1cYAMPf/+SNfAaJJ5CY
         IeqdonRRZnLu0TfEV5pNEbnanu/KNlLRgOZkLdtGh3+6rf5LjKhbjdxA4S8/+T4yAcxc
         R+ZPYNbq7Ckf/iTa/Rww6f867mulnq0aFCorEVDPmRtS8erT13o+vPNKcGI+8JRmdyEs
         LcTA==
X-Gm-Message-State: ACrzQf2KCii76Pl7AQzY9EHYW9sW41DHUBVyhXHHjUyhex6dbSOhjupZ
        2BISxoMf0STZGbCveMezPjOHBYzEUuy96QZT0POy8Q==
X-Google-Smtp-Source: AMsMyM7cfU1/JdOhkGvuQyhuRRKePnKXOOE9bin+YefFjefQP/PV7uR2GeazW9Tvxl2PgbNtWjbFZGX0+Elzhi37gGQ=
X-Received: by 2002:a17:906:8455:b0:773:c45b:d970 with SMTP id
 e21-20020a170906845500b00773c45bd970mr16504544ejy.46.1664168976587; Sun, 25
 Sep 2022 22:09:36 -0700 (PDT)
MIME-Version: 1.0
References: <20220919-v1-0-4844816c9808@baylibre.com> <20220919-v1-2-4844816c9808@baylibre.com>
In-Reply-To: <20220919-v1-2-4844816c9808@baylibre.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Mon, 26 Sep 2022 13:09:24 +0800
Message-ID: <CAGXv+5GJrjxG0pEGqseEacz_KFCRhWJSiLoiwuwwUTaSeO0RBg@mail.gmail.com>
Subject: Re: [PATCH v1 02/17] clk: mediatek: add VDOSYS1 clock
To:     Guillaume Ranquet <granquet@baylibre.com>
Cc:     Vinod Koul <vkoul@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Rob Herring <robh+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-mediatek@lists.infradead.org,
        dri-devel@lists.freedesktop.org,
        Pablo Sun <pablo.sun@mediatek.com>, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Mattijs Korpershoek <mkorpershoek@baylibre.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 20, 2022 at 12:59 AM Guillaume Ranquet
<granquet@baylibre.com> wrote:
>
> From: Pablo Sun <pablo.sun@mediatek.com>
>
> Add the clock gate definition for the DPI1 hardware
> in VDOSYS1.
>
> The parent clock "hdmi_txpll" is already defined in
> `mt8195.dtsi`.
>
> Signed-off-by: Pablo Sun <pablo.sun@mediatek.com>
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
