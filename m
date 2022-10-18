Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 234A8602795
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 10:53:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229885AbiJRIxn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Oct 2022 04:53:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229727AbiJRIxm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Oct 2022 04:53:42 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3F943F1FE
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 01:53:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1666083221; x=1697619221;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=YIrqbZKy9i40cn6BDWmvSaZQwPrQGOZcBBaaGWHCepE=;
  b=DCw1bCfUmjwyatFmhnlnWabxUlW2GW4t9NY74WALXzBAyUK/03DukWM7
   eSA8zwPdp+jIdBYGOOPXD87V/H6+YR70wCcOXke2DQrDRgcIgdtQ7KL9F
   JDMnWFvp1p/uOeR3S9P1MQtJx8wtyNPrpghJLM/sXoSkXU7jOn0QXp3TI
   iWF1TQEnkrtJCi5mfiHMPUp/3Lp7yZnTqxKkB49X0QGoEz+fy4fA3DreP
   tGcjf3Vi+zhN1T3d6DJHPdBv6tl74vCp2JEWOiiA69dwdAjP9nxcvizqp
   ubijAjigwWyFecad/1iAW74aspBpZeaLVuGAPtCvWAZDfuZORfzwTtdlu
   A==;
X-IronPort-AV: E=Sophos;i="5.95,193,1661810400"; 
   d="scan'208";a="26812033"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 18 Oct 2022 10:53:38 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 18 Oct 2022 10:53:38 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 18 Oct 2022 10:53:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1666083218; x=1697619218;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=YIrqbZKy9i40cn6BDWmvSaZQwPrQGOZcBBaaGWHCepE=;
  b=d9WTTbp7q99sKV8jA/VQZafqE5mPmroerqs7i35ulEeE3emcmMthApkr
   6PyGi5YDoD4XwWa5NhzwYLKMot95QlHuib+lWyFIcign3Ish9rswqwb15
   atHumGhtigRO8vVxMFpsfPtMVRVE7nNxadIayCyhQrDS4Q9AfMEHWA4QC
   XzkoOGx6zbY1MVpCrhh4ohPj2CCH8tP9km7kJWwM+yEzn0hn7if7X7Pqo
   ZFJJurNi8owhZ82y72/vBB79mvZKF78itQ17RC4Gf7Hw0jiDlsjJBR5PK
   EvUCIzbga7b2662Xul3CBjJxtJRM1OE2LyvOjq/fwZVCq9ubC+nOEjlgJ
   g==;
X-IronPort-AV: E=Sophos;i="5.95,193,1661810400"; 
   d="scan'208";a="26812032"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 18 Oct 2022 10:53:37 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id B33FD280072;
        Tue, 18 Oct 2022 10:53:37 +0200 (CEST)
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
Subject: [PATCH 2/2] arm64: defconfig: Add Renesas 9-series PCIe clock generator
Date:   Tue, 18 Oct 2022 10:53:30 +0200
Message-Id: <20221018085330.2540222-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221018085330.2540222-1-alexander.stein@ew.tq-group.com>
References: <20221018085330.2540222-1-alexander.stein@ew.tq-group.com>
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
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 0b6af3348e79..d3f1bf5d7e15 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1049,6 +1049,7 @@ CONFIG_COMMON_CLK_CS2000_CP=y
 CONFIG_COMMON_CLK_FSL_SAI=y
 CONFIG_COMMON_CLK_S2MPS11=y
 CONFIG_COMMON_CLK_PWM=y
+CONFIG_COMMON_CLK_RS9_PCIE=y
 CONFIG_COMMON_CLK_VC5=y
 CONFIG_COMMON_CLK_NPCM8XX=y
 CONFIG_COMMON_CLK_BD718XX=m
-- 
2.25.1

