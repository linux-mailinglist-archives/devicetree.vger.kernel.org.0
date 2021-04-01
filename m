Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8041C352345
	for <lists+devicetree@lfdr.de>; Fri,  2 Apr 2021 01:17:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233710AbhDAXRY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Apr 2021 19:17:24 -0400
Received: from smtpcmd0871.aruba.it ([62.149.156.71]:48634 "EHLO
        smtpcmd0871.aruba.it" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234272AbhDAXRX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Apr 2021 19:17:23 -0400
Received: from ubuntu.localdomain ([146.241.168.220])
        by Aruba Outgoing Smtp  with ESMTPSA
        id S6YzlD4W1HTbyS6Z0lYTdb; Fri, 02 Apr 2021 01:17:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
        t=1617319042; bh=idGeGDMuTsStp4vF8SXGTMgpXvKEHjatMqlT1DTb3kk=;
        h=From:To:Subject:Date:MIME-Version;
        b=CjYv5/fyhqxTq36vuX1e4GHyVjx05uc7K3mSsP9dQ+OuKcPJeAK+yti8yNm4siRB5
         3HTnKF8kd6QUOGqzd4qynzgEE0R3RIGQKGRUqZnpefNuPdrWY6OcdSNDgaI4SaUDEk
         HFvnPLuxXXjqivrdJ/FXqdOE9I3Zy+G0+FglOEkYySQZPxrp//IM+EvJtgkaAL/BE/
         +8yWK2Lcg9G61V5AgmHRXISOmFILd//VJtgjeG4vIAYFeq1v9DtgOaUqneJ0nySS1P
         XJCQmg0NU7E9s2RRR6w/fRkpYNDMJUKbt2aztyjDZcreaZ+jGtHSKAKJDLFun56Ke3
         2JYKWTMBfeGow==
From:   Giulio Benetti <giulio.benetti@benettiengineering.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Giulio Benetti <giulio.benetti@benettiengineering.com>
Subject: [PATCH v3 2/9] dt-bindings: display/panel: add Jenson JT60245-01
Date:   Fri,  2 Apr 2021 01:17:13 +0200
Message-Id: <20210401231720.2470869-3-giulio.benetti@benettiengineering.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210401231720.2470869-1-giulio.benetti@benettiengineering.com>
References: <20210305234427.572114-1-giulio.benetti@benettiengineering.com>
 <20210401231720.2470869-1-giulio.benetti@benettiengineering.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4wfOL9AQ4RcJL649SgpWxnuzzFzsY6X41cjGOyr1mDgbIcV3RK+zL7bNLpVfgTYd+Fq/MgpwJSKFTMyDYQ5sweB9MbYG7aPEPXB8VgXG8r8XAwEPxv7G07
 hUAQqG6AyHlCdSMDjG+6exQMKlCostH02aJfVN/kX7VzHnpikc+t/2/n1kNZKAETrqEDj9MmSWOPg3sr+fJUj+vDJPIqk56m7b0xA9FuuG6qjP5xhfbx/KYr
 bSlWdrS1F2vXwRTZU3PG6NQFG1WTEp+KicDyUt5OKYUfWDCzyBZgJbC7SN9Q7VWvKcjBzkvEQ9DTOHiWyB+AB6jfEJUvG/f4eVKYByQ6U2TkIWMPptWg1K9v
 2ii7tPwAd/ndIFSTGmhKiX8RYRVTmxndOxovzcOIXG6SeG7j5WYHqTGSzRc4snh1MnRMXZbTpqTx1YDkxBkhserR0vXBSbd7+YIVDw3nkhBI4EOQAuU=
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DT binding for "jenson,jt60245-01".

Signed-off-by: Giulio Benetti <giulio.benetti@benettiengineering.com>
---
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 62b0d54d87b7..ce41a589a3f4 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -168,6 +168,8 @@ properties:
       - innolux,n156bge-l21
         # Innolux Corporation 7.0" WSVGA (1024x600) TFT LCD panel
       - innolux,zj070na-01p
+        # Jenson Display JT60245-01 7" (800x480) TFT LCD panel
+      - jenson,jt60245-01
         # King & Display KD116N21-30NV-A010 eDP TFT LCD panel
       - kingdisplay,kd116n21-30nv-a010
         # Kaohsiung Opto-Electronics Inc. 5.7" QVGA (320 x 240) TFT LCD panel
-- 
2.25.1

