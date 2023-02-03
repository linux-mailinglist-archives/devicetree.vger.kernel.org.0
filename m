Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8366068A145
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 19:11:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232416AbjBCSKi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 13:10:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232760AbjBCSKK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 13:10:10 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 351854B772
        for <devicetree@vger.kernel.org>; Fri,  3 Feb 2023 10:10:10 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id AEA1D61FC2
        for <devicetree@vger.kernel.org>; Fri,  3 Feb 2023 18:10:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3583C433D2;
        Fri,  3 Feb 2023 18:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1675447809;
        bh=fP7LLZaVcqdtbtpq1kKq18Ezs4dcz9RFqVThu/ZiGQY=;
        h=From:To:Cc:Subject:Date:From;
        b=Yq72gCD6cb9qdxYJb3xONiP+h+xvvaXamT13CRrByDjqJ1nVySsF1wfdFOdg5b9iC
         aOjrEXpfEi00fLCcBq95GHQXch9/eYyJE+/KDo72JEasceYtt5szdbO7LFm55oT3rS
         Rtkirju6SHbh0tYVY0CTxaQGtoTVC0tRTM1Q0Yw8ibbY4mML7FPgkXbFhClXwFMXg5
         vUPCa24bdIqZNmdz9i01Ts0rfK0QOcSRj9w/xyO2x2hIGQhgOsS/2U9lfRh8QZ1qXM
         j7LUawwn+IR54/eYPwHyfL1GzyeuOzc1Y3Z4fn5K8MiD1VSdy9A2b9cHqveju9x735
         CEPZ09+RS4Lwg==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     robh+dt@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     dinguyen@kernel.org, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: socfpga: change address-cells to support 64-bit addressing
Date:   Fri,  3 Feb 2023 12:10:00 -0600
Message-Id: <20230203181000.253597-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Update the address-cells and size-cells to 2 in order to support 64-bit
addressing.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi | 5 ++---
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi     | 4 ++--
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index b488e8d185f3..41c9eb51d0ee 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -134,9 +134,8 @@ soc {
 		ranges = <0 0 0 0xffffffff>;
 
 		base_fpga_region {
-			#address-cells = <0x1>;
-			#size-cells = <0x1>;
-
+			#address-cells = <0x2>;
+			#size-cells = <0x2>;
 			compatible = "fpga-region";
 			fpga-mgr = <&fpga_mgr>;
 		};
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index f22302a19796..f9674cc46764 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -139,8 +139,8 @@ soc {
 		ranges = <0 0 0 0xffffffff>;
 
 		base_fpga_region {
-			#address-cells = <0x1>;
-			#size-cells = <0x1>;
+			#address-cells = <0x2>;
+			#size-cells = <0x2>;
 			compatible = "fpga-region";
 			fpga-mgr = <&fpga_mgr>;
 		};
-- 
2.25.1

