Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 544E06F5729
	for <lists+devicetree@lfdr.de>; Wed,  3 May 2023 13:31:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229601AbjECLbV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 May 2023 07:31:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229595AbjECLbU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 May 2023 07:31:20 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CB3C44BE
        for <devicetree@vger.kernel.org>; Wed,  3 May 2023 04:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1683113478; x=1714649478;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=/EhQbTcjfV6LWsAZqMRrWlasp/Gcy+AaqCAG9kdB2rE=;
  b=LYChWg5NHWCiFaA7DmoKvHcTI4kk37EhiVuxsbFfsRzNfnD1eVZ9sGfT
   m9J5SeomdxIqcVJhM3A1H8MWz5ELu5GOmf1RzT5xNhaOGjtPk3Sp5p/sE
   7EUrYiGoTsgUfVmwIlYb4/grRt0s2n62pvKGLk1KOvqtb3vDZqBWrww0+
   /fCxeVFcN62D/UP/wdW+fM2rXLNI6kBp7tqoYusY7VKhmHw0Snr/89T6V
   7u4iKAWHB1cF+04dcfKxSKi4/j1ubt9Eh9KmEDwdmGyU5EMppF4jJ34dw
   YQK6nJpSgVPSeutLE4ByUVtFkfvk64umpC75msynQf2lDum4NY+FsWNuq
   Q==;
X-IronPort-AV: E=Sophos;i="5.99,247,1677538800"; 
   d="scan'208";a="30692129"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 03 May 2023 13:31:16 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 03 May 2023 13:31:16 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 03 May 2023 13:31:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1683113476; x=1714649476;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=/EhQbTcjfV6LWsAZqMRrWlasp/Gcy+AaqCAG9kdB2rE=;
  b=FYPAs6s5Za3ROE0+sivNHbUz9mKQnUiuEgr6hh9JyVijjLecArWW6mOL
   jc9PGqUQFtDw9i9Vi/d3CIik31eeU0zMttCd20CMSYbr+pHNcszEM7hjM
   T1xkruJT2kxEzjK/c4pgJB1IgC8rS5N4Ycx/EvFnl00J3qJVvT23TJ1yV
   FqIKTzgDEkIvPiSZeHAqTHSLgbuKowPgN+8Gy4zsfH0+WyK5wSFMJj1R3
   qncNgEYcPynJ+qBpwqNeH9kV4YUV6iY1hoHwvZmX4OW/FD8rtL4kO6bI/
   +4Oa6gWwxBDqbNuLc9lHYTh+dD0/ojLZMbZVoFdNB7o8S8+t32avfmLXh
   A==;
X-IronPort-AV: E=Sophos;i="5.99,247,1677538800"; 
   d="scan'208";a="30692128"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 03 May 2023 13:31:16 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id BBADC280056;
        Wed,  3 May 2023 13:31:15 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>,
        Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] ARM: dts: imx6qdl-mba6: Add missing pvcie-supply regulator
Date:   Wed,  3 May 2023 13:31:10 +0200
Message-Id: <20230503113112.1751886-1-alexander.stein@ew.tq-group.com>
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

This worked before by coincidence, as the regulator was probed and enabled
before PCI RC probe. But probe order changed since commit 259b93b21a9f
("regulator: Set PROBE_PREFER_ASYNCHRONOUS for drivers that existed in
4.14") and PCIe supply is enabled after RC.
Fix this by adding the regulator to RC node.

The PCIe vaux regulator still needs to be enabled unconditionally for
Mini-PCIe USB-only devices.

Fixes: ef3846247b41 ("ARM: dts: imx6qdl: add TQ-Systems MBa6x device trees")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/imx6qdl-mba6.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/imx6qdl-mba6.dtsi b/arch/arm/boot/dts/imx6qdl-mba6.dtsi
index 78555a618851..7b7e6c2ad190 100644
--- a/arch/arm/boot/dts/imx6qdl-mba6.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-mba6.dtsi
@@ -209,6 +209,7 @@ &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
 	reset-gpio = <&gpio6 7 GPIO_ACTIVE_LOW>;
+	vpcie-supply = <&reg_pcie>;
 	status = "okay";
 };
 
-- 
2.34.1

