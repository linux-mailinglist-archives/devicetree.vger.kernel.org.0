Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CFBA947C536
	for <lists+devicetree@lfdr.de>; Tue, 21 Dec 2021 18:45:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240525AbhLURpM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Dec 2021 12:45:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240530AbhLURpL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Dec 2021 12:45:11 -0500
Received: from mail-wr1-x44a.google.com (mail-wr1-x44a.google.com [IPv6:2a00:1450:4864:20::44a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16F21C061746
        for <devicetree@vger.kernel.org>; Tue, 21 Dec 2021 09:45:11 -0800 (PST)
Received: by mail-wr1-x44a.google.com with SMTP id s23-20020adf9797000000b001a24674f0f7so4890251wrb.9
        for <devicetree@vger.kernel.org>; Tue, 21 Dec 2021 09:45:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=GBX6o8PT3cDypz2UTxN3boihF62cGYEjjRBobjP1LbI=;
        b=conSzMLG2l93WHXP1wmmwDRCeQ9i9szVA0khLRuH0ZTbSM2nqQAKEVV98v5UaFpCVT
         DXCla6Pod/leB0gmM6Vffug6X76i7U3L69KPGAwOdp7936dRrNAyxg+Sm1ft2OtbgwZV
         NUyvviqAKTSZt0jScglrv4LlOyNwAyG7S4rQQSJrfuTRFXiYPe7vf5S7tfQzOK6MONw+
         x+/NFMoXe+FuHFBNNA/aMFouI/fy9xBnJcp8j6joDu233AtzvDAWHfcZ/IdVQqzs6UpR
         Zp4+NgHHFGo/tgDTg/DcpJKZVpyOk+pmTgUNilVwTNcScWF7XWj4gqHLfCtYgcfZAX4D
         BTcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=GBX6o8PT3cDypz2UTxN3boihF62cGYEjjRBobjP1LbI=;
        b=kKdvz5xJ9kKuqKexwygD3UH5Bdu51S2F2Qq7hd7JtRf5FqwenF7FSJyCZYdxeo7+6l
         cf5l+bBewG5oqLnvn6OcH7uTZHt8H79WdXhXH1tIu/JGY6mPopxWA24lXXGqmMT+CXMY
         zqrx9vix0wmLqZoSK9QjfHWxzZVZB57SYW/Sw0jad+ee9S42HsicH+UIuMuaJcwBbD8U
         hxwtE0zldABrnQvZjiOlqi1CkOC5KTRkfXsx53o+Q5RSQhVSKWT5d9qI2qn47lqrmfcS
         SAf1bBYmelcdkQQ5/+pVuED679yopdjnhWipvYt8m5OMu8W5lygxl9F6xYFOwczmhbSo
         s9lA==
X-Gm-Message-State: AOAM532LqQ/ud/Ir2lTgLF8jHwBvK+86tWLljZSjH4Y208vw8S4ulcZe
        Lqk9xzfdRA2jqz3q68phCRdRdpxw4Mvh0w==
X-Google-Smtp-Source: ABdhPJyDtnWk1/Ufquacy0NQHQNb/PnRdIBQJZ/U+bv7OAvcJJR+E0E9PN2cGod8SPZComv2XnRGlzzLG/MNdw==
X-Received: from dbrazdil.lon.corp.google.com ([2a00:79e0:d:209:4a23:42ad:dc71:62e9])
 (user=dbrazdil job=sendgmr) by 2002:adf:fb06:: with SMTP id
 c6mr3410761wrr.625.1640108709467; Tue, 21 Dec 2021 09:45:09 -0800 (PST)
Date:   Tue, 21 Dec 2021 17:45:01 +0000
In-Reply-To: <20211221174502.63891-1-dbrazdil@google.com>
Message-Id: <20211221174502.63891-2-dbrazdil@google.com>
Mime-Version: 1.0
References: <20211221174502.63891-1-dbrazdil@google.com>
X-Mailer: git-send-email 2.34.1.307.g9b7440fafd-goog
Subject: [PATCH v5 1/2] dt-bindings: reserved-memory: Open Profile for DICE
From:   David Brazdil <dbrazdil@google.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Frank Rowand <frowand.list@gmail.com>,
        David Brazdil <dbrazdil@google.com>,
        Will Deacon <will@kernel.org>,
        Andrew Scull <ascull@google.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DeviceTree bindings for Open Profile for DICE, an open protocol for
measured boot. Firmware uses DICE to measure the hardware/software
combination and generates Compound Device Identifier (CDI) certificates.
These are stored in memory and the buffer is described in the DT as
a reserved memory region compatible with 'google,open-dice'.

Signed-off-by: David Brazdil <dbrazdil@google.com>
---
 .../reserved-memory/google,open-dice.yaml     | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/reserved-memory/google,open-dice.yaml

diff --git a/Documentation/devicetree/bindings/reserved-memory/google,open-dice.yaml b/Documentation/devicetree/bindings/reserved-memory/google,open-dice.yaml
new file mode 100644
index 000000000000..7bc714e9715f
--- /dev/null
+++ b/Documentation/devicetree/bindings/reserved-memory/google,open-dice.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/reserved-memory/google,open-dice.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Open Profile for DICE Device Tree Bindings
+
+description: |
+  This binding represents a reserved memory region containing data
+  generated by the Open Profile for DICE protocol.
+
+  See https://pigweed.googlesource.com/open-dice/
+
+maintainers:
+  - David Brazdil <dbrazdil@google.com>
+
+allOf:
+  - $ref: "reserved-memory.yaml"
+
+properties:
+  compatible:
+    const: google,open-dice
+
+  reg:
+    description: page-aligned region of memory containing DICE data
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: true
+
+examples:
+  - |
+    reserved-memory {
+        #address-cells = <2>;
+        #size-cells = <1>;
+
+        dice: dice@12340000 {
+            compatible = "google,open-dice";
+            reg = <0x00 0x12340000 0x2000>;
+            no-map;
+        };
+    };
-- 
2.34.1.307.g9b7440fafd-goog

