Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E9A4470183F
	for <lists+devicetree@lfdr.de>; Sat, 13 May 2023 18:49:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229910AbjEMQtg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 May 2023 12:49:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229654AbjEMQtf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 May 2023 12:49:35 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 784AC213E
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 09:49:34 -0700 (PDT)
Received: from p508fce4f.dip0.t-ipconnect.de ([80.143.206.79] helo=phil.fritz.box)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1pxsR2-0000Vh-5r; Sat, 13 May 2023 18:49:32 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Chris Morgan <macroalpha82@gmail.com>,
        linux-rockchip@lists.infradead.org
Cc:     Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        Chris Morgan <macromorgan@hotmail.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Update leds for Anbernic RGxx3 Series
Date:   Sat, 13 May 2023 18:49:28 +0200
Message-Id: <168399655503.610817.5823493589952810198.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230512191633.33416-1-macroalpha82@gmail.com>
References: <20230512191633.33416-1-macroalpha82@gmail.com>
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

On Fri, 12 May 2023 14:16:33 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Each of the LEDs on the RGxx3 which is currently controlled via GPIO
> can also be controlled via a PWM. Change each of the LEDs to PWM so
> that users have the ability to adjust the brightness of the LEDs
> according to their preference.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Update leds for Anbernic RGxx3 Series
      commit: 87c692fde46a511aa365d220588d0566125f4035

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
