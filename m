Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1A1B580ED8
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 10:25:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238414AbiGZIZ1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 04:25:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238482AbiGZIZX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 04:25:23 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8F8664DE
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 01:25:16 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id bp15so24816608ejb.6
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 01:25:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Xkx90yalUpDf8aSv06wMYT+1OK70L3/9oGj4foZkji4=;
        b=PL30xppZg3iWeTQBfl/NslL+mcaXclPdlk+1wI7jRhfUpQ2/rkYxew0zX1e8T8Xq1/
         ielzAEIqp+hl4Ay7ucnestwlEE79+0jLp2ojtxc0OkoEzvsT55g0IlEWW+4iisNUBLmo
         7L29LStoWdJxteClj1Qy8TxWXNvkUFVgrZFoVsedFrRuxuDhjFkg0+A4l8HY78sEx4VI
         4IB4r6s9zP960K9aI1fhTcbgTrMtauJYKtjox/9EgWBpu2nbxNmsmtI0juHmEx4SpBrz
         hgO6A0A30PwLRsBhYJEJR9mWGoUfmpjclgYcaAIgndBHP4bPAieoWukNB0ZR+LD6hnON
         +xyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Xkx90yalUpDf8aSv06wMYT+1OK70L3/9oGj4foZkji4=;
        b=hAigaWRj72Pp3r2omUGcegz3ujp0GiBXqdNKrj1g4nyTbEpf/GxKqtKvka2ICqqmLk
         4Dj8biNCV9nKzdS0XaaMh2K5sDwFNXs/So1rR2Tiv2Q3NFsOZHwgMAtgdw+cbT1JfHvk
         pnqKWtGIOEVCuGRBKuyeuV9+dHI8WuDNBrXXPWYy9Q5CXWS3CoHL0FKAvWG25SAvRc8F
         FxOG/Kr7eMgkA7che4rBcF7EEYePmGY9KdDOwYJzox9/Mky3v6vYvmxfJFDAY9YX1nxB
         u+rgFNPmd4bm1z299sUCtF/4dSky9PrOdUHCT+gbmqwYCDcE6xIKn1mITFbUcIJcmhlW
         ftKg==
X-Gm-Message-State: AJIora+2nZmV/Jggmvx+4zoGhRKcXEKdrB1vgoc0B5Evn4u/5Loa2fat
        OEnxtj39oNGk/Eif23iOHSsGfvI0VftZDAzOcFxLYQ==
X-Google-Smtp-Source: AGRyM1u3yOCOtZopLwlF/RFirrjzaTrdWVKOaATw//UrBRVUyQggv2JX7KeYTgtrklwgYzdWDacIkTm1zvszXD/o/TM=
X-Received: by 2002:a17:906:2ed7:b0:72f:d080:411 with SMTP id
 s23-20020a1709062ed700b0072fd0800411mr8498136eji.203.1658823915420; Tue, 26
 Jul 2022 01:25:15 -0700 (PDT)
MIME-Version: 1.0
References: <20220725110702.11362-1-allen-kh.cheng@mediatek.com> <20220725110702.11362-3-allen-kh.cheng@mediatek.com>
In-Reply-To: <20220725110702.11362-3-allen-kh.cheng@mediatek.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 26 Jul 2022 10:25:04 +0200
Message-ID: <CACRpkdZjMUqzwqLw0LyPSw-TsYhXvNXr74vwW05LMKaE-n2=og@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: pinctrl: mt8186: Add and use drive-strength-microamp
To:     Allen-KH Cheng <allen-kh.cheng@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        angelogioacchino.delregno@collabora.com,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        Chen-Yu Tsai <wenst@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 25, 2022 at 1:07 PM Allen-KH Cheng
<allen-kh.cheng@mediatek.com> wrote:

> Commit e5fabbe43f3f ("pinctrl: mediatek: paris: Support generic
> PIN_CONFIG_DRIVE_STRENGTH_UA") added support for using
> drive-strength-microamp instead of mediatek,drive-strength-adv.
>
> Similarly to the mt8192 and mt8195, there's no user of property
> 'mediatek,drive-strength-adv', hence removing it is safe.
>
> Fixes: 338e953f1bd1 ("dt-bindings: pinctrl: mt8186: add pinctrl file and binding document")
> Signed-off-by: Allen-KH Cheng <allen-kh.cheng@mediatek.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Patch applied.

Yours,
Linus Walleij
