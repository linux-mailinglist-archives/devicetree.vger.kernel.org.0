Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CAE5C659620
	for <lists+devicetree@lfdr.de>; Fri, 30 Dec 2022 09:13:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234567AbiL3IN4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Dec 2022 03:13:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234427AbiL3INz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Dec 2022 03:13:55 -0500
Received: from mail-vs1-xe31.google.com (mail-vs1-xe31.google.com [IPv6:2607:f8b0:4864:20::e31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3671186AD
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 00:13:54 -0800 (PST)
Received: by mail-vs1-xe31.google.com with SMTP id a64so17132153vsc.2
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 00:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+BW5cwmKaNCVLs9nRl+n6ibFBEWSsqnffbwe6y2wYCQ=;
        b=nGPjclbubWrpPTtxt8FKiL1BFgbol42KKil8hX/0VmVLK0i8/1yA/SP4ogoO1eSLpR
         OFPrEwUbyH9DylcRkRPvTa8+iLlXVqsLLYJ2/h0vxjUCsgedaM3/JW8hI8EkozA1MS2O
         UnOJedj+iKcCyGhpeAaF5RccFV3t/B7LWrrAg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+BW5cwmKaNCVLs9nRl+n6ibFBEWSsqnffbwe6y2wYCQ=;
        b=JMtTuU0ehoM+VqGqTUcGANMAhVPhBrOQtYF74U47T178PvxglRwoPB/WDEE6e2zXnh
         luSKR53vC6OmLseEqlVZ5DM2nB68hOcvtgpQfqEvRgqL6kpBTQLIb89SUBei41Bna6cs
         1pRc02Sn39uTXy5IXvqxR5ai/5+S7XAM9uMVFN3L9DzN60OORUR0x1ERrmSTgmHwLS3E
         yJLoPahl/UHpy5A/JulUkhN8YLr5wbFG5Ef0kU8XlIAAJOZJy5dL90MiaiFIWO0X+gs/
         pUH9N4A6IlEvY629mJAHjlRzgz74mIVCaFsc4Zk44CTIbPzJOyNphKSjksbsWEttuaUS
         mJRg==
X-Gm-Message-State: AFqh2kqfblH+WAfrH15ljzlWLsImid9iHnqXh9ZhiSs5SISJkM3WrCQX
        B4Y2dETIL09IP8Us3q+c7lzVfUcbVZMCeQSeyO/lOw==
X-Google-Smtp-Source: AMrXdXv7CHafuypiXlQL438o48Sf7M0d8IvDMBWqWekllpFk+gsVlFTfotR7uZXiHjjbfDtmSkoKdZZraclEPUo0lLw=
X-Received: by 2002:a05:6102:74b:b0:3ad:3d65:22b with SMTP id
 v11-20020a056102074b00b003ad3d65022bmr4419162vsg.65.1672388034106; Fri, 30
 Dec 2022 00:13:54 -0800 (PST)
MIME-Version: 1.0
References: <20221223094259.87373-1-angelogioacchino.delregno@collabora.com> <20221223094259.87373-22-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20221223094259.87373-22-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 30 Dec 2022 16:13:42 +0800
Message-ID: <CAGXv+5Eoiaf7RovpHeizYxpFO-xw2NHneig_CUc4cxL-i7Xhew@mail.gmail.com>
Subject: Re: [PATCH v2 21/23] clk: mediatek: clk-mt6795-topckgen: Migrate to mtk_clk_simple_probe()
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
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 23, 2022 at 5:43 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Migrate away from custom probe functions and use the commonized
> mtk_clk_simple_{probe, remove}().
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
