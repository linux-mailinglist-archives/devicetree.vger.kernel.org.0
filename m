Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61B095A5581
	for <lists+devicetree@lfdr.de>; Mon, 29 Aug 2022 22:25:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229472AbiH2UZp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Aug 2022 16:25:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbiH2UZo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Aug 2022 16:25:44 -0400
X-Greylist: delayed 363 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 29 Aug 2022 13:25:42 PDT
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 171997CB73
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 13:25:41 -0700 (PDT)
Received: from secure.fukaumi.org ([10.0.0.2])
        by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 27TKI2c9030634;
        Tue, 30 Aug 2022 05:18:02 +0900
From:   FUKAUMI Naoki <naoki@radxa.com>
To:     jagan@amarulasolutions.com
Cc:     abbaraju.manojsai@amarulasolutions.com, devicetree@vger.kernel.org,
        heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
        linux-amarula@amarulasolutions.com,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
        stephen@radxa.com
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rk3399: Radxa ROCK 4C+
Date:   Mon, 29 Aug 2022 20:17:52 +0000
Message-Id: <20220829201752.518374-1-naoki@radxa.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220824080903.3696847-2-jagan@amarulasolutions.com>
References: <20220824080903.3696847-2-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00,KHOP_HELO_FCRDNS,
        SPF_HELO_NONE,SPF_SOFTFAIL,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

thank you very much for your work!

> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-4c-plus.dtb

this is not an objection, just a note for me, currently our(Radxa)
u-boot try to load "rk3399-rock-pi-4c-plus.dtb".

> +#include "rk3399-opp.dtsi"

ROCK 4C+ has RK3399-T. it needs different opp table.

> +	aliases {
> +		mmc0 = &sdmmc;

please add

		mmc1 = &sdhci;

as like as other ROCK (Pi) 4 series.

> +&hdmi_sound {
> +	status = "okay";
> +};

please add

&i2s2 {
	status = "okay";
};

too.

> +&sdmmc {
> +	bus-width = <4>;
> +	cap-mmc-highspeed;
> +	cap-sd-highspeed;
> +	card-detect-delay = <800>;
> +	disable-wp;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc_clk &sdmmc_cd &sdmmc_cmd &sdmmc_bus4>;
> +	vqmmc-supply = <&vccio_sd>;
> +	status = "okay";
> +};

does card detect work for you? it doesn't work for me. I think it
needs

	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;

instead of "&sdmmc_cd".

Best regards,

--
FUKAUMI Naoki
