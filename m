Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6764CD181C
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2019 21:12:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732213AbfJITL6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Oct 2019 15:11:58 -0400
Received: from mail.kernel.org ([198.145.29.99]:45738 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1732177AbfJITL5 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 9 Oct 2019 15:11:57 -0400
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 48061218AC
        for <devicetree@vger.kernel.org>; Wed,  9 Oct 2019 19:11:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1570648316;
        bh=O8jwXtg1v9U8cWXejLEmAqbeFN50P6h4+xOJ8Y7towA=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=NSRU4NDnCw+Kq3c/3ZSB0eydqbiJ2AbR/wa2hoJzlnHGLtF3tIh2xhIQe3S6yjxBL
         xs7aLThY2IS+iGD93GKdBQFRTdPDO1cwEceFNo37NF/bfJbfXFJpTS/w1rX/Eg0LG0
         AJN6mKfCQMguroKvNgzNrnLwrhOamQepfeY/E9FA=
Received: by mail-qt1-f170.google.com with SMTP id v52so4974846qtb.8
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2019 12:11:56 -0700 (PDT)
X-Gm-Message-State: APjAAAWrPBE4Q0MMUNUv3aMIVed5cp8vOQ8dpWHKPYj48lOyYq52nC83
        HTC4xSDKT8bhhwia9Z5XOzfrbk+yj8R/HzYQhA==
X-Google-Smtp-Source: APXvYqzu7TJ+5EgzyDuEhGR1j7jBA1LUvxMN7Is5FsSlpF6HEfboZh9VJY/71a8jE74qd2sloOr5YYGby8ykbyc9uUU=
X-Received: by 2002:ac8:6782:: with SMTP id b2mr5486860qtp.143.1570648315393;
 Wed, 09 Oct 2019 12:11:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190926202217.9965-1-kumar.gala@linaro.org>
In-Reply-To: <20190926202217.9965-1-kumar.gala@linaro.org>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Wed, 9 Oct 2019 14:11:44 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJ3R-RDWs6Z+C55CSwmU-=rWUbeuORvfJ9acs=t3qLPKA@mail.gmail.com>
Message-ID: <CAL_JsqJ3R-RDWs6Z+C55CSwmU-=rWUbeuORvfJ9acs=t3qLPKA@mail.gmail.com>
Subject: Re: [PATCH] dts: Change status = "ok" -> status = "okay"
To:     Kumar Gala <kumar.gala@linaro.org>
Cc:     Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 26, 2019 at 3:22 PM Kumar Gala <kumar.gala@linaro.org> wrote:
>
> Cleanup status to use "okay" as the spec says.  While Linux has
> supported "ok", would be nice to have in tree dts files to conform to
> the spec.

Wack-a-mole!

>
> Signed-off-by: Kumar Gala <kumar.gala@linaro.org>
> ---
>  .../devicetree/bindings/csky/cpus.txt         |  4 +--
>  .../bindings/display/hisilicon/dw-dsi.txt     |  2 +-
>  .../bindings/display/ti/ti,omap-dss.txt       |  4 +--
>  .../bindings/net/apm-xgene-enet.txt           |  4 +--
>  .../devicetree/bindings/net/dsa/sja1105.txt   |  2 +-

Can you split these off and I'll take them. dts files need to go thru
arm-soc maintainers.

>  arch/arm/boot/dts/am3517-evm-ui.dtsi          |  4 +--
>  arch/arm/boot/dts/am3517-evm.dts              |  2 +-
>  arch/arm/boot/dts/am437x-gp-evm.dts           |  2 +-
>  arch/arm/boot/dts/am437x-sbc-t43.dts          |  2 +-
>  arch/arm/boot/dts/am43x-epos-evm.dts          |  2 +-
>  .../boot/dts/am57xx-beagle-x15-common.dtsi    |  6 ++--
>  arch/arm/boot/dts/am57xx-sbc-am57x.dts        |  4 +--
>  arch/arm/boot/dts/armada-388-db.dts           |  2 +-
>  arch/arm/boot/dts/bcm958525xmc.dts            |  2 +-
>  arch/arm/boot/dts/bcm958625k.dts              |  2 +-
>  arch/arm/boot/dts/da850-evm.dts               |  2 +-
>  arch/arm/boot/dts/dove.dtsi                   |  2 +-
>  arch/arm/boot/dts/dra7-evm.dts                |  2 +-
>  arch/arm/boot/dts/dra72-evm-common.dtsi       |  6 ++--
>  arch/arm/boot/dts/efm32gg-dk3750.dts          | 12 ++++----
>  arch/arm/boot/dts/efm32gg.dtsi                |  2 +-
>  arch/arm/boot/dts/hi3620-hi4511.dts           | 12 ++++----
>  arch/arm/boot/dts/hip04-d01.dts               |  2 +-
>  arch/arm/boot/dts/keystone-k2e-evm.dts        |  2 +-
>  arch/arm/boot/dts/keystone-k2hk-evm.dts       |  2 +-
>  arch/arm/boot/dts/keystone-k2l-evm.dts        |  2 +-
>  arch/arm/boot/dts/kirkwood-dockstar.dts       |  2 +-
>  arch/arm/boot/dts/kirkwood-dreamplug.dts      |  2 +-
>  arch/arm/boot/dts/kirkwood-goflexnet.dts      |  2 +-
>  .../dts/kirkwood-guruplug-server-plus.dts     |  2 +-
>  arch/arm/boot/dts/kirkwood-iconnect.dts       |  2 +-
>  arch/arm/boot/dts/kirkwood-iomega_ix2_200.dts |  2 +-
>  arch/arm/boot/dts/kirkwood-nsa3x0-common.dtsi |  2 +-
>  arch/arm/boot/dts/kirkwood.dtsi               |  4 +--
>  .../boot/dts/logicpd-som-lv-baseboard.dtsi    |  2 +-
>  .../boot/dts/logicpd-torpedo-baseboard.dtsi   |  2 +-
>  arch/arm/boot/dts/omap3-beagle-xm.dts         |  4 +--
>  arch/arm/boot/dts/omap3-beagle.dts            |  6 ++--
>  arch/arm/boot/dts/omap3-cm-t3517.dts          |  2 +-
>  arch/arm/boot/dts/omap3-cm-t3530.dts          |  2 +-
>  arch/arm/boot/dts/omap3-cm-t3730.dts          |  2 +-
>  arch/arm/boot/dts/omap3-cm-t3x.dtsi           |  4 +--
>  .../arm/boot/dts/omap3-devkit8000-common.dtsi |  4 +--
>  arch/arm/boot/dts/omap3-gta04.dtsi            |  8 ++---
>  arch/arm/boot/dts/omap3-ha-lcd.dts            |  2 +-
>  arch/arm/boot/dts/omap3-igep0020-common.dtsi  |  2 +-
>  arch/arm/boot/dts/omap3-n900.dts              |  6 ++--
>  arch/arm/boot/dts/omap3-n950.dts              |  4 +--
>  arch/arm/boot/dts/omap3-overo-common-dvi.dtsi |  2 +-
>  .../boot/dts/omap3-overo-common-lcd35.dtsi    |  2 +-
>  .../boot/dts/omap3-overo-common-lcd43.dtsi    |  2 +-
>  arch/arm/boot/dts/omap3-pandora-common.dtsi   |  4 +--
>  .../dts/omap3-panel-sharp-ls037v7dw01.dtsi    |  2 +-
>  arch/arm/boot/dts/omap3-thunder.dts           |  2 +-
>  arch/arm/boot/dts/omap34xx.dtsi               |  2 +-
>  arch/arm/boot/dts/omap36xx.dtsi               |  2 +-
>  arch/arm/boot/dts/omap4-duovero-parlor.dts    |  4 +--
>  arch/arm/boot/dts/omap4-panda-common.dtsi     |  6 ++--
>  arch/arm/boot/dts/omap4-sdp.dts               |  8 ++---
>  arch/arm/boot/dts/omap5-board-common.dtsi     |  4 +--
>  arch/arm/boot/dts/omap5-cm-t54.dts            |  6 ++--
>  .../arm/boot/dts/qcom-apq8060-dragonboard.dts | 12 ++++----
>  .../boot/dts/qcom-apq8064-asus-nexus7-flo.dts |  8 ++---
>  arch/arm/boot/dts/qcom-apq8064-cm-qs600.dts   |  8 ++---
>  arch/arm/boot/dts/qcom-apq8064-ifc6410.dts    | 10 +++----
>  .../dts/qcom-apq8064-sony-xperia-yuga.dts     |  4 +--
>  .../arm/boot/dts/qcom-apq8074-dragonboard.dts | 10 +++----
>  arch/arm/boot/dts/qcom-ipq4019-ap.dk01.1.dtsi | 18 +++++------
>  .../boot/dts/qcom-ipq4019-ap.dk04.1-c1.dts    |  4 +--
>  arch/arm/boot/dts/qcom-ipq4019-ap.dk04.1.dtsi | 10 +++----
>  .../boot/dts/qcom-ipq4019-ap.dk07.1-c1.dts    |  8 ++---
>  .../boot/dts/qcom-ipq4019-ap.dk07.1-c2.dts    |  2 +-
>  arch/arm/boot/dts/qcom-ipq4019-ap.dk07.1.dtsi | 10 +++----
>  arch/arm/boot/dts/qcom-ipq8064-ap148.dts      |  2 +-
>  arch/arm/boot/dts/qcom-ipq8064-v1.0.dtsi      | 12 ++++----
>  arch/arm/boot/dts/qcom-mdm9615-wp8548.dtsi    | 16 +++++-----
>  arch/arm/boot/dts/qcom-msm8660-surf.dts       |  4 +--
>  arch/arm/boot/dts/qcom-msm8960-cdp.dts        |  8 ++---
>  .../boot/dts/qcom-msm8974-fairphone-fp2.dts   | 10 +++----
>  .../qcom-msm8974-lge-nexus5-hammerhead.dts    | 30 +++++++++----------
>  .../boot/dts/qcom-msm8974-samsung-klte.dts    |  2 +-
>  .../dts/qcom-msm8974-sony-xperia-amami.dts    | 14 ++++-----
>  .../dts/qcom-msm8974-sony-xperia-castor.dts   | 18 +++++------
>  .../dts/qcom-msm8974-sony-xperia-honami.dts   | 12 ++++----
>  arch/arm/boot/dts/rk3288-evb.dtsi             |  2 +-
>  .../boot/dts/rk3288-firefly-reload-core.dtsi  |  2 +-
>  arch/arm/boot/dts/rk3288-firefly.dtsi         |  2 +-
>  arch/arm/boot/dts/rk3288-miqi.dts             |  2 +-
>  arch/arm/boot/dts/rk3288-popmetal.dts         |  2 +-
>  arch/arm/boot/dts/rk3288-r89.dts              |  2 +-
>  arch/arm/boot/dts/rk3288-rock2-square.dts     |  2 +-
>  arch/arm/boot/dts/rk3288-tinker.dtsi          |  2 +-
>  .../boot/dts/amd/amd-overdrive-rev-b0.dts     | 22 +++++++-------
>  .../boot/dts/amd/amd-overdrive-rev-b1.dts     | 24 +++++++--------
>  arch/arm64/boot/dts/amd/amd-overdrive.dts     | 14 ++++-----
>  arch/arm64/boot/dts/amd/husky.dts             | 20 ++++++-------
>  arch/arm64/boot/dts/apm/apm-merlin.dts        | 16 +++++-----
>  arch/arm64/boot/dts/apm/apm-mustang.dts       | 16 +++++-----
>  arch/arm64/boot/dts/apm/apm-storm.dtsi        | 12 ++++----
>  .../dts/broadcom/stingray/bcm958742-base.dtsi |  2 +-
>  .../boot/dts/hisilicon/hi3660-hikey960.dts    |  4 +--
>  .../boot/dts/hisilicon/hi3670-hikey970.dts    |  2 +-
>  .../arm64/boot/dts/hisilicon/hi6220-hikey.dts | 18 +++++------
>  arch/arm64/boot/dts/hisilicon/hi6220.dtsi     |  2 +-
>  arch/arm64/boot/dts/hisilicon/hip05-d02.dts   |  6 ++--
>  arch/arm64/boot/dts/hisilicon/hip06-d03.dts   | 18 +++++------
>  arch/arm64/boot/dts/hisilicon/hip07-d05.dts   | 20 ++++++-------
>  arch/arm64/boot/dts/qcom/ipq8074-hk01.dts     | 20 ++++++-------
>  arch/arm64/boot/dts/qcom/qcs404-evb-4000.dts  |  2 +-
>  arch/arm64/boot/dts/qcom/qcs404-evb.dtsi      | 12 ++++----
>  arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi  |  2 +-
>  .../dts/rockchip/rk3368-orion-r68-meta.dts    |  2 +-
>  arch/arm64/boot/dts/rockchip/rk3368-r88.dts   |  4 +--
>  drivers/staging/mt7621-dts/gbpc1.dts          |  4 +--
>  drivers/staging/mt7621-dts/gbpc2.dts          |  4 +--
>  115 files changed, 349 insertions(+), 349 deletions(-)
