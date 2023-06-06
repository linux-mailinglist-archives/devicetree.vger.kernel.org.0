Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 771337249C7
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 19:07:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234825AbjFFRH1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 13:07:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233582AbjFFRH0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 13:07:26 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 241BE121
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 10:07:23 -0700 (PDT)
Received: from [91.65.34.120] (helo=phil.lan)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1q6a9O-0001ED-8d; Tue, 06 Jun 2023 19:07:18 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Chris Morgan <macroalpha82@gmail.com>,
        linux-rockchip@lists.infradead.org
Cc:     Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        broonie@kernel.org, robh+dt@kernel.org, lucas.tanure@collabora.com,
        jagan@amarulasolutions.com, sebastian.reichel@collabora.com,
        kever.yang@rock-chips.com, Chris Morgan <macromorgan@hotmail.com>,
        yifeng.zhao@rock-chips.com, andyshrk@163.com
Subject: Re: [PATCH V2 0/5] Add Support for RK3588s Indiedroid Nova
Date:   Tue,  6 Jun 2023 19:07:11 +0200
Message-Id: <168607097309.1436521.8094693391763212853.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230531161220.280744-1-macroalpha82@gmail.com>
References: <20230531161220.280744-1-macroalpha82@gmail.com>
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

On Wed, 31 May 2023 11:12:15 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the RK3588s based Indiedroid Nova. Note that this
> series is dependent on regulator support for the RK806 being
> upstreamed.
> 
> https://lore.kernel.org/linux-rockchip/20230515152044.GT10825@google.com/
> 
> [...]

Applied, thanks!

[1/5] arm64: dts: rockchip: add default pinctrl for rk3588 emmc
      commit: 47ecb3905715a73b336103cc8d225877ab50143e
[2/5] arm64: dts: rockchip: Add sdio node to rk3588
      commit: 725c47d78ddefd04a94391fafa5f99414c7f88db
[3/5] dt-bindings: vendor-prefixes: add Indiedroid
      commit: e78a863151ede8725fcb360c627e90f76fa584f3
[4/5] dt-bindings: arm: rockchip: Add Indiedroid Nova
      commit: 81154abafbe88ca7a723e34d67748a6a514ac882
[5/5] arm64: dts: rockchip: Add Indiedroid Nova board
      commit: 3900160e164bcba23a111a3ba80f06aff7764c34

Dropped a double empty line and adapted the fixed regulators
to add the "foo-regulator" suffix to them.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
