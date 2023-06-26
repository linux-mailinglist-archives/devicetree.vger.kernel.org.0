Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3101973E1FB
	for <lists+devicetree@lfdr.de>; Mon, 26 Jun 2023 16:21:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231615AbjFZOVX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jun 2023 10:21:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231210AbjFZOVH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jun 2023 10:21:07 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4AAC26B1
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 07:20:00 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 1AE6160EAE
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 14:18:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E80E6C433CA;
        Mon, 26 Jun 2023 14:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1687789124;
        bh=bs11U5ZT13F3tOcL5W9jpfQFQNHtbcDxhy92xTGsF6w=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=c0yKQHKPwkM+o8hciJlq74sIGLUq4mkq+mtndaEhY//xTDS2q3GcePts9CznjiQef
         FKWWVWG5sJFnN+llufQL77a2aRnFh3AqfsaI8/2mvTG8K3qqK1msitD75vPb+gvxEt
         86WUU6Gjw7XtBmp/cWophlp747rH7FzYMFwFWINBd7XnGCMTvIAofrdrY5X2iRhV1E
         TKOCravtcaHkNGi8x0TGUzYc2KT49rIjHN+ppzhgDJqilAYgzDLtSp+lsFfY/0MaRi
         WDhq3jL6Q8t3IasG1yeVanIRl5sVuSrzMeEJ/YGrJg0ANOHWe6YjTr5WGeIgwgcesz
         Xt3IR+cGFBp0Q==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     dinguyen@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowskii+dt@linaro.org, conor+dt@kernel.org
Subject: [PATCH 5/5] arm64: dts: agilex/stratix10/n5x: fix dtbs_check for rstmgr
Date:   Mon, 26 Jun 2023 09:18:26 -0500
Message-Id: <20230626141826.414777-6-dinguyen@kernel.org>
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

The bindings expect "altr,rst-mgr" as a fallback in the rstmgr
compatible:

rstmgr@ffd11000: compatible: 'oneOf' conditional failed, one must be fixed:
        ['altr,stratix10-rst-mgr'] is too short
        'altr,rst-mgr' was expected

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index 34e65a9cae61..fc047aef4911 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -376,9 +376,9 @@ pinctrl1: pinconf@ffd13100 {
 		};
 
 		rst: rstmgr@ffd11000 {
-			#reset-cells = <1>;
-			compatible = "altr,stratix10-rst-mgr";
+			compatible = "altr,stratix10-rst-mgr", "altr,rst-mgr";
 			reg = <0xffd11000 0x100>;
+			#reset-cells = <1>;
 		};
 
 		smmu: iommu@fa000000 {
-- 
2.25.1

