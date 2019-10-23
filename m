Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E8106E102A
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2019 04:44:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389290AbfJWCn5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Oct 2019 22:43:57 -0400
Received: from mail-pf1-f174.google.com ([209.85.210.174]:34842 "EHLO
        mail-pf1-f174.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730655AbfJWCn5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Oct 2019 22:43:57 -0400
Received: by mail-pf1-f174.google.com with SMTP id 205so11924528pfw.2
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2019 19:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mofPZU0gDfCeMdQs09aoNyZbpVsgKBRv49oSTcbrnzI=;
        b=mOy5hTZQlIbUw/dLIeqJ54nqXPthp1Z+w+N0xfknDKFXtqQwMk7Wnfn5/rNspav5uV
         MDdW15WOQGDrNUHwqTPtFPR2ayZOR8PMkZQPsCoIGFkMa15/YWeG535VD4rhqVXQc9QF
         hbxhmYfc7eY5CvzZRVxMHsmJhf0O38G/wX6CI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mofPZU0gDfCeMdQs09aoNyZbpVsgKBRv49oSTcbrnzI=;
        b=FQEJGGviiX9TD9HslnZjDtW2iaLq1QUJ0jHkk6wphpSJEnkh7tBxq2SK2zD87hcfor
         zbigqaXok9ZedK4rNo6bs7qu2L0t+2ArUcbzglI8vMrCkt71V3zDNeLKR2FAMW7bVxLR
         hgE+1fh4R5J1zXLKiK/U6PzqzBGXVVartHPKfIA9rCafObWZtOc71in1SauWfR6/Juj5
         0iu/oq+6e/2tFTA28DmWXjsKlrkqAKrY3+WTwXbx326qaEyXabKNXfBOQO037o1uf3y4
         UjmrfFDfDqOw83vVOvH4TqdBCvUlP1Swn+iLsMRNGXIFETr7AMpr4M1pwixCXwhiISTg
         nE7A==
X-Gm-Message-State: APjAAAWJc91h1ZMkXRCx50dg6ZPfgQbMlbAANPxk1QM8sob/NP1iZ+a7
        zpklxg6Z4uF4d0W/XqHEcChOGA==
X-Google-Smtp-Source: APXvYqxv+U6sKv24k78c6mmhFtzdjMFTEVjKujp5UDRJgvxJ5YW1F0J5Ur7LHviLgSGCAZnRoVmNKQ==
X-Received: by 2002:a63:fe56:: with SMTP id x22mr7379113pgj.282.1571798635041;
        Tue, 22 Oct 2019 19:43:55 -0700 (PDT)
Received: from ikjn-p920.tpe.corp.google.com ([2401:fa00:1:10:254e:2b40:ef8:ee17])
        by smtp.gmail.com with ESMTPSA id o64sm45970901pjb.24.2019.10.22.19.43.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2019 19:43:54 -0700 (PDT)
From:   Ikjoon Jang <ikjn@chromium.org>
To:     linux-input@vger.kernel.org, devicetree@vger.kernel.org
Cc:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Jiri Kosina <jikos@kernel.org>,
        Benjamin Tissoires <benjamin.tissoires@redhat.com>,
        linux-kernel@vger.kernel.org,
        Nicolas Boitchat <drinkcat@chromium.org>,
        Ikjoon Jang <ikjn@chromium.org>
Subject: [PATCH v3 1/2] dt-bindings: input: Add DT bindings for Whiskers switch
Date:   Wed, 23 Oct 2019 10:43:48 +0800
Message-Id: <20191023024348.225969-1-ikjn@chromium.org>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the DT binding document for Hammer's TABLET_MODE switch.

Signed-off-by: Ikjoon Jang <ikjn@chromium.org>
---
 .../devicetree/bindings/input/cros-cbas.yaml  | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/cros-cbas.yaml

diff --git a/Documentation/devicetree/bindings/input/cros-cbas.yaml b/Documentation/devicetree/bindings/input/cros-cbas.yaml
new file mode 100644
index 000000000000..3bc989c6a295
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/cros-cbas.yaml
@@ -0,0 +1,22 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/cros-cbas.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ChromeOS Hammer's Base Attached Switch
+
+maintainers:
+  - Dmitry Torokhov <dmitry.torokhov@gmail.com>
+
+description:
+  This device is used to signal when a detachable base is attached to a
+  Chrome OS tablet. The node for this device must be under a cros-ec node
+  like google,cros-ec-spi or google,cros-ec-i2c.
+
+properties:
+  compatible:
+    const: google,cros-cbas
+
+required:
+  - compatible
-- 
2.23.0.866.gb869b98d4c-goog

