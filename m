Return-Path: <devicetree+bounces-6-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB4879F395
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 23:15:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 936E5B20A45
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 21:15:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D15722EEC;
	Wed, 13 Sep 2023 21:15:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526D91A29D
	for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 21:15:12 +0000 (UTC)
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D83F11724;
	Wed, 13 Sep 2023 14:15:11 -0700 (PDT)
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-68fbd31d9ddso200084b3a.0;
        Wed, 13 Sep 2023 14:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694639711; x=1695244511; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=19SLO/zUKSfrcqDZcxEA8NzdSRIAbKzNr6b76vhY/g4=;
        b=FDmvN+x2z8IFTkycWhM4Nkgnwz+S1WR7/Jf/dlqQlSoxTIw0kAyVM5N+mBHhj2VGOi
         CAko0RyJ6vyZr4LsywWdZROQc8AqlUMzbL0SmpX0ugdKUSXew7XmKEy9sNO98zZBPeY6
         hDMFVyf8LMwSSgNz2n1DnyaFHf7Xg+Ex1tpC3gEak28feWl9tr5HFUsAZ4FuiKI3EWPx
         6yf9UAlMt6/6Ifp1E8VEnznDQSD5Kd7U+tEDLNYFnSSnatU5AjDzgsDg/nwiADCiQuYf
         5JogRX6W9YRdGzFNSt0GHZyAMwrNNNCI1SqkaKd46i3yX2ZNM5pZkC4N8fJZP6/9HYgh
         2Q6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694639711; x=1695244511;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=19SLO/zUKSfrcqDZcxEA8NzdSRIAbKzNr6b76vhY/g4=;
        b=PAIvTqOPSPcujr8L2Q73Wf/rB54U88sEqoNlvwHErrIXa76oYfPDJu/fUKmwikFwlU
         10QFhVPvxwAjwCfBFoT+Yf2Hwf77FPp8R1l2mRckpNPfkYykqadtpW/F+5EHMedB2RVp
         1A+y/ADo0AfAGg5UlaotPDQh863O+4Bqx92g2DBn/j0f5dMGH7SAJf02oiCCsB5oVaCo
         yiGrdERI4iuP3LKTuLqruN3GuJs7UyXrD3kGSbqdAwf+fIc7MAwkSkTovNtcaSqm5dge
         sKhdiV8T1nbbaXpaEFmHR63j9YITNb5F7TdikolfqJFGrOMRkoXvnPRFK2IoMRPa7hcP
         /Ufw==
X-Gm-Message-State: AOJu0YyjAdvV19sFmj+ZlM9PjMMShH6cPkKVjCrg8wED9GVY/tvN7WoN
	g65zebA3+uEBCvThD1iqZFS9HDufIEs=
X-Google-Smtp-Source: AGHT+IH6oYEa97MF9flJ2Sl022ZbP/UXRnOb8KsJVtn2Kad2rO/bDK7FfhbwSoslpJu2zGdZRGWcwg==
X-Received: by 2002:a05:6a20:9717:b0:104:ad71:f080 with SMTP id hr23-20020a056a20971700b00104ad71f080mr3484683pzc.34.1694639711012;
        Wed, 13 Sep 2023 14:15:11 -0700 (PDT)
Received: from octofox.hsd1.ca.comcast.net ([2601:646:a201:19d0:82b1:d7c2:2eaf:61e7])
        by smtp.gmail.com with ESMTPSA id e18-20020a17090301d200b001b8c689060dsm73707plh.28.2023.09.13.14.15.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Sep 2023 14:15:10 -0700 (PDT)
From: Max Filippov <jcmvbkbc@gmail.com>
To: linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Max Filippov <jcmvbkbc@gmail.com>
Subject: [PATCH 1/4] dt-bindings: serial: document esp32-uart bindings
Date: Wed, 13 Sep 2023 14:14:46 -0700
Message-Id: <20230913211449.668796-2-jcmvbkbc@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230913211449.668796-1-jcmvbkbc@gmail.com>
References: <20230913211449.668796-1-jcmvbkbc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add documentation for the ESP32xx UART controllers.

Signed-off-by: Max Filippov <jcmvbkbc@gmail.com>
---
 .../bindings/serial/esp,esp32-uart.yaml       | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/serial/esp,esp32-uart.yaml

diff --git a/Documentation/devicetree/bindings/serial/esp,esp32-uart.yaml b/Documentation/devicetree/bindings/serial/esp,esp32-uart.yaml
new file mode 100644
index 000000000000..8b45ef808107
--- /dev/null
+++ b/Documentation/devicetree/bindings/serial/esp,esp32-uart.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/serial/esp,esp32-uart.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ESP32 UART controller
+
+maintainers:
+  - Max Filippov <jcmvbkbc@gmail.com>
+
+description: |
+  ESP32 UART controller is a part of ESP32 SoC series.
+
+properties:
+  compatible:
+    oneOf:
+      - description: UART controller for the ESP32 SoC
+        const: esp,esp32-uart
+      - description: UART controller for the ESP32S3 SoC
+        const: esp,esp32s3-uart
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    serial0: serial@60000000 {
+            compatible = "esp,esp32s3-uart";
+            reg = <0x60000000 0x80>;
+            interrupts = <27 1 0>;
+            clocks = <&serial_clk>;
+    };
-- 
2.30.2


