Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1165865B383
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 15:47:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236211AbjABOq5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Jan 2023 09:46:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236242AbjABOqy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Jan 2023 09:46:54 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F082D5FA2
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 06:46:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1672670813; x=1704206813;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=izcwXf5nXG7tVnpB0QPy1qhei3IIAiaI22Sj9RUYRDM=;
  b=E+20elLYrjSaVsndYTvp9X2X1rw4Q11CmI02aIrapVzD13RBo1jDu0sq
   YM4D4QHbC3SFsakd5Az7ga2dMAIut9I7pSC26SnQ0rGrNqvOaacDe8+pj
   WWNPUqGCGJcNh8pYzxh+Jnh4unnBxnJT4kBhptlcIEPUDfjdn83FED4Vz
   i9diUQCfLF0szG3jtLkQ2EGBf6jNuTtyYfzj2/9i4V5o33hgnld9Sr8yr
   o+/rI38dNDScZaKZ/OQJAVOM2j5bhayqONl5AO98tT6Ytm/02ZtgjsRgo
   z+9A/RqNjumVgkkzxVKPrZw4yqc8TZr1NWlk+Us/fPIXPoDs2ru0c1m7v
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,294,1665439200"; 
   d="scan'208";a="28206312"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 02 Jan 2023 15:46:51 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 02 Jan 2023 15:46:51 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 02 Jan 2023 15:46:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1672670811; x=1704206811;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=izcwXf5nXG7tVnpB0QPy1qhei3IIAiaI22Sj9RUYRDM=;
  b=cihTqajtHveUpr3iF+mnxKWvUw0DyQzOR7Nkmeuzfxh4F3PcPUerKEIa
   lubinfBLhQuCw459NKI7ziMaDo8fHuQ3Q0rZq0RX2bRuDvbV4aV7rAhXr
   iTt/YtGTpUuRbzsa9xcjsNm3H7OjxNzruE4ocTLzGC84ID9YYLGIODg6V
   5+J11e8Yg1jop4sqxDJJS1+WMB73L70/NTEkW2ysRN9ytasqXcPasnxWW
   4sKUYROVPCaTjq7Ew1yo7v0craxzgi0K0abeqRmea5S8n64bYeryCjULi
   jVVfeqn26uW+4FnzMyYJMAfQ68FJNXyO9Gs8TgHDe5PAzpVE1tPALPdVD
   w==;
X-IronPort-AV: E=Sophos;i="5.96,294,1665439200"; 
   d="scan'208";a="28206311"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 02 Jan 2023 15:46:51 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id CC842280056;
        Mon,  2 Jan 2023 15:46:50 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux@ew.tq-group.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/2] ARM: dts: mba6ulx: Fix temperature sensor compatible
Date:   Mon,  2 Jan 2023 15:46:45 +0100
Message-Id: <20230102144647.3135147-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
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

Use the correct compatible 'nxp,se97b' as it is an SE97BTP chip.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Changes in v2:
* Split into arm-only series

 arch/arm/boot/dts/mba6ulx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/mba6ulx.dtsi b/arch/arm/boot/dts/mba6ulx.dtsi
index b8e576ab8860..d08f525acfe5 100644
--- a/arch/arm/boot/dts/mba6ulx.dtsi
+++ b/arch/arm/boot/dts/mba6ulx.dtsi
@@ -229,7 +229,7 @@ tlv320aic32x4: audio-codec@18 {
 	};
 
 	jc42: temperature-sensor@19 {
-		compatible = "nxp,se97", "jedec,jc-42.4-temp";
+		compatible = "nxp,se97b", "jedec,jc-42.4-temp";
 		reg = <0x19>;
 	};
 
-- 
2.34.1

