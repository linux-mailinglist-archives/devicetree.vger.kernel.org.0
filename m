Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0434A67379F
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 12:58:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229949AbjASL6l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 06:58:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231162AbjASL6S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 06:58:18 -0500
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8614778AAC
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 03:57:32 -0800 (PST)
Received: from wf0783.dip.tu-dresden.de ([141.76.183.15] helo=phil.dip.tu-dresden.de)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1pITXg-0002cW-HL; Thu, 19 Jan 2023 12:57:16 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/2] arm64: dts: rockchip: Update eMMC, SD aliases for Radxa SoM boards
Date:   Thu, 19 Jan 2023 12:57:13 +0100
Message-Id: <167412943038.431585.2721937683421159813.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230118080454.11643-1-jagan@amarulasolutions.com>
References: <20230118080454.11643-1-jagan@amarulasolutions.com>
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

On Wed, 18 Jan 2023 13:34:53 +0530, Jagan Teki wrote:
> Radxa has produced Compute Modules like RK3399pro VMARC and CM3i with
> onboarding eMMC flash, so the eMMC is the primary MMC device.
> 
> On the other hand, Rockchip boot orders start from eMMC from an MMC
> device perspective.
> 
> Mark, the eMMC has mmc0 to satisfy the above two conditions.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: Update eMMC, SD aliases for Radxa SoM boards
      commit: c80992abd2877590059e9cb254213c16824e2106
[2/2] arm64: dts: rockchip: Update eMMC, SD aliases for Radxa SBC boards
      commit: d268da063b99cf1c4d8304a33c27bbed0763a474

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
