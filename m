Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EFF4167FF70
	for <lists+devicetree@lfdr.de>; Sun, 29 Jan 2023 14:39:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231760AbjA2Njm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Jan 2023 08:39:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231357AbjA2Njj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Jan 2023 08:39:39 -0500
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E92423C42
        for <devicetree@vger.kernel.org>; Sun, 29 Jan 2023 05:39:34 -0800 (PST)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1pM7tr-0003rM-9I; Sun, 29 Jan 2023 14:39:15 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jagan Teki <jagan@amarulasolutions.com>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/4] arm64: dts: rockchip: Fix compatible for Radxa CM3
Date:   Sun, 29 Jan 2023 14:39:07 +0100
Message-Id: <167499930029.3595793.17126441001105794513.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230123071654.73139-1-jagan@amarulasolutions.com>
References: <20230123071654.73139-1-jagan@amarulasolutions.com>
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

On Mon, 23 Jan 2023 12:46:50 +0530, Jagan Teki wrote:
> The compatible string "radxa,radxa-cm3" referring the product name
> as "Radxa Radxa CM3" but the actual product name is "Radxa CM3".
> 
> Fix the compatible strings.
> 
> 

Applied, thanks!

[1/4] arm64: dts: rockchip: Fix compatible for Radxa CM3
      commit: 8f19828844f20b22182719cf53be64f8c955aee8
[2/4] arm64: dts: rockchip: Add missing CM3i fallback compatible for Radxa E25
      commit: c4d2b02d63ee38b381fbc886c02eecfec4f981cc
[3/4] arm64: dts: rockchip: Drop unneeded model for Radxa CM3i
      commit: 421c059d413812444318d27c1b4d6e71f1c1134c
[4/4] arm64: dts: rockchip: Correct the model name for Radxa E25
      commit: ef9134d9bbce071c9e4ebdcbb6f8fb1a5dd0a67e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
