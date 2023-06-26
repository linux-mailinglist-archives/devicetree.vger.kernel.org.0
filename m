Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B97B73E1F9
	for <lists+devicetree@lfdr.de>; Mon, 26 Jun 2023 16:21:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231547AbjFZOVU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jun 2023 10:21:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231520AbjFZOUx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jun 2023 10:20:53 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EC8419A1
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 07:19:55 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 53ACB60DE1
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 14:18:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D40BC433CD;
        Mon, 26 Jun 2023 14:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1687789121;
        bh=Is3Yy/YqwNVvaucf8J+nOuQl/BvtVxN0IHgWNHWmozc=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=XOJViu0O4UoenjRV4AnykfiWI/PAOwgo0yvDmu5HziSv+FPKeJgvHcDaPppYhAioG
         1/XHaM9xv1JhQTfp4HEDxmRGgWfvZhynpvm4i9OdRSz9DKl8LjpFQzWdq8TYE0UPtx
         YqZflaR+GXPEqKjIPy/704Hxq+yemNO3sqGYpqmFZObMPGbnUeCs3rxJrnkL5DB9cP
         tOH/PGmr7GHCTEFlGrRoihJViHVMSobmzTVxdold3OjIyF+MCwIWKGbjDM1ymu/SmF
         6/aGDrEgT9kXReZduWZWAUCZ0CWw4U6ZhwQTTaJiCiDHRUZlQJQwcDaMvAiH0mdMGZ
         o0S+PyJahd6Aw==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     dinguyen@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowskii+dt@linaro.org, conor+dt@kernel.org
Subject: [PATCH 2/5] arm64: dts: socfpga: agilex/stratix10: fix dtbs_check warnings for sram
Date:   Mon, 26 Jun 2023 09:18:23 -0500
Message-Id: <20230626141826.414777-3-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230626141826.414777-1-dinguyen@kernel.org>
References: <20230626141826.414777-1-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

sram@ffe00000: 'ranges' is a required property
sram@ffe00000: '#size-cells' is a required property
sram@ffe00000: '#address-cells' is a required property

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi | 3 +++
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi     | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index 41c9eb51d0ee..55abc578e0ec 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -331,6 +331,9 @@ nand: nand-controller@ffb90000 {
 		ocram: sram@ffe00000 {
 			compatible = "mmio-sram";
 			reg = <0xffe00000 0x100000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0 0xffe00000 0x100000>;
 		};
 
 		pdma: dma-controller@ffda0000 {
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index f9674cc46764..34e65a9cae61 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -336,6 +336,9 @@ nand: nand-controller@ffb90000 {
 		ocram: sram@ffe00000 {
 			compatible = "mmio-sram";
 			reg = <0xffe00000 0x40000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0 0xffe00000 0x40000>;
 		};
 
 		pdma: dma-controller@ffda0000 {
-- 
2.25.1

