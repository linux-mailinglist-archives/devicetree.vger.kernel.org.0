Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C7E8967FF6E
	for <lists+devicetree@lfdr.de>; Sun, 29 Jan 2023 14:39:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230501AbjA2Njc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Jan 2023 08:39:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231851AbjA2Nj2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Jan 2023 08:39:28 -0500
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87BDD20072
        for <devicetree@vger.kernel.org>; Sun, 29 Jan 2023 05:39:26 -0800 (PST)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1pM7tt-0003rM-4x; Sun, 29 Jan 2023 14:39:17 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Dan Johansen <strit@manjaro.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: set sdmmc0 speed to sd-uhs-sdr50
Date:   Sun, 29 Jan 2023 14:39:12 +0100
Message-Id: <167499930023.3595793.8532598817436240668.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230128112432.132302-1-strit@manjaro.org>
References: <20230128112432.132302-1-strit@manjaro.org>
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

On Sat, 28 Jan 2023 12:24:32 +0100, Dan Johansen wrote:
> As other rk336x based devices, the Rock 3 Model A has issues with high
> speed SD cards, so lower the speed to 50 instead of 104 in the same
> manor has the Quartz64 Model B has.
> 
> Fixes: 22a442e6 ("arm64: dts: rockchip: add basic dts for the radxa
> rock3 model a")
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: set sdmmc0 speed to sd-uhs-sdr50
      commit: 96e908b46e65b623ea325c984a0034307a0d456a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
