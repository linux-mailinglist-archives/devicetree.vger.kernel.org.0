Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 824707389A0
	for <lists+devicetree@lfdr.de>; Wed, 21 Jun 2023 17:37:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233592AbjFUPhk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jun 2023 11:37:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233630AbjFUPhb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jun 2023 11:37:31 -0400
Received: from mail-qt1-x82a.google.com (mail-qt1-x82a.google.com [IPv6:2607:f8b0:4864:20::82a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF0BD1FC6
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 08:37:12 -0700 (PDT)
Received: by mail-qt1-x82a.google.com with SMTP id d75a77b69052e-3fde0f72f61so22653561cf.1
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 08:37:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687361822; x=1689953822;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zhyDs3itTHDCoC64j3sr5/tt6k09x+qbX7EDax7WYRE=;
        b=IG6/F3nmLpziRagtGrFoXkfHEsGTer519eGvx34USzermhAXZWJU+cAtI3yBjkhXuN
         latVrkD7VwSN1YSRNqYBAtqRM8yFR3VoSorT/L4/5zHbrMF/kQTsSKTderBTGvizy/hn
         WpLLpRPc4ooV9VWxWDDpnmCsvGDF6caLMAap/R/0TkLralGXsOLz3t6abOZWVOnrNZnR
         1wb7dYQh/pnvD+gkVgotpX3S15+lK1cxiatQIimoYlzL1aiptoUdEix0vi+ZMvOnVEmo
         yXI+B/jOoBFU0kPfPbqfkciSHGpTQMx+R0YWEr7+8cVE6FYyq3WgeR+G33SCCvy5OVez
         9GZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687361822; x=1689953822;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zhyDs3itTHDCoC64j3sr5/tt6k09x+qbX7EDax7WYRE=;
        b=K0lKPntZxogUR++7xEbYN87EjLKbd6UfMkbuWKYy6L2e3a8/4GSJb06jT3+/m8LZjK
         vhptqBMvLCWE/NrS5td26HT1PeJR+sumT3PyC2CXhRGI6uDGZr/j2VCyWTpn1zNmHg4z
         ljhtYMW3Mc4efeYe69fFjlSpxg0lF0H8c94B/iYMpMjfI+Haf26KAIL5D++JXF3qtD6W
         A0J5kWfN98lmdhZonF5LtmNMDf6KGjVSYhtDhj/TQ4mW2Ji+djRX+7qT68GYhWY5090e
         dpUR0+Jh0JctcMCJaJ9PylmDRAM986pd/IwaIxhq47sn1nY5jYMOeM4A4gsmgx71vlF7
         R/Gw==
X-Gm-Message-State: AC+VfDygQTdQ+KTndLYbQbNU7e+mmiRpv3ZWyr19jC8WrONDXjHtW5Q5
        Ne6e/Qt4F+0adD5qh3PBPXWFcouELxWjhNV96fw=
X-Google-Smtp-Source: ACHHUZ4ZfCyfI8EkmJ1YsjZWHa8pt0BJxKpxF0qXp0h4kiAVACJ+tDEuA3XGHgOX2jJvq8zjzP6SKA==
X-Received: by 2002:a05:622a:181c:b0:3ff:20dd:cc2b with SMTP id t28-20020a05622a181c00b003ff20ddcc2bmr8861999qtc.3.1687361822049;
        Wed, 21 Jun 2023 08:37:02 -0700 (PDT)
Received: from jassi-Alienware-x17-R2.. (wnpgmb0311w-ds01-45-177-228.dynamic.bellmts.net. [206.45.177.228])
        by smtp.gmail.com with ESMTPSA id bp20-20020a05622a1b9400b003ff251b17c8sm2483488qtb.10.2023.06.21.08.37.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jun 2023 08:37:01 -0700 (PDT)
From:   jaswinder.singh@linaro.org
To:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     krzysztof.kozlowski+dt@linaro.org, robh@kernel.org,
        ilias.apalodimas@linaro.org, ryosuke.saito@linaro.org,
        masahisa.kojima@linaro.org, Jassi Brar <jaswinder.singh@linaro.org>
Subject: [PATCHv3] dt-bindings: arm: socionext: add Synquacer platforms
Date:   Wed, 21 Jun 2023 10:36:58 -0500
Message-Id: <20230621153658.60646-1-jaswinder.singh@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230620170725.13794-1-jaswinder.singh@linaro.org>
References: <20230620170725.13794-1-jaswinder.singh@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Jassi Brar <jaswinder.singh@linaro.org>

Socionext's DeveloperBox is based on the SC2A11B SoC (Synquacer).
Specify bindings for the platform and boards based on that.

Signed-off-by: Jassi Brar <jaswinder.singh@linaro.org>
---

 * Revert back to using the brand name Synquacer instead of sc2a11b

 .../bindings/arm/socionext/synquacer.yaml     | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/socionext/synquacer.yaml

diff --git a/Documentation/devicetree/bindings/arm/socionext/synquacer.yaml b/Documentation/devicetree/bindings/arm/socionext/synquacer.yaml
new file mode 100644
index 000000000000..72554a4f1c92
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/socionext/synquacer.yaml
@@ -0,0 +1,28 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/socionext/synquacer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Socionext Synquacer platform
+
+maintainers:
+  - Masahisa Kojima <masahisa.kojima@linaro.org>
+  - Jassi Brar <jaswinder.singh@linaro.org>
+
+description:
+  Socionext SC2A11B (Synquacer) SoC based boards
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - socionext,developer-box
+          - const: socionext,synquacer
+
+additionalProperties: true
+
+...
-- 
2.34.1

