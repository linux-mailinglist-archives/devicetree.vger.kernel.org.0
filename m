Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 24E1C64C67B
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 10:59:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238058AbiLNJ7b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 04:59:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238054AbiLNJ73 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 04:59:29 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 000D6165A0
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 01:59:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1671011968; x=1702547968;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=DezIFn+HE++49a7Q/76Iqh7Qdjg97IEqYjHfcLo2DQQ=;
  b=CCnMFOfuQhCjtlT4buep0v/5rWnxIUk5HYpoiRhW0ljaOqM/0IoPsQ7I
   wlTV7clZYOK9jZUIITDb/s6zDpdcI2uu1yp1eCST5Yc/hnc6iZXyhzEX8
   fBis8Ic7U3qUDlO0ARTk2MyCJt6cwBSTptx/p8neN2pEi3/a/nLzXpow9
   frwYyrTR2cnbtRXpctHOCJq+m00X9NzmmJcgYFgwJwvz4c+xfMLRoL7sI
   OnILF55xZ0ZM/X4pD+GABq0YuqbSHCdqWQCpURzG3w2hIN/cVAjDUohQK
   InMU7Mo1mViitQG5nqUZxyR0HqxjOqOmBTZYot4krRpa0Rm6SXx9mOxtK
   g==;
X-IronPort-AV: E=Sophos;i="5.96,244,1665439200"; 
   d="scan'208";a="27943349"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 14 Dec 2022 10:59:24 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 14 Dec 2022 10:59:24 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 14 Dec 2022 10:59:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1671011964; x=1702547964;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=DezIFn+HE++49a7Q/76Iqh7Qdjg97IEqYjHfcLo2DQQ=;
  b=TquyMJSbEWIpipM0uHtICXCIWsQlehN7kVgIF9BTpDPjabuj43Xg7s1n
   DnRi9RjifblpkVAWscOd9x8gtqUu9vSMnfBvc2wFPhvbjZQ2r8QTiEJZE
   3PJl+L9toC+GFF3hR5h5DS445rqLxfj2FFJuIUqlr7zds+srSRegoytpZ
   hPbpk4O2+Me1IQPTBnPIw6rF7B0bcVOkkQPLrJf2EzPjJpKKjsIGyPHJa
   D//7v4lhjOHTSn6J5v66AUNB0vaAat8F5i09w2I2Td0JZ0lZsLTxLDeQE
   uvOZEOLdfHVYe/7LhIQLLPZUCDYi5WODQ6WtcQ5aaHRsxOpLj43shbWNQ
   g==;
X-IronPort-AV: E=Sophos;i="5.96,244,1665439200"; 
   d="scan'208";a="27943348"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 14 Dec 2022 10:59:24 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id F2AF0280072;
        Wed, 14 Dec 2022 10:59:23 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        linux@ew.tq-group.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 6/7] ARM: dts: mba6ulx: Fix temperature sensor compatible
Date:   Wed, 14 Dec 2022 10:59:16 +0100
Message-Id: <20221214095917.964695-6-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221214095917.964695-1-alexander.stein@ew.tq-group.com>
References: <20221214095917.964695-1-alexander.stein@ew.tq-group.com>
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
 arch/arm/boot/dts/mba6ulx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/mba6ulx.dtsi b/arch/arm/boot/dts/mba6ulx.dtsi
index b8e576ab8860d..d08f525acfe56 100644
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

