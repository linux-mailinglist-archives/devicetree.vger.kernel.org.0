Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AFA775ACF5B
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 12:00:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236828AbiIEJ67 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 05:58:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236332AbiIEJ6y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 05:58:54 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BEDA13E1D
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 02:58:52 -0700 (PDT)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1oV8sN-0005Ed-G0; Mon, 05 Sep 2022 11:58:43 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Kever Yang <kever.yang@rock-chips.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jagan Teki <jagan@edgeble.ai>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH v3 00/19] ARM: Add Rockchip RV1126 support
Date:   Mon,  5 Sep 2022 11:58:42 +0200
Message-Id: <166237191879.2457466.6826593836554060446.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220818124132.125304-1-jagan@edgeble.ai>
References: <20220818124132.125304-1-jagan@edgeble.ai>
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

On Thu, 18 Aug 2022 18:11:13 +0530, Jagan Teki wrote:
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

[01/19] dt-bindings: power: Add power-domain header for RV1126
        commit: daf7dc86513ffc9d9b2eef0378d97361609490ca
[02/19] dt-bindings: power: rockchip: Document RV1126 power-controller
        commit: 2f3484b27598427ae582a37520b67c011597d706
[03/19] soc: rockchip: power-domain: Add RV1126 power domains
        commit: 66296e0a318e12ef1ca04013e1e893539e715c5a
[04/19] dt-bindings: power: rockchip: Document RV1126 PMU IO domains
        commit: 593e860fdff9add7f7eba504cf111b59a728fda5
[05/19] soc: rockchip: io-domain: Add RV1126 IO domains
        commit: 570ed4e5b0d9e784f51a52bede2326391afa8c3f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
