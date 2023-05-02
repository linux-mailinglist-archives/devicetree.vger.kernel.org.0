Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BD416F4335
	for <lists+devicetree@lfdr.de>; Tue,  2 May 2023 14:00:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233797AbjEBMAu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 May 2023 08:00:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233638AbjEBMAt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 May 2023 08:00:49 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A65C41727
        for <devicetree@vger.kernel.org>; Tue,  2 May 2023 05:00:47 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-50bc5197d33so4197854a12.1
        for <devicetree@vger.kernel.org>; Tue, 02 May 2023 05:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683028846; x=1685620846;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=f3Lfco4BnCXSWDeSvGyocalO93LWCUXAn4Hyq4qa2GU=;
        b=k0Qq8qmjrUvfH6d/fC9U0sPZuAEoXcPQ4JTMgHYGwISYhsa+oGHET4gBj5mRXV5BY6
         J9oPKo6p6LNHUzk6fNIf1/8kxsUPtVW9Q/ap8x6H4UR0256dSsZKyyxiMM6bu9JmZAgD
         C3ul8k+qwtitqBiLFWI8XgCyZuh7Ma+NNHjVrxGHXaDpxWvzHFcwmACfQns75pQTOJmh
         /amtYuMgcdsWfxX0xl9doBLJhh7lzyKykOA3ZcSwH2mEBLq2MgB1AgriHZ0275vZbhcJ
         b++yGidZypMKNhCy9xAA4L4h4ef9MN65JVflD0AjbCpmbmYev0QUORf1kf3lOqVWZbPs
         YZyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683028846; x=1685620846;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f3Lfco4BnCXSWDeSvGyocalO93LWCUXAn4Hyq4qa2GU=;
        b=C5V0JcnoUM+TUvm0NmXpY0hTKLO9YNyw9BrD2GYPwva4euO2h0YSBpmyTcs8Wf3T58
         fMQXyOIb+AVEpIGsoFT01rkBa93SFH2h/Isa+VnWtfSNUATOKUzkhwt4z9Km817CfaYM
         5nJMEAVZz+25DiiPa8yZn0RTlwOV4t0gyvyGN32d9bupK/vrrfc5BGP8XlI7Grfy8VcJ
         dnGdsuAQSNmFASq5/FScA0/W7HSKFu5AydMZCF+J19TA/a3DhkFFTRxvMDzCIrPwyW+2
         zirdLoP0sEl1CpkbQa5P6T3q4qePIOsIUwvK+QesMsYaaox1CgB2/0tMxcps1cKfvYiU
         8QSg==
X-Gm-Message-State: AC+VfDyLe+oyL/kw2fsb7QajFYyLudJI4rmrSHoK4C/tSxIOvETOa1Yx
        1uXS0LKPitgn6/y3ty8gE5JZMDhwtQa5hSXbF2o=
X-Google-Smtp-Source: ACHHUZ4A7IqeyLXRL8smscOzdIf9v+IQzynF+xG31Ayj1umN6zEC38/CTVoxXfWwQg6EJ/5ynn1J+A==
X-Received: by 2002:a17:907:6d19:b0:94f:720b:1b14 with SMTP id sa25-20020a1709076d1900b0094f720b1b14mr16467542ejc.29.1683028846077;
        Tue, 02 May 2023 05:00:46 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:bafd:1283:b136:5f6a])
        by smtp.gmail.com with ESMTPSA id v10-20020a1709063bca00b0094ee3e4c934sm16063403ejf.221.2023.05.02.05.00.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 May 2023 05:00:40 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jianhua Lu <lujianhua000@gmail.com>,
        Del Regno <angelogioacchino.delregno@somainline.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/2] dt-bindings: display: novatek,nt35950: define ports
Date:   Tue,  2 May 2023 14:00:35 +0200
Message-Id: <20230502120036.47165-1-krzysztof.kozlowski@linaro.org>
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

The panel-common schema does not define what "ports" property is, so
bring the definition to enforce the type.  Panels can be single- or
dual-link, thus require only one port@0.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes since v1:
1. Rework to add ports to device schema, not to panel-common.
https://lore.kernel.org/all/20230420160905.GA2952736-robh@kernel.org/
---
 .../bindings/display/panel/novatek,nt35950.yaml           | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/panel/novatek,nt35950.yaml b/Documentation/devicetree/bindings/display/panel/novatek,nt35950.yaml
index 377a05d48a02..c93cc1018b41 100644
--- a/Documentation/devicetree/bindings/display/panel/novatek,nt35950.yaml
+++ b/Documentation/devicetree/bindings/display/panel/novatek,nt35950.yaml
@@ -47,8 +47,13 @@ properties:
   vddio-supply:
     description: regulator that supplies the I/O voltage
 
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    required:
+      - port@0
+
   backlight: true
-  ports: true
   reg: true
 
 required:
@@ -59,6 +64,7 @@ required:
   - avee-supply
   - dvdd-supply
   - vddio-supply
+  - ports
 
 additionalProperties: false
 
-- 
2.34.1

