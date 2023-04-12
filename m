Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1B0A6DF10D
	for <lists+devicetree@lfdr.de>; Wed, 12 Apr 2023 11:51:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229719AbjDLJvH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Apr 2023 05:51:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229477AbjDLJvG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Apr 2023 05:51:06 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C712F6A78
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 02:50:44 -0700 (PDT)
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=phil.lan)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1pmX7d-00068c-A5; Wed, 12 Apr 2023 11:50:37 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org
Cc:     Heiko Stuebner <heiko@sntech.de>,
        krzysztof.kozlowski+dt@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>, robh+dt@kernel.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: add panel to Anbernic RG353 series
Date:   Wed, 12 Apr 2023 11:50:35 +0200
Message-Id: <168129302670.3422541.10653161346618325433.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221126011432.22891-2-macroalpha82@gmail.com>
References: <20221126011432.22891-1-macroalpha82@gmail.com> <20221126011432.22891-2-macroalpha82@gmail.com>
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

On Fri, 25 Nov 2022 19:14:32 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the newly mainlined panel to the RG353 series of
> devices.
> 
> https://lore.kernel.org/dri-devel/CACRpkdatn3SFaSDwj33QVvx_B-020TaTDoPz3p_9K=EiT7A_7w@mail.gmail.com/
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: add panel to Anbernic RG353 series
      commit: 5e60ec02ec30e2db3088196a10fd20be5432bb6d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
