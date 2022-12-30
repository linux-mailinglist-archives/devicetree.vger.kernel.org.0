Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2274659644
	for <lists+devicetree@lfdr.de>; Fri, 30 Dec 2022 09:22:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230186AbiL3IW0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Dec 2022 03:22:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234785AbiL3IWY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Dec 2022 03:22:24 -0500
Received: from mail-vs1-xe2e.google.com (mail-vs1-xe2e.google.com [IPv6:2607:f8b0:4864:20::e2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E841101DA
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 00:22:24 -0800 (PST)
Received: by mail-vs1-xe2e.google.com with SMTP id a64so17145516vsc.2
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 00:22:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PPMh1bx7p+RWszUWsYNnjB1z/mUzp7J0r3Un1hyV3Yg=;
        b=ChHCyeXa9C49zHneJZHTToGD050rLQoMOGL1Lt/Rd7kfXVQC+SosxVz7CrUpTLdzTj
         3SsTVQD1ytTaph5osVDToCNpZog3wDsTWbuiRTLQVNrQOO0EpiYSIMhbbGipgpHpcZvY
         +Um7mpYegGA+xy2MrNrvT0WQmzf6ixi9Eff6o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PPMh1bx7p+RWszUWsYNnjB1z/mUzp7J0r3Un1hyV3Yg=;
        b=6HaJdZzfIAAMc4nxLa3z5IVSMPz98ef7NsIj9PIU6F4/ndIGAr9azqywWAhmh4khIB
         ZvpGrhwxMJ1rkE0j/z5X0yakL6T38SS4U6RWtnNyLsp6VMxtQBG0IVgr+jhUS8TCFifF
         4/iaNpWt+Ggmsgg+u/YIsCG5BDlaowSx2FcYqaJwMOL+1QVb+lWWBZTOm2gYZibPo6U0
         ky+plKdSa8pS+lDdo7Y73THdrSYcPubGjZmZcLfWLZA1W6mXYYWr6QupEVWP11GBKE/c
         RwT+M2Mm7ooamVjmTWtbaXWXIOOWUuxxLuQ935XnM5tWHT9qxlnXLE4mok6DP8NYN4Qi
         UsWA==
X-Gm-Message-State: AFqh2kqGEJFbetRW1P+dVlE++GpdFA/6qOLNAjxH7o17ZMoura8S42E/
        RrLFeqiCyPbKw+ohd87CLvNl0Q087Pj+kvn5NzSdbQ==
X-Google-Smtp-Source: AMrXdXtILSSp544twEvhbZAOHBZZSqyPKdwHftg430OofTjYalRaCuf+LT9O+Osuk/hg1h3mWuLbqx+qbQQ3Y50n/v4=
X-Received: by 2002:a05:6102:3d9f:b0:3c4:4918:80c with SMTP id
 h31-20020a0561023d9f00b003c44918080cmr2677891vsv.9.1672388543279; Fri, 30 Dec
 2022 00:22:23 -0800 (PST)
MIME-Version: 1.0
References: <20221223094259.87373-1-angelogioacchino.delregno@collabora.com> <20221223094259.87373-9-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20221223094259.87373-9-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 30 Dec 2022 16:22:12 +0800
Message-ID: <CAGXv+5FGJhkhHHoyx8S7v6KzBJ+ifSXU+X1EUVqpkydrRVHGMw@mail.gmail.com>
Subject: Re: [PATCH v2 08/23] clk: mediatek: mt8173: Migrate to platform
 driver and common probe
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
> This driver is using CLK_OF_DECLARE() for all clocks: while this
> definitely works, it's not preferred as this makes it impossible
> to compile non boot critical clock drivers as modules and to take
> advantage of clock controller Runtime PM.
>
> As a preparation for a larger cleanup, migrate all of the clock
> controller drivers for MT8173 to platform_driver and use the
> common mtk_clk_simple_probe() where possible.

Should also mention that proper error handling was added. Otherwise,

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
