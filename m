Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 810F958F7BE
	for <lists+devicetree@lfdr.de>; Thu, 11 Aug 2022 08:39:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233698AbiHKGih (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Aug 2022 02:38:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234199AbiHKGic (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Aug 2022 02:38:32 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53CD889CE7
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 23:38:31 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id v10so14863360ljh.9
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 23:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=S2RfVLTw/jaWgFdyJ1ItzFOnc5KMcylvXH0jKXHIbD0=;
        b=cjeX3LaP2Cnud2KiyL+1CgzuSx9GXWKcrWah1aMxEu4lN9FXPop0P5+HFSsLY7yzgS
         gl/F5AuqztkO1ux37myt6eVM5ICXel9SxBDl9inxS/1oRNWq58WyISXQxcmF1rh0VcS7
         fDEGN0nlxHvZNZfJmtl+u8KL8giTz3Kk/WRipSKYrlD+8ESuIxjgonnsMiqWeP22RMZ1
         ADhzV7fNiF+XOWoPJlbVns1nfwtST/cCEiwNbsrShHVmOQ2VZJXTHXLThZ8lPOxQO1u4
         mXxhGJ53zEw/gn6iVFSU/Ps0ZA+tKeWoJ3vhYVYQMeCB0eVkwxi14u7NkIcIlV8PkeHE
         Ypcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=S2RfVLTw/jaWgFdyJ1ItzFOnc5KMcylvXH0jKXHIbD0=;
        b=f+D5L8UaGvUwq1mnHSheXOG4IGq56aqt9PNVLJqvQyo1WOhCBZsnjP7DRz8d28ywUP
         3hl4sMAF5P1csrJTOiQxnqr8UyXlTOBteDWOclArFZcVM+vZPUqRX+CxiVOxd/ULExfU
         hDTnC85pLOhq/7F6vFETpZibKBpmmgyi5TJ7rS70v0mZLdcWaxgPk7EXiu6So+D3XCbY
         QVHQq+5N3V4n02J2tjmNMnka2IButbJWyU8J9jCRJc9su3o2HrNXjh3sagSO9BHx4dxq
         G/PdYP9Wd+oW3ot7I49IJCwYmhA7MLFikXt/Hs8z7NC5cJWPyYx3ummpkDjJCqnBKsZm
         X9Tg==
X-Gm-Message-State: ACgBeo17EDDGeNwYyTIroy0DsVRpndJOpcsfMKMvl0fyPI6/logJSn8i
        oRxm1jg93mEGseLHPr3+lAx9Aw==
X-Google-Smtp-Source: AA6agR6DxUe7xlD+gKbwfWH2bVHb0ekzLW9vrvuby/vEbIOUrGz2lEbGgr875AOZcxe9gOXv3EPB0Q==
X-Received: by 2002:a05:651c:b1e:b0:25e:bd24:8c4a with SMTP id b30-20020a05651c0b1e00b0025ebd248c4amr8511826ljr.38.1660199909715;
        Wed, 10 Aug 2022 23:38:29 -0700 (PDT)
Received: from localhost.localdomain ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id j15-20020a056512028f00b0048b2be5320csm596461lfp.118.2022.08.10.23.38.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Aug 2022 23:38:29 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Vaishnav Achath <vaishnav.a@ti.com>, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] spi: dt-bindings: Drop Pratyush Yadav
Date:   Thu, 11 Aug 2022 09:38:26 +0300
Message-Id: <20220811063826.7620-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Emails to Pratyush Yadav bounce ("550 Invalid recipient").  Generic SPI
properties should be maintained by subsystem maintainer (Mark).  Add
recent contributor Vaishnav Achath to the Cadence SPI bindings.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Vaishnav Achath, are you ok with that?
---
 .../devicetree/bindings/spi/cdns,qspi-nor-peripheral-props.yaml | 2 +-
 Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml        | 2 +-
 Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/spi/cdns,qspi-nor-peripheral-props.yaml b/Documentation/devicetree/bindings/spi/cdns,qspi-nor-peripheral-props.yaml
index 553601a441a7..510b82c177c0 100644
--- a/Documentation/devicetree/bindings/spi/cdns,qspi-nor-peripheral-props.yaml
+++ b/Documentation/devicetree/bindings/spi/cdns,qspi-nor-peripheral-props.yaml
@@ -10,7 +10,7 @@ description:
   See spi-peripheral-props.yaml for more info.
 
 maintainers:
-  - Pratyush Yadav <p.yadav@ti.com>
+  - Vaishnav Achath <vaishnav.a@ti.com>
 
 properties:
   # cdns,qspi-nor.yaml
diff --git a/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml b/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
index 0a537fa3a641..4707294d8f59 100644
--- a/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
+++ b/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Cadence Quad SPI controller
 
 maintainers:
-  - Pratyush Yadav <p.yadav@ti.com>
+  - Vaishnav Achath <vaishnav.a@ti.com>
 
 allOf:
   - $ref: spi-controller.yaml#
diff --git a/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml b/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
index ce048e782e80..a4abe1588005 100644
--- a/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
@@ -16,7 +16,7 @@ description:
   their own separate schema that should be referenced from here.
 
 maintainers:
-  - Pratyush Yadav <p.yadav@ti.com>
+  - Mark Brown <broonie@kernel.org>
 
 properties:
   reg:
-- 
2.34.1

