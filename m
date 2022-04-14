Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A60C0500DEB
	for <lists+devicetree@lfdr.de>; Thu, 14 Apr 2022 14:45:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241761AbiDNMsC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Apr 2022 08:48:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243578AbiDNMrh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Apr 2022 08:47:37 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 804D690CDB
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 05:45:11 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id u3so6754449wrg.3
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 05:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=k3gcIDeCZ4FNN7UJi4DooXXT3wAgGZnORf6hg3bDQ7g=;
        b=aVL2y+bqHb9MyoRQgOfh+B7e4xnjKlZs882z4Vz2jkurF68OihGDsMR1u9txqbP7vn
         4Y9zGHx3xXBlJ+FoBAlWgMYG1ZUfy7eQAxT2v2q3qnai9Q/NKs9mkka8w2JQNfMlrIyd
         4RQKndYhbNppNWaEa1+LAHnVspRoF0cntB0y55NAsvg6Cy58ZfWtmyJmIlxWv/XZ8VBg
         RAZpXfrKbf8CXuEtrRUfXVMc0ZcHIEF7ksD6BqrId0TrKotRL/+GdIpLhrdU9I52wp+c
         ngW6C2FP891hCw7VwcoQILDZ6gph4AT8OvQyy8lS8mP6M2x5/V1e/1zlHXd+/wP5sW1k
         yrlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=k3gcIDeCZ4FNN7UJi4DooXXT3wAgGZnORf6hg3bDQ7g=;
        b=NNDNMKL8etVZKzIuIK8FDQa6rdESTGSCEguSRv07k3hPh6EbLR7eNA5L9OARbKAAiy
         wj6P6v7TzMDNJ5PHjyo4r2efF8GFCved/E+SEmp7v4Jre1DOiBFYCZrMj4Hup7Eir4HQ
         PbZrs86uWEMgRfqheIc/AU52DNdv4hQwlESXTyXIfXZVlEy3VQo1wTYCRv6fm2iHUmnq
         ZrBkesgOUdQ3AscH7KZcHMi6XRBfOzuZd19AmmAKhQ3r/TIm75Sngg+23jJlMMahPmSa
         ciJdA9h6Bg6AHUz2o/ie8CIAGbbGnlZl6zVXlw0mDL39gzmc5JxFHGzfRxl2oLIBLh0G
         GZHQ==
X-Gm-Message-State: AOAM533KNuujQg1QMesGtO+XSzLmP5cJlUf5WmOmVByYRv9x7QcMVAZB
        h2Vq16aRapOAu94wHKOrJZPwsA==
X-Google-Smtp-Source: ABdhPJzJRBxaW/XinKYS91qDftGnijG0Mx0Vi+8JVQag8zAEEK6zO51bcqeVfCQn8eEv/egKwehCQA==
X-Received: by 2002:adf:fad2:0:b0:207:9d7e:174 with SMTP id a18-20020adffad2000000b002079d7e0174mr1977437wrs.265.1649940310105;
        Thu, 14 Apr 2022 05:45:10 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id d20-20020a05600c34d400b0038caf684679sm6350086wmq.0.2022.04.14.05.45.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Apr 2022 05:45:09 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     sakari.ailus@iki.fi, paul.j.murphy@intel.com,
        daniele.alessandrelli@intel.com, mchehab@kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org
Cc:     robert.foss@linaro.org, hfink@snap.com, jgrahsl@snap.com,
        dmitry.baryshkov@linaro.org, vladimir.zapolskiy@linaro.org,
        bryan.odonoghue@linaro.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/2] media: dt-bindings: imx412: Add regulator descriptions
Date:   Thu, 14 Apr 2022 13:45:04 +0100
Message-Id: <20220414124505.1329295-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220414124505.1329295-1-bryan.odonoghue@linaro.org>
References: <20220414124505.1329295-1-bryan.odonoghue@linaro.org>
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

The imx412 like many I2C camera sensors has three voltage rails which
depending on platform may be necessary to switch power onto directly.

Add in as optional rails so as not to break anything for existing users.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../devicetree/bindings/media/i2c/sony,imx412.yaml       | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml
index afcf70947f7e..26d1807d0bb6 100644
--- a/Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml
@@ -32,6 +32,15 @@ properties:
     description: Clock frequency 6MHz, 12MHz, 18MHz, 24MHz or 27MHz
     maxItems: 1
 
+  dovdd-supply:
+    description: Interface power supply.
+
+  avdd-supply:
+    description: Analog power supply.
+
+  dvdd-supply:
+    description: Digital power supply.
+
   reset-gpios:
     description: Reference to the GPIO connected to the XCLR pin, if any.
     maxItems: 1
-- 
2.35.1

