Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC1C8645D5C
	for <lists+devicetree@lfdr.de>; Wed,  7 Dec 2022 16:14:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229696AbiLGPOL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Dec 2022 10:14:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229643AbiLGPOI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Dec 2022 10:14:08 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D18E460B4C
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 07:14:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670426047; x=1701962047;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=cHtKSJRitadayzB71exae3eDaU30fEhAC/+5NZKm/c4=;
  b=iwmaskCqC26LWVv2tdz1DQA3R813qRSJHTwcBfg0mCw6UXSRqZ++7BGs
   YPp9RayADGDfv2h/nl1MNeqxfXcOw9QFYVRcv39IMYeHu2LB2UrDWQSgO
   QRJuHShdhmpHN5evwBELBuEwu9kvx7ZIvOoBhV+6WVbw4dIY42Jcc8+Ga
   WrvtHgCQVynd6e/+kvx7N97BIVm0euPCA+Y/j18YDHMAhIRV82S1gRFkT
   qOmVjAkvwkQlrRfT13nn9Vsg0/Rlpub7fKdaqXmJMeO40hFqcEA3fXY2K
   h/BWCz2dv9exM9J73jXWFjIywHns6d7D5085pcyeGG1ofUZ24t4b8FtHj
   A==;
X-IronPort-AV: E=Sophos;i="5.96,225,1665439200"; 
   d="scan'208";a="27816229"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 07 Dec 2022 16:14:05 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 07 Dec 2022 16:14:05 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 07 Dec 2022 16:14:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670426045; x=1701962045;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=cHtKSJRitadayzB71exae3eDaU30fEhAC/+5NZKm/c4=;
  b=F6GW9pw0Qou7FzXRoLmfwKJ/XCVNwhmiQw8649m75F9AgwM5MSoGKATW
   bwVkuhDqG8d1b1Kb6mfTSnsvte7mThC94kOADv0b1ZlbjgwC2hNvQpTyN
   zAiXWFMYq4dlZlRG8gIG3YflXLvImFQPTTUcyuMffoakcsCV4eM28ROg/
   jRQNCjytQWuk3WmbX/2Eh4zvRHFRxj+aOc3Di9Z7A1thMSD7120c44gh7
   xLq1ULRnNnLtZf+NeC0lvHqh7Qiwwm0jUEzV8puTM8wEjABpO52BLdMH3
   kJMhxmOgnd2dnPAFBhSlRgXZ3NJ691p6NE1K9TVb/b4cKiEjt3cwHK+YU
   w==;
X-IronPort-AV: E=Sophos;i="5.96,225,1665439200"; 
   d="scan'208";a="27816228"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 07 Dec 2022 16:14:05 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id E1ADD280071;
        Wed,  7 Dec 2022 16:14:04 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Marek Vasut <marex@denx.de>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: lcdif: Fix clock constraints for imx8mp
Date:   Wed,  7 Dec 2022 16:13:59 +0100
Message-Id: <20221207151400.1572582-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
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

i.MX8MP uses 3 clocks, so soften the restrictions for clocks & clock-names.

Fixes: f5419cb0743f ("dt-bindings: lcdif: Add compatible for i.MX8MP")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
index 876015a44a1e6..793e8eccf8b8b 100644
--- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
+++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
@@ -70,7 +70,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: fsl,imx6sx-lcdif
+            enum:
+              - fsl,imx6sx-lcdif
+              - fsl,imx8mp-lcdif
     then:
       properties:
         clocks:
-- 
2.34.1

