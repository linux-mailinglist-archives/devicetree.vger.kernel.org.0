Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D8DD5B3EE9
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 20:34:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230036AbiIISeP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 14:34:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230354AbiIISeM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 14:34:12 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AFFB128960
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 11:34:11 -0700 (PDT)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.fritz.box)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1oWipI-0007Ij-Mq; Fri, 09 Sep 2022 20:34:04 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Sebastian Reichel <sebastian.reichel@collabora.com>,
        Lee Jones <lee@kernel.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, kernel@collabora.com,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: (subset) [PATCHv3 0/6] RK3588 Power Domain Support
Date:   Fri,  9 Sep 2022 20:33:51 +0200
Message-Id: <166274831282.21181.3968253085074632950.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220906143825.199089-1-sebastian.reichel@collabora.com>
References: <20220906143825.199089-1-sebastian.reichel@collabora.com>
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

On Tue, 6 Sep 2022 16:38:19 +0200, Sebastian Reichel wrote:
> This adds power domain support for the new RK3588(s) SoC
> series. The series has been tested with ethernet on the
> RK3588 EVB1 board.
> 
> Changes since PATCHv2:
>  * https://lore.kernel.org/all/20220831182629.79255-1-sebastian.reichel@collabora.com/
>    (Note: I accidently send PATCHv2 with an incorrect patch version)
>  * Change license of DT header after message from Finley Xiao (Thanks!)
>  * Add Lee Jones to Cc list for the MFD DT binding
>  * Collected further Acked-by for DT bindings
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: arm: rockchip: add rk5388 compatible string to pmu.yaml
      commit: aa8414fffd9892a81de76d4bb91c70149a005769
[2/6] dt-bindings: add power-domain header for rk3588
      commit: 67944950c2d0bdb7cfc8855f1d9b44fc4ef51510
[3/6] dt-bindings: power: rockchip: Add bindings for rk3588
      commit: 167bbadee8c2aa53d56a2466bddd98c8c0aaf846
[5/6] soc: rockchip: power-domain: do not enable PD
      commit: 47bceb7cda6a78b3735694790e70f5cdc254058e
[6/6] soc: rockchip: power-domain: add power domain support for rk3588
      commit: 6541b424ce1dda616d3946e839f015c984df7a99

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
