Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B212970AD82
	for <lists+devicetree@lfdr.de>; Sun, 21 May 2023 12:47:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231354AbjEUKrJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 May 2023 06:47:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231866AbjEUKqi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 May 2023 06:46:38 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59BF51A1
        for <devicetree@vger.kernel.org>; Sun, 21 May 2023 03:45:03 -0700 (PDT)
Received: from [91.65.34.120] (helo=phil.lan)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1q0gYe-0008By-CN; Sun, 21 May 2023 12:45:00 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Jagan Teki <jagan@edgeble.ai>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/4] dt-bindings: arm: rockchip: Add Edgeble Neural Compute Module 6B
Date:   Sun, 21 May 2023 12:44:57 +0200
Message-Id: <168466589374.900480.15227569232227346086.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230516163454.997736-1-jagan@edgeble.ai>
References: <20230516163454.997736-1-jagan@edgeble.ai>
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

On Tue, 16 May 2023 22:04:51 +0530, Jagan Teki wrote:
> Neural Compute Module 6B(Neu6B) is a 96boards SoM-CB compute module
> based on Rockchip RK3588J from Edgeble AI.
> 
> Edgeble Neural Compute Module 6B(Neu6B) IO board is an industrial
> form factor evaluation board from Edgeble AI.
> 
> Neu6B needs to mount on top of this IO board in order to create complete
> Edgeble Neural Compute Module 6B(Neu6B) IO platform.
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: arm: rockchip: Add Edgeble Neural Compute Module 6B
      commit: addc72dc55118a1e80f8c77767a5c94000248d3d
[2/4] arm64: dts: rockchip: Add Rockchip RK3588J
      commit: 8274a04ff1dc76bfc412d389123eb2a5f474549d
[3/4] arm64: dts: rockchip: rk3588: Add Edgeble Neu6 Model B SoM
      commit: 903cabd3f7b215a49040bf21b6dde23d62240934
[4/4] arm64: dts: rockchip: rk3588: Add Edgeble Neu6 Model B IO
      commit: 9afb9cc4874d94fe27bd8c9040ed8bc9b13bc59f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
