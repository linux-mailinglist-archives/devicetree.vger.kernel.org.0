Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D75A379D8E
	for <lists+devicetree@lfdr.de>; Tue, 11 May 2021 05:18:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230070AbhEKDT3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 23:19:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230018AbhEKDT2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 23:19:28 -0400
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com [IPv6:2607:f8b0:4864:20::d32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E411C061574
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 20:18:22 -0700 (PDT)
Received: by mail-io1-xd32.google.com with SMTP id n40so1067041ioz.4
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 20:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OkHDlYFluPki2ZdUn0/eNDhFO7FqUp9u17CiwZh22fI=;
        b=mTFWoS6vW84BXMZlAa+QisfevYOw9aQGHn03C7IpjFYVCHUvAFmLmfRnnKOMgnch6A
         F5tqeukS8/OV4hrfyHJcyO7fsYN/V9XaVD6Uf7xie0bG9KgBlDHH9bmSxm+HrNDvDgSB
         TMl+2Ng1YPohPWBnJyb7kB3XZJYx2xWNO85r0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OkHDlYFluPki2ZdUn0/eNDhFO7FqUp9u17CiwZh22fI=;
        b=toGmikMyXulBcWjbv6NpfEE/Gm8O7+7X0TIIdjSO1qmRQx5L0kjvtdmhZGXY8H6FjZ
         OrZszETaD71nOJxNZtBuYqfMrkHoffBIIcTaeq26h/dySucqe/oi1ug5Snn+j15c4ls9
         w5fQvnAluG4Lbg43KHGrKvFQ9QbVTjtc2pCLhp4gg4VkwzLwyetgoNIMy77WXthbTA/2
         7bGLaFLq2FHzltV8Sby18qpMcyqd9PrD1PC7xyzLfoDgsY3uvFPImOc0fGSHBe+LCoor
         FOGCKxbUl8CI8RopcpaP03sYjbZ42SHtP469Ch1VCmNo6uPmXALvRi9Ljv+sTac41rvt
         OmdA==
X-Gm-Message-State: AOAM531GqiCzXVB85UELMsjGFQccU5tMR+kFvma+zjRrpKuVkZheFIOH
        FTLjwPpxF+VeauuN2DI2diOuYBnm5xqjwDxDaablAg==
X-Google-Smtp-Source: ABdhPJyrD8bDd6jE5FS8jaJSkAfnWnTZbGMj2SNEByq0yqDn2YByH4a4ZLSTNDq73en4LDotx14twU2BKaNZJ46rNQ8=
X-Received: by 2002:a5d:9694:: with SMTP id m20mr20648173ion.40.1620703101484;
 Mon, 10 May 2021 20:18:21 -0700 (PDT)
MIME-Version: 1.0
References: <20210421090601.730744-1-hsinyi@chromium.org>
In-Reply-To: <20210421090601.730744-1-hsinyi@chromium.org>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Tue, 11 May 2021 11:17:55 +0800
Message-ID: <CAJMQK-jxUwoz_zP-PgoEhnjqxzFC965csj0tNjuTxUT7Rg7Cmg@mail.gmail.com>
Subject: Re: [PATCH v3 00/10] Add several jacuzzi boards
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Sean Wang <sean.wang@mediatek.com>,
        Ben Ho <Ben.Ho@mediatek.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 21, 2021 at 5:06 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> Add several jacuzzi follower devices: kappa, willo, burnet, kenzo, and
> fennel.
>

Hi Matthias,

Can you help pick this series? thanks.


> Change log:
> v2 -> v3:
>  - remove unused property in i2c2 in willow and burnet.
>  - add fennel.
>
> Hsin-Yi Wang (10):
>   dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-kappa
>   dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-willow
>   dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-burnet
>   dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-kenzo
>   dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-fennel
>   arm64: dts: mt8183: Add kukui-jacuzzi-kappa board
>   arm64: dts: mt8183: Add kukui-jacuzzi-willow board
>   arm64: dts: mt8183: Add kukui-jacuzzi-burnet board
>   arm64: dts: mt8183: Add kukui-jacuzzi-kenzo board
>   arm64: dts: mt8183: Add kukui-jacuzzi-fennel board
>
>  .../devicetree/bindings/arm/mediatek.yaml     | 29 +++++++++++-
>  arch/arm64/boot/dts/mediatek/Makefile         |  8 ++++
>  .../mediatek/mt8183-kukui-jacuzzi-burnet.dts  | 30 +++++++++++++
>  .../mt8183-kukui-jacuzzi-fennel-sku1.dts      | 44 +++++++++++++++++++
>  .../mt8183-kukui-jacuzzi-fennel-sku6.dts      | 32 ++++++++++++++
>  .../mediatek/mt8183-kukui-jacuzzi-fennel.dtsi | 27 ++++++++++++
>  .../mt8183-kukui-jacuzzi-fennel14.dts         | 16 +++++++
>  .../mediatek/mt8183-kukui-jacuzzi-kappa.dts   | 16 +++++++
>  .../mediatek/mt8183-kukui-jacuzzi-kenzo.dts   | 12 +++++
>  .../mt8183-kukui-jacuzzi-willow-sku0.dts      | 13 ++++++
>  .../mt8183-kukui-jacuzzi-willow-sku1.dts      | 12 +++++
>  .../mediatek/mt8183-kukui-jacuzzi-willow.dtsi | 26 +++++++++++
>  .../dts/mediatek/mt8183-kukui-jacuzzi.dtsi    |  8 ++++
>  13 files changed, 271 insertions(+), 2 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-burnet.dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku6.dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel.dtsi
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel14.dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-kappa.dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-kenzo.dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-willow-sku0.dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-willow-sku1.dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-willow.dtsi
>
> --
> 2.31.1.498.g6c1eba8ee3d-goog
>
