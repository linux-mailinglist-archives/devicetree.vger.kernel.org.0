Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1323F6AFA94
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 00:37:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230140AbjCGXhl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 18:37:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230179AbjCGXh0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 18:37:26 -0500
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43C6B97484;
        Tue,  7 Mar 2023 15:36:57 -0800 (PST)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1pZgqP-00025h-0m; Wed, 08 Mar 2023 00:35:45 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     Jianqun Xu <jay.xu@rock-chips.com>
Cc:     Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
        sjoerd.simons@collabora.co.uk, krzysztof.kozlowski+dt@linaro.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: rockchip: fix a typo error for rk3288 spdif node
Date:   Wed,  8 Mar 2023 00:35:34 +0100
Message-Id: <167823207782.205469.4408552227969535447.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230208091411.1603142-1-jay.xu@rock-chips.com>
References: <20230208091411.1603142-1-jay.xu@rock-chips.com>
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

On Wed, 8 Feb 2023 17:14:11 +0800, Jianqun Xu wrote:
> Fixes: 874e568e500a ("ARM: dts: rockchip: Add SPDIF transceiver for RK3288")
> 
> 

Applied, thanks!

[1/1] ARM: dts: rockchip: fix a typo error for rk3288 spdif node
      commit: 02c84f91adb9a64b75ec97d772675c02a3e65ed7

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
