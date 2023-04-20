Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B339C6E9C70
	for <lists+devicetree@lfdr.de>; Thu, 20 Apr 2023 21:24:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231954AbjDTTYi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Apr 2023 15:24:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231739AbjDTTYh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Apr 2023 15:24:37 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BE823A81
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 12:24:32 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-3f17e584462so9400635e9.2
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 12:24:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1682018670; x=1684610670;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5qbGFeXrDs3WrhBf+lvrgBNLjjhcPXH+cPYhZsQiewQ=;
        b=Ac93lBa/9BLRzbTUcFMyNcv0LR2mn86n/7LatpQPOmPnIeoIVS8CMN5ZA4Iiz1PkjZ
         k7LurRp9dERgJMIKohVtx2XFerLcvtT5P7XychnJe/uyHOW8OrpB7+9bv/UK5bKJsF0R
         8CjUlmeFciVl84uA73WfydbjH1kKJ6p2QhMpxSsY9X8httdTo+kuoT3F34O/gbd3J1/b
         077FldUCsxn9J1s8HoAg8seAPzexZiBy28xqZ3yjUUW1/C12KIvwV4n3MdTbIN8QT2RJ
         04ifTJHe+F9y0D7nmU85oTFm+xDCXZgLwp1/3w2zWMhr6zsf5tna9dhewowre5/cX4R4
         DX5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682018670; x=1684610670;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5qbGFeXrDs3WrhBf+lvrgBNLjjhcPXH+cPYhZsQiewQ=;
        b=MQEu0/u6nxJ/bi5D+we/PmDhtzxY8W5OR5qYG2EUeg61qP00rH4BaLVfxJzcdgYqcx
         yuzNjm6jkXE0eKO2qIK3TvzP9Q2sqYHj4q6mgcfttJTfhqS5teAL01n6KVGfkBAMMbQf
         Rl9b86dexBtlopO0LI4wE6mjvGEVVy9IErCzGuwanpJ1z1T3NWsN8DQcGq2u0gEkkn3R
         kqFqeSnDvarmX6trnm+FBc8naBF6C7NcqQ8CzkK4QvMu1to9TzUkJDo1tEp/YkJfv4bk
         z1Y0/hQ7g2IJMkUhk1XNEIbjTpYWUcuDshcKLkoQRS7cPDi73XWjIrZWZs03ufg5yc+Z
         iHUA==
X-Gm-Message-State: AAQBX9cFHh6pmh6qyA5U1L2ToJoTG9grV8DD8cLWbHcQPLV+dfDBzCUX
        jGnk7LuHeMYLISShWtWHw3fPbw==
X-Google-Smtp-Source: AKy350YFXEqpYPMnNXKVKG8zJoE9qjBhRYvK5gdYrbXLZB4JxciYLP00LR0MySN3gmTFbydhvWggBA==
X-Received: by 2002:a05:6000:1c9:b0:2fb:ad8:288f with SMTP id t9-20020a05600001c900b002fb0ad8288fmr2015321wrx.11.1682018670573;
        Thu, 20 Apr 2023 12:24:30 -0700 (PDT)
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id u3-20020a7bcb03000000b003f16f3cc9fcsm2825651wmj.9.2023.04.20.12.24.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Apr 2023 12:24:30 -0700 (PDT)
From:   Naresh Solanki <naresh.solanki@9elements.com>
X-Google-Original-From: Naresh Solanki <Naresh.Solanki@9elements.com>
To:     zev@bewilderbeest.net, Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Naresh Solanki <Naresh.Solanki@9elements.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: regulator: Add support for multiple supplies
Date:   Thu, 20 Apr 2023 21:24:01 +0200
Message-Id: <20230420192402.3695265-1-Naresh.Solanki@9elements.com>
X-Mailer: git-send-email 2.39.1
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

Add optional DT property 'regulator-supplies' to handle connectors with
multiple supplies.
If this property is present, it will determine all regulator supplies.
Otherwise, the 'vout' supply will be used as a fallback.

This change improves support for connector like PCIe connectors on
mainboards that can be powered by 12V and 3.3V supplies.

Signed-off-by: Naresh Solanki <Naresh.Solanki@9elements.com>
...
Change in V2:
- Added example
- Update property type & description.
- Improve commit message
---
 .../bindings/regulator/regulator-output.yaml  | 21 ++++++++++++++++---
 1 file changed, 18 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/regulator/regulator-output.yaml b/Documentation/devicetree/bindings/regulator/regulator-output.yaml
index 078b37a1a71a..a9dce26991ff 100644
--- a/Documentation/devicetree/bindings/regulator/regulator-output.yaml
+++ b/Documentation/devicetree/bindings/regulator/regulator-output.yaml
@@ -21,13 +21,22 @@ properties:
   compatible:
     const: regulator-output
 
-  vout-supply:
+  regulator-supplies:
+    $ref: /schemas/types.yaml#/definitions/string-array
     description:
-      Phandle of the regulator supplying the output.
+      Optional property that specifies supply names provided by
+      the regulator. Defaults to "vout" if not specified. The
+      array contains a list of supply names.
+      Each supply name corresponds to a phandle in the
+      patternProperties.
+
+patternProperties:
+  ".*-supply":
+    description:
+      Specifies the phandle for various supplies
 
 required:
   - compatible
-  - vout-supply
 
 additionalProperties: false
 
@@ -37,3 +46,9 @@ examples:
           compatible = "regulator-output";
           vout-supply = <&output_reg>;
       };
+      out2 {
+          compatible = "regulator-output";
+          regulator-supplies = "sw0", "sw1";
+          sw0-supply = <&out2_sw0>;
+          sw1-supply = <&out2_sw1>;
+      };

base-commit: 43c75e470e5b56a992acb08474810e6822f0989c
-- 
2.39.1

