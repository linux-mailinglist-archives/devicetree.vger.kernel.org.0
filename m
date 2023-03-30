Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F3366D03B8
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 13:46:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231604AbjC3Lp7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 07:45:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231491AbjC3Lpo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 07:45:44 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72131B76E
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 04:45:22 -0700 (PDT)
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=phil.lan)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1phqi2-0003YZ-GU; Thu, 30 Mar 2023 13:44:50 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Chris Morgan <macroalpha82@gmail.com>,
        linux-rockchip@lists.infradead.org
Cc:     Heiko Stuebner <heiko@sntech.de>, jonas@kwiboo.se,
        krzysztof.kozlowski+dt@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>, robh+dt@kernel.org,
        devicetree@vger.kernel.org, maccraft123mc@gmail.com
Subject: Re: [PATCH] arm64: dts: rockchip: Add clk_rtc_32k to Anbernic xx3 Devices
Date:   Thu, 30 Mar 2023 13:44:46 +0200
Message-Id: <168017666944.2380317.10324183466461610424.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230327153547.821822-1-macroalpha82@gmail.com>
References: <20230327153547.821822-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=0.0 required=5.0 tests=SPF_PASS,T_SPF_HELO_TEMPERROR
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 27 Mar 2023 10:35:47 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> For the Anbernic devices to display properly, we need to specify the
> clock frequency of the PLL_VPLL. Adding the parent clock in the
> rk356x.dtsi requires us to update our clock definitions to accomplish
> this.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add clk_rtc_32k to Anbernic xx3 Devices
      commit: 87891399d9883ed823ba58c2be3ac20cc499ad7d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
