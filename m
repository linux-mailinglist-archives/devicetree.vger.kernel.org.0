Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7947D549FE6
	for <lists+devicetree@lfdr.de>; Mon, 13 Jun 2022 22:47:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241971AbiFMUqy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jun 2022 16:46:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350101AbiFMUqA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jun 2022 16:46:00 -0400
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7C061AC
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 12:57:23 -0700 (PDT)
Received: by mail-pg1-x52d.google.com with SMTP id f65so6489372pgc.7
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 12:57:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pensando.io; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=JHEBqvjkXFtcJ+qUBNW7+1Xm1a5ZEnXcUDy9oMekAWQ=;
        b=XcS6UQmDf+C8m9YKYGOusnFCVffgrQStj//J+T4vtRpb8VgAsfxoTf7T3GaDso06eH
         X95kIF4IKwG/8S1JhVbbu1qsZ3G9zyJTb/zdPBrNw3e3u+BsafMvCjumd1H2HqBLF6sR
         vo5PIEn0Ap5GtqoJ/NomU+CELebXQIrQn0n2C4cFLCMrUu5MjFj33yt1uLkiNNMLY0Sz
         WG4+Pal6iFcZuCcYFuVLCJ4D8uGDiCXrROR+P1liCdgg0xVZthTk9ga0rBKF1byxNBQp
         mHgbrxODTBw7F49GcKmx80eRrSHJkNeSYWxOGbrGIt2oP4Xw3sss5OM9tn9bXFGZTI+y
         w3lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=JHEBqvjkXFtcJ+qUBNW7+1Xm1a5ZEnXcUDy9oMekAWQ=;
        b=mMWNO2aZRBrGGPK3KeKQydTEz48B2EJfjz16dJouyvst9drD3/A+IN2Xu8oGP74RBL
         ByMjiiSG38wlRoYSMmy0XirbbzK5CFmmPOFoz4uP8d1IX6sdwPXLRDEOkI58btg2kWro
         xkFUJHKnwsTPFdJTIPDqhH7QvzTymKUnS5xTFfitS4WljTLU8aN8xgWzf7i3Lw2FYIbh
         eGkOe94G4xBas9xmy3nPrCxAfg7IONPYE1jNBB7L+DKqs+PFkg5xftwvTJthpbgUm6cL
         f+b2Ua/r8leEcFiF5C1WmL6VStLDdEzQhiRfMzD9pvrFEwc2KGIJoUJnPgbKsS3XiuQd
         WWIQ==
X-Gm-Message-State: AOAM5321mvUVn2WAMGFAc+EKl10fYURVFc1jYocv9lKK8mN67tOBrWUs
        e5j5uDMSHmK8EbHy19ui0Qdxug==
X-Google-Smtp-Source: ABdhPJxL8blns0CtPDB1nVU68TFXxXGjE2/ANBGPsJZvdFrheK2PZLnGISiJk46IluCp/UaTXYGycg==
X-Received: by 2002:a63:5723:0:b0:3fd:d8b4:c19f with SMTP id l35-20020a635723000000b003fdd8b4c19fmr1081427pgb.137.1655150242909;
        Mon, 13 Jun 2022 12:57:22 -0700 (PDT)
Received: from platform-dev1.pensando.io ([12.226.153.42])
        by smtp.gmail.com with ESMTPSA id q21-20020a170902edd500b0016797c33b6csm5509357plk.116.2022.06.13.12.57.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jun 2022 12:57:22 -0700 (PDT)
From:   Brad Larson <brad@pensando.io>
To:     linux-arm-kernel@lists.infradead.org
Cc:     linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
        adrian.hunter@intel.com, alcooperx@gmail.com,
        andy.shevchenko@gmail.com, arnd@arndb.de, brad@pensando.io,
        blarson@amd.com, brijeshkumar.singh@amd.com,
        catalin.marinas@arm.com, gsomlo@gmail.com, gerg@linux-m68k.org,
        krzk@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        lee.jones@linaro.org, broonie@kernel.org,
        yamada.masahiro@socionext.com, p.zabel@pengutronix.de,
        piotrs@cadence.com, p.yadav@ti.com, rdunlap@infradead.org,
        robh+dt@kernel.org, samuel@sholland.org, fancer.lancer@gmail.com,
        suravee.suthikulpanit@amd.com, thomas.lendacky@amd.com,
        ulf.hansson@linaro.org, will@kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v5 01/15] dt-bindings: arm: add AMD Pensando boards
Date:   Mon, 13 Jun 2022 12:56:44 -0700
Message-Id: <20220613195658.5607-2-brad@pensando.io>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220613195658.5607-1-brad@pensando.io>
References: <20220613195658.5607-1-brad@pensando.io>
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Brad Larson <blarson@amd.com>

Document the compatible for AMD Pensando Elba SoC boards.

Signed-off-by: Brad Larson <blarson@amd.com>
---
 .../devicetree/bindings/arm/amd,pensando.yaml | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/amd,pensando.yaml

diff --git a/Documentation/devicetree/bindings/arm/amd,pensando.yaml b/Documentation/devicetree/bindings/arm/amd,pensando.yaml
new file mode 100644
index 000000000000..9f3dea681d24
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/amd,pensando.yaml
@@ -0,0 +1,26 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/amd,pensando.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: AMD Pensando SoC Platforms Device Tree Bindings
+
+maintainers:
+  - Brad Larson <blarson@amd.com>
+
+properties:
+  $nodename:
+    const: "/"
+  compatible:
+    oneOf:
+
+      - description: Boards with Pensando Elba SoC
+        items:
+          - enum:
+              - amd,pensando-elba-ortano
+          - const: amd,pensando-elba
+
+additionalProperties: true
+
+...
-- 
2.17.1

