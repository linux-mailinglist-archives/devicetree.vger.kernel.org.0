Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 311B666DC16
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 12:17:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235776AbjAQLRB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 06:17:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236771AbjAQLQY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 06:16:24 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7567734562
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 03:15:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1673954141; x=1705490141;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=Pup+n4b2GgYyvzGZ8XAEr2R1yi1U6aE+AzKdgcelEYY=;
  b=PC6wbmguj3FxurneCFho3gAopkQtth3sHE4jCft9H5OAohl/aAQuVj7r
   ANPdsi4Fb6gpT1cHCeKWPJ1WUT3rQb9vnEz8YpHenim8rZfXUSzai13m5
   6xUGW+SMoqNziC5545mL6Xn2lpXUnUIJEPyAU/lEAu09mxitH18wHfRqh
   RNohJDBukHxkCklJlO8tKc9VE0YJe0UTwhb9FlARbOhhho7vcVIFMCpPn
   kpexxcyQD0idD5yafAeEf+nJdy2Fo+DnhNZIfJ7QlFPddIhH126Oa4yun
   KJPIhgBrWnRoRVKmm2oW9mM/iPoFJe88XtJVCgQvBEJqQ7l+hgE5QVLFC
   g==;
X-IronPort-AV: E=Sophos;i="5.97,222,1669071600"; 
   d="scan'208";a="28474204"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 17 Jan 2023 12:15:39 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 17 Jan 2023 12:15:39 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 17 Jan 2023 12:15:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1673954139; x=1705490139;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=Pup+n4b2GgYyvzGZ8XAEr2R1yi1U6aE+AzKdgcelEYY=;
  b=DyPNH5mqjYDBXFyQVHDu8vwC3wvk4kDG/82J4GraQ9zH0qqlxa2c+15v
   lrwucv473ts2Sr0qKK1gJ07Wa12Pmqof0Uw7GUlqEV1s/sf6GM05Qoqi2
   wQnZHUTPJXWNjM+2/dCMuDYH/2B39AR9iq3eqSNZPcSncwXC57IfOpFq1
   1UaGNRf4u+oJ0q1nKOl+tukjAqdMQvj50poc4YfN+hrLh5E1UiX92HUzW
   xwqc1hl3uvOne5adINU2NUyBZ1rpP0z+REWUDYWJLRvV8LGySB4njTwbn
   XWcuxPPO0yth2xG5EHNnl4CwefQC2dlkK5RIGQPLRGNevqHDREcE16QEF
   g==;
X-IronPort-AV: E=Sophos;i="5.97,222,1669071600"; 
   d="scan'208";a="28474203"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 17 Jan 2023 12:15:39 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 7D825280056;
        Tue, 17 Jan 2023 12:15:39 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 1/1] ARM: dts: ls1021a: Disable CAN nodes by default
Date:   Tue, 17 Jan 2023 12:15:38 +0100
Message-Id: <20230117111538.2085184-1-alexander.stein@ew.tq-group.com>
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

These are peripherals with external signals, so disable them by default.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/ls1021a.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/ls1021a.dtsi b/arch/arm/boot/dts/ls1021a.dtsi
index 7c5510e34494..49c78c84cd5d 100644
--- a/arch/arm/boot/dts/ls1021a.dtsi
+++ b/arch/arm/boot/dts/ls1021a.dtsi
@@ -866,6 +866,7 @@ can0: can@2a70000 {
 			clocks = <&clockgen 4 1>, <&clockgen 4 1>;
 			clock-names = "ipg", "per";
 			big-endian;
+			status = "disabled";
 		};
 
 		can1: can@2a80000 {
@@ -875,6 +876,7 @@ can1: can@2a80000 {
 			clocks = <&clockgen 4 1>, <&clockgen 4 1>;
 			clock-names = "ipg", "per";
 			big-endian;
+			status = "disabled";
 		};
 
 		can2: can@2a90000 {
@@ -884,6 +886,7 @@ can2: can@2a90000 {
 			clocks = <&clockgen 4 1>, <&clockgen 4 1>;
 			clock-names = "ipg", "per";
 			big-endian;
+			status = "disabled";
 		};
 
 		can3: can@2aa0000 {
@@ -893,6 +896,7 @@ can3: can@2aa0000 {
 			clocks = <&clockgen 4 1>, <&clockgen 4 1>;
 			clock-names = "ipg", "per";
 			big-endian;
+			status = "disabled";
 		};
 
 		ocram1: sram@10000000 {
-- 
2.34.1

