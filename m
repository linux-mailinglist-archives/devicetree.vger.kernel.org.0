Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 22B194954D
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2019 00:42:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727000AbfFQWmc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jun 2019 18:42:32 -0400
Received: from mail-qt1-f193.google.com ([209.85.160.193]:41068 "EHLO
        mail-qt1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728368AbfFQWmc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jun 2019 18:42:32 -0400
Received: by mail-qt1-f193.google.com with SMTP id d17so7947368qtj.8
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2019 15:42:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bw9/gZedYD5980KJZent+GQTBWT7ibemqHL7O3rnU9c=;
        b=LLkuusnPMyzCgzRbwnTLKEsbqtyufMC8Tu7iG/au83OQf5GeI94xx2qBAJsYI5SZlz
         3ckFd48SeKw47pc9F2gFxPVrcAjYXRq1tS3jZI47ubjT392mS7y73MPzTSR2T3MI7miP
         hEHC375YRXoPw3SOL1Xdb8pclaOvMNoQvba38XthHhdzu/StjLalz+wfZTHC3JoluVem
         /gf9CIi1fSeUD/n0SFM6+4HH8mxKWN3A9kD0r58Ax0HgsLTkUVJV7mZyv49oIaqVSQ/x
         rGZsemo4T007YKp4e0cNGpWd6Y3QeVMeXk0z5Ih5GBw5UasNQx6h/WkUVudIgEYW9w2m
         Y3Ag==
X-Gm-Message-State: APjAAAVrC2ZfLFDgAy8hLCu6o+NBODnweOUccBFXJw7DCvQI5d/ScSQ+
        tqG/IUis7ELM6yjNw0bWl3ESfhc=
X-Google-Smtp-Source: APXvYqyj6jp4wEA64XUXgYgwlrvjLF95s/v4VU9XXCmt1zLcH9Mcti1t44Pq5cdvmc7LhWRffc+oHw==
X-Received: by 2002:ac8:38d5:: with SMTP id g21mr95189678qtc.52.1560811350629;
        Mon, 17 Jun 2019 15:42:30 -0700 (PDT)
Received: from localhost.localdomain ([64.188.179.192])
        by smtp.googlemail.com with ESMTPSA id d31sm9308876qta.39.2019.06.17.15.42.29
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 17 Jun 2019 15:42:30 -0700 (PDT)
From:   Rob Herring <robh@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] dt-bindings: arm: fsl: Add back missing i.MX7ULP binding
Date:   Mon, 17 Jun 2019 16:40:28 -0600
Message-Id: <20190617224028.26974-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In the conversion to DT schema, the addition of the i.MX7ULP binding got
dropped. Add it to the binding schema.

Fixes: a1a38e1f4d1d ("dt-bindings: arm: Convert FSL board/soc bindings to json-schema")
Cc: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index fbeb56345b35..0a6b4eba2bb2 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -175,6 +175,12 @@ properties:
           - const: compulab,cl-som-imx7
           - const: fsl,imx7d
 
+      - description: i.MX7ULP based Boards
+        items:
+          - enum:
+              - tq,imx7ulp-evk            # i.MX7ULP Evaluation Kit
+          - const: fsl,imx7ulp
+
       - description: i.MX8MM based Boards
         items:
           - enum:
-- 
2.20.1

