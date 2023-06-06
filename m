Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F5EF724742
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 17:09:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234791AbjFFPJY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 11:09:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233893AbjFFPJY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 11:09:24 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90A5A186
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 08:09:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686064161; x=1717600161;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=fOfA35EC1mg3jCynxL0VFUIAO5wVouzMs9VU0XZdGaQ=;
  b=Fun3CrQwAqG4ZeOX+H+VkWTihIuy+gCXBLo5vpSphOksE9X2BDzcwb3K
   HHnDluG7pHia2MckI2bBBVg33YTMArXPmCiCEDfwCa+tF4QH/ty0idsQ/
   5j84/j4DHnAISuUvZHDy0rxgFrTiZXc93txQxe2lzzIGnI3kfzFnBIIEF
   BGyZrBIMEo1CwlT3skwKcx44PeMzAndbiq4Wn6eLZXu2a5X04M5uEX/3q
   O1l4CFiRopCacXwKGqHEcP9CZ3aaBEZnBpVUyRszTjZkMbI/Wq0tnvA6R
   IvyjSbvT1ZNgleT7aYbQ9EuOrvcyVyyKNGEUATcH8lmvlylX4jf2cXYs6
   w==;
X-IronPort-AV: E=Sophos;i="6.00,221,1681164000"; 
   d="scan'208";a="31308215"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 06 Jun 2023 17:09:20 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 06 Jun 2023 17:09:20 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 06 Jun 2023 17:09:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686064160; x=1717600160;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=fOfA35EC1mg3jCynxL0VFUIAO5wVouzMs9VU0XZdGaQ=;
  b=KiPcq3QhEvF8fQzEcAHN71znyJmsBO7mARrgMsDM+NuRpKgWxZrpDCxE
   2lC2HzezP2UKyTJt9CHgSE7VkFxbs0OgpIXamfi2fy3UfWv+lJ6U4bt33
   xTWsho2EusUioEqriCRvh0W4eDr/8++rg0+6aC19DQRd9sS0dfhaAHfem
   CE3wCvh+XPsGHpiUV+yyuW+keT1fxbtgA+j97/0HuMcEoge08+BaRHug0
   LUBXeK6+SflOEZ2Ag1eKOcijTAM6wm8Gs7mFSuS0S4AQPTeoYl/RZR9NS
   vK4PkJxb3xHf3vSCVbBLL9x5e4S0RoePxmmcSTyIcGWIiMJQm0cZIt1eN
   A==;
X-IronPort-AV: E=Sophos;i="6.00,221,1681164000"; 
   d="scan'208";a="31308214"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 06 Jun 2023 17:09:19 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id AA345280090;
        Tue,  6 Jun 2023 17:09:19 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] imx8mq DT fixes
Date:   Tue,  6 Jun 2023 17:09:16 +0200
Message-Id: <20230606150919.778261-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

this series fixes various dtbs_check warnings for imx8mq.
Admittedly I do not know why lcdif is currently usable without apb and axi
clocks configured.

Best regards,
Alexander

Alexander Stein (3):
  arm64: dts: imx8mq: Fix lcdif compatible
  arm64: dts: imx8mq: Fix lcdif clocks
  arm64: dts: imx8mq: Add missing pci property

 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

-- 
2.34.1

