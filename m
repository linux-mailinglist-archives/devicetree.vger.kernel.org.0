Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6646A612C91
	for <lists+devicetree@lfdr.de>; Sun, 30 Oct 2022 21:08:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229651AbiJ3UId (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Oct 2022 16:08:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229571AbiJ3UIb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Oct 2022 16:08:31 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16EEDA18A
        for <devicetree@vger.kernel.org>; Sun, 30 Oct 2022 13:08:31 -0700 (PDT)
Received: from [185.156.123.69] (helo=phil.sntech)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1opEbY-0005ci-3M; Sun, 30 Oct 2022 21:08:24 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     frank-w@public-files.de, robh+dt@kernel.org,
        s.hauer@pengutronix.de, pgwipeout@gmail.com,
        linux-arm-kernel@lists.infradead.org,
        Shengyu Qu <wiagn233@outlook.com>, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, frattaroli.nicolas@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, michael.riesch@wolfvision.net
Cc:     Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH RESEND 1/3] arm64: dts: rockchip: RK356x: Add I2S2 device node
Date:   Sun, 30 Oct 2022 21:08:18 +0100
Message-Id: <166716040321.1678541.11495785042253159140.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <OS3P286MB259771C12F2B15A4DDF435FE98359@OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM>
References: <20221029170903.78-1-wiagn233@outlook.com> <OS3P286MB259771C12F2B15A4DDF435FE98359@OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM>
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

On Sun, 30 Oct 2022 01:09:04 +0800, Shengyu Qu wrote:
> This patch adds I2S2 device tree node for RK3566/RK3568.
> 
> 

Applied, thanks!

[1/3] arm64: dts: rockchip: RK356x: Add I2S2 device node
      commit: 755f37010f3eac0bdfa41bdf2308e8380a93f10c
[2/3] arm64: dts: rockchip: Add I2S2 node for RADXA Rock 3A
      commit: 3a6dcf61d542fb1f4fbd546a9df91938440ece3a
[3/3] arm64: dts: rockchip: Add nodes for SDIO/UART Wi-Fi/Bluetooth modules to Radxa Rock 3A
      commit: 8cf890aabd45664b8f27a5581c8d2a51a8ce2e17

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
