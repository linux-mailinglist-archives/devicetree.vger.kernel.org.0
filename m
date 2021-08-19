Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 03F393F200E
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 20:42:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234488AbhHSSnV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 14:43:21 -0400
Received: from mail-ot1-f42.google.com ([209.85.210.42]:45708 "EHLO
        mail-ot1-f42.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229451AbhHSSnU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Aug 2021 14:43:20 -0400
Received: by mail-ot1-f42.google.com with SMTP id r17-20020a0568302371b0290504f3f418fbso9846191oth.12
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 11:42:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zZgof1k2f+12nYrFzWi4JjoSLc6lNhG1HSxTD3Jvsxg=;
        b=s511ITkcQwhyIXbgXkc41qcF2EWZJaEA0aY6igpoZ82NoxKw33q77ruIApzFUVr+IO
         SfOldjl8T1+/AHk6c9uzeczjXUK+c29iz41kySD0Xbezl+eKrqo0kbM4pId8u4BHAg7u
         +Y6cDnQ/J14VLelGvfFXHTDezdyuGHWH7RBlqrKV4S2p8W+PCmFryEm7cQqUhuCt57+2
         u3xhC0jeAuBNZCmReAkS2X5Qq6QFqS/2vODz9Gx3Ai8Q14aQ95jBUxKvr9kqg/6jZaIl
         72+SEdTvbbudHjpheg0LTEhpMLijGBoY+LWwFdQEvMwkogTNWR6B7asxU9j3YYK9abSK
         FZfA==
X-Gm-Message-State: AOAM531M0+hGW4foGAMGMEfkYTLj5Pzct7g+o9a2lYaQ59x2o8786iws
        Q8hqeMhcrpRdi30sanoIhA==
X-Google-Smtp-Source: ABdhPJwC+75A1szBze1M8/sxLG7jceMBgBVboctzuXRaf2MVoKiDgLnomZhMdXF+WoVzEnRf7hJslw==
X-Received: by 2002:a9d:1991:: with SMTP id k17mr13290896otk.104.1629398563545;
        Thu, 19 Aug 2021 11:42:43 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.googlemail.com with ESMTPSA id v19sm796485oic.31.2021.08.19.11.42.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 11:42:42 -0700 (PDT)
From:   Rob Herring <robh@kernel.org>
To:     Andre Przywara <andre.przywara@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/5] dt-bindings: arm,vexpress-juno: Add missing motherboard properties
Date:   Thu, 19 Aug 2021 13:42:36 -0500
Message-Id: <20210819184239.1192395-3-robh@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210819184239.1192395-1-robh@kernel.org>
References: <20210819184239.1192395-1-robh@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The arm,vexpress-juno binding is missing 'ranges', 'arm,vexpress,site', and
'arm,hbi' properties. Add these and and restrict additional properties to
be nodes only.

Cc: Andre Przywara <andre.przywara@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../bindings/arm/arm,vexpress-juno.yaml       | 38 +++++++++++--------
 1 file changed, 22 insertions(+), 16 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
index 530a808e518a..a4b4452afc1d 100644
--- a/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
@@ -119,22 +119,6 @@ properties:
           - const: arm,foundation-aarch64
           - const: arm,vexpress
 
-  arm,hbi:
-    $ref: '/schemas/types.yaml#/definitions/uint32'
-    description: This indicates the ARM HBI (Hardware Board ID), this is
-      ARM's unique board model ID, visible on the PCB's silkscreen.
-
-  arm,vexpress,site:
-    description: As Versatile Express can be configured in number of physically
-      different setups, the device tree should describe platform topology.
-      For this reason the root node and main motherboard node must define this
-      property, describing the physical location of the children nodes.
-      0 means motherboard site, while 1 and 2 are daughterboard sites, and
-      0xf means "sisterboard" which is the site containing the main CPU tile.
-    $ref: '/schemas/types.yaml#/definitions/uint32'
-    minimum: 0
-    maximum: 15
-
   arm,vexpress,position:
     description: When daughterboards are stacked on one site, their position
       in the stack be be described this attribute.
@@ -185,6 +169,8 @@ patternProperties:
             const: 2
           "#size-cells":
             const: 1
+          ranges: true
+
           compatible:
             items:
               - enum:
@@ -198,8 +184,28 @@ patternProperties:
               - rs1
               - rs2
 
+          arm,hbi:
+            $ref: '/schemas/types.yaml#/definitions/uint32'
+            description: This indicates the ARM HBI (Hardware Board ID), this is
+              ARM's unique board model ID, visible on the PCB's silkscreen.
+
+          arm,vexpress,site:
+            description: As Versatile Express can be configured in number of physically
+              different setups, the device tree should describe platform topology.
+              For this reason the root node and main motherboard node must define this
+              property, describing the physical location of the children nodes.
+              0 means motherboard site, while 1 and 2 are daughterboard sites, and
+              0xf means "sisterboard" which is the site containing the main CPU tile.
+            $ref: '/schemas/types.yaml#/definitions/uint32'
+            minimum: 0
+            maximum: 15
+
         required:
           - compatible
+
+        additionalProperties:
+          type: object
+
     required:
       - compatible
 
-- 
2.30.2

