Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B199D74F29A
	for <lists+devicetree@lfdr.de>; Tue, 11 Jul 2023 16:49:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232635AbjGKOtB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jul 2023 10:49:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232690AbjGKOtA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jul 2023 10:49:00 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDEFFE7A
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 07:48:50 -0700 (PDT)
Received: from i53875a50.versanet.de ([83.135.90.80] helo=phil.lan)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1qJEfY-0000LD-5Q; Tue, 11 Jul 2023 16:48:48 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Jagan Teki <jagan@edgeble.ai>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: rk3588: Drop unchanged max-frequency
Date:   Tue, 11 Jul 2023 16:48:43 +0200
Message-Id: <168908688811.1964886.9859640412943282070.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230621064507.479891-1-jagan@edgeble.ai>
References: <20230621064507.479891-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        T_SPF_HELO_TEMPERROR autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 21 Jun 2023 12:15:07 +0530, Jagan Teki wrote:
> 200MHz is the default rk3588 emmc max-frequency added in dtsi, so why
> the board DT files are adding the same value explicitly?
> 
> Drop that unchanged property value.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3588: Drop unchanged max-frequency
      commit: e70d283904829713f5454b24718dd58e2557d12b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
