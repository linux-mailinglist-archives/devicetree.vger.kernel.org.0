Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A989665958
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 11:49:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231779AbjAKKt0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 05:49:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238718AbjAKKsp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 05:48:45 -0500
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B303414007
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 02:48:39 -0800 (PST)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1pFYen-0004Wz-LR; Wed, 11 Jan 2023 11:48:33 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     Sebastian Reichel <sebastian.reichel@collabora.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jagan Teki <jagan@edgeble.ai>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: arm: rockchip: Add Edgeble Neural Compute Module 6
Date:   Wed, 11 Jan 2023 11:48:27 +0100
Message-Id: <167343400177.2680857.12006555967470493603.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20230110134658.820691-1-jagan@edgeble.ai>
References: <20230110134658.820691-1-jagan@edgeble.ai>
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

On Tue, 10 Jan 2023 19:16:56 +0530, Jagan Teki wrote:
> Neural Compute Module 6(Neu6) is a 96boards SoM-CB compute module
> based on Rockchip RK3588 from Edgeble AI.
> 
> Edgeble Neural Compute Module 6(Neu6) IO board is an industrial
> form factor evaluation board from Edgeble AI.
> 
> Neu6 needs to mount on top of this IO board in order to create complete
> Edgeble Neural Compute Module 6(Neu6) IO platform.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: arm: rockchip: Add Edgeble Neural Compute Module 6
      commit: 954f5510b5a516a9d8634da22b0dce333758202d
[2/3] arm64: dts: rockchip: rk3588: Add Edgeble Neu6 Model A SoM
      commit: 3d9a2f7e7c5e55f59748b10cb1d0b5c145cf4a39
[3/3] arm64: dts: rockchip: rk3588: Add Edgeble Neu6 Model A IO
      commit: a5079a534554f67b9189359dc9cc0042a427cd7e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
