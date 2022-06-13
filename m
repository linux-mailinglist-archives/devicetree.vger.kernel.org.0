Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 975DD5499B3
	for <lists+devicetree@lfdr.de>; Mon, 13 Jun 2022 19:21:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239391AbiFMRVA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jun 2022 13:21:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239186AbiFMRUl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jun 2022 13:20:41 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D54E525E8D
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 05:34:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655123650; x=1686659650;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=dWLgxrWHG6k3zYFRrTSiEi98vDRzHYA+w5aP3PPH5Mc=;
  b=WwPJUyWE2Xl5SW7Yy9jzwCITpplwALiiDEtQXgnebCAenfQK/KuaohmM
   xds2KsgjE1xe9l8ZBuOj7mSQCWNDuQ99Kb7bp0FR+JDGwvsORTYsU/yi9
   u6t3JGTJ5mQrF2l2IFnEiehyF0uR5C7jSjA7cstIpnZR0GzLQqZdWtBP2
   FdJ+3QZeyTjCdUdP67ldTsfIUv2BF2C8RPeUXeJiaj2bNEt2u7UuRBFr0
   qHruWACfhFM+S8KS2yFwnivAmJgJEw6xe4Mhv+19v55LofW+6cTVwGymh
   NrJX0alSuGxiE5H8i/qn7bzcQdcmZz2yuRyqgRIfRK/spx0at0j63oEK0
   w==;
X-IronPort-AV: E=Sophos;i="5.91,297,1647298800"; 
   d="scan'208";a="24418708"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 13 Jun 2022 14:34:03 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 13 Jun 2022 14:34:04 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 13 Jun 2022 14:34:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655123643; x=1686659643;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=dWLgxrWHG6k3zYFRrTSiEi98vDRzHYA+w5aP3PPH5Mc=;
  b=qfJITCDkAEuAi/T0RSp2BZlZzsReUyPiuyBLv3XUFoO0pcjYF9OHdt38
   F+N6t5Z//QDEvQurv7sdIyASSqyopOL2RRJLcc6Wnsbk2QMde+UToXBGb
   zJ5OG9lVqXyx4ERyzfKaaxxdWtM5eIIR8mLsKUzpNMIvnxgubrQCbty5m
   JjBMyNweOHxWk9y1/doySpaiZ2MTuYPzqxC2ZtZJwMCYhqm6HXuVNnBFa
   b7ivoAy/meMgicq3VszKUEDsrVjdTapvNx64tNT/pTs70y8QMTGlbSJ4H
   kVjVCN4vyHetipj7rMqDLvgAOR74vE7rs6H6BlaK9Me+7D+AzOwt34mKc
   w==;
X-IronPort-AV: E=Sophos;i="5.91,297,1647298800"; 
   d="scan'208";a="24418707"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 13 Jun 2022 14:34:03 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id BB57B280074;
        Mon, 13 Jun 2022 14:34:03 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/7] ARM: dts: imx6ul: fix csi node compatible
Date:   Mon, 13 Jun 2022 14:33:55 +0200
Message-Id: <20220613123357.441779-5-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220613123357.441779-1-alexander.stein@ew.tq-group.com>
References: <20220613123357.441779-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

"fsl,imx6ul-csi" was never listed as compatible to "fsl,imx7-csi", neither
in yaml bindings, nor previous txt binding. Remove the imx7 part. Fixes
the dt schema check warning:
csi@21c4000: compatible: 'oneOf' conditional failed, one must be fixed:
['fsl,imx6ul-csi', 'fsl,imx7-csi'] is too long
Additional items are not allowed ('fsl,imx7-csi' was unexpected)
'fsl,imx8mm-csi' was expected

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/imx6ul.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index b951bdb793d2..c67e28232d97 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -998,7 +998,7 @@ cpu_speed_grade: speed-grade@10 {
 			};
 
 			csi: csi@21c4000 {
-				compatible = "fsl,imx6ul-csi", "fsl,imx7-csi";
+				compatible = "fsl,imx6ul-csi";
 				reg = <0x021c4000 0x4000>;
 				interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6UL_CLK_CSI>;
-- 
2.25.1

