Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C58159E6BB
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 18:16:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239750AbiHWQPv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 12:15:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241832AbiHWQPN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 12:15:13 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57FE716BB9A
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 05:37:06 -0700 (PDT)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1oQT9Q-0004gV-Ni; Tue, 23 Aug 2022 14:37:00 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix typo in lisense text for PX30.Core
Date:   Tue, 23 Aug 2022 14:36:57 +0200
Message-Id: <166125820548.1301371.5624233232397330540.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220822103524.266731-1-jagan@amarulasolutions.com>
References: <20220822103524.266731-1-jagan@amarulasolutions.com>
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

On Mon, 22 Aug 2022 16:05:24 +0530, Jagan Teki wrote:
> Fix the Amarula Solutions typo mistake in lisense text added
> in Engicam PX30.Core SoM dtsi.

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix typo in lisense text for PX30.Core
      commit: 4a00c43818dcc19be97250d4c3c4a1e2f1ed4f9d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
