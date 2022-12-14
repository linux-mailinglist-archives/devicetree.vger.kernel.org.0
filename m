Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B2D764CC2B
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 15:27:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238641AbiLNO1K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 09:27:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238625AbiLNO1I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 09:27:08 -0500
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E54E52035F
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 06:27:06 -0800 (PST)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1p5Sis-00050J-39; Wed, 14 Dec 2022 15:27:02 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jagan Teki <jagan@edgeble.ai>
Cc:     Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Johan Jonker <jbx6244@gmail.com>,
        linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH v9 0/8] ARM: Add Rockchip RV1126 support
Date:   Wed, 14 Dec 2022 15:26:58 +0100
Message-Id: <167102796003.2796496.3271414980618092627.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221129075424.189655-1-jagan@edgeble.ai>
References: <20221129075424.189655-1-jagan@edgeble.ai>
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

On Tue, 29 Nov 2022 13:24:16 +0530, Jagan Teki wrote:
> This patch series combined the next level dts patches for
> Rockchip RV1126 support.
> 
> Changes for v9:
> - fix serial2 alias
> - collect Krzysztof ack
> Changes for v8:
> - fix rv1126 dtsi
> - remove uart aliases
> - add adc node name
> - add uart dma-names
> - add timer0 node name
> Changes for v7:
> - fix dtbs_check
> - new dt-bindings patches
> - collect Rob Ack
> 
> [...]

Applied for 6.3, thanks!

[1/8] dt-bindings: arm: rockchip: Add pmu compatible for rv1126
      commit: 79ff3e4040fbe20a010c3e28f8916c6a44dabdbb
[3/8] ARM: dts: rockchip: Add Rockchip RV1126 pinctrl
      commit: afa5af90d2ee35c9bb283b1b0d26bd43e78df122
[4/8] ARM: dts: rockchip: Add Rockchip RV1126 SoC
      commit: 0cea6325da9dfaec807c65b0bdcfab7d9a235069
[5/8] dt-bindings: vendor-prefixes: Add Edgeble AI Technologies Pvt. Ltd.
      commit: f1459809a2194d5808067bdce86ad007f6054dc4
[6/8] dt-bindings: arm: rockchip: Add Edgeble Neural Compute Module 2
      commit: c4b37f32c7d3c79646fa090fba7054ae7141c510
[7/8] ARM: dts: rockchip: rv1126: Add Edgeble Neural Compute Module 2(Neu2)
      commit: 58022d5a620d8a6e72a8691b9df65da7951f19b9
[8/8] ARM: dts: rockchip: rv1126: Add Edgeble Neural Compute Module 2(Neu2) IO
      commit: b4dc2677b1902bb4ca7e5fef1bd49ba6138b759d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
