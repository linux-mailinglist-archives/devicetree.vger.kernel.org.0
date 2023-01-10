Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8C486642B2
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 15:04:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233720AbjAJOEr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 09:04:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233194AbjAJOEq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 09:04:46 -0500
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 646E3551C4
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 06:04:44 -0800 (PST)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1pFFF4-0004vx-Pt; Tue, 10 Jan 2023 15:04:42 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     Chris Morgan <macroalpha82@gmail.com>,
        linux-rockchip@lists.infradead.org
Cc:     Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        maccraft123mc@gmail.com, Chris Morgan <macromorgan@hotmail.com>,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Subject: Re: [PATCH 0/4] Miscellaneous fixes for Odroid Go Advance
Date:   Tue, 10 Jan 2023 15:04:38 +0100
Message-Id: <167335938207.2550251.3848668276552079564.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221201203655.1245-1-macroalpha82@gmail.com>
References: <20221201203655.1245-1-macroalpha82@gmail.com>
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

On Thu, 1 Dec 2022 14:36:51 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> This series is for a bunch of trivial changes to the Odroid Go
> Advance to clean up some errors in the dmesg log and make it
> easier to support with alsa ucm.
> 
> Chris Morgan (4):
>   arm64: dts: rockchip: Change audio card name for Odroid Go
>   arm64: dts: rockchip: don't set cpll rate for Odroid Go
>   arm64: dts: rockchip: update px30 thermal zones for GPU
>   arm64: dts: rockchip: Update leds for Odroid Go Advance
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: rockchip: Change audio card name for Odroid Go
      commit: 658a87efb47a85cf8205ed9280d611e9870d3e43
[2/4] arm64: dts: rockchip: don't set cpll rate for Odroid Go
      commit: 9b1eb739307d9769ff3eb04fa5938c03b16af09e
[3/4] arm64: dts: rockchip: update px30 thermal zones for GPU
      commit: 8ad9b52eea99b80e84e3a077e962ab5cf8d736a2
[4/4] arm64: dts: rockchip: Update leds for Odroid Go Advance
      commit: 882f6abdd411f941db822918ef76f4b03f2052fd

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
