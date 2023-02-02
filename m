Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53D5A6886A8
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 19:38:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231913AbjBBSiI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 13:38:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232564AbjBBSiF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 13:38:05 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A5127B78B
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 10:37:29 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id m7so2549758wru.8
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 10:37:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=it81YP95JIRPJswh/FgK8dhTohEGTS21tUAjm96BPMQ=;
        b=T35BJJthNSXWGuipJ/S57/Vin4LoRONI1yOJ2iw8a6ampM/SH/alQlaM3pwJXbfIto
         rhB/lH9b1SfkOR19HeWTkVB7VSSsTJgHyiavcYsEoM/cXzmWt6zg2rxDTIV6fKG7uY6C
         R59zbQQItYpdbiiKXP3AQ7Vsyoc4Swh2MVx05ksPml3KYRaXwgZdpVxGAzQzbmS6ZsUk
         hFKqBE/i/V1NnVVjwq0cZN7FQRbfbNj0VLT9zzJo0vI2vf1zI2ghqgOOttCZZN4+N/qR
         OJNFfbUx3uQyls1lZ4AVo++FolCmlr1lg3WtFc0TRW0TSRpiuvX8jLi/jVecCpg+wtgK
         voEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=it81YP95JIRPJswh/FgK8dhTohEGTS21tUAjm96BPMQ=;
        b=w6WGmqpLusaH1h3o8CauZbawTk6xc2gk0hC9dNbDL57dT33prLXovgTT4O+Us5Z93U
         T5RtUbgHZgZgFW4nZY4PswcFvu/nAisEFemM8n2KJXiP93KvpnXb22gQ/4k7VVASCLAs
         vucyxeTa8ztW25gkktaklCFrDDEKJCHOLWPgcPQrElJT/5OuVZIsWysDzWxpXYDyDNjE
         STY5jXjeQ7h2+CHpbs9lNkLKucs85WZ5dzxw1a4toBAH5Y043SKZuUybwn9q3d4TD9Jj
         vgY1wfG/3iAvfIDMoyqc6l2OPZ0XHoN8NPZ0VNXqTSLgLB1uhgtkFxNRlMxahb0McW4q
         AE4g==
X-Gm-Message-State: AO0yUKUd038eKQpbm5v00tNVaRlui4jixa9aRWCH1arv2CGDPIwNyblp
        /i4sCyuuNtiGyTyZosrZfTk9bg==
X-Google-Smtp-Source: AK7set9UbIruMnv6kKNSa19q5j5yp9TO2ovfLKQ/UNar58Gc9j9V2Mg4N6Ph1JnAFCA//MyCXwBx+Q==
X-Received: by 2002:a05:6000:1285:b0:2bf:b036:ffe3 with SMTP id f5-20020a056000128500b002bfb036ffe3mr6707490wrx.45.1675363047162;
        Thu, 02 Feb 2023 10:37:27 -0800 (PST)
Received: from localhost.localdomain (82-65-169-74.subs.proxad.net. [82.65.169.74])
        by smtp.googlemail.com with ESMTPSA id p12-20020a5d48cc000000b00241fab5a296sm164664wrs.40.2023.02.02.10.37.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 10:37:26 -0800 (PST)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/9] ASoC: dt-bindings: create component common schema
Date:   Thu,  2 Feb 2023 19:36:45 +0100
Message-Id: <20230202183653.486216-2-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230202183653.486216-1-jbrunet@baylibre.com>
References: <20230202183653.486216-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

All DAIs are component but not all components are DAI.
Move the component properties (sound-name-prefix ATM) to a separate schema
file so it can be used by non-DAI components, such as auxiliary devices.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 .../bindings/sound/component-common.yaml      | 21 +++++++++++++++++++
 .../devicetree/bindings/sound/dai-common.yaml | 11 +++-------
 2 files changed, 24 insertions(+), 8 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/component-common.yaml

diff --git a/Documentation/devicetree/bindings/sound/component-common.yaml b/Documentation/devicetree/bindings/sound/component-common.yaml
new file mode 100644
index 000000000000..37766c5f3974
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/component-common.yaml
@@ -0,0 +1,21 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/component-common.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Audio Component Common Properties
+
+maintainers:
+  - Jerome Brunet <jbrunet@baylibre.com>
+
+properties:
+  sound-name-prefix:
+    $ref: /schemas/types.yaml#/definitions/string
+    description: |
+      Card implementing the routing property define the connection between
+      audio components as list of string pair. Component using the same
+      sink/source names may use this property to prepend the name of their
+      sinks/sources with the provided string.
+
+additionalProperties: true
diff --git a/Documentation/devicetree/bindings/sound/dai-common.yaml b/Documentation/devicetree/bindings/sound/dai-common.yaml
index d858eea73ed7..1aed2f0f1775 100644
--- a/Documentation/devicetree/bindings/sound/dai-common.yaml
+++ b/Documentation/devicetree/bindings/sound/dai-common.yaml
@@ -9,15 +9,10 @@ title: Digital Audio Interface Common Properties
 maintainers:
   - Jerome Brunet <jbrunet@baylibre.com>
 
-properties:
-  sound-name-prefix:
-    $ref: /schemas/types.yaml#/definitions/string
-    description: |
-      Card implementing the routing property define the connection between
-      audio components as list of string pair. Component using the same
-      sink/source names may use this property to prepend the name of their
-      sinks/sources with the provided string.
+allOf:
+  - $ref: component-common.yaml#
 
+properties:
   '#sound-dai-cells': true
 
 additionalProperties: true
-- 
2.39.0

