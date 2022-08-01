Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE8CC5866D5
	for <lists+devicetree@lfdr.de>; Mon,  1 Aug 2022 11:29:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229764AbiHAJ3V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Aug 2022 05:29:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229760AbiHAJ3U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Aug 2022 05:29:20 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DC993A48F
        for <devicetree@vger.kernel.org>; Mon,  1 Aug 2022 02:29:19 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id b16so5474164edd.4
        for <devicetree@vger.kernel.org>; Mon, 01 Aug 2022 02:29:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=obTtYKen62thne/B0uGj9je/51gZFs6diILR5ElHHDY=;
        b=hsWLa4BrC0o0QXd6SkiuRmKS5roYPCvtJuVmU/ICM2nMQxkoAzQFQ06Dc/+OAsnWg+
         zC7LXjv5ZoNPQH09XJoFSg3XQU/yea67tSXJoaD/8BnfdSAwnMw2XDnHfX0ITFaml8Fd
         A9Ogarcyhhe6c6+/OQDQ2CigICMfPtOKR1NK8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=obTtYKen62thne/B0uGj9je/51gZFs6diILR5ElHHDY=;
        b=l57pfcE3sT+mNKpz97sdRJrhj7r3mvdECgGGKKYvCFDhmHcrDO+NHzcyeydaNXsX3z
         tqtqcXU6cwMkLec/XU4qfcDsQrRswa19z6NQdRYMmtmewRtpm4oPy5MEKmvGkgG96VKD
         8x5ce9ueetl9PdvmcqZ9jevLvdrhNUSkH9OSzBEE2VwHlUW3P0kSvjUpSeeWhoQ5IPmi
         Abei//LZYTQuH1oonVHwWpZh7sCvjRg+UsxkiBcGxB+gl2DVisHJZY5cZi2kNxxnT5BG
         TzoGcGamyHXbJbkUbABaNQoM1lNYedJOo6RqqA2Awa12RBGnSP29wfACFUetozZag1FN
         8tkA==
X-Gm-Message-State: AJIora8wB6f1ATYNPvmyFGNv3vtv6sZaExiMxg6jmW7R+V8hKzBk18ST
        qAhy4e36NPL23qqE8YT+JDo+Vgoyb3m7rhRZcmcvXQ==
X-Google-Smtp-Source: AGRyM1tRH4RzrfzNVoO0RpBTUEIib7rIt1ZOlTCzF7HaSBEwbGmu9ZFb9JEy+ezMdtCPlSTh4FFkAMTlPmHhLDRdr00=
X-Received: by 2002:a05:6402:5513:b0:43a:b866:b9ab with SMTP id
 fi19-20020a056402551300b0043ab866b9abmr15337086edb.290.1659346157810; Mon, 01
 Aug 2022 02:29:17 -0700 (PDT)
MIME-Version: 1.0
References: <20220721014845.19044-1-allen-kh.cheng@mediatek.com> <20220721014845.19044-2-allen-kh.cheng@mediatek.com>
In-Reply-To: <20220721014845.19044-2-allen-kh.cheng@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Mon, 1 Aug 2022 17:29:06 +0800
Message-ID: <CAGXv+5HXwVpaJPV-4Z6qw14xZzEkx_E7dVks6-GBa7bQyN8hCg@mail.gmail.com>
Subject: Re: [PATCH v4 1/4] dt-bindings: mediatek: watchdog: Fix compatible
 fallbacks and example
To:     Allen-KH Cheng <allen-kh.cheng@mediatek.com>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        nfraprado@collabora.com, angelogioacchino.delregno@collabora.com,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 21, 2022 at 10:50 AM Allen-KH Cheng
<allen-kh.cheng@mediatek.com> wrote:
>
> The watchdog timer of mt8186. mt8195 and mt7986 have their DT data.
> We should not use 'mediatek,mt6589-wdt' as fallback.
>
> For mediatek,wdt example of mt8183, We remove mediatek,mt6589-wdt fallback.

I think this needs some more information.

Right now on the kernel side, mt6589-wdt provides just watchdog support.
The SoC-specific compatibles that are touched by this patch provide reset
controls in addition to the standard watchdog, which remains the same.

If that is the case, then the fallback compatibles are correct. A fallback
says that the new hardware is compatible with some older hardware, and
can be run with the driver supporting that older hardware, likely with
reduced functionality.

As an example, if mt8195-wdt is backward compatible with mt6589-wdt,
then it should run as mt6589-wdt, and would just be missing new
functionality, in this case the reset controls.

So either mt6589-wdt also contains a reset control that is not the same
as the other newer chips, or has some other functionality that the other
chips contain, and justifies the removal of the fallback, or this patch
is incorrect. Note that mt2701-wdt and mt762*-wdt are still listed as
compatible with mt6589-wdt. So I think a better explanation is required.


Regards
ChenYu


> Fixes:a45b408a020b("dt-bindings: watchdog: Add compatible for MediaTek MT8186")
> Fixes:b326f2c85f3d("dt-bindings: watchdog: Add compatible for Mediatek MT8195")
> Fixes:41e73feb1024("dt-bindings: watchdog: Add compatible for Mediatek MT7986")
> Fixes:f43f97a0fc0e("dt-bindings: mediatek: mt8183: Add #reset-cells")
> Signed-off-by: Allen-KH Cheng <allen-kh.cheng@mediatek.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  Documentation/devicetree/bindings/watchdog/mtk-wdt.txt | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
> index 762c62e428ef..67ef991ec4cf 100644
> --- a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
> +++ b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
> @@ -14,12 +14,12 @@ Required properties:
>         "mediatek,mt7622-wdt", "mediatek,mt6589-wdt": for MT7622
>         "mediatek,mt7623-wdt", "mediatek,mt6589-wdt": for MT7623
>         "mediatek,mt7629-wdt", "mediatek,mt6589-wdt": for MT7629
> -       "mediatek,mt7986-wdt", "mediatek,mt6589-wdt": for MT7986
> +       "mediatek,mt7986-wdt": for MT7986
>         "mediatek,mt8183-wdt": for MT8183
> -       "mediatek,mt8186-wdt", "mediatek,mt6589-wdt": for MT8186
> +       "mediatek,mt8186-wdt": for MT8186
>         "mediatek,mt8516-wdt", "mediatek,mt6589-wdt": for MT8516
>         "mediatek,mt8192-wdt": for MT8192
> -       "mediatek,mt8195-wdt", "mediatek,mt6589-wdt": for MT8195
> +       "mediatek,mt8195-wdt": for MT8195
>
>  - reg : Specifies base physical address and size of the registers.
>
> @@ -32,8 +32,7 @@ Optional properties:
>  Example:
>
>  watchdog: watchdog@10007000 {
> -       compatible = "mediatek,mt8183-wdt",
> -                    "mediatek,mt6589-wdt";
> +       compatible = "mediatek,mt8183-wdt";
>         mediatek,disable-extrst;
>         reg = <0 0x10007000 0 0x100>;
>         interrupts = <GIC_SPI 139 IRQ_TYPE_NONE>;
> --
> 2.18.0
>
>
