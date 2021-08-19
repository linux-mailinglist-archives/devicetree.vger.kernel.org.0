Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 541C53F200D
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 20:42:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233364AbhHSSnT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 14:43:19 -0400
Received: from mail-ot1-f43.google.com ([209.85.210.43]:33537 "EHLO
        mail-ot1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229451AbhHSSnS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Aug 2021 14:43:18 -0400
Received: by mail-ot1-f43.google.com with SMTP id 61-20020a9d0d430000b02903eabfc221a9so9971962oti.0
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 11:42:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TZWKwStN6MATtB/XLi53g0TP+9a8Dyy8oUdRFDMDmo4=;
        b=PSHR53QYsCrDVF2nl/Y3h3YYE+MpTA9VPTfor5NiUuWKxDv3OjPrzZxOY41QisH4N1
         4AqRkwCvXuKIAQosH1g2TF4HThhlJabWQymp/TfSzQG8chC57QX5MCigJ8YncUQ2Q2a6
         aYRet8dtT6zXPHkU8Y9kgGngIgo3qwikqHxdvbb29nwm9HRZVkggfwXveWylThFDzUC+
         xL69FRtdddsgx9XRvII2XqyTOwSqdQejHbj7/rJpNUAb3GMM5Hjl1GEr1mLdaPzm1+0r
         deC0IXpkpUBLj6cb6JAlcOBwr4tBSY1Zv4SrUn5c2rG40eg0nXCBN8K2hEb2OGrpHOux
         ij0w==
X-Gm-Message-State: AOAM531MPiDerFmMfOzCoMm/k+3ySKlrFOEd6FmFwbjPgHmCnZ7NmD5d
        71I80ui24hWpIfa454W5FA==
X-Google-Smtp-Source: ABdhPJyzJxJXBQmPLuzTOEurKWojo7fyc1PMzZDD2OVWbc/4PeL/pdbkZOeQAiTR43O+O+UFLPO+Fg==
X-Received: by 2002:a05:6830:44a8:: with SMTP id r40mr13162082otv.222.1629398562017;
        Thu, 19 Aug 2021 11:42:42 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.googlemail.com with ESMTPSA id v19sm796485oic.31.2021.08.19.11.42.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 11:42:41 -0700 (PDT)
From:   Rob Herring <robh@kernel.org>
To:     Andre Przywara <andre.przywara@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/5] dt-bindings: arm,vexpress-juno: Fix 'motherboard' node name
Date:   Thu, 19 Aug 2021 13:42:35 -0500
Message-Id: <20210819184239.1192395-2-robh@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210819184239.1192395-1-robh@kernel.org>
References: <20210819184239.1192395-1-robh@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Commit 9d0a36ddcc52 ("arm64: dts: fvp/juno: Fix bus node names") changed
'motherboard' to 'motherboard-bus', but didn't update the schema. In the
mean time, the simple-bus schema started requiring child nodes to have a
unit-address. Update the schema to address both of these issues.

Cc: Andre Przywara <andre.przywara@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/arm/arm,vexpress-juno.yaml        | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
index 55ef656d1192..530a808e518a 100644
--- a/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
@@ -154,9 +154,9 @@ patternProperties:
     description: Static Memory Bus (SMB) node, if this exists it describes
       the connection between the motherboard and any tiles. Sometimes the
       compatible is placed directly under this node, sometimes it is placed
-      in a subnode named "motherboard". Sometimes the compatible includes
+      in a subnode named "motherboard-bus". Sometimes the compatible includes
       "arm,vexpress,v2?-p1" sometimes (on software models) is is just
-      "simple-bus". If the compatible is placed in the "motherboard" node,
+      "simple-bus". If the compatible is placed in the "motherboard-bus" node,
       it is stricter and always has two compatibles.
     type: object
     $ref: '/schemas/simple-bus.yaml'
@@ -170,7 +170,9 @@ patternProperties:
                   - arm,vexpress,v2p-p1
               - const: simple-bus
           - const: simple-bus
-      motherboard:
+
+    patternProperties:
+      '^motherboard-bus@':
         type: object
         description: The motherboard description provides a single "motherboard"
           node using 2 address cells corresponding to the Static Memory Bus
-- 
2.30.2

