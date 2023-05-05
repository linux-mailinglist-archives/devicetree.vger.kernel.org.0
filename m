Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8E546F8183
	for <lists+devicetree@lfdr.de>; Fri,  5 May 2023 13:19:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231448AbjEELT2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 May 2023 07:19:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230460AbjEELT1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 May 2023 07:19:27 -0400
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com [IPv6:2607:f8b0:4864:20::b35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FA2DA5D1
        for <devicetree@vger.kernel.org>; Fri,  5 May 2023 04:19:26 -0700 (PDT)
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-b9d8b458e10so2137037276.1
        for <devicetree@vger.kernel.org>; Fri, 05 May 2023 04:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683285565; x=1685877565;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T3feUpYIQGe7RUPcRpAUhH9LHuTlIMcU2GGiN9TDfHw=;
        b=LsoTBJzMsLmcBqYSewflvnpqaS3p3tdF64d4CQD3ACHScORpWqOSjLGBSj+i0ESG06
         nG778upCOnVlachjLQBWTURDGrjE+dJbLwoM1f0fAkNmCiFKkU+PzMITT26U3vC7nuRt
         6/5ek7XjkxWZaTJecAzX8rDKMJig+rh32AQHuDVqybhuhvGPy1eFH1wIWDmgTTZFKhPg
         gIwJU6JbH7HSN4bgIxzgDl6mgWO5vWF8N+TA25boaB5DCnuatYmypxYRooA9jI7+5ujt
         17nlBfXtU+GsBMSxK0b7o8V/sSowJcKZDpuWMpOVTqiWKsdgjyPc9cfTazROsfe4+Z2a
         ccpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683285565; x=1685877565;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T3feUpYIQGe7RUPcRpAUhH9LHuTlIMcU2GGiN9TDfHw=;
        b=YiMvQb6c8xbW2tsdf0L5RnzqMqKTNkwNN/vA7iZdyXEetcuJoj6ctA/qU4cWiu0F4w
         WVuIhLN2XyOwUPyX7SlkXB8BeR08s1oylWz8gLE4ssjaaP/ZRp4xUA4JA72/boeaNai3
         LCjLNuEQ2/u59umg4TXTM+WntbjqGE0hmSwECWR/OZ4YPYdyfBox1eN3cocbwjsdoLpa
         NHZ3m4e1+9TpMjrxJqe9+iYgwsdbMq5SPlO1LivKolh3wYKB5bm+svw2t42KmbnXllYp
         SPuwbIvgJdjCFgHKd45UTrOJekpkv9K0y1Kk2A8Vos4Z1aA/xPjOzP4aRxz3BkDcndcu
         yIYQ==
X-Gm-Message-State: AC+VfDyTTrbMZxDQqCMB9FedslEkHYdO3xVRPz8N0pVC63iB3Vvbbx8y
        dvguC2zTg20IteRF6gSSSESs5km1hn+7JKrn0zkqug==
X-Google-Smtp-Source: ACHHUZ65O68a3MBe+eBWx6h+CrlNikgbgx067yVBIFVSEg5hqEpj32jlb7vaPN5r7/fHkYwojJsYSBaDjykqpgrTjks=
X-Received: by 2002:a25:ac08:0:b0:b9e:7d80:df68 with SMTP id
 w8-20020a25ac08000000b00b9e7d80df68mr1183119ybi.31.1683285565609; Fri, 05 May
 2023 04:19:25 -0700 (PDT)
MIME-Version: 1.0
References: <20230504-arm-dts-mv-v1-0-2c8e51a2b6c4@kernel.org> <20230504-arm-dts-mv-v1-4-2c8e51a2b6c4@kernel.org>
In-Reply-To: <20230504-arm-dts-mv-v1-4-2c8e51a2b6c4@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 5 May 2023 13:19:13 +0200
Message-ID: <CACRpkdYES6=sGwkUSkpFchg7Bv0Bkd8DSCe1JF_d2Z26KDC2Pg@mail.gmail.com>
Subject: Re: [PATCH 4/4] ARM: dts: Move .dts files to vendor sub-directories
To:     Rob Herring <robh@kernel.org>
Cc:     soc@kernel.org, Christian Marangi <ansuelsmth@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Russell King <linux@armlinux.org.uk>,
        Masahiro Yamada <masahiroy@kernel.org>,
        =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Antoine Tenart <atenart@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Joel Stanley <joel@jms.id.au>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        Lars Persson <lars.persson@axis.com>,
        Scott Branden <sbranden@broadcom.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Andre Przywara <andre.przywara@arm.com>,
        Baruch Siach <baruch@tkos.co.il>,
        Wei Xu <xuwei5@hisilicon.com>,
        Jean-Marie Verdun <verdun@hpe.com>,
        Nick Hawkins <nick.hawkins@hpe.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vladimir Zapolskiy <vz@mleia.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Lubomir Rintel <lkundrak@v3.sk>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Peter Rosin <peda@axentia.se>, Nancy Yuen <yuenn@google.com>,
        Benjamin Fair <benjaminfair@google.com>,
        =?UTF-8?Q?Jonathan_Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
        Thierry Reding <thierry.reding@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Heiko Stuebner <heiko@sntech.de>,
        Daniel Palmer <daniel@thingy.jp>,
        Romain Perier <romain.perier@gmail.com>,
        Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Masami Hiramatsu <mhiramat@kernel.org>,
        Viresh Kumar <vireshk@kernel.org>,
        Shiraz Hashim <shiraz.linux.kernel@gmail.com>,
        Patrice Chotard <patrice.chotard@foss.st.com>,
        Marek Vasut <marex@denx.de>, Qin Jian <qinjian@cqplus1.com>,
        Jisheng Zhang <jszhang@kernel.org>,
        Tony Lindgren <tony@atomide.com>,
        Paul Barker <paul.barker@sancloud.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Nishanth Menon <nm@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Enric Balletbo i Serra <eballetbo@gmail.com>,
        Javier Martinez Canillas <javier@dowhile0.org>,
        Michal Simek <michal.simek@xilinx.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@axis.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 5, 2023 at 5:29=E2=80=AFAM Rob Herring <robh@kernel.org> wrote:

> The arm dts directory has grown to 1553 boards which makes it a bit
> unwieldy to maintain and use. Past attempts stalled out due to plans to
> move .dts files out of the kernel tree. Doing that is no longer planned
> (any time soon at least), so let's go ahead and group .dts files by
> vendors. This move aligns arm with arm64 .dts file structure.
>
> Doing this enables building subsets of dts files by vendor easily
> without changing kernel configs:
>
> make allyesconfig
> make arch/arm/boot/dts/ti/
>
> There's no change to dtbs_install as the flat structure is maintained on
> install.
>
> The naming of vendor directories is roughly in this order of preference:
> - Matching original and current SoC vendor prefix/name (e.g. ti, qcom)
> - Current vendor prefix/name if still actively sold (SoCs which have
>   been aquired) (e.g. nxp/imx)
> - Existing platform name for older platforms not sold/maintained by any
>   company (e.g. gemini, nspire)
>
> The whole move was scripted with the exception of MAINTAINERS.
>
> Signed-off-by: Rob Herring <robh@kernel.org>

I love it.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
