Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 453976EAA33
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 14:21:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229632AbjDUMVE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 08:21:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229612AbjDUMVD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 08:21:03 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35AF61984
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 05:21:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1682079662; x=1713615662;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=POzo9nOxKQulJvNuUWCqkj2IbIVSu+djbk1xtO+zE2E=;
  b=BbB49+JJvtU40NT8dyrRKM8ieyBTv77mOGbcmbZ3NknsjptGxRUwvfG/
   nPbvJ6nWGZejFUc1lcgh1RJz70IRw0jZVGtf927+3tNJN2ISe+52ADcPi
   xzqofCZw6jt4tUXuCSgkpLysSoiAHoLXcOvLDR7wUGIHFA13F4prvnTcT
   B8vVhFxlE7A08oVoj+YK5D1tY/OvNu4JIuBxT+4sCoe+xPZ8hIh9Mt8b6
   g9dhOg1IcqZBQpHOD/7wT1sILnT0ckUsuBwsw8/kaUf9xOx7eoWWSQz/c
   0za5PKDac3xxpy9wSIyjwAuQxutPbVsdb01Pgfv4Ze6YLXbXevW5Twi5V
   Q==;
X-IronPort-AV: E=Sophos;i="5.99,214,1677538800"; 
   d="scan'208";a="30483264"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 21 Apr 2023 14:21:00 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Fri, 21 Apr 2023 14:21:00 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Fri, 21 Apr 2023 14:21:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1682079660; x=1713615660;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=POzo9nOxKQulJvNuUWCqkj2IbIVSu+djbk1xtO+zE2E=;
  b=eg1xow0/QGg4IMuU2U12SdL0Pvq6ZQFe9dcc0c3MXMgC3+1dDTCk0UCG
   6z2LCqcmvWD4zpQtiaj7NeXj51u0bXUtBN2SbWfduumpCOUNas12vsLCn
   Vy3nRkZM842L/faOhxEj3fxDBxUhZQX+tv8AXrhaps6DLIhWAA3H7B2Rn
   pCxAULJampUhWp0BdCNEQwFt+aux9XF+w7z2zr8voEC1ejVqRt6TjcZKy
   Yq2NNohbup4lTeQFOL94trseEz24oQviisz89CC9VhC/AKOxNHex9KqD1
   p6mEE+mcfp+OfCAK6+QQgIfV4JCsejrgVB8k5IyTTH44oUS97P4Catg73
   w==;
X-IronPort-AV: E=Sophos;i="5.99,214,1677538800"; 
   d="scan'208";a="30483263"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 21 Apr 2023 14:21:00 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 38C82280056;
        Fri, 21 Apr 2023 14:21:00 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org
Subject: [PATCH 1/1] ARM: dts: mba6ulx: add missing vcc supplies to i2c devices
Date:   Fri, 21 Apr 2023 14:20:53 +0200
Message-Id: <20230421122053.1950640-1-alexander.stein@ew.tq-group.com>
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

This fixes the warnings:
pca953x 3-0020: supply vcc not found, using dummy regulator
pca953x 3-0021: supply vcc not found, using dummy regulator
pca953x 3-0022: supply vcc not found, using dummy regulator
at24 3-0051: supply vcc not found, using dummy regulator

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/mba6ulx.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/mba6ulx.dtsi b/arch/arm/boot/dts/mba6ulx.dtsi
index d08f525acfe5..e14fdee49ab7 100644
--- a/arch/arm/boot/dts/mba6ulx.dtsi
+++ b/arch/arm/boot/dts/mba6ulx.dtsi
@@ -238,6 +238,7 @@ expander_out0: gpio-expander@20 {
 		reg = <0x20>;
 		gpio-controller;
 		#gpio-cells = <2>;
+		vcc-supply = <&reg_mba6ul_3v3>;
 	};
 
 	expander_in0: gpio-expander@21 {
@@ -251,6 +252,7 @@ expander_in0: gpio-expander@21 {
 		#interrupt-cells = <2>;
 		gpio-controller;
 		#gpio-cells = <2>;
+		vcc-supply = <&reg_mba6ul_3v3>;
 
 		enet1_int-hog {
 			gpio-hog;
@@ -270,6 +272,7 @@ expander_out1: gpio-expander@22 {
 		reg = <0x22>;
 		gpio-controller;
 		#gpio-cells = <2>;
+		vcc-supply = <&reg_mba6ul_3v3>;
 	};
 
 	analog_touch: touchscreen@41 {
@@ -303,6 +306,7 @@ se97b: eeprom@51 {
 		compatible = "nxp,se97b", "atmel,24c02";
 		reg = <0x51>;
 		pagesize = <16>;
+		vcc-supply = <&reg_mba6ul_3v3>;
 	};
 };
 
-- 
2.34.1

