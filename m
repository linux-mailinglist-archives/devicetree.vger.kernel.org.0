Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C2746AFA96
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 00:37:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230105AbjCGXhx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 18:37:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230251AbjCGXhf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 18:37:35 -0500
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46126A92F4
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 15:37:17 -0800 (PST)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1pZgqQ-00025h-FU; Wed, 08 Mar 2023 00:35:46 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     Dan Johansen <strit@manjaro.org>,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc:     Heiko Stuebner <heiko@sntech.de>,
        Dragan Simic <dragan.simic@gmail.com>,
        JR Gonzalez <jrg@scientiam.org>, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Lower SD card speed on
Date:   Wed,  8 Mar 2023 00:35:39 +0100
Message-Id: <167823207784.205469.14298910264023031585.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230305104730.15849-1-strit@manjaro.org>
References: <20230305104730.15849-1-strit@manjaro.org>
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

On Sun, 5 Mar 2023 11:47:31 +0100, Dan Johansen wrote:
> MicroSD card slot in the Pinebook Pro is located on a separate
> daughterboard that's connected to the mainboard using a rather
> long flat cable.  The resulting signal degradation causes many
> perfectly fine microSD cards not to work in the Pinebook Pro,
> which is a common source of frustration among the owners.
> 
> Changing the mode and lowering the speed reportedly fixes this
> issue and makes many microSD cards work as expected.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Lower SD card speed on
      commit: 78aedee18a86abb0bb8e31d994467c46656e9b5d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
