Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9C0F99A308
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2019 00:37:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387472AbfHVWgh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Aug 2019 18:36:37 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:39957 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2394046AbfHVWgZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Aug 2019 18:36:25 -0400
Received: by mail-wr1-f65.google.com with SMTP id c3so6837031wrd.7
        for <devicetree@vger.kernel.org>; Thu, 22 Aug 2019 15:36:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ICylmLaXjvjxyRupyDXag7YX8QEWl2rJ5Qnlp9tRyNI=;
        b=NHwJIpoOygjAesmcaT9cgKgK5EmbkcoPBCgr/XVzQGV8/jwWWF9xDjRXqnPFirYByQ
         yCnYOdCUS3SZfZjfrXBGJKwRVnfm1/lrbnCsfiiN89KsgfjqPjM+DgZ+qaHDAi3S4ReQ
         517z9ZCq8+POKOrhJSVBX66zdPEVT45GrNTcSpfVdnTZDi+eAYXwuxX8E+zCg4ptrW4s
         kGnd+ATL2tbfubrA46gtMMH5LSYrayS3xTsSzUownEhr8lpne5QgzsyI5QckwJW2elvy
         VvQEtJyuxkhIEduKetGIaTLTvlGt1CGGIQ4UFlmkE98X2GVPi8iwZ0kCwjm1I3jCCKhL
         q6rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ICylmLaXjvjxyRupyDXag7YX8QEWl2rJ5Qnlp9tRyNI=;
        b=YWgHizg/b7u/kxq8WGzSsNoXQn1O536w/odIu1cJvIcqGCbleFVO6pc9GjQmcVkwLB
         US80rs+xsZSAe4FbxNvVvV0NC1ygjOdRjQa2J7D7M3vDkp7gdLnPDTz8qpg2T2qcd8z6
         AU+Ew++9jj43xm2EmNTr+tumHD9jme8On4FKQ22C6UmvZJmU7TD61zojWbMl3U0v8Ts/
         cCaLs6woTSKR3wKKtssbQzjXylJ+rDZXqHB+4awXk1IgG9f2WwhOb7cAWVbRPvGjrCdd
         YBsv0B0sRKTKYwzwgaoFl/g1N/azQwGFFL1wQoyiyOpgXJrIGwPfpF+KfslL321Bmkc+
         oI/w==
X-Gm-Message-State: APjAAAW/hKsGHTNeV03FGPAgL8U6KJQsz6LDOV+TrLyNgT8GGDeezDFn
        StGFjh+a4Py+3+zOf/GFhffNWA==
X-Google-Smtp-Source: APXvYqyWyQV/XNltW8o4rBAsXauwGsJAMNrtyIc5bFPN4+DmieytyPJI5Sa7f+OuakCvrBzDLa/fhQ==
X-Received: by 2002:adf:f1cc:: with SMTP id z12mr1114734wro.125.1566513382808;
        Thu, 22 Aug 2019 15:36:22 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id m188sm1886380wmm.32.2019.08.22.15.36.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2019 15:36:21 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, robh+dt@kernel.org, vkoul@kernel.org
Cc:     spapothi@codeaurora.org, bgoswami@codeaurora.org,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        lgirdwood@gmail.com, devicetree@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v4 1/4] dt-bindings: soundwire: add slave bindings
Date:   Thu, 22 Aug 2019 23:36:03 +0100
Message-Id: <20190822223606.6775-2-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190822223606.6775-1-srinivas.kandagatla@linaro.org>
References: <20190822223606.6775-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds bindings for Soundwire Slave devices that includes how
SoundWire enumeration address and Link ID are used to represented in
SoundWire slave device tree nodes.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../soundwire/soudwire-controller.yaml        | 75 +++++++++++++++++++
 1 file changed, 75 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soundwire/soudwire-controller.yaml

diff --git a/Documentation/devicetree/bindings/soundwire/soudwire-controller.yaml b/Documentation/devicetree/bindings/soundwire/soudwire-controller.yaml
new file mode 100644
index 000000000000..91aa6c6d6266
--- /dev/null
+++ b/Documentation/devicetree/bindings/soundwire/soudwire-controller.yaml
@@ -0,0 +1,75 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soundwire/soundwire-controller.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SoundWire Controller Generic Binding
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+description: |
+  SoundWire busses can be described with a node for the SoundWire controller
+  device and a set of child nodes for each SoundWire slave on the bus.
+
+properties:
+  $nodename:
+    pattern: "^soundwire(@.*|-[0-9a-f])*$"
+
+  "#address-cells":
+    const: 2
+
+  "#size-cells":
+    const: 0
+
+patternProperties:
+  "^.*@[0-9a-f]+$":
+    type: object
+
+    properties:
+      compatible:
+      pattern: "^sdw[0-9][0-9a-f]{4}[0-9a-f]{4}[0-9a-f]{2}$"
+      description:
+	  Is the textual representation of SoundWire Enumeration
+	  address. compatible string should contain SoundWire Version ID,
+	  Manufacturer ID, Part ID and Class ID in order and shall be in
+	  lower-case hexadecimal with leading zeroes.
+	  Valid sizes of these fields are
+	  Version ID is 1 nibble, number '0x1' represents SoundWire 1.0
+	  and '0x2' represents SoundWire 1.1 and so on.
+	  MFD is 4 nibbles
+	  PID is 4 nibbles
+	  CID is 2 nibbles
+	  More Information on detail of encoding of these fields can be
+	  found in MIPI Alliance DisCo & SoundWire 1.0 Specifications.
+
+      reg:
+        maxItems: 1
+        description:
+          Instance ID and Link ID of SoundWire Device Address.
+
+    required:
+      - compatible
+      - reg
+
+examples:
+  - |
+    soundwire@c2d0000 {
+        #address-cells = <2>;
+        #size-cells = <0>;
+        compatible = "qcom,soundwire-v1.5.0";
+        reg = <0x0c2d0000 0x2000>;
+
+        speaker@1 {
+            compatible = "sdw10217201000";
+            reg = <1 0>;
+        };
+
+        speaker@2 {
+            compatible = "sdw10217201000";
+            reg = <2 0>;
+        };
+    };
+
+...
-- 
2.21.0

