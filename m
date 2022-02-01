Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 068504A655F
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 21:06:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236494AbiBAUGt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 15:06:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231634AbiBAUGs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 15:06:48 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABEC3C061714
        for <devicetree@vger.kernel.org>; Tue,  1 Feb 2022 12:06:48 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 6D653B82DE5
        for <devicetree@vger.kernel.org>; Tue,  1 Feb 2022 20:06:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C52A9C340EB;
        Tue,  1 Feb 2022 20:06:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1643746006;
        bh=HHnfr4KolNIN7POg/D1mZ+hZ2Ot+SUvbbfpJiM88FxA=;
        h=From:To:Cc:Subject:Date:From;
        b=roCqXHG9FDtdXDB2k6lGfJG3rJpkooanJDdjwcQ8MrO+bsceKdYmzT2SkFg83wanD
         IzB/HgotoGBvSr5aBY+xmoAMM21HZqx7JuGAsffZ87xYWu8o4OqecrTPUAcc/e3AQe
         pfVv3PevDCdUVa7qSH+2e5rEow0eHhZnhwILnQBNsY/dsuickZ+/ZQLf8OHX9MqG7M
         8V7hZFA2FfFpZF54/61WjKFwkNxI5uP/CtXk5h38gOqvavvaCRB3cwEVRt8neWwQdS
         NIYg/wdoSEPW6KaJzjAD0gMxEjpNrQI4PYyUUEXeZXpKXl153qdLluqsAXKrPuoE6K
         QyRTeha7oO0xA==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     robh+dt@kernel.org, mark.rutland@arm.com
Cc:     dinguyen@kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        kernel test robot <lkp@intel.com>
Subject: [PATCHv2] ARM: dts: socfpga: arria10: align regulator node with dtschema
Date:   Tue,  1 Feb 2022 14:06:05 -0600
Message-Id: <20220201200605.2396534-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes dtbs_check warnings like:

'3-3-v-regulator' does not match any of the regexes: '.*-names$'

Cc: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
v2: fix compile error
---
 arch/arm/boot/dts/socfpga_arria5_socdk.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/socfpga_arria5_socdk.dts b/arch/arm/boot/dts/socfpga_arria5_socdk.dts
index 1b02d46496a8..29e72cd8fb38 100644
--- a/arch/arm/boot/dts/socfpga_arria5_socdk.dts
+++ b/arch/arm/boot/dts/socfpga_arria5_socdk.dts
@@ -50,7 +50,7 @@ hps3 {
 		};
 	};
 
-	regulator_3_3v: 3-3-v-regulator {
+	regulator_3_3v: regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "3.3V";
 		regulator-min-microvolt = <3300000>;
-- 
2.25.1

