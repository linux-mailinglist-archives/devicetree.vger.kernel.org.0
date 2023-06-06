Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3C9017240BE
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 13:21:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234679AbjFFLVW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 07:21:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233221AbjFFLVV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 07:21:21 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C00CE5B
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 04:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686050480; x=1717586480;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=6+enMbX5FWUtB7NnlnL7oYObKnLdcuHfKGlv6ZWU3MI=;
  b=pP1h0hn6xUZHyS4SMnvg1XadnkmY1eCWZkaA5ucXGrdmif3AsxrQn0OB
   jBveT6wH8CwHoHZ7DB8+9ftMGIHkahaoK3mldeyoDAa4E75YQB7trLXPs
   mWqoCOqS6mjZ9Jt7ztI4/XTNK0SZnSiAD0IJZlGCFbsRyBsxk427uU4Qy
   ipyC30CcQ7oEg3qLZfWnpmWD+Pb8rZ2sSJDHN6DxFV01gFX5MoBuFAblG
   +tw307rVquuZLJ/xHPECzOfcfJDZIyHvmxazmPiOaZTlEU6S8SEmdbBE3
   ZPPOjuw8T4DtyEK0gylJwy97Zz0Vggcc+H+UCzJjveyE4FWl4/PWKBXow
   g==;
X-IronPort-AV: E=Sophos;i="6.00,221,1681164000"; 
   d="scan'208";a="31301049"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 06 Jun 2023 13:21:14 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 06 Jun 2023 13:21:14 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 06 Jun 2023 13:21:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686050474; x=1717586474;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=6+enMbX5FWUtB7NnlnL7oYObKnLdcuHfKGlv6ZWU3MI=;
  b=O4eqkq9J0nxpV0SWyRE4t/D2xZNPigBwSfCSj1gwtqn6r8MQjBvo22ik
   o2Nrv7zA5fiQuYBXtdUT1rhES0jJTVBTthERiYpB3Azocax4j57xvbTql
   f7sJ+JxwTTuR9u0aRt0naRy53doYVa2eSHETJfMwpXl9wdIc2JwjaTFRX
   1O9vFBpvIjnVqTHg4Oo9XLSfPG6I10F/wsF3tT/HuGHdcq2EH3A+g8VXq
   CGa8we4NJCz3L2BfVMMn25sIcZuGCsna3lpQkBeOeDxt8T1OYyuZJOll9
   6WIj6Ae3A8tT4XXdA2i6ydCcEmhiiIo8Z8ER2DcGEC1wHxlWRpZxP7kje
   w==;
X-IronPort-AV: E=Sophos;i="6.00,221,1681164000"; 
   d="scan'208";a="31301048"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 06 Jun 2023 13:21:14 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 6A8E3280094;
        Tue,  6 Jun 2023 13:21:14 +0200 (CEST)
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
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux@ew.tq-group.com
Subject: [PATCH 3/3] arm64: defconfig: Enable i.MX8QXP device drivers
Date:   Tue,  6 Jun 2023 13:21:08 +0200
Message-Id: <20230606112108.685885-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230606112108.685885-1-alexander.stein@ew.tq-group.com>
References: <20230606112108.685885-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UPPERCASE_50_75,URIBL_BLOCKED autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

These drivers are used on i.MX8QXP based devices.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/configs/defconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index afb63e3721d99..e8128f68368d6 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -746,12 +746,14 @@ CONFIG_USB_VIDEO_CLASS=m
 CONFIG_V4L_PLATFORM_DRIVERS=y
 CONFIG_SDR_PLATFORM_DRIVERS=y
 CONFIG_V4L_MEM2MEM_DRIVERS=y
+CONFIG_VIDEO_AMPHION_VPU=m
 CONFIG_VIDEO_MEDIATEK_JPEG=m
 CONFIG_VIDEO_MEDIATEK_VCODEC=m
 CONFIG_VIDEO_IMX7_CSI=m
 CONFIG_VIDEO_IMX_MIPI_CSIS=m
 CONFIG_VIDEO_IMX8_ISI=m
 CONFIG_VIDEO_IMX8_ISI_M2M=y
+CONFIG_VIDEO_IMX8_JPEG=m
 CONFIG_VIDEO_QCOM_CAMSS=m
 CONFIG_VIDEO_QCOM_VENUS=m
 CONFIG_VIDEO_RCAR_ISP=m
@@ -978,6 +980,7 @@ CONFIG_USB_QCOM_EUD=m
 CONFIG_USB_HSIC_USB3503=y
 CONFIG_USB_ONBOARD_HUB=m
 CONFIG_NOP_USB_XCEIV=y
+CONFIG_USB_MXS_PHY=m
 CONFIG_USB_GADGET=y
 CONFIG_USB_RENESAS_USBHS_UDC=m
 CONFIG_USB_RZV2M_USB3DRD=y
@@ -1299,6 +1302,7 @@ CONFIG_EXTCON_USBC_CROS_EC=y
 CONFIG_RENESAS_RPCIF=m
 CONFIG_IIO=y
 CONFIG_EXYNOS_ADC=y
+CONFIG_IMX8QXP_ADC=m
 CONFIG_IMX93_ADC=m
 CONFIG_MAX9611=m
 CONFIG_MEDIATEK_MT6577_AUXADC=m
-- 
2.34.1

