Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6017F707731
	for <lists+devicetree@lfdr.de>; Thu, 18 May 2023 03:13:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229452AbjERBNU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 21:13:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229650AbjERBNS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 21:13:18 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 732314488
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 18:13:17 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 3DB2B86272;
        Thu, 18 May 2023 03:13:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684372395;
        bh=lrL3CPTqUo86a2qKTx0+NtuIKgDH3HvodA1ObTOL0qI=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=kohMVFZsfNw7193yajpIrQcsNmTOUgPJY+qP9ArwXr60qPjhrmgWaXAPm8gUyWJvt
         ytEkFMOF6S6wuDrp8GUP6jhaaWQijNAz9D1YRWFUoVOErqutpluJ5dY6eBV0mDXDCH
         bRGv4wrp7wpjStpKK4xwJERylv9zWqItNTCpHIHpBxfCBh3ltacmRuHEZlj5v5D21P
         HoKlhWLqx9a0XcrMTzTr6i4D8BQLBSnY9LFPGfPETqmz6ZbqLUQeZyI8LvRO6V/ruC
         qgaPhonjVDcHL3Sz818ksdCZBNj8u5wo/GpOf+TVF/OrQ/R38AEKW/WbPVmGBxyhEp
         Y3cSpDyOc/srA==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        kernel@dh-electronics.com, linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 3/5] ARM: dts: stm32: Add missing detach mailbox for DHCOM SoM
Date:   Thu, 18 May 2023 03:12:44 +0200
Message-Id: <20230518011246.438097-3-marex@denx.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230518011246.438097-1-marex@denx.de>
References: <20230518011246.438097-1-marex@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add missing "detach" mailbox to this board to permit the CPU to inform
the remote processor on a detach. This signal allows the remote processor
firmware to stop IPC communication and to reinitialize the resources for
a re-attach.

Without this mailbox, detach is not possible and kernel log contains the
following warning to, so make sure all the STM32MP15xx platform DTs are
in sync regarding the mailboxes to fix the detach issue and the warning:
"
stm32-rproc 10000000.m4: mbox_request_channel_byname() could not locate channel named "detach"
"

Fixes: 6257dfc1c412 ("ARM: dts: stm32: Add coprocessor detach mbox on stm32mp15x-dkx boards")
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Richard Cochran <richardcochran@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com
---
 arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi b/arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi
index b2557bb718f52..7bf13183437c5 100644
--- a/arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi
+++ b/arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi
@@ -414,8 +414,8 @@ &iwdg2 {
 &m4_rproc {
 	memory-region = <&retram>, <&mcuram>, <&mcuram2>, <&vdev0vring0>,
 			<&vdev0vring1>, <&vdev0buffer>;
-	mboxes = <&ipcc 0>, <&ipcc 1>, <&ipcc 2>;
-	mbox-names = "vq0", "vq1", "shutdown";
+	mboxes = <&ipcc 0>, <&ipcc 1>, <&ipcc 2>, <&ipcc 3>;
+	mbox-names = "vq0", "vq1", "shutdown", "detach";
 	interrupt-parent = <&exti>;
 	interrupts = <68 1>;
 	status = "okay";
-- 
2.39.2

