Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA2D35017CE
	for <lists+devicetree@lfdr.de>; Thu, 14 Apr 2022 18:04:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238799AbiDNPuf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Apr 2022 11:50:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344683AbiDNPjU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Apr 2022 11:39:20 -0400
Received: from esa1.hgst.iphmx.com (esa1.hgst.iphmx.com [68.232.141.245])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 705BD433A1
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 08:16:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1649949409; x=1681485409;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=iYec80PJQH6rxvX/OaQmAixOdX4LN48hjcV/HrL4vFw=;
  b=Ctm6HeUQ7e0EAm26DFRpFgeJJ1kkn1X9Exb8TmuPcvxJTudTNdEBMIaK
   O5cZsojiMBsTfXxWd4Ph9e0hfnulmbvjlPm5dibgz4xqWk2OZcBmh2Ppo
   /HGPDAgWLVXlTXLYqJgaFALd4UpXeMcmpuGkOS7ZOb3c9OGzYjv4k5hnT
   rSD1L42RsjuQRJbNfHHiCgjtnUl1RtZNfRKX8WaZYpvrj/XE8m+OKcD+z
   k2DXPoMcV8zyaWylfwip/hppCp6XWzmmHzzrogOuobTK2+sosjSZeuFBq
   TJ2qbB7psw1Uohlyr5HHejnMsHsLVDQv/i3UMxI2YRySK63ossQC+8H8C
   A==;
X-IronPort-AV: E=Sophos;i="5.90,260,1643644800"; 
   d="scan'208";a="309887717"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 14 Apr 2022 23:16:48 +0800
IronPort-SDR: tUhATW2EiBWaY1ofzYXQN3KpjnVpnpHb3ZAT+wgD+A6dlUGkh1v9Ql1oyvSDyKai38FWaSEDcx
 ga8JEdkJ/ukt6MUAkFG8V3W7UFSg2E/TBWDOac6mc759671Dc7rLUe6JW4IpNHl03PrbOsw4OV
 l/DZvd8DIasnG2NkTdliRIa6lRzhn4YxDRZuNMae29WUMWKT+vpqu4JNnmDpvMT2JS4aYTHOxb
 irN67DPv/+EWZkR9Si3GGw5DEGNokbDDcyCIn+hql/hd+rzEOUj4jg95jh5OY0DCSBMnj8FcLu
 iMvmFk8sgKyYL0fh3heHQ427
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Apr 2022 07:48:01 -0700
IronPort-SDR: A4SysRNAyrMZ1jbwnAGGOFL7qmGl1pz2l4bHnQ1SNYk6pK1Mj3j1iJRqZqJs7dATyRyPgb2kVb
 Xba79PTuJQaBQPwDMYDSCNXwu4ADfG/X/8faX4JwafjgNjS2RmAGbH/KQNoAghsqCF8UjogYdQ
 ngP69Sm4hpGnuDosDKY0Tgl4iSIWcuOEacR7cznkYEw4Dxx1UBc9rwOnMXKl3IMKqtFxTFMaQK
 k9CRJqu7ZOyhx/LBpImamW164d04JplOPVkZzXkZrMx3ZCp7q97mKvuIBGMaojVWKZiHkqctBr
 vzc=
WDCIronportException: Internal
Received: from unknown (HELO x1-carbon.wdc.com) ([10.225.164.21])
  by uls-op-cesaip02.wdc.com with ESMTP; 14 Apr 2022 08:16:46 -0700
From:   Niklas Cassel <niklas.cassel@wdc.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>
Cc:     Niklas Cassel <niklas.cassel@wdc.com>,
        Palmer Dabbelt <palmer@sifive.com>, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org
Subject: [PATCH] dt-bindings: riscv: Add mmu-type riscv,sv57
Date:   Thu, 14 Apr 2022 17:16:38 +0200
Message-Id: <20220414151639.1359969-1-niklas.cassel@wdc.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_PASS,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

sv57 is defined in the RISC-V Privileged Specification document.

Additionally, commit 011f09d12052 ("riscv: mm: Set sv57 on defaultly")
changed the default MMU mode to sv57, if supported by current hardware.

Add riscv,sv57 to the list of valid mmu-type values.

Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index d632ac76532e..3100fa233ca4 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -61,6 +61,7 @@ properties:
       - riscv,sv32
       - riscv,sv39
       - riscv,sv48
+      - riscv,sv57
       - riscv,none
 
   riscv,isa:
-- 
2.35.1

