Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D50F6BAA1F
	for <lists+devicetree@lfdr.de>; Wed, 15 Mar 2023 08:55:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231748AbjCOHzP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Mar 2023 03:55:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231767AbjCOHzL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Mar 2023 03:55:11 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05E9C6544B
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 00:55:04 -0700 (PDT)
Received: from [46.183.103.17] (helo=phil.sntech)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1pcLxz-00079f-Kq; Wed, 15 Mar 2023 08:54:35 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     linux-rockchip@lists.infradead.org,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        Chukun Pan <amadeus@jmu.edu.cn>,
        Chris Morgan <macromorgan@hotmail.com>,
        Vasily Khoruzhick <anarsoul@gmail.com>,
        Andy Yan <andyshrk@163.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Andrew Lunn <andrew@lunn.ch>, Peter Geis <pgwipeout@gmail.com>,
        Maya Matuszczyk <maccraft123mc@gmail.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Jagan Teki <jagan@amarulasolutions.com>,
        Brian Norris <briannorris@chromium.org>,
        Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Tianling Shen <cnsztl@gmail.com>, devicetree@vger.kernel.org
Cc:     Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R5S
Date:   Wed, 15 Mar 2023 08:54:22 +0100
Message-Id: <167886685402.704797.14306613030362913076.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230308063240.107178-1-anarsoul@gmail.com>
References: <20230308063240.107178-1-anarsoul@gmail.com>
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

On Tue, 7 Mar 2023 22:32:39 -0800, Vasily Khoruzhick wrote:
> Add devicetree binding documentation for the FriendlyARM NanoPi R5S.
> 
> 

Applied, thanks!

[1/2] dt-bindings: Add doc for FriendlyARM NanoPi R5S
      commit: fd7370159c36b925c842ae1c2400d4729451ec82
[2/2] arm64: dts: rockchip: rk3568: Add FriednlyElec Nanopi R5S
      commit: c6629b9a6738a64507478527da6c7b83c10a6d2c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
