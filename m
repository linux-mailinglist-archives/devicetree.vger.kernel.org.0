Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B5DD2727A6D
	for <lists+devicetree@lfdr.de>; Thu,  8 Jun 2023 10:50:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234641AbjFHIu2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jun 2023 04:50:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235855AbjFHIt6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jun 2023 04:49:58 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 801F330CB;
        Thu,  8 Jun 2023 01:48:57 -0700 (PDT)
Received: from ip5b412278.dynamic.kabel-deutschland.de ([91.65.34.120] helo=phil.lan)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1q7BJm-0004qi-Tn; Thu, 08 Jun 2023 10:48:31 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     devicetree@vger.kernel.org, Chris Morgan <macroalpha82@gmail.com>
Cc:     Heiko Stuebner <heiko@sntech.de>, davem@davemloft.net,
        netdev@vger.kernel.org, Chris Morgan <macromorgan@hotmail.com>,
        anarsoul@gmail.com, kuba@kernel.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, pabeni@redhat.com,
        edumazet@google.com, robh+dt@kernel.org, alistair@alistair23.me,
        linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH 0/2] Correct fallback compatible for rtl8821cs bluetooth
Date:   Thu,  8 Jun 2023 10:48:29 +0200
Message-Id: <168621409737.1496691.2824759891410885435.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230508160811.3568213-1-macroalpha82@gmail.com>
References: <20230508160811.3568213-1-macroalpha82@gmail.com>
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

On Mon, 8 May 2023 11:08:09 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The realtek 8821cs bluetooth module is functionally very similar to the
> 8822cs and 8723bs modules, however unlike the 8822 module it seems to
> struggle when power management features are enabled. By switching the
> fallback string from realtek,rtl8822cs-bt to realtek,rtl8723bs-bt we
> can instruct the driver to not enable advanced power management
> features that cause the issues.
> 
> [...]

Applied, thanks!

[2/2] arm64: dts: rockchip: Fix compatible for Bluetooth
      commit: a325956fa7048906e26a4535ac2e87e111788fe8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
