Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 327635E7BE7
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 15:33:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229949AbiIWNdb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Sep 2022 09:33:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229726AbiIWNda (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Sep 2022 09:33:30 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8688A131F54
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 06:33:27 -0700 (PDT)
Received: from p508fdb48.dip0.t-ipconnect.de ([80.143.219.72] helo=phil.localnet)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1obinv-00074F-K3; Fri, 23 Sep 2022 15:33:19 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>,
        Jagan Teki <jagan@edgeble.ai>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>,
        Jon Lin <jon.lin@rock-chips.com>,
        Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: Re: [PATCH v5 6/6] ARM: dts: rockchip: Add Rockchip RV1126 SoC
Date:   Fri, 23 Sep 2022 15:33:18 +0200
Message-ID: <2439124.NgBsaNRSFp@phil>
In-Reply-To: <20220915163947.1922183-7-jagan@edgeble.ai>
References: <20220915163947.1922183-1-jagan@edgeble.ai> <20220915163947.1922183-7-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_PASS,
        T_SPF_HELO_TEMPERROR autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Donnerstag, 15. September 2022, 18:39:47 CEST schrieb Jagan Teki:
> RV1126 is a high-performance vision processor SoC for IPC/CVR,
> especially for AI related application.
> 
> It is based on quad-core ARM Cortex-A7 32-bit core which integrates
> NEON and FPU. There is a 32KB I-cache and 32KB D-cache for each core
> and 512KB unified L2 cache. It has build-in NPU supports INT8/INT16
> hybrid operation and computing power is up to 2.0TOPs.
> 
> This patch add basic core dtsi support.
> 
> Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>

hmm, this series doesn't really provide any board for the rv1126,
so we essentially don't even get any compile-time tests, as nothing
is using this dtsi. Can we please change that?

Thanks
Heiko


