Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 915D6D70F0
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2019 10:28:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726538AbfJOI2S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Oct 2019 04:28:18 -0400
Received: from mail-lf1-f67.google.com ([209.85.167.67]:41261 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726142AbfJOI2S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Oct 2019 04:28:18 -0400
Received: by mail-lf1-f67.google.com with SMTP id r2so13753655lfn.8
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2019 01:28:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3e4wGHkKDRH8I24Is4pDzwzrCPwhPGcWqf5noRqU7Cw=;
        b=lGu2KQCBiaXwnAgxjn2XnQyZ29VvWDTfwyj851G8PR7/zGv+5q2Nb0meitSa/yPavC
         5UP9jjecA1XSqKtKpA4uv9RzVqYV00H+W/svuhcGSLkjA2KoZIfev2NzXdLV0+6THABP
         K3Qi1CaiQ1WRYVSDuehnYYX7/xrlpbcHrTYnfPUDkr2L9LPhKtL7oioCT0H8/+DtMYxn
         ydTJdH9gptFk+yY7Q+MTQIrtTU/d7chqngxsySdZl8lmbo2IRbT2PcFXcIMQYXpN3ejt
         LUcHDOYM827MBHAjZnBgesbQZiwZmGuOF0PXnbEnj407rGcZNErbM1lxMAdznFjXlmlq
         0upw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3e4wGHkKDRH8I24Is4pDzwzrCPwhPGcWqf5noRqU7Cw=;
        b=jYYRsvTjEQXPoTdhh05deqTm8UP5fH1YrQfjZBbfNrudgTJ1RXcMU+2OsJDEB25A4Y
         Brr99pngD+9Z5Ps66L5Ru/VarAPybrdtaBFjXTPZqMhfifh/vMpyCJXoVZv67FJcjIqb
         xVhl6Ad+amXEzcjJqVCgUbtFQLLaJNvXz2SI/EkDvv9z/xAu/0/tYWSJSOf5qqJWYarQ
         gqEC48Nba7+sWK20rSudoND82fKwdQv9UVlavWkOV6Qa3LAlBtyV3nHtLQgP0UXVScOb
         WFrqQSV/JEbQuC0tG8bSCcrzU6/9Elst8VAsGAcWie2nrlmdOJ73OH1/v8I5l/H6B3fC
         HcyQ==
X-Gm-Message-State: APjAAAV51yKd7vLM7g7gt8Oe16108meCVlfT0SnHLc+ak80+RpfHPtoV
        X9FQVrbwS/DOg5k/lvOTJ80Y7I2ICPA=
X-Google-Smtp-Source: APXvYqz5hcTLh23u/b+a5MlY7e21oRto6xRmRRmoe8ytkJURyTYHQIs0XNDnkGy7MFEGV9cxFnJUrw==
X-Received: by 2002:ac2:46d9:: with SMTP id p25mr7820952lfo.174.1571128096556;
        Tue, 15 Oct 2019 01:28:16 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
        by smtp.gmail.com with ESMTPSA id y3sm4795141lji.53.2019.10.15.01.28.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2019 01:28:15 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>
Subject: [PATCH 1/3 v2] drm/panel: Add generic DSI panel YAML bindings
Date:   Tue, 15 Oct 2019 10:28:09 +0200
Message-Id: <20191015082811.29497-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds a starting point for processing and defining generic
bindings used by DSI panels. We just define one single bool
property to force the panel into video mode for now.

Cc: devicetree@vger.kernel.org
Suggested-by: Rob Herring <robh@kernel.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
- New patch after feedback.
---
 .../display/panel/panel-dsi-common.yaml       | 31 +++++++++++++++++++
 1 file changed, 31 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/panel-dsi-common.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/panel-dsi-common.yaml b/Documentation/devicetree/bindings/display/panel/panel-dsi-common.yaml
new file mode 100644
index 000000000000..4242dc25c917
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/panel-dsi-common.yaml
@@ -0,0 +1,31 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/panel-dsi-common.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Common Properties for DSI Display Panels
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+description: |
+  This document defines device tree properties common to DSI, Display
+  Serial Interface panels. It doesn't constitue a device tree binding
+  specification by itself but is meant to be referenced by device tree
+  bindings.
+
+  When referenced from panel device tree bindings the properties defined in
+  this document are defined as follows. The panel device tree bindings are
+  responsible for defining whether each property is required or optional.
+
+properties:
+
+  enforce-video-mode:
+    type: boolean
+    description:
+      The best option is usually to run a panel in command mode, as this
+      gives better control over the panel hardware. However for different
+      reasons like broken hardware, missing features or testing, it may be
+      useful to be able to force a command mode-capable panel into video
+      mode.
-- 
2.21.0

