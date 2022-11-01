Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 06583614688
	for <lists+devicetree@lfdr.de>; Tue,  1 Nov 2022 10:21:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229905AbiKAJVm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Nov 2022 05:21:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229475AbiKAJVl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Nov 2022 05:21:41 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0D8D183A5
        for <devicetree@vger.kernel.org>; Tue,  1 Nov 2022 02:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1667294500; x=1698830500;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=ljFrnRz3JxNziIRjUO9br5/N6RmBCErSU/eqVCMCEEY=;
  b=hpLZEVDK1eX+mJeRyKypLfwWzugrUnc0nDNuQeyfiM7/umGq3TGP5Q/c
   nPh+EOqzWjFrqhI20pOEAPbxvgAhAX2gnLzlFlvWRgrwP3kQvLa4UZyB9
   qDzvrPB5/Qphg+5g5FVk1BXoSg4/Sz2ETM/5HIuloew4GddhmX47B8uFV
   AEelnwK581GoP//L6Wrf0IREXWAwi/9DNRxJaoKTw2L8oSVdZZE98CV3q
   2ZeZzwCvbMcqGroP0G/HCgYY+hcVK2NVPy6rrweKMGdkjI8IcAW34kpG9
   JmKXOv8/CF7sbNuWfMK9QfsyBuleMWZzU64ya0QS9pqNusGY0IvB8iisg
   g==;
X-IronPort-AV: E=Sophos;i="5.95,230,1661810400"; 
   d="scan'208";a="27083698"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 01 Nov 2022 10:21:36 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 01 Nov 2022 10:21:36 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 01 Nov 2022 10:21:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1667294496; x=1698830496;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=ljFrnRz3JxNziIRjUO9br5/N6RmBCErSU/eqVCMCEEY=;
  b=Ys+8LgRhcLdEUSn5jM9GQIr9WfmjjqrZ/lRrTqyd2qziofswFhRUoRPf
   ldms2p3KYTtzhJb55MIVt+etmh5y5zqy/r+MyxQZeww2uNUZf/VrZxqRH
   afs7MF+2WYPf+XCdD3O7W0O0jWMsCX6F0T6Lh1uFtpmCn78lzY91pNOsw
   7ZevKIbYsJy1Z/0Upn+cN1D8P+wHllxTnFTM6gy5VI7KA83ozBveCV6bo
   aTi1oeKUtbpV2x0H/SLMrUkwwjX0rkagc8MbED1v0+hU4hTTFT8Z5GSVi
   9p0KbTjVe1Hr1ApgHYJ7gRd36cKijs7ZytkggGyJ7hclhV8o79sAxrqpV
   w==;
X-IronPort-AV: E=Sophos;i="5.95,230,1661810400"; 
   d="scan'208";a="27083696"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 01 Nov 2022 10:21:36 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 32280280072;
        Tue,  1 Nov 2022 10:21:36 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/2] arm64: defconfig: Add Renesas 9-series PCIe clock generator
Date:   Tue,  1 Nov 2022 10:21:30 +0100
Message-Id: <20221101092130.273651-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221101092130.273651-1-alexander.stein@ew.tq-group.com>
References: <20221101092130.273651-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

MBa8MPxL (with TQMa8MPQL attached) needs this driver for PCIe reference
clock generation. Add it do default config.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Changes in v2:
* none

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 226bb30ea7e2..1650f4dec36f 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1055,6 +1055,7 @@ CONFIG_COMMON_CLK_CS2000_CP=y
 CONFIG_COMMON_CLK_FSL_SAI=y
 CONFIG_COMMON_CLK_S2MPS11=y
 CONFIG_COMMON_CLK_PWM=y
+CONFIG_COMMON_CLK_RS9_PCIE=y
 CONFIG_COMMON_CLK_VC5=y
 CONFIG_COMMON_CLK_NPCM8XX=y
 CONFIG_COMMON_CLK_BD718XX=m
-- 
2.34.1

