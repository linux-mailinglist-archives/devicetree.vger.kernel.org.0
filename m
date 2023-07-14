Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F504753F1D
	for <lists+devicetree@lfdr.de>; Fri, 14 Jul 2023 17:39:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235407AbjGNPj1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jul 2023 11:39:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234555AbjGNPj0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jul 2023 11:39:26 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8EBE1980
        for <devicetree@vger.kernel.org>; Fri, 14 Jul 2023 08:39:23 -0700 (PDT)
Received: from i53875a50.versanet.de ([83.135.90.80] helo=phil.lan)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1qKKt6-0004Kz-RY; Fri, 14 Jul 2023 17:39:20 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/8] arm64: dts: rockchip: Add PMIC for edgeble-neu6b
Date:   Fri, 14 Jul 2023 17:39:17 +0200
Message-Id: <168934909030.2268788.16181690719660508455.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230713143941.1756849-1-jagan@edgeble.ai>
References: <20230713143941.1756849-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,T_SPF_HELO_TEMPERROR autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 13 Jul 2023 20:09:34 +0530, Jagan Teki wrote:
> This adds PMIC support for the Edgeble Neu6B NCM.
> 
> 

Applied, thanks!

With a bit of reordering and adding the missing "-regulator"
to one node in the first patch.

[1/8] arm64: dts: rockchip: Add PMIC for edgeble-neu6b
      commit: 0d3f385d71cd9ed710ff5a0fd76c0d94c41edcae
[2/8] arm64: dts: rockchip: Add microSD card for edgeble-neu6b
      commit: 61808d9341338dc1041a9349a75984943cb1c8cb
[3/8] arm64: dts: rockchip: Enable SATA for edgeble-neu6b
      commit: 89f713b0590185c3d6f1afdd66791cccc74d54bb
[4/8] arm64: defconfig: Enable PHY_ROCKCHIP_NANENG_COMBO_PHY
      commit: ccc1b7ee2eb4021506838c5f12a8055955332357
[5/8] arm64: dts: rockchip: Enable RTC for edgeble-neu6b
      commit: 8f3aa4f7086e998cf14f7802c0a9265402847f7d
[6/8] arm64: dts: rockchip: Enable PWM FAN for edgeble-neu6b
      commit: b65814bfb8b329f95408142f1fa8d50072dedc2a
[7/8] arm64: dts: rockchip: Enable RS232 for edgeble-neu6b
      commit: 9ee9ea88e6c47fd8e02ab999e18ae1b49eb47ce4
[8/8] arm64: dts: rockchip: Enable RS485 for edgeble-neu6b
      commit: 9b9fb10b9d4dc08da2d0f9a2ac4a53e6a2e7ebb8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
