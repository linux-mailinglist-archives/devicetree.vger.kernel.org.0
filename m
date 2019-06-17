Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 93CF04955C
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2019 00:44:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726672AbfFQWor (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jun 2019 18:44:47 -0400
Received: from mail-qt1-f196.google.com ([209.85.160.196]:46905 "EHLO
        mail-qt1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725839AbfFQWor (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jun 2019 18:44:47 -0400
Received: by mail-qt1-f196.google.com with SMTP id h21so12865619qtn.13
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2019 15:44:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nRzVa7Rxo9onTKHWMxR+EUp51dFEj/RYKU1N172ZZjo=;
        b=UXngyjYkAOlz9YQ9/vpxS8kOp0qxVKKpYmWuzZBFtfkpu8w1us4tRf2cLqgPcVoz91
         AGkYtnNJBs6OD+xOxhJ5TBQd6LdggDbaUF7nqaZnXFut2bLkYQpFwqCVFWa0qg4LaUjm
         gFMCems68ZhV36O7kzsTU0phVJLCFsm6Z9XDhN7nex3g1xwFYiAqjN/TG/w9dIKwOu+9
         wHasbdesFgKApVOND9b2aJntp6noEl7QsUcCxA4aEmHJqA3P7f3FbUtXtOAqpQ1AKfuU
         wIyKHIfU3lPh5KSnHVV4SQun2VVBWaQEXd++8UQjQddZYIVFH1XRKD4l762VzG8RV0Sx
         UpWg==
X-Gm-Message-State: APjAAAXFUDt/fdhw32hXVh32k7tHKTTh280RDXP+UZqRCvEjuGgpWv0m
        GLemmXngI8dabmx2miVE3tNv41M=
X-Google-Smtp-Source: APXvYqxk9Ah0pN0gqCu9ZbrDP8GPrr0L2THz+8oXUrhYY4sP046DpeyOnUUu/eGLvJ3bNY6+2E0rhQ==
X-Received: by 2002:a0c:d237:: with SMTP id m52mr23039036qvh.160.1560811486439;
        Mon, 17 Jun 2019 15:44:46 -0700 (PDT)
Received: from localhost.localdomain ([64.188.179.192])
        by smtp.googlemail.com with ESMTPSA id y42sm9918935qtc.66.2019.06.17.15.44.45
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 17 Jun 2019 15:44:46 -0700 (PDT)
From:   Rob Herring <robh@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] dt-bindings: arm: fsl: Add missing schemas for i.MX1/31/35
Date:   Mon, 17 Jun 2019 16:42:44 -0600
Message-Id: <20190617224244.30818-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The SoC/board bindings for i.MX1/31/35 are undocumented. Add the missing
bindings to the schema.

Cc: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/arm/fsl.yaml          | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 0a6b4eba2bb2..e73cc11acdfb 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -15,6 +15,13 @@ properties:
     const: '/'
   compatible:
     oneOf:
+      - description: i.MX1 based Boards
+        items:
+          - enum:
+              - armadeus,imx1-apf9328
+              - fsl,imx1ads
+          - const: fsl,imx1
+
       - description: i.MX23 based Boards
         items:
           - enum:
@@ -51,6 +58,25 @@ properties:
           - const: i2se,duckbill-2
           - const: fsl,imx28
 
+      - description: i.MX31 based Boards
+        items:
+          - enum:
+              - buglabs,imx31-bug
+              - logicpd,imx31-lite
+          - const: fsl,imx31
+
+      - description: i.MX35 based Boards
+        items:
+          - enum:
+              - fsl,imx35-pdk
+          - const: fsl,imx35
+
+      - description: i.MX35 Eukrea CPUIMX35 Board
+        items:
+          - const: eukrea,mbimxsd35-baseboard
+          - const: eukrea,cpuimx35
+          - const: fsl,imx35
+
       - description: i.MX50 based Boards
         items:
           - enum:
-- 
2.20.1

