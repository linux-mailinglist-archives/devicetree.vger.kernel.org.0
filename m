Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 210C51645A8
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2020 14:37:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727775AbgBSNhA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Feb 2020 08:37:00 -0500
Received: from mail-wr1-f65.google.com ([209.85.221.65]:37229 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727705AbgBSNhA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Feb 2020 08:37:00 -0500
Received: by mail-wr1-f65.google.com with SMTP id w15so581134wru.4
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2020 05:36:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=idNFPyAtkmq04AJWh7a0/gnkZseJQQBbr31aSDqpxTo=;
        b=pgi+TBIfgcN3kTkndoro2wO8PcZFOTmypoXoT9oPvzBxZMrgOYmFREyP3GAWSdSFA9
         W/vH5mTeEJe6txM2vOAQ6qcI5zMlhWbBDJBd2DseAl76AwuZqBKKQCYRDewdfbQw+GNe
         jmsusBY99uLMfYUT0ZBXI87iPS9HRDmepSofoFVnzq+oTg3I9o+n3eHIv7Bf0DJi1GS6
         vPhREp4T+t+eKJkx9tcRWI3GlCMwIaMz0UT0dco4O68gnMIfvLVfpoSoW8iZIvblHvJp
         Wi6RwXWNKVFscVbHLjzE9FpD2OBeVcieFINJ3GJD1KQlakxunb2k4k1KzbE2esIPCnde
         LE2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=idNFPyAtkmq04AJWh7a0/gnkZseJQQBbr31aSDqpxTo=;
        b=TrkzRMb8W8+f5SDAzMgSnV5GhZI1gzkFnoHrf6/1nTOMx3b73KXD+W6l3N1h0iLi14
         jApaCbnUnTqi/SFKitqDae3bRVZWbuL5evV+WgGSmUvmO4yYLq5swseUganZEj8CXFps
         FHj+b17d7czc1+oW+oIjNBUlwgebexaTqIQlm1rxsVJixMqhaH2oL0cIS+4HZNV6j+i3
         T0nL5ktzHOgSlqcmApCavugDnWsyTygMUFtaqg6XGCy22IG6DWZdaM0zbTjJ3bPx59UN
         qAszY1WiCMqfXv82GS2CMMlKJNsQkukLqVqgWT3B/hfoII81nG7PpOf0tmX6bO4yw7jT
         THRw==
X-Gm-Message-State: APjAAAWiLnrXUE372U0jwn08TQb6lhinPC456lf4voSpIXlmGhVfqmkC
        YA1cpnZRWA+cOhxE4EQyI1AK8g==
X-Google-Smtp-Source: APXvYqwCdG6arwwkXKRGXknOCJ7az3kOoi5ADFVldBeUfvCD9Xrxom8biCGNQ4YGwzDvnmboPbXyrw==
X-Received: by 2002:adf:dd0b:: with SMTP id a11mr37802096wrm.150.1582119416706;
        Wed, 19 Feb 2020 05:36:56 -0800 (PST)
Received: from localhost.localdomain (cag06-3-82-243-161-21.fbx.proxad.net. [82.243.161.21])
        by smtp.googlemail.com with ESMTPSA id q124sm8856480wme.2.2020.02.19.05.36.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2020 05:36:56 -0800 (PST)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org,
        Kevin Hilman <khilman@baylibre.com>
Subject: [PATCH 1/2] ASoC: meson: add t9015 internal codec binding documentation
Date:   Wed, 19 Feb 2020 14:36:45 +0100
Message-Id: <20200219133646.1035506-2-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219133646.1035506-1-jbrunet@baylibre.com>
References: <20200219133646.1035506-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the DT binding documention of the internal DAC found in the Amlogic
gxl, g12a and sm1 SoC family.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 .../bindings/sound/amlogic,t9015.yaml         | 58 +++++++++++++++++++
 1 file changed, 58 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/amlogic,t9015.yaml

diff --git a/Documentation/devicetree/bindings/sound/amlogic,t9015.yaml b/Documentation/devicetree/bindings/sound/amlogic,t9015.yaml
new file mode 100644
index 000000000000..b7c38c2b5b54
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/amlogic,t9015.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/amlogic,t9015.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Amlogic T9015 Internal Audio DAC
+
+maintainers:
+  - Jerome Brunet <jbrunet@baylibre.com>
+
+properties:
+  $nodename:
+    pattern: "^audio-controller@.*"
+
+  "#sound-dai-cells":
+    const: 0
+
+  compatible:
+    items:
+      - const: amlogic,t9015
+
+  clocks:
+    items:
+      - description: Peripheral clock
+
+  clock-names:
+    items:
+      - const: pclk
+
+  reg:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+required:
+  - "#sound-dai-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+
+examples:
+  - |
+    #include <dt-bindings/clock/g12a-clkc.h>
+    #include <dt-bindings/reset/amlogic,meson-g12a-reset.h>
+
+    acodec: audio-controller@32000 {
+        compatible = "amlogic,t9015";
+        reg = <0x0 0x32000 0x0 0x14>;
+        #sound-dai-cells = <0>;
+        clocks = <&clkc CLKID_AUDIO_CODEC>;
+        clock-names = "pclk";
+        resets = <&reset RESET_AUDIO_CODEC>;
+    };
+
-- 
2.24.1

