Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9CCE67379E
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 12:58:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230195AbjASL6d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 06:58:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231199AbjASL6J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 06:58:09 -0500
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 531347A524
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 03:57:19 -0800 (PST)
Received: from wf0783.dip.tu-dresden.de ([141.76.183.15] helo=phil.dip.tu-dresden.de)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1pITXg-0002cW-SF; Thu, 19 Jan 2023 12:57:16 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     linux-rockchip@lists.infradead.org, Jonas Karlman <jonas@kwiboo.se>
Cc:     Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: fix probe of analog sound card on rock-3a
Date:   Thu, 19 Jan 2023 12:57:14 +0100
Message-Id: <167412943040.431585.4255178280669103908.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230115211553.445007-1-jonas@kwiboo.se>
References: <20230115211553.445007-1-jonas@kwiboo.se>
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

On Sun, 15 Jan 2023 21:15:56 +0000 (UTC), Jonas Karlman wrote:
> The following was observed on my Radxa ROCK 3 Model A board:
> 
>   rockchip-pinctrl pinctrl: pin gpio1-9 already requested by vcc-cam-regulator; cannot claim for fe410000.i2s
>   ...
>   platform rk809-sound: deferred probe pending
> 
> Fix this by supplying a board specific pinctrl with the i2s1 pins used
> by pmic codec according to the schematic [1].
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: fix probe of analog sound card on rock-3a
      commit: 1104693cdfcd337e73ab585a225f05445ff7a864

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
