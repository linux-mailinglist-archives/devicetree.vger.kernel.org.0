Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A2B0B645A0B
	for <lists+devicetree@lfdr.de>; Wed,  7 Dec 2022 13:42:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229670AbiLGMm1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Dec 2022 07:42:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229727AbiLGMmZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Dec 2022 07:42:25 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E21742D769
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 04:42:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670416945; x=1701952945;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=DezIFn+HE++49a7Q/76Iqh7Qdjg97IEqYjHfcLo2DQQ=;
  b=BZq9ZJsWF6lifaVL6k0pvxsKsYoELMEpRwLxqZAsK/91adJlP3Jd29xr
   J08HvN1vZUpOFrU5R/3zkZrlF0wJ8Ieehij7H2AHADaTI2uOhqOyNCd0V
   6czp94WIDEEvUhFcB4w8LZIVRn/M9DufuOsVXuz5tVCJPo2ugXn2ZBN9A
   pdNqb16PvbJ1cv8wZYvuXommGAfXgxmgIqF0qCsn8Gt/vSzGwNroqedXs
   9xnA1goEa9R2ksknzDT3rRikBLX0tcAlEBeNIteqYcV4HfqjfBd2ccsq5
   z+jKvl+ogHztFcaedDJoqb37mv/Us4gA6eoOSqhjCbPIluioBA5E+2JQ1
   w==;
X-IronPort-AV: E=Sophos;i="5.96,225,1665439200"; 
   d="scan'208";a="27811123"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 07 Dec 2022 13:42:16 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 07 Dec 2022 13:42:16 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 07 Dec 2022 13:42:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670416936; x=1701952936;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=DezIFn+HE++49a7Q/76Iqh7Qdjg97IEqYjHfcLo2DQQ=;
  b=Qqc7Vju/5wqrDwijeMx9Z7WukYgMqm1wUUGiHCrwDHws2Z0oqWO+uOIn
   KiR2ZoT6g8w/IXDVbw2XMsRS4m1kccEEV6b2IGMohvN+OoWj4YNb6MOhg
   ArDgUQiwDOkBi8D1+PdUebl+4D4qsed8PK7BEkyMP8eDad87N64h4BdQR
   oBn+ZVi7oVEGxtgOQC4t2h1BWdOxXpkRArQ9D920UOhVJ+LnapOoV69IS
   eip4AsDRjjrYc3lN1f4MZGU23m05FxM+/UN6+Tg1wmx6gLk3JnNkOJAio
   25o3yB5BxfJM7MxB2nWf0x20w1L7okfgqQpEuKDgPwSm/1qjPlnYz40m5
   A==;
X-IronPort-AV: E=Sophos;i="5.96,225,1665439200"; 
   d="scan'208";a="27811122"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 07 Dec 2022 13:42:16 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 7915A280073;
        Wed,  7 Dec 2022 13:42:16 +0100 (CET)
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
Date:   Wed,  7 Dec 2022 13:42:04 +0100
Message-Id: <20221207124205.1373202-6-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221207124205.1373202-1-alexander.stein@ew.tq-group.com>
References: <20221207124205.1373202-1-alexander.stein@ew.tq-group.com>
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

