Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A243352347
	for <lists+devicetree@lfdr.de>; Fri,  2 Apr 2021 01:17:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234646AbhDAXRZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Apr 2021 19:17:25 -0400
Received: from smtpcmd0871.aruba.it ([62.149.156.71]:53703 "EHLO
        smtpcmd0871.aruba.it" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234502AbhDAXRY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Apr 2021 19:17:24 -0400
Received: from ubuntu.localdomain ([146.241.168.220])
        by Aruba Outgoing Smtp  with ESMTPSA
        id S6YzlD4W1HTbyS6Z1lYTdy; Fri, 02 Apr 2021 01:17:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
        t=1617319043; bh=E2SjaCBmPBP74Psfo56hY++DvHH3yPEPFgQz94AxHhk=;
        h=From:To:Subject:Date:MIME-Version;
        b=cDiKfNQH/01Y95bdQ1VP/mORYOCQgjftv+XLWhpQOTfgK0poQZo3va/cGdH1XENUE
         Aso25W3eUbMzG6T4XlfTgkC3G8M5Tx+xa3eiJWM21J/jlsnfs6b1tfrrlzOD7edFqc
         PCB0GcllUJHmPcnZooxhoDIiMoA49EpgyPkRdRPy/rU2d//UGOCkO2Gsdn8woF4hqW
         TMi8OnBXtySFRrreO5X4YvYylspv95ZF1+xJy/QMKrHN0lCbE1cPno+V7mlJEvfwg1
         LLGqHq9gS2UWZAPsVsiZgqqMfu+zE053heMjd77ZKxynNHdgVq9aGxSPDOCVQPKpYT
         9Bqk0Lkcu8uYw==
From:   Giulio Benetti <giulio.benetti@benettiengineering.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Giulio Benetti <giulio.benetti@benettiengineering.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 4/9] dt-bindings: display/panel: add Jenson JT60249-01
Date:   Fri,  2 Apr 2021 01:17:15 +0200
Message-Id: <20210401231720.2470869-5-giulio.benetti@benettiengineering.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210401231720.2470869-1-giulio.benetti@benettiengineering.com>
References: <20210305234427.572114-1-giulio.benetti@benettiengineering.com>
 <20210401231720.2470869-1-giulio.benetti@benettiengineering.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4wfABcTNek/InxhOFVmjyGDGoZ5pVzGIpQeCNYRpi8K7cxWDJ3K9Vd3VNFh9/pFQtHqFGx075R+jxbCZFGOX5P/B5TT2YK9FmyTSieSjfPfJ+UR6k8KCtj
 d6eqoUluvST/jhtZMGzxLZ3SbAivElOeevW6q8mV35m9JPUt9c4fudTdccmQxCFZZnnWktXrsbmovFJGDQ/LWI/LM2dV/+UYUtLVYVH/OiZetbTmbkZeEezU
 sk7Zk4jAoOXXhIOv5JbJ1AeCcOTBh6c/+tHTolF6sYZpWCi8L8yrKuPNyfZENSmVbLqyk3JEe3wH6CTuafpdyJF8Dt1nG0kJUKuX51K2y4zw+HBOk7VtnXdF
 lMwCaQBfhpaMOUXT+B6qo6Z6c0Od6I9XRFoYtq/MVJzrfXtJKyswoQSkm0HA8O36tc5/KbtNFBQlX2Cnof0IiTtqUrAT8GMUTR6soqu/X4siQiV1wCMYoUpy
 HM+x9/pf79xJeXyG
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DT binding for "jenson,jt60249-01".

Signed-off-by: Giulio Benetti <giulio.benetti@benettiengineering.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 35c335aa085e..68eaa353be0d 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -172,6 +172,8 @@ properties:
       - jenson,jt60245-01
         # Jenson Display JT60248-01 4,3" (480x272) TFT LCD panel
       - jenson,jt60248-01
+        # Jenson Display JT60249-01 5" (800x480) TFT LCD panel
+      - jenson,jt60249-01
         # King & Display KD116N21-30NV-A010 eDP TFT LCD panel
       - kingdisplay,kd116n21-30nv-a010
         # Kaohsiung Opto-Electronics Inc. 5.7" QVGA (320 x 240) TFT LCD panel
-- 
2.25.1

