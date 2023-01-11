Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3663665954
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 11:49:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232621AbjAKKtW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 05:49:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238723AbjAKKsp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 05:48:45 -0500
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A07014038
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 02:48:40 -0800 (PST)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1pFYeo-0004Wz-AK; Wed, 11 Jan 2023 11:48:34 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     linux-rockchip@lists.infradead.org, Jonas Karlman <jonas@kwiboo.se>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH 0/2] Fix HDMI CEC on Radxa ROCK 3 Model A
Date:   Wed, 11 Jan 2023 11:48:29 +0100
Message-Id: <167343400176.2680857.14944309109851778601.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20230110225547.1563119-1-jonas@kwiboo.se>
References: <20230110225547.1563119-1-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_PASS,
        T_SPF_HELO_TEMPERROR autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 10 Jan 2023 22:55:50 +0000 (UTC), Jonas Karlman wrote:
> The HDMI CEC is not working correctly on Radxa ROCK 3 Model A.
> 
> This series assigns a clock rate of 32768 to hdmi cec clock and a pinctrl
> to use HDMITX_CEC_M1 function of GPIO0_C7.
> 
> Please note that this series also requires a fix in the pinctrl driver to
> correctly select HDMITX IO mux M1 for a fully working HDMI CEC, see [1].
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: assign rate to clk_rtc_32k on rk356x
      commit: 64b69474edf3b885c19a89bb165f978ba1b4be00
[2/2] arm64: dts: rockchip: fix hdmi cec on rock-3a
      commit: 906e822c0cac24f1b20d1377eb1203963f7af97e

On patch2 I've added a pinctrl-names = default entry as well.
To prevent future issues I think it's nicer to have them together
i.e. you want to set pinctrl-0 so prevent someone from introducing
a pinctrl-1 reference in the main node.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
