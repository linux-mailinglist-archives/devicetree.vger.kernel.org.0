Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECEB8539842
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 22:53:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236714AbiEaUxP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 16:53:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229598AbiEaUxO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 16:53:14 -0400
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C6D99CF6C
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 13:53:13 -0700 (PDT)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 24VKr65G046376;
        Tue, 31 May 2022 15:53:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1654030386;
        bh=91VMu/tgaScin/s2rIe7q3iwOSS1p7DCbqmg1xdS+AE=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=JE5laFRNT+SAbhY+g1j8QOYrKfTh3AXHPT6grHYW8hAyhoenvYgzfPItJ2TwAFv8W
         pGHr3rTn2uYUUCxRrHRhtNV+VrVn3B+zRBIB2DAlbXaPHHzkc4hTTIXBuqdETuQHn/
         s541iqUq+Aw/JoI2yuExppx+v/7rahuEe5M1JjTQ=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 24VKr6to093218
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 31 May 2022 15:53:06 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Tue, 31
 May 2022 15:53:06 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Tue, 31 May 2022 15:53:06 -0500
Received: from jti.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 24VKqknb125178;
        Tue, 31 May 2022 15:53:00 -0500
From:   Georgi Vlaev <g-vlaev@ti.com>
To:     Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Georgi Vlaev <g-vlaev@ti.com>
Subject: [PATCH 2/2] arm64: dts: ti: k3-am625-sk: Add epwm nodes
Date:   Tue, 31 May 2022 23:52:29 +0300
Message-ID: <20220531205229.198011-3-g-vlaev@ti.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220531205229.198011-1-g-vlaev@ti.com>
References: <20220531205229.198011-1-g-vlaev@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add epwm nodes and mark them disabled, as they're
not currently in use.

Signed-off-by: Georgi Vlaev <g-vlaev@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am625-sk.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am625-sk.dts b/arch/arm64/boot/dts/ti/k3-am625-sk.dts
index 39fb1d763037..2ebd344a3a76 100644
--- a/arch/arm64/boot/dts/ti/k3-am625-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am625-sk.dts
@@ -493,3 +493,15 @@ &ecap2 {
 &main_mcan0 {
 	status = "disabled";
 };
+
+&epwm0 {
+	status = "disabled";
+};
+
+&epwm1 {
+	status = "disabled";
+};
+
+&epwm2 {
+	status = "disabled";
+};
-- 
2.30.2

