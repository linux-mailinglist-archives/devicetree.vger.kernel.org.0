Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 00585778247
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 22:44:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234509AbjHJUo2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 16:44:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232956AbjHJUo2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 16:44:28 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD9461BF7
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 13:44:25 -0700 (PDT)
Received: from i53875bbf.versanet.de ([83.135.91.191] helo=phil.lan)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1qUCW6-0007VS-IY; Thu, 10 Aug 2023 22:44:22 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jagan Teki <jagan@edgeble.ai>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH 00/13] arm64: rockchip: Add more RV1126 DT nodes
Date:   Thu, 10 Aug 2023 22:44:21 +0200
Message-Id: <169170020924.3368292.14735229248126495361.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230731103518.2906147-1-jagan@edgeble.ai>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_PASS,T_SPF_HELO_TEMPERROR autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 31 Jul 2023 16:05:05 +0530, Jagan Teki wrote:
> Patchset adds more DT nodes for Rockchip RV1126.
> 
> Jagan Teki (12):
>   dt-bindings: pwm: rockchip: Document rv1126-pwm
>   ARM: dts: rockchip: rv1126: Add pwm2m0 pins
>   ARM: dts: rockchip: rv1126: Add pwm2 node
>   ARM: dts: rockchip: rv1126: Add pwm11m0 pins
>   ARM: dts: rockchip: rv1126: Add pwm11 node
>   ARM: dts: rockchip: rv1126: Add SFC node
>   ARM: dts: rockchip: rv1126: Add FSPI pins
>   ARM: dts: rockchip: rv1126: Add uart5m2_xfer pins
>   ARM: dts: rv1126: Enable pwm fan for edgeble-neu2
>   ARM: dts: rv1126: Drop EMMC_RSTN for edgeble-neu2
>   ARM: dts: rv1126: Add 3V3_SYS regulator for edgeble-neu2
>   ARM: dts: rv1126: Add 12V main supply for edgeble-neu2
> 
> [...]

Applied, thanks!

I've picked the patches not depending on the pwm binding change.
We'll see about the rest once the binding gets somewhere.


[06/13] ARM: dts: rockchip: rv1126: Add SFC node
        commit: c3ae1484e112343dc5d9fc33ca0cc83c994939c1
[07/13] ARM: dts: rockchip: rv1126: Add FSPI pins
        commit: d91d25b1db47fd5d91782298ac6e6e418aa2da46
[08/13] ARM: dts: rockchip: rv1126: Add uart5m2_xfer pins
        commit: 753c8a7d8bbda86811943b62f8d33c2e0d5e7046
[10/13] ARM: dts: rv1126: Drop EMMC_RSTN for edgeble-neu2
        commit: 012f90c31babdbd94f3e7bc80400f3d4ae5035bf
[11/13] ARM: dts: rv1126: Enable SFC for edgeble-neu2
        commit: f544630dc4967fc58cc995d0d2dd3940d9848c39
[12/13] ARM: dts: rv1126: Add 3V3_SYS regulator for edgeble-neu2
        commit: 5d1d164da4df3c744cf32cb1dae9fcd5837a0240
[13/13] ARM: dts: rv1126: Add 12V main supply for edgeble-neu2
        commit: c991ed9f57c8025b248e284545c5310e67dc44cf

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
