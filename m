Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 09C3A4B6CD
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2019 13:12:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727126AbfFSLMJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jun 2019 07:12:09 -0400
Received: from inva020.nxp.com ([92.121.34.13]:58706 "EHLO inva020.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1731625AbfFSLMJ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 19 Jun 2019 07:12:09 -0400
Received: from inva020.nxp.com (localhost [127.0.0.1])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id DF00E1A0615;
        Wed, 19 Jun 2019 13:12:07 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com [165.114.16.14])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 875931A061F;
        Wed, 19 Jun 2019 13:12:03 +0200 (CEST)
Received: from lsv03124.swis.in-blr01.nxp.com (lsv03124.swis.in-blr01.nxp.com [92.120.146.121])
        by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 27B7A402F0;
        Wed, 19 Jun 2019 19:11:58 +0800 (SGT)
From:   Ashish Kumar <Ashish.Kumar@nxp.com>
To:     devicetree@vger.kernel.org
Cc:     bbrezillon@kernel.org, broonie@kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mtd@lists.infradead.org, Ashish Kumar <Ashish.Kumar@nxp.com>,
        Kuldeep Singh <kuldeep.singh@nxp.com>,
        Ashish Kumar <ashish.kumar@nxp.com>
Subject: [Patch v3 2/2] dt-bindings: spi: spi-fsl-qspi: Add bindings of ls1088a and ls1012a
Date:   Wed, 19 Jun 2019 16:41:54 +0530
Message-Id: <1560942714-13330-3-git-send-email-Ashish.Kumar@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560942714-13330-1-git-send-email-Ashish.Kumar@nxp.com>
References: <1560942714-13330-1-git-send-email-Ashish.Kumar@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
---
v3:
Rebase to top
v2: 
Convert to patch series and rebasing done on top of tree

 Documentation/devicetree/bindings/spi/spi-fsl-qspi.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-fsl-qspi.txt b/Documentation/devicetree/bindings/spi/spi-fsl-qspi.txt
index 6d7c9ec..2c2a3e9 100644
--- a/Documentation/devicetree/bindings/spi/spi-fsl-qspi.txt
+++ b/Documentation/devicetree/bindings/spi/spi-fsl-qspi.txt
@@ -6,6 +6,8 @@ Required properties:
 		 "fsl,ls1021a-qspi", "fsl,ls2080a-qspi"
 		 or
 		 "fsl,ls1043a-qspi" followed by "fsl,ls1021a-qspi"
+		 "fsl,ls1012a-qspi" followed by "fsl,ls1021a-qspi"
+		 "fsl,ls1088a-qspi" followed by "fsl,ls2080a-qspi"
   - reg : the first contains the register location and length,
           the second contains the memory mapping address and length
   - reg-names: Should contain the reg names "QuadSPI" and "QuadSPI-memory"
-- 
2.7.4

