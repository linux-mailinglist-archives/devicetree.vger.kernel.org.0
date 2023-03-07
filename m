Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D88C76AFA9A
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 00:38:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230152AbjCGXh7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 18:37:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230180AbjCGXho (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 18:37:44 -0500
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7796EAB0BA
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 15:37:26 -0800 (PST)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1pZgqQ-00025h-5Y; Wed, 08 Mar 2023 00:35:46 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     Dan Johansen <strit@manjaro.org>,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc:     Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Lower sd speed on soquartz
Date:   Wed,  8 Mar 2023 00:35:38 +0100
Message-Id: <167823207784.205469.12953028273103565158.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230304164135.28430-1-strit@manjaro.org>
References: <20230304164135.28430-1-strit@manjaro.org>
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

On Sat, 4 Mar 2023 17:41:35 +0100, Dan Johansen wrote:
> Just like the Quartz64 Model B the previously stated speed of sdr-104
> in soquartz is too high for the hardware to reliably communicate with
> some fast SD cards.
> Especially on some carrierboards.
> 
> Lower this to sd-uhs-sdr50 to fix this.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Lower sd speed on soquartz
      commit: 5912b647bd0732ae8c78a6e5b259c82efd177d93

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
