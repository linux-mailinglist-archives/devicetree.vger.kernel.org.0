Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1CC736B916E
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 12:18:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230312AbjCNLSw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 07:18:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229926AbjCNLST (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 07:18:19 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AF5A65478
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 04:17:40 -0700 (PDT)
Received: from fabio-Precision-3551.. (unknown [IPv6:2804:14c:485:4b69:d086:7d15:2ce3:1a1b])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: festevam@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 64D8F85B17;
        Tue, 14 Mar 2023 12:17:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1678792656;
        bh=ef9/+7LCdE2/mEAxSGXL9tBEYCf12iQaIsndD1dicjI=;
        h=From:To:Cc:Subject:Date:From;
        b=LbcmUStRAERbIOQZyqU8ERdrjFYfuS9hGZh4rg6s47BdmeNAG3pu6OU/+G95eqdr+
         j+m3CH9X/+J+YF/ydT9Qq1HduYyTaNF+JlKSAH8S4dDEI7YGyGGbpGWL84TLmcK5Ek
         Y3IxHN3f4ZqYKQHieYuvkbEjgDmXJfQkCIzkH1CpNRam9AO6aDgzgfwtQsLdwVV6aj
         CuRpryME+41hFMhIxah0KHOPBqXdOD6ng6dVshFQffXIpKekP4/qdcwI3KSrY3bUHb
         wZagFXUHVpMnW1u9RhgyRk2gxLXq7Hm2KiPa9QaITl43yE9hz0penlPUVKjpPIcSi0
         htKQwd3bCdwrQ==
From:   Fabio Estevam <festevam@denx.de>
To:     neil.armstrong@linaro.org
Cc:     sam@ravnborg.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, CPHEALY@gmail.com,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/2] dt-bindings: display: seiko,43wvf1g: Add the 'enable-gpios' property
Date:   Tue, 14 Mar 2023 08:17:23 -0300
Message-Id: <20230314111724.1520178-1-festevam@denx.de>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add an optional 'enable-gpios' property that can be used to turn on/off
the display.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 .../devicetree/bindings/display/panel/seiko,43wvf1g.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/seiko,43wvf1g.yaml b/Documentation/devicetree/bindings/display/panel/seiko,43wvf1g.yaml
index cfaa50cf5f5d..496a39561db0 100644
--- a/Documentation/devicetree/bindings/display/panel/seiko,43wvf1g.yaml
+++ b/Documentation/devicetree/bindings/display/panel/seiko,43wvf1g.yaml
@@ -25,6 +25,8 @@ properties:
   avdd-supply:
     description: 5v analog regulator
 
+  enable-gpios: true
+
 required:
   - compatible
   - dvdd-supply
-- 
2.34.1

