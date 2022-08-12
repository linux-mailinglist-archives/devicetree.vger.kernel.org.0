Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 073A4591068
	for <lists+devicetree@lfdr.de>; Fri, 12 Aug 2022 13:55:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238344AbiHLLz1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Aug 2022 07:55:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238343AbiHLLz0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Aug 2022 07:55:26 -0400
X-Greylist: delayed 488 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 12 Aug 2022 04:55:23 PDT
Received: from mx2.securetransport.de (mx2.securetransport.de [188.68.39.254])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0A233F5BA
        for <devicetree@vger.kernel.org>; Fri, 12 Aug 2022 04:55:22 -0700 (PDT)
Received: from mail.dh-electronics.com (unknown [77.24.89.57])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mx2.securetransport.de (Postfix) with ESMTPSA id 34FAA5E911;
        Fri, 12 Aug 2022 13:46:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dh-electronics.com;
        s=dhelectronicscom; t=1660304805;
        bh=fbnAMyRh8wvq7TCAWCxHV4tQFskBMN3RaYIZybVxiro=;
        h=From:To:CC:Subject:Date:From;
        b=NuZn/hVYq3p9DIKyzN44PxfIfJWbKbaXYfGUmNAMruy5XCtx2G9BsROZhPavyYMC7
         Q6Mx30c2qWFgonmvriBqXRzYh12HQetz5Y4YSJELaZK+sTAdJ3tWnC72OW6ZylQ3wv
         IbZ//YeOwBKNKQlk4WuN+EW9wtnwfgHt3vfNw5lCfHTLSAbhZ2fv+LYdM6a0K4Azoi
         j+sq0PNEffEVpvsPbu4blYfNCi49TvxLyt9WFYNOkQ2+i/Q6j/Fue3FzG/Qh1yun69
         Rrh6vxll3MqBf1QD596dUDQmYJz1AiMdSJbBjQKjLzH6QnCwaRhwdoeQDOzbG1ddFJ
         WAWOi7KuG9GKg==
Received: from DHPWEX01.DH-ELECTRONICS.ORG (10.64.2.30) by
 DHPWEX01.DH-ELECTRONICS.ORG (10.64.2.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.12; Fri, 12 Aug 2022 13:46:39 +0200
Received: from Stretch-CN.dh-electronics.org (10.64.6.116) by
 DHPWEX01.DH-ELECTRONICS.ORG (10.64.2.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.12 via Frontend Transport; Fri, 12 Aug 2022 13:46:38 +0200
From:   Christoph Niedermaier <cniedermaier@dh-electronics.com>
To:     <dri-devel@lists.freedesktop.org>
CC:     Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, <devicetree@vger.kernel.org>
Subject: [PATCH] dt-bindings: display: simple: Add Multi-Inno Technology MI0800FT-9 panel
Date:   Fri, 12 Aug 2022 13:46:00 +0200
Message-ID: <20220812114600.4895-1-cniedermaier@dh-electronics.com>
X-Mailer: git-send-email 2.11.0
X-klartext: yes
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add Multi-Inno Technology MI0800FT-9 8" 800x600 DPI panel
compatible string.

Signed-off-by: Christoph Niedermaier <cniedermaier@dh-electronics.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: devicetree@vger.kernel.org
To: dri-devel@lists.freedesktop.org
---
 Documentation/devicetree/bindings/display/panel/panel-simple.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index bc8e9c0c1dc3..5d9d7683efea 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -234,6 +234,8 @@ properties:
       - mitsubishi,aa070mc01-ca1
         # Multi-Inno Technology Co.,Ltd MI0700S4T-6 7" 800x480 TFT Resistive Touch Module
       - multi-inno,mi0700s4t-6
+        # Multi-Inno Technology Co.,Ltd MI0800FT-9 8" 800x600 TFT Resistive Touch Module
+      - multi-inno,mi0800ft-9
         # Multi-Inno Technology Co.,Ltd MI1010AIT-1CP 10.1" 1280x800 LVDS IPS Cap Touch Mod.
       - multi-inno,mi1010ait-1cp
         # NEC LCD Technologies, Ltd. 12.1" WXGA (1280x800) LVDS TFT LCD panel
-- 
2.11.0

