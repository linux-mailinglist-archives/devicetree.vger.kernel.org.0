Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85C105BBC90
	for <lists+devicetree@lfdr.de>; Sun, 18 Sep 2022 10:46:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229599AbiIRIqG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Sep 2022 04:46:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229557AbiIRIqF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Sep 2022 04:46:05 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 720A723BD1
        for <devicetree@vger.kernel.org>; Sun, 18 Sep 2022 01:46:01 -0700 (PDT)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.fritz.box)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1oZpvx-0007GZ-He; Sun, 18 Sep 2022 10:45:49 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jagan Teki <jagan@edgeble.ai>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        Jagan Teki <jagan@amarulasolutions.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH v5 0/6] ARM: Add Rockchip RV1126 support
Date:   Sun, 18 Sep 2022 10:45:47 +0200
Message-Id: <166349073672.276038.15633796567950746138.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220915163947.1922183-1-jagan@edgeble.ai>
References: <20220915163947.1922183-1-jagan@edgeble.ai>
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

On Thu, 15 Sep 2022 22:09:41 +0530, Jagan Teki wrote:
> RV1126 is a high-performance vision processor SoC for IPC/CVR,
> especially for AI related application.
> 
> This series add left over patches from v4 [1]. The dts patches
> will send in another series as we have some naming convention
> updates.
> 
> [...]

Applied, thanks!

[2/6] clk: rockchip: Add dt-binding header for RV1126
      commit: bc35a430dfde16462feb4428bc9b42c0647b5b84
[3/6] dt-bindings: clock: rockchip: Document RV1126 CRU
      commit: a1f65e64c6a3aa920b059aba5c97598cc0d17978
[4/6] clk: rockchip: Add clock controller support for RV1126 SoC.
      commit: 7f2f620daa88e72b04efd2f3da84abea0b5ca1c7

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
