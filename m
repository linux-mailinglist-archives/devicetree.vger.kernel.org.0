Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 37F4C4919B
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2019 22:46:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728328AbfFQUq1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jun 2019 16:46:27 -0400
Received: from mail-qk1-f193.google.com ([209.85.222.193]:33399 "EHLO
        mail-qk1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726677AbfFQUq1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jun 2019 16:46:27 -0400
Received: by mail-qk1-f193.google.com with SMTP id r6so7144610qkc.0
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2019 13:46:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GiyA82DDyFUCVpZ6pfq2uLrTXX3TvWsIIdVhQLD5cEw=;
        b=KOrRimXtnuZ9zaTa0NnCCczttHAY48WNEcK5/Rc3dXE/adPXq+X8e7JTzA7eo4ODtB
         t6Z0uX95I/ucadrjlBthannY9DorwAF1IamgHUMcNDxwp/J0oORGZvHLaftasFVApW1W
         dhRBtlfvAmTD2fXQttNk945Slb202GnygRF270tg0Va7wJHol0NbucH6ldKHah2w4aK6
         8rx08cVu98EGRl1NsuaK00riJWXEoBHsupORVko2xcQytW+93IVFj0+/5ybhXWDvXfrr
         zTSIhR/otRiFcvonunjNp5JhAuHX+IxBr2V0+KeOyrWLU7jTUozBpfQQ6SMVVlSxXDa8
         brdA==
X-Gm-Message-State: APjAAAVqChEN82U7B1EK3h2jdoHcel4CPYfq90Xt6i75iORYWUrQi/Z8
        /lnlCBkGW8meH+CsZoKayAA7LlU=
X-Google-Smtp-Source: APXvYqyoXU8mBMLTPzc122V2PWEPrBeyXKzYMcHaCampaAHBCffdwJ3yttCNeHjs3buXED16lpvuJQ==
X-Received: by 2002:a37:87c5:: with SMTP id j188mr69134935qkd.106.1560804385727;
        Mon, 17 Jun 2019 13:46:25 -0700 (PDT)
Received: from localhost.localdomain ([64.188.179.192])
        by smtp.googlemail.com with ESMTPSA id i48sm6124263qte.93.2019.06.17.13.46.24
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 17 Jun 2019 13:46:25 -0700 (PDT)
From:   Rob Herring <robh@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        Jan Tuerk <jan.tuerk@emtrion.com>,
        Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] dt-bindings: arm: Move Emtrion i.MX6 board bindings to schema
Date:   Mon, 17 Jun 2019 14:44:23 -0600
Message-Id: <20190617204423.2880-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Emtrion board bindings landed when the i.MX board/SoC bindings were
being converted to DT schema. Add them to the schema and remove the
separate file.

Cc: Jan Tuerk <jan.tuerk@emtrion.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/emtrion.txt | 12 ------------
 Documentation/devicetree/bindings/arm/fsl.yaml    |  4 ++++
 2 files changed, 4 insertions(+), 12 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/emtrion.txt

diff --git a/Documentation/devicetree/bindings/arm/emtrion.txt b/Documentation/devicetree/bindings/arm/emtrion.txt
deleted file mode 100644
index 83329aefc483..000000000000
--- a/Documentation/devicetree/bindings/arm/emtrion.txt
+++ /dev/null
@@ -1,12 +0,0 @@
-Emtrion Devicetree Bindings
-===========================
-
-emCON Series:
--------------
-
-Required root node properties
-	- compatible:
-	- "emtrion,emcon-mx6", "fsl,imx6q"; 		: emCON-MX6D or emCON-MX6Q SoM
-	- "emtrion,emcon-mx6-avari", "fsl,imx6q";	: emCON-MX6D or emCON-MX6Q SoM on Avari Base
-	- "emtrion,emcon-mx6", "fsl,imx6dl"; 		: emCON-MX6S or emCON-MX6DL SoM
-	- "emtrion,emcon-mx6-avari", "fsl,imx6dl";	: emCON-MX6S or emCON-MX6DL SoM on Avari Base
diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 407138ebc0d0..fbeb56345b35 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -80,6 +80,8 @@ properties:
       - description: i.MX6Q based Boards
         items:
           - enum:
+              - emtrion,emcon-mx6         # emCON-MX6D or emCON-MX6Q SoM
+              - emtrion,emcon-mx6-avari   # emCON-MX6D or emCON-MX6Q SoM on Avari Base
               - fsl,imx6q-arm2
               - fsl,imx6q-sabreauto
               - fsl,imx6q-sabrelite
@@ -99,6 +101,8 @@ properties:
         items:
           - enum:
               - eckelmann,imx6dl-ci4x10
+              - emtrion,emcon-mx6         # emCON-MX6S or emCON-MX6DL SoM
+              - emtrion,emcon-mx6-avari   # emCON-MX6S or emCON-MX6DL SoM on Avari Base
               - fsl,imx6dl-sabreauto      # i.MX6 DualLite/Solo SABRE Automotive Board
               - fsl,imx6dl-sabresd        # i.MX6 DualLite SABRE Smart Device Board
               - technologic,imx6dl-ts4900
-- 
2.20.1

