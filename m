Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5037B6595A4
	for <lists+devicetree@lfdr.de>; Fri, 30 Dec 2022 08:16:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234580AbiL3HQG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Dec 2022 02:16:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234567AbiL3HQE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Dec 2022 02:16:04 -0500
Received: from mail-vs1-xe2a.google.com (mail-vs1-xe2a.google.com [IPv6:2607:f8b0:4864:20::e2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F2BA1740A
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 23:16:01 -0800 (PST)
Received: by mail-vs1-xe2a.google.com with SMTP id k4so16453154vsc.4
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 23:16:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=77WNp07597wRX7W6AdblvnXM0gbT+J8p0UTrY090tdA=;
        b=a1TSSDKNx2rDH/1nQRZ3nsQAgU4EnJrb3cB4rL2w3rGVSnCSdJoydjkUEqg0pkKvwP
         BOUabMFAUBOiW2MctJYO0CZSokjrh4wBmMrUCRZZrhQSowF61LYBSO56LqRh0YyBs6Rf
         Z9XIBDkk2XH4TDTWmiHNCLlO8DF5CzCijXb0A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=77WNp07597wRX7W6AdblvnXM0gbT+J8p0UTrY090tdA=;
        b=4GFP94NkKqOZkvvTUOOQd5NXsw62QVA/liywomPM1O270srPba9x/IPmhBRf5DMKK6
         sCwMM21AgNcsmfI4/gd4xRyIe+lvG7lPMdvxvNJrw/epUYdfZ1tMYM0lcpt9ILrklk1d
         JF7nzo1pTq+rgR2VnO+7bBjpfuEwDq3vPgH59+MJ0H0UviEqylQCfo+ODNHP9g1QziHK
         u0IkofTzGKpZyk6CSdfXuQYjNdguHocuVTaFnO/bB7tHdrsA8JRJYY4A4g/WVC6gwNNc
         5ZvEcxui1UXvQI9RU7XjgPx461gX2/L9TXVoADs2QZq++kWDkjJWM9syZvv/EfC9QK8x
         Dgpw==
X-Gm-Message-State: AFqh2kpjTzlvKHWzgH2dN6aPuTs5HXvkA5WUfGFdfuEoZCWB8lAger3r
        9EakUqEfT50VXgU5AB/bhGrsj16IGw+wlI6zYEgh0A==
X-Google-Smtp-Source: AMrXdXv0ZVlpanVEg2D1eXiIaHSf5I+bsKPIfCgfS93tmGGPyZU7JO/WUQxFmta6DR2aqOTUfYFciBm2MfmiJHbu/kM=
X-Received: by 2002:a05:6102:3d9f:b0:3c4:4918:80c with SMTP id
 h31-20020a0561023d9f00b003c44918080cmr2663570vsv.9.1672384560459; Thu, 29 Dec
 2022 23:16:00 -0800 (PST)
MIME-Version: 1.0
References: <20221223094259.87373-1-angelogioacchino.delregno@collabora.com> <20221223094259.87373-14-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20221223094259.87373-14-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 30 Dec 2022 15:15:49 +0800
Message-ID: <CAGXv+5GBREamLPmjURz5Rb+dYe4oKAxw+gKNqeeSBns_h37=Ng@mail.gmail.com>
Subject: Re: [PATCH v2 13/23] clk: mediatek: mt8173: Migrate pericfg/topckgen
 to mtk_clk_simple_probe()
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     mturquette@baylibre.com, sboyd@kernel.org, matthias.bgg@gmail.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        johnson.wang@mediatek.com, miles.chen@mediatek.com,
        fparent@baylibre.com, chun-jie.chen@mediatek.com,
        sam.shih@mediatek.com, y.oudjana@protonmail.com,
        nfraprado@collabora.com, rex-bc.chen@mediatek.com,
        ryder.lee@kernel.org, daniel@makrotopia.org,
        jose.exposito89@gmail.com, yangyingliang@huawei.com,
        pablo.sun@mediatek.com, msp@baylibre.com, weiyi.lu@mediatek.com,
        ikjn@chromium.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@collabora.com
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

On Fri, Dec 23, 2022 at 5:43 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Function mtk_clk_simple_probe() gained the ability to register multiple
> clock types: migrate MT8173's pericfg and topckgen to this common
> probe function to reduce duplication and code size.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
