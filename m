Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5EC3567FF69
	for <lists+devicetree@lfdr.de>; Sun, 29 Jan 2023 14:39:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231154AbjA2Nj0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Jan 2023 08:39:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230286AbjA2NjZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Jan 2023 08:39:25 -0500
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 622E31E5F4
        for <devicetree@vger.kernel.org>; Sun, 29 Jan 2023 05:39:24 -0800 (PST)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1pM7tq-0003rM-Ty; Sun, 29 Jan 2023 14:39:15 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jagan Teki <jagan@amarulasolutions.com>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org,
        Manoj Sai <abbaraju.manojsai@amarulasolutions.com>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Enable Ethernet for Radxa CM3 IO
Date:   Sun, 29 Jan 2023 14:39:06 +0100
Message-Id: <167499930028.3595793.12135511389225494732.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230125161023.12115-1-jagan@amarulasolutions.com>
References: <20230125161023.12115-1-jagan@amarulasolutions.com>
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

On Wed, 25 Jan 2023 21:40:22 +0530, Jagan Teki wrote:
> From: Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
> 
> Add ethernet nodes for enabling gmac1 on the Radxa CM3 IO board.
> 
> 

Applied, thanks!

[1/2] arm64: dts: rockchip: Enable Ethernet for Radxa CM3 IO
      commit: cc52bfc04726a574fc4440bbbe0c710890e7040a
[2/2] arm64: dts: rockchip: rk3566: Enable WiFi, BT support for Radxa CM3
      commit: af5a803bf212e077e5fb7a1d4cf6be02f74a74ca

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
