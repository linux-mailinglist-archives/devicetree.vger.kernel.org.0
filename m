Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EED4F5B6B6B
	for <lists+devicetree@lfdr.de>; Tue, 13 Sep 2022 12:11:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229876AbiIMKLe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Sep 2022 06:11:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230131AbiIMKLd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Sep 2022 06:11:33 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00EF05B79C
        for <devicetree@vger.kernel.org>; Tue, 13 Sep 2022 03:11:30 -0700 (PDT)
Received: from [185.122.133.20] (helo=phil.access.network)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1oY2t2-00041R-Ez; Tue, 13 Sep 2022 12:11:24 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Kever Yang <kever.yang@rock-chips.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@edgeble.ai>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH v4 00/13] ARM: Add Rockchip RV1126 support
Date:   Tue, 13 Sep 2022 12:11:21 +0200
Message-Id: <166306385296.157212.75916596782039579.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220907160207.3845791-1-jagan@edgeble.ai>
References: <20220907160207.3845791-1-jagan@edgeble.ai>
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

On Wed, 7 Sep 2022 21:31:54 +0530, Jagan Teki wrote:
> RV1126 is a high-performance vision processor SoC for IPC/CVR,
> especially for AI related application.
> 
> It is based on quad-core ARM Cortex-A7 32-bit core which integrates
> NEON and FPU. There is a 32KB I-cache and 32KB D-cache for each core
> and 512KB unified L2 cache. It has build-in NPU supports INT8/INT16
> hybrid operation and computing power is up to 2.0TOPs.
> 
> [...]

Applied, thanks!

[02/13] clk: rockchip: Add MUXTBL variant
        commit: 30d8b7d43c840f5907c0e688d41093f176ba8ac1
[06/13] dt-bindings: soc: rockchip: Document RV1126 grf
        commit: 26d8b279392ca93d9b725a3a05f6058db514b244
[07/13] dt-bindings: soc: rockchip: Document RV1126 pmugrf
        commit: 614ce48b63c80ddfb627c21f936675a702498528

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
