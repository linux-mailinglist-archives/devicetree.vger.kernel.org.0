Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A55E457181F
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 13:10:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232456AbiGLLKb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 07:10:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231571AbiGLLKS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 07:10:18 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F5B7B0F83
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 04:10:17 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id bf9so13313415lfb.13
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 04:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SIxn205KIvmS9VSb5lDf2UBPI0iYaOAaJ1A1MJqqVxk=;
        b=FNUE2acQhszuFh5gwSVw+Rwn9vCbiz5eeW9tj0ulcEp5CB+CXfZNt8End8wSLExYwg
         4MO0Xl4cRWRKs5XBHGbmhjPB/i1vtyPNV90bz1iw4x++t5iu24KV5R6FJi7W09ebLp9x
         S7wFe2tgt8oEN1HIukddBfHCiZO3jZmcu5z3d3BrD2zxyY2u0qHd++sqPDQ+kzN2tovj
         3q8HBg3/FmHKaEXwYT4Dfqb+TnqK4st+QY5oGz7HEfCyVhDwcVT+XW8TO0xoa0lPVoEs
         iojT44I21fzo9Uf3MJBs0yP9F1SVii8xWazC9xjcbn2X5a0LWztVRBgtuz01spJQs9uV
         WKQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SIxn205KIvmS9VSb5lDf2UBPI0iYaOAaJ1A1MJqqVxk=;
        b=oXmKNWO2jDvD8xB2ZQZDcubHh4ofomIrZihpR1Ty6KJflWea0gQIGHOYG9NBOJQt0n
         QQtVReYqden5R7DRzPHmbELF8gpJk8rI56+kHcPo0fFkhHo6qtjuccw4+tO+gKIJsjbo
         PfisYNe2eeOrkFp8P4Ajzw8e3oLpBNOA3VinO3V5PZ5aNF8/+jUO3Go4BkA+YZV8NQiw
         lyrhB8uo+FlaIXWVG9ythR5bqvaBii0caSNT4bBJ7zODq5aJqrA3vkBjLM7/EHOIYIEk
         butB4g8YVSFASJiSjETL/aJoFmCkT5jjaHvLBV4t/V60M5osfCvfxp9MkidUkua9r2Yb
         ysXA==
X-Gm-Message-State: AJIora/citjB3Wgl8dlxU/2D+RqAMhQHc5SpgTPWid7P9Kbz6O5q3VS/
        AcyXXEGwp5RrSzdbTzhZPZw+qNuibI7Lt+RKR9O2MA==
X-Google-Smtp-Source: AGRyM1tW9I2SNwUkOEFsvNntEhlOoXvMH17jCpZPzFWoPNjDoKFFg72huJu8nMkwl68VqtR7rGwljMo7GbdaofhPCqM=
X-Received: by 2002:a05:6512:3d03:b0:47f:7023:2c57 with SMTP id
 d3-20020a0565123d0300b0047f70232c57mr14045143lfv.254.1657624215580; Tue, 12
 Jul 2022 04:10:15 -0700 (PDT)
MIME-Version: 1.0
References: <20220708114747.13878-1-johnson.wang@mediatek.com>
In-Reply-To: <20220708114747.13878-1-johnson.wang@mediatek.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Tue, 12 Jul 2022 13:09:39 +0200
Message-ID: <CAPDyKFqcP69cBEKDx1Uu0BKGOA6s1U+Suiz1KXDXtwn8Qj8kBA@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: mmc: Add compatible for MediaTek MT8188
To:     Johnson Wang <johnson.wang@mediatek.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 8 Jul 2022 at 13:47, Johnson Wang <johnson.wang@mediatek.com> wrote:
>
> This commit adds dt-binding documentation of mmc for MediaTek MT8188 SoC
> platform.
>
> Signed-off-by: Johnson Wang <johnson.wang@mediatek.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/mtk-sd.yaml | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/mtk-sd.yaml b/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> index 2a2e9fa8c188..be366cefffc2 100644
> --- a/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> +++ b/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> @@ -30,13 +30,11 @@ properties:
>            - const: mediatek,mt7623-mmc
>            - const: mediatek,mt2701-mmc
>        - items:
> -          - const: mediatek,mt8186-mmc
> -          - const: mediatek,mt8183-mmc
> -      - items:
> -          - const: mediatek,mt8192-mmc
> -          - const: mediatek,mt8183-mmc
> -      - items:
> -          - const: mediatek,mt8195-mmc
> +          - enum:
> +              - mediatek,mt8186-mmc
> +              - mediatek,mt8188-mmc
> +              - mediatek,mt8192-mmc
> +              - mediatek,mt8195-mmc
>            - const: mediatek,mt8183-mmc
>
>    reg:
> --
> 2.18.0
>
