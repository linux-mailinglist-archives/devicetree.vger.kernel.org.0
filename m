Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5801E755EE2
	for <lists+devicetree@lfdr.de>; Mon, 17 Jul 2023 11:00:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230197AbjGQJAl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jul 2023 05:00:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230253AbjGQJAf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jul 2023 05:00:35 -0400
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDF9A10DF
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 02:00:32 -0700 (PDT)
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id CBC923F71E
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 09:00:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1689584427;
        bh=JHnHS0B61qcl/Td8/lm9RDjYsfSOyiiTTr5PsC3FWaA=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=EfZJaB6Q53XXZ61RSRfnDiY+SHP2Acv7nEC0WY5n6b7AUWQFhLhocJthL44wXAuu9
         pyqUQa8kzTSwzXzd9mhWVhq7vwB46njI01P4Krw8qiecEI8C2k+4mhwNaVxGA96BvA
         4Ms1ulAkHRbwrOxsZJs6qMfWCBvAcrO3uKHM1kqMAaAqaaceorhxZBNalqDhu/PlWa
         5c5+Aw45o9gGrfSkvo4KvYbiIf/Nw11nuopFywTF5n5fGCoLiGyaplaRDIA1yCJJa/
         Mij5h+kaPpLRoajasj6BUONXfs8wX0anl+p8EpXbMlgmf17+4jQsJqknswzHr/kCuk
         9E/jDIheqFBAw==
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-635a4267cf5so34157216d6.2
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 02:00:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689584422; x=1692176422;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JHnHS0B61qcl/Td8/lm9RDjYsfSOyiiTTr5PsC3FWaA=;
        b=LBjtra3jyce5yhZRf2q4TfEvnGME2lo9YKcmx6dTAexNT6mMqFpw+M51T1Ia7MaEjW
         FnnRCsy7d+V1QxsHdHlX4tL9UE/fruHoCb4xmcXLv44P/8srkwNzBglhulI4FDN8ZW7w
         R4+7RNC8JIdTQDNjzB8mlSxJIW5IDt1K28CxEsGlw8QlPU+y2of4xhcaO5PU4k05UZlo
         gPoA6WqiCLTpOmM+s6kuLuY22emqV1VL8l+GHqKeR/9cugRZ7hVSoF3t128oAflrodIz
         LknRp0N3D7e1x+zb+BNL9+kpVDFqSeWEZZzC+Rk6EaNRahtrNaUZ3dNdSGjoHCmor+Z6
         fo1w==
X-Gm-Message-State: ABy/qLYl6cHvShz2u49UyxIvk98wFSv9IRYLaZG4rBUSbR31nggQRt58
        gOQLxJ9pqro4NYBOFznNPjBsyxFzKdggsMvbe1930yRYuQ8Z+t2VrugWqJfMGAwc3qSLQkr/ZKW
        diFvKYVCOgpqlxYYdo7YbsGb37ov1MOWGKNoac7CZBHb2VGy1koul3vc=
X-Received: by 2002:ac8:7c48:0:b0:403:2dfd:1fdf with SMTP id o8-20020ac87c48000000b004032dfd1fdfmr15892579qtv.23.1689584401507;
        Mon, 17 Jul 2023 02:00:01 -0700 (PDT)
X-Google-Smtp-Source: APBJJlEMazgMYki8IR1CHHFS4st+/s+/y1hah0oj0+nBQlO+NhXDM06BTdCzgvWJM4HcjDSd4KVriXj5Pmlo8MNpIrE=
X-Received: by 2002:ac8:7c48:0:b0:403:2dfd:1fdf with SMTP id
 o8-20020ac87c48000000b004032dfd1fdfmr15892526qtv.23.1689584401259; Mon, 17
 Jul 2023 02:00:01 -0700 (PDT)
MIME-Version: 1.0
References: <20230714174901.4062397-1-robh@kernel.org>
In-Reply-To: <20230714174901.4062397-1-robh@kernel.org>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Mon, 17 Jul 2023 10:59:45 +0200
Message-ID: <CAJM55Z_Eba-LKxKAH0i0_vDM6JO_HvWgDLCLFQDave2+UFLMzA@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: Explicitly include correct DT includes
To:     Rob Herring <robh@kernel.org>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>, Jacky Bai <ping.bai@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Sean Wang <sean.wang@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Chester Lin <clin@suse.com>, NXP S32 Linux Team <s32@nxp.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Damien Le Moal <dlemoal@kernel.org>,
        Vladimir Zapolskiy <vz@mleia.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Tony Lindgren <tony@atomide.com>,
        Haojian Zhuang <haojian.zhuang@linaro.org>,
        Daniel Mack <daniel@zonque.org>,
        Robert Jarzmik <robert.jarzmik@free.fr>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Viresh Kumar <vireshk@kernel.org>,
        Shiraz Hashim <shiraz.linux.kernel@gmail.com>, soc@kernel.org,
        Orson Zhai <orsonzhai@gmail.com>,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Chunyan Zhang <zhang.lyra@gmail.com>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Jianlong Huang <jianlong.huang@starfivetech.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Dvorkin Dmitry <dvorkin@tibbo.com>,
        Wells Lu <wellslutw@gmail.com>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-riscv@lists.infradead.org,
        linux-oxnas@groups.io, linux-rockchip@lists.infradead.org,
        linux-omap@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 14 Jul 2023 at 19:52, Rob Herring <robh@kernel.org> wrote:
>
> The DT of_device.h and of_platform.h date back to the separate
> of_platform_bus_type before it as merged into the regular platform bus.
> As part of that merge prepping Arm DT support 13 years ago, they
> "temporarily" include each other. They also include platform_device.h
> and of.h. As a result, there's a pretty much random mix of those include
> files used throughout the tree. In order to detangle these headers and
> replace the implicit includes with struct declarations, users need to
> explicitly include the correct includes.
>
> Signed-off-by: Rob Herring <robh@kernel.org>

>  drivers/pinctrl/starfive/pinctrl-starfive-jh7110-aon.c | 5 +----
>  drivers/pinctrl/starfive/pinctrl-starfive-jh7110-sys.c | 2 --
>  drivers/pinctrl/starfive/pinctrl-starfive-jh7110.c     | 1 -

Acked-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

Thanks,
/Emil
