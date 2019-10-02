Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 08BC2C8BAE
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2019 16:46:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726128AbfJBOqq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Oct 2019 10:46:46 -0400
Received: from mail.kernel.org ([198.145.29.99]:51632 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725975AbfJBOqq (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 2 Oct 2019 10:46:46 -0400
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 28EF721783;
        Wed,  2 Oct 2019 14:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1570027605;
        bh=fTp264TX+8A5B/l+DorgipPQ5brUl2q7Ksw+q/WrC8I=;
        h=From:To:Cc:Subject:Date:From;
        b=cJQrbVerlRQB5SkB2iQA3Sftw11EHj38dMPmxdvu1aQhmw2wiYCGg3+VrupX+JOZ+
         w2dL5WB3tUNeQEGvB5xQeyZLTJU55Lvs0O/obAurDVMqy3uPkZY8jWVvTykTPPyX7k
         ITkalV0AMBCnDhLX5OOW7+GVCgAcHEjvp5OuRwww=
From:   Maxime Ripard <mripard@kernel.org>
To:     kishon@ti.com
Cc:     devicetree@vger.kernel.org, Maxime Ripard <mripard@kernel.org>
Subject: [PATCH] dt-bindings: phy: lantiq: Fix Property Name
Date:   Wed,  2 Oct 2019 16:46:40 +0200
Message-Id: <20191002144640.114851-1-mripard@kernel.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The binding has a typo where resets-names should read reset-names, which in
turn leads to a warning when the example is validated, since reset-names is
being used, and the binding prevent the usage of any property that isn't
described.

Fixes: 088e88be5a38 ("dt-bindings: phy: add binding for the Lantiq VRX200 and ARX300 PCIe PHYs")
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 .../devicetree/bindings/phy/lantiq,vrx200-pcie-phy.yaml         | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/lantiq,vrx200-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/lantiq,vrx200-pcie-phy.yaml
index 8a56a8526cef..a97482179cf5 100644
--- a/Documentation/devicetree/bindings/phy/lantiq,vrx200-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/lantiq,vrx200-pcie-phy.yaml
@@ -37,7 +37,7 @@ properties:
       - description: exclusive PHY reset line
       - description: shared reset line between the PCIe PHY and PCIe controller
 
-  resets-names:
+  reset-names:
     items:
       - const: phy
       - const: pcie
-- 
2.23.0

