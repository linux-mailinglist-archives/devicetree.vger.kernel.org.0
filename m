Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E9F8612C8C
	for <lists+devicetree@lfdr.de>; Sun, 30 Oct 2022 21:08:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229556AbiJ3UI1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Oct 2022 16:08:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229476AbiJ3UI1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Oct 2022 16:08:27 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE1DC2FD
        for <devicetree@vger.kernel.org>; Sun, 30 Oct 2022 13:08:24 -0700 (PDT)
Received: from [185.156.123.69] (helo=phil.sntech)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1opEbV-0005ci-IQ; Sun, 30 Oct 2022 21:08:21 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     devicetree@vger.kernel.org, Chris Morgan <macroalpha82@gmail.com>
Cc:     Heiko Stuebner <heiko@sntech.de>, robh+dt@kernel.org,
        pgwipeout@gmail.com, linux-rockchip@lists.infradead.org,
        Chris Morgan <macromorgan@hotmail.com>,
        jagan@amarulasolutions.com, frattaroli.nicolas@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, michael.riesch@wolfvision.net
Subject: Re: [PATCH 0/4] Add Anbernic RG353V and RG353VS
Date:   Sun, 30 Oct 2022 21:08:15 +0100
Message-Id: <166716040323.1678541.11778892065439320693.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221028184045.13113-1-macroalpha82@gmail.com>
References: <20221028184045.13113-1-macroalpha82@gmail.com>
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

On Fri, 28 Oct 2022 13:40:41 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Anbernic RG353V and RG353VS handheld gaming
> consoles. These devices are extremely similar to the existing
> Anbernic RG353P.
> 
> Add support for the battery of the existing RG353P and RG503 too
> as part of this change, as to keep things compact we must first split
> the 353p devicetree into attributes common to all 353 devices and
> attributes that only exist for the 353P, 353V, and 353VS devices
> (which includes a different battery in the V and VS).
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: arm: rockchip: Add Anbernic RG353V and RG353VS
      commit: e1cc1e712d85c10ad47a083186c222210dab5b23
[2/4] arm64: dts: rockchip: add Anbernic RG353V and RG353VS
      commit: 1e141cf127262150d053ed3f80d0d3c42de11c43
[3/4] arm64: dts: rockchip: add rk817 chg to RG353P and RG503
      commit: 22a91b7614132ce0651d0ddd6e0bcee119370840
[4/4] arm64: dts: rockchip: add poll-interval to RGxx3 devices
      commit: 60bd5ee7c8a855a7917fe41771b0e297912a7626

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
