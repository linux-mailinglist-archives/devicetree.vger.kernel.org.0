Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D5989782ABB
	for <lists+devicetree@lfdr.de>; Mon, 21 Aug 2023 15:40:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235488AbjHUNkp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Aug 2023 09:40:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235489AbjHUNkp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Aug 2023 09:40:45 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 817A1B1
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 06:40:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1692625243; x=1724161243;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=uP7Xt0hx5de1nCCZbGHSY5NW80hmqYxUikCrlUbFH0I=;
  b=m/TiMqJlYdZI2zNLypMvi1Xgtycg/0joKu2PVhdYCm5At09pDvQg//9v
   PLjpSpOFMzC0wbdvJO4yD5sBNQL1GkGRt7x8IvZJacRYox1uNH6j9SZkc
   XxSK2xpg43YgCauVWXUGSzjpqg4yCB3oOtsiqu5UxsM2Ls+/Ru7TrtUpX
   YAE9ntBtSpeXSALi4pfORfqlWDa+lTD7I3MdD8Zj1vuYzMVsVN4ZooUhg
   NJ2sUFKg4Z3WBpjw5h0PMwAMSs6cXFSza5k2/Zw+wl1cYPe1qPw+oPU92
   jBB5OSd2MRTLxYS/kEZZQ+LoKTqaG7rFfY11oCX4FEYHuOvUIHlzWCZZJ
   w==;
X-IronPort-AV: E=Sophos;i="6.01,190,1684792800"; 
   d="scan'208";a="32542898"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 21 Aug 2023 15:40:30 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 2807D280084;
        Mon, 21 Aug 2023 15:40:30 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux@ew.tq-group.com,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] arm64: defconfig: Enable Samsung DSIM driver
Date:   Mon, 21 Aug 2023 15:40:26 +0200
Message-Id: <20230821134026.385752-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230821134026.385752-1-alexander.stein@ew.tq-group.com>
References: <20230821134026.385752-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This driver, together with GPIO delay, is required for TQMa8MxML based
boards to use LVDS output.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 5315789f48682..17f3e865293ad 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -612,6 +612,7 @@ CONFIG_PINCTRL_SC8280XP_LPASS_LPI=m
 CONFIG_PINCTRL_SM8550=y
 CONFIG_PINCTRL_SM8550_LPASS_LPI=m
 CONFIG_PINCTRL_LPASS_LPI=m
+CONFIG_GPIO_AGGREGATOR=m
 CONFIG_GPIO_ALTERA=m
 CONFIG_GPIO_DAVINCI=y
 CONFIG_GPIO_DWAPB=y
@@ -845,6 +846,7 @@ CONFIG_DRM_LONTIUM_LT9611UXC=m
 CONFIG_DRM_ITE_IT66121=m
 CONFIG_DRM_NWL_MIPI_DSI=m
 CONFIG_DRM_PARADE_PS8640=m
+CONFIG_DRM_SAMSUNG_DSIM=m
 CONFIG_DRM_SII902X=m
 CONFIG_DRM_SIMPLE_BRIDGE=m
 CONFIG_DRM_THINE_THC63LVD1024=m
-- 
2.34.1

