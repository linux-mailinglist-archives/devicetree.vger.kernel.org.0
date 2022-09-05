Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E03C65ACFD5
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 12:24:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237494AbiIEKVk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 06:21:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237630AbiIEKVU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 06:21:20 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2D601659C
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 03:20:05 -0700 (PDT)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1oV9Cz-0005Nu-5q; Mon, 05 Sep 2022 12:20:01 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Jagan Teki <jagan@amarulasolutions.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        linux-amarula@amarulasolutions.com, FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: arm: rockchip: Document Radxa ROCK 4C+
Date:   Mon,  5 Sep 2022 12:19:59 +0200
Message-Id: <166237318680.2461447.14682764803345384227.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220902065057.97425-1-jagan@amarulasolutions.com>
References: <20220902065057.97425-1-jagan@amarulasolutions.com>
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

On Fri, 2 Sep 2022 12:20:55 +0530, Jagan Teki wrote:
> Document the dt-bindings for Radxa ROCK 4C+ SBC.
> 
> Key differences of 4C+ compared to previous ROCK Pi 4.
> - Rockchip RK3399-T SoC
> - DP from 4C replaced with micro HDMI 2K@60fps
> - 4-lane MIPI DSI with 1920*1080
> - RK817 Audio codec
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: arm: rockchip: Document Radxa ROCK 4C+
      commit: 638b8eb43b2a143f151045e66e695ba91b4a1a7c
[2/3] arm64: dts: rockchip: Add RK3399-T OPP table
      commit: 9176ba910ba0309dd025b55381601da5f414b36e
[3/3] arm64: dts: rockchip: rk3399: Radxa ROCK 4C+
      commit: 246450344dad087a121befbed1aba776dba3d377

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
