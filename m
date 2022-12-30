Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6654D65962B
	for <lists+devicetree@lfdr.de>; Fri, 30 Dec 2022 09:16:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234455AbiL3IQX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Dec 2022 03:16:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234740AbiL3IQF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Dec 2022 03:16:05 -0500
Received: from mail-vs1-xe2d.google.com (mail-vs1-xe2d.google.com [IPv6:2607:f8b0:4864:20::e2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65FC91A067
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 00:16:04 -0800 (PST)
Received: by mail-vs1-xe2d.google.com with SMTP id 128so20600046vsz.12
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 00:16:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KPlTEqYa3MYCMl9BvqJcl9vvn2yJXyimwlsnQsWb80g=;
        b=YhAxgjwByMUVtC0QltQ0WZbdI/jd05toOa5H1jc5GThVHN2I114FIGBg6IFEm61vTO
         vjueufSh3oZGhR632HQeIa257kEzkJLao4uA7qTC8d7DgDRea0pwxhRcTZcFSnZ9xmoj
         mnvt8dyoAkT7xtkdOpPxs554wJdeEe+ZrTvxY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KPlTEqYa3MYCMl9BvqJcl9vvn2yJXyimwlsnQsWb80g=;
        b=AoWhgm0HwYwlJ7ceezGgSz6qkkKx6TdrdDEV0vd2/hCuFjCyJo9aKjfo4Gwo4cWUGk
         WA+fK7ydZDLI69/9lcnaW+g0BPpS67KID4qT402NaoqiG5fHfN/QbZr+244gEX7EeGeo
         8JAITwGgG6AVvBJWPolhvrGzGHd6D9DaAMt+kiII3cOlboN2YyKK+Bi7KXF0no+WaL7o
         ql04/raJZIKe8bm7da6YvTmxX5+SYjHEy2bp46W461qDlN5GGkO0q1zy8Y4OhD12M3Fd
         K/fyPsITVENKomGO+QO//ZJWr39v3n2seezDB1YcxZPmQXDvZ7Dh19S4ABeAK1P7l69w
         NGrA==
X-Gm-Message-State: AFqh2ko0Rkv58v4wm8sFOqhpzVkneXdieHE1/B9QP3D4kn0+AWn4EZR+
        y5JtTWolKb0sOREtw/xOsYTXHTeTIZWuRhoNLwLyTA==
X-Google-Smtp-Source: AMrXdXv0jj8OdD6WjSDbEKQJNJ1yRigoEOsjWSkDG9TTutwpBPDNw73XntP58sJQMP+TekyU6XVuIFUl5/GDLYHuanA=
X-Received: by 2002:a05:6102:3e06:b0:3b5:fd8:7948 with SMTP id
 j6-20020a0561023e0600b003b50fd87948mr4003899vsv.85.1672388163532; Fri, 30 Dec
 2022 00:16:03 -0800 (PST)
MIME-Version: 1.0
References: <20221223094259.87373-1-angelogioacchino.delregno@collabora.com> <20221223094259.87373-21-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20221223094259.87373-21-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 30 Dec 2022 16:15:52 +0800
Message-ID: <CAGXv+5E26i6F2BPZYDfRhM-OMei-Br276UNtRVr5=+7pT+HTqg@mail.gmail.com>
Subject: Re: [PATCH v2 20/23] clk: mediatek: clk-mt8186-topckgen: Migrate to mtk_clk_simple_probe()
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
> As done with MT8192, migrate MT8186 topckgen away from a custom probe
> function and use mtk_clk_simple_{probe, remove}().
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
