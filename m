Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29CEA658BD1
	for <lists+devicetree@lfdr.de>; Thu, 29 Dec 2022 11:38:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233085AbiL2KiJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Dec 2022 05:38:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233098AbiL2Khz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Dec 2022 05:37:55 -0500
Received: from mail-vs1-xe2c.google.com (mail-vs1-xe2c.google.com [IPv6:2607:f8b0:4864:20::e2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1BD310566
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 02:37:53 -0800 (PST)
Received: by mail-vs1-xe2c.google.com with SMTP id a64so14539365vsc.2
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 02:37:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b8Y42xIXgL1eMkrgLpvrHsYvzuZh55E8nXO8bqFw93M=;
        b=n+1rGnKC54+rbc4cgQix6MlqAvLsOt+mxxCIvHqRujHtqOBdnTa21rRtnbRJeRS9C8
         ET7G5Cv5S0SiyXRAkPQ6x4aHcSt/MR2F0W2INwqkgkHIJ1ODE1omptcwDMPkxBQp3qFo
         FeI9BsYoYgtYllUyGD5PdfmRjS/iBH+1AJPb0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b8Y42xIXgL1eMkrgLpvrHsYvzuZh55E8nXO8bqFw93M=;
        b=I2owvGqrcn2dMBfnzLzZ8ZMZbS4BG9iQL0Y9LdcVBYJGnKk/7tu6pY2yEKq7sLFQ97
         idmaSvT7UkVDIxxBS6VWm5SnWwTqwnGDZfFbNG5bEtxdPaYcw3Jjj+vsKQXwJ2rAZcx3
         hX9z5DAwshERoU8sMdIdaNDGwmSsxKM3RukZwsFk8Pr2fbcrBwwewyki2sf8BXnDJ3jU
         jKDM23bk/+5s3qsbnYf7sRGpsOfHXIdS43HpsTARyX5VM/lUOWOAUnEKd49r57sG2vaV
         oj0fAu5/Murctz99G9RPo1mOerlrDGWfWiQ2c4bbeCGlwuJazkIO7tw/B8SHkrE1N/zk
         PX7w==
X-Gm-Message-State: AFqh2krcPbtP7fmqTeAX5M2MeBacfnBM88cu8pTZs7eNGsyXIgvxnQ7S
        gnQg9OSWEMFgiQA25oSOhTcaTZgps/93DBrHYozCSw==
X-Google-Smtp-Source: AMrXdXuGd+euo/Y/QzF70Wh9yJgo9zt/cVIVFVgu/E4UIEn36ysnrttGlo14HEh6kgdeVcojyAcKK885ahyhQcOCVdg=
X-Received: by 2002:a05:6102:74b:b0:3ad:3d65:22b with SMTP id
 v11-20020a056102074b00b003ad3d65022bmr3992771vsg.65.1672310272757; Thu, 29
 Dec 2022 02:37:52 -0800 (PST)
MIME-Version: 1.0
References: <20221108033209.22751-1-allen-kh.cheng@mediatek.com>
In-Reply-To: <20221108033209.22751-1-allen-kh.cheng@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Thu, 29 Dec 2022 18:37:41 +0800
Message-ID: <CAGXv+5EkPWF77ATVRhxygVOyYmxXgdTNPmOefP7jGeOMeZw_MA@mail.gmail.com>
Subject: Re: [PATCH v5 0/7] MediaTek watchdog: Convert mtk-wdt.txt to dt-schema
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     nfraprado@collabora.com, angelogioacchino.delregno@collabora.com,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        Allen-KH Cheng <allen-kh.cheng@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 8, 2022 at 12:03 PM Allen-KH Cheng
<allen-kh.cheng@mediatek.com> wrote:
>
> Based on git/groeck/linux-staging.git, watchdog-next.
> We use [1] and [2] as references to send a new series.
>
> This series converts mtk-wdt.txt to dt-schema and contains
> - Fix watchdog compatibles for MT7986, MT8186, MT8188 and MT8195,
> - Fix the watchdog name of mt8516
> - Add mt6795 and MT8173 watchdog compatible
>
> Changes since v4:
>  - Drop label for watchdog node in mt8516
>
> Changes since v3:
>  - Drop label for watchdog example in yaml
>
> Changes since v2:
>  - Drop merged patch from series
>  - Rebase to watchdog-next (for mt8188)
>
> Changes since v1:
>  - Drop "items" for a single enum=C2=B7
>
> Changes since [1]:
>   - Update the commit message with some details
>  - Drop "timeout-sec: true" and use unevaluatedProperties
> [1] https://lore.kernel.org/all/20221005113517.70628-1-angelogioacchino.d=
elregno@collabora.com/
> [2] https://lore.kernel.org/all/20220422121017.23920-3-allen-kh.cheng@med=
iatek.com/
>
> Allen-KH Cheng (3):
>   arm64: dts: mediatek: mt7986: Fix watchdog compatible
>   arm64: dts: mediatek: mt8516: Fix the watchdog node name
>   dt-bindings: watchdog: mediatek,mtk-wdt: Add compatible for MT8173
>
> AngeloGioacchino Del Regno (4):
>   arm64: dts: mediatek: mt8186: Fix watchdog compatible
>   arm64: dts: mediatek: mt8195: Fix watchdog compatible

Looks like the dt-bindings have been merged, but the dts fixes haven't.

Matthias, could you queue them up?


Thanks
ChenYu

>   dt-bindings: watchdog: mediatek: Convert mtk-wdt to json-schema
>   dt-bindings: watchdog: mediatek,mtk-wdt: Add compatible for MT6795
>
>  .../bindings/watchdog/mediatek,mtk-wdt.yaml   | 80 +++++++++++++++++++
>  .../devicetree/bindings/watchdog/mtk-wdt.txt  | 43 ----------
>  arch/arm64/boot/dts/mediatek/mt7986a.dtsi     |  3 +-
>  arch/arm64/boot/dts/mediatek/mt8186.dtsi      |  3 +-
>  arch/arm64/boot/dts/mediatek/mt8195.dtsi      |  3 +-
>  arch/arm64/boot/dts/mediatek/mt8516.dtsi      |  2 +-
>  6 files changed, 84 insertions(+), 50 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/watchdog/mediatek,m=
tk-wdt.yaml
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/mtk-wdt.tx=
t
>
> --
> 2.18.0
>
>
