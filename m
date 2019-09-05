Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3E9FAAA3B0
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2019 15:00:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389631AbfIENAW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Sep 2019 09:00:22 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:33084 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389616AbfIENAI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Sep 2019 09:00:08 -0400
Received: by mail-wm1-f67.google.com with SMTP id r17so4956471wme.0
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2019 06:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0Fy7M7fhIwMYXWwgYxjk3dKvxE3VtX41dFWW4vYeizE=;
        b=VdmoyV2GFf68u5cOuuZJp+zO4JtRHb6ufNYTVBiqOEosYCBvyoAQCseEtKiVMloE/j
         kU/3nIpPNHq7hbBEod+k9kr6y6z/rQI7QXP4n0L8QDNPcxPD++o4u6/YI3bCSUnOEPmn
         rKQWXhwE4On6LNa0ZAi4r8iOHA5VRFOaSUMtbss/lao9+ZkBSyDAGeP0DLEYPH2JgnF0
         Pm7o5EjxhgNWZMiu/jQRNObmhEnBitXLwSUcVwf+MXfR7pj4XcY3Rs/ZzPZlzS0QWRE3
         qk7Q9/K9KzCNNqqzR2BUmNlaxlJJxet6KwTrtL02JQDiiHC4DXqGWKbb+aRO4KjZPIcB
         veYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0Fy7M7fhIwMYXWwgYxjk3dKvxE3VtX41dFWW4vYeizE=;
        b=AUnrNz0PGSDmTWxMbxVmvvVlKATIVQiOrlcVGJx+8JMQMmLtSqvDYxUeR0Tj8d9Dtg
         rVDKF3FfG6P7rcCG3hZVR4lcTTJm/sDyZ2t4S6+cDq2yDXHANAwuDMRLJD4X+doUMvrd
         d6/d53x8foHz6kyJsc+qyUcXFcuX4TBjaIWBNUCLkp6cThwBpwAN/IBr5om5VjsStKl2
         jnAWfOAYK5T1x7NIG3DjQgmXdTJBosusqu5HfJV3XxmlRVpz5XIqYfL7FlVEED062aL5
         r6KWNnMznKMqMvih4rskQIzdUx9PW5EycLTKEItXGtkjso4oyl80lArnJtMAVllFeicr
         UKoQ==
X-Gm-Message-State: APjAAAUEpIruZLhO1wDSzKZMcZt27XfQQkco8EFFt6eGlq3h8iavOjV/
        rg497p72rDd2eBPgMQ3tltj4pQ==
X-Google-Smtp-Source: APXvYqwdWRfcJe7WNtZFLvTZ+W60rV8daZ9/FFFjadu+rO6EUD9fqSV5kfKKtp3zWU65QBx0LrKXrg==
X-Received: by 2002:a1c:2b85:: with SMTP id r127mr2812339wmr.30.1567688406192;
        Thu, 05 Sep 2019 06:00:06 -0700 (PDT)
Received: from starbuck.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id z189sm3727903wmc.25.2019.09.05.06.00.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2019 06:00:05 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 3/5] arm64: dts: meson: g12: add a g12 layer
Date:   Thu,  5 Sep 2019 14:59:54 +0200
Message-Id: <20190905125956.4384-4-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190905125956.4384-1-jbrunet@baylibre.com>
References: <20190905125956.4384-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

While the sm1 is very close to the g12a/b family, somethings apply
differently on the g12a/b and not the sm1. This introduce a new layer
of dtsi for part which apply to the g12a and g12b but not the sm1.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12.dtsi  | 7 +++++++
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 2 +-
 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi | 2 +-
 3 files changed, 9 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12.dtsi

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12.dtsi
new file mode 100644
index 000000000000..1e30061fb2a7
--- /dev/null
+++ b/arch/arm64/boot/dts/amlogic/meson-g12.dtsi
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 BayLibre, SAS
+ * Author: Jerome Brunet <jbrunet@baylibre.com>
+ */
+
+#include "meson-g12-common.dtsi"
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index eb5d177d7a99..69339d69dfd4 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -3,7 +3,7 @@
  * Copyright (c) 2018 Amlogic, Inc. All rights reserved.
  */
 
-#include "meson-g12-common.dtsi"
+#include "meson-g12.dtsi"
 #include <dt-bindings/power/meson-g12a-power.h>
 
 / {
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
index 5628ccd54531..eefac0ef092b 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
@@ -4,7 +4,7 @@
  * Author: Neil Armstrong <narmstrong@baylibre.com>
  */
 
-#include "meson-g12-common.dtsi"
+#include "meson-g12.dtsi"
 #include <dt-bindings/power/meson-g12a-power.h>
 
 / {
-- 
2.21.0

