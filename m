Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E8A666B1A8
	for <lists+devicetree@lfdr.de>; Sun, 15 Jan 2023 15:49:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231233AbjAOOtq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 Jan 2023 09:49:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230380AbjAOOtn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 15 Jan 2023 09:49:43 -0500
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45D9010400
        for <devicetree@vger.kernel.org>; Sun, 15 Jan 2023 06:49:41 -0800 (PST)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1pH4KF-0007eP-O5; Sun, 15 Jan 2023 15:49:35 +0100
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     Rob Herring <robh+dt@kernel.org>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: dt-bindings: arm: rockchip: Add Radxa Compute
 Module 3
Date:   Sun, 15 Jan 2023 15:49:35 +0100
Message-ID: <5638590.DvuYhMxLoT@diego>
In-Reply-To: <167379396101.36245.3129099751878177714.b4-ty@sntech.de>
References: <20230112105902.192852-1-jagan@amarulasolutions.com>
 <167379396101.36245.3129099751878177714.b4-ty@sntech.de>
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

Am Sonntag, 15. Januar 2023, 15:46:49 CET schrieb Heiko Stuebner:
> On Thu, 12 Jan 2023 16:29:00 +0530, Jagan Teki wrote:
> > Radxa Compute Module 3(CM3) is one of the modules from a series
> > System On Module based on the Radxa ROCK 3 series and is compatible
> > with Raspberry Pi CM4 in pinout and form factor.
> > 
> > Specification:
> > - Rockchip RK3566
> > - up to 8GB LPDDR4
> > - up to 128GB high performance eMMC
> > - Optional wireless LAN, 2.4GHz and 5.0GHz IEEE 802.11b/g/n/ac wireless,
> >   BT 5.0, BLE with onboard and external antenna.
> > - Gigabit Ethernet PHY
> > 
> > [...]
> 
> Applied, thanks!
> 
> [1/3] dt-bindings: dt-bindings: arm: rockchip: Add Radxa Compute Module 3
>       commit: 8f590d9a049438f0fcab156690394be82060e800

for the record, I did drop the second dt-bindings from the subject as
suggested by Krzysztof and the patch is named
	"dt-bindings: arm: rockchip: Add Radxa Compute Module 3"

Heiko

> [2/3] arm64: dts: rockchip: rk3566: Add Radxa Compute Module 3
>       commit: 206cf8403c9e9e46b74995b5bb98c6f4162d8a29
> [3/3] arm64: dts: rockchip: rk3566: Add Radxa Compute Module 3 IO
>       commit: 856d168ab16b99b2a4d75d8f8c66390aafef996b
> 
> Best regards,
> 




