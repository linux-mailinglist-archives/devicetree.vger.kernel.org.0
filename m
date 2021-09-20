Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 25094412374
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 20:23:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352443AbhITSZJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 14:25:09 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:46886
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1378111AbhITSWx (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 Sep 2021 14:22:53 -0400
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com [209.85.221.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id CF66A40257
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 18:21:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632162083;
        bh=+yYpY0bTQCprkzpDe095FfeHits+DFt9BKBgw/pr/fI=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=onyEwh1fxRTW6x18akBYBr2Dm+kVidRIsThrD1tfkwmK3TTjBtGUrcDyBUrBq9Nno
         qeYwMqEN7H5NkqxHbwAEEqWLmXDUk5qBEKrY1Hfq5WanMeJ/5KjQUhMmhDHyO0sVIO
         vg9mhbmgAR4BV4i6VPwWP8fqtQpeBZIk3HsxIW2eDCfl5X3mEyDVqUBk7UwbsuiJsl
         XSqJVfZSb+UX7xUlVgqZ4bPywvm4mPgP9F3BZejVH37cVkLmabEIcpTkKubGBnwNgI
         quEEYUMI+r710pVmiGKCVt0/rxZ3FH4+sXswZ+JFFLysbVz/KCKf948m13oGY9rWRl
         ZpVktQmEc1Etw==
Received: by mail-wr1-f71.google.com with SMTP id j16-20020adfa550000000b0016012acc443so1427580wrb.14
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 11:21:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+yYpY0bTQCprkzpDe095FfeHits+DFt9BKBgw/pr/fI=;
        b=Q3lLfVsk7cZj3/Ztg3+kr3vbkCdRrjCwXOYCVfDubK4SVu5JtJKwy8tfPcl2NtqVrT
         hjIdjACCeuwawmaf8Zom0dMOKmdh3pivQ4ZdPtu0U7awSbS3UZ0GRckICwDMBU1BB65D
         s6USfhBXcd2exf+apkEKeRjZafXVY5VchuwkaKD2FTr4GmdCfTYS8xs/yRUXMwgB6phh
         bV+jjB80iju5apw8VDtkQCT39kfXcu65BhNTzBKLqFySPtqUhZM/37PbA3iCB6RgrWAG
         MZHyuaDLtATjUiEapJXQ+L6S0mglNVIrOwsXK5MnJuWpaU1z2WQB8Q2sLdlZETVnetSI
         VT3A==
X-Gm-Message-State: AOAM5300TEB83oA1HJkbss/Aw2XELHQfeeIqAb+SVa8khcMctgsLQbeA
        SNqVViEQx5H/DvWwbO4ERZM+eTuV9vMvG5SoHpHY605YLIz7cxKfUa1fyrorcQRwFRCB8YXlUFd
        aujBfhqkyQA4QguiQ//M+7TBjFQIbPHFM+Fy2dcs=
X-Received: by 2002:adf:f884:: with SMTP id u4mr29322857wrp.411.1632162083541;
        Mon, 20 Sep 2021 11:21:23 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz3hZvPR1xLQRHEbFwJFMfji+eLy88hIeF1v2xPgZqajAjlE0iGWvbL2fqHTmYlXmC+sI2PjQ==
X-Received: by 2002:adf:f884:: with SMTP id u4mr29322840wrp.411.1632162083396;
        Mon, 20 Sep 2021 11:21:23 -0700 (PDT)
Received: from kozik-lap.lan (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id e5sm10515285wrd.1.2021.09.20.11.21.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 11:21:22 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Jean Delvare <jdelvare@suse.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Jiri Kosina <trivial@kernel.org>,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 3/6] dt-bindings: hwmon: dps650ab: move to trivial devices
Date:   Mon, 20 Sep 2021 20:21:11 +0200
Message-Id: <20210920182114.339419-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210920182114.339419-1-krzysztof.kozlowski@canonical.com>
References: <20210920182114.339419-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The dps650ab bindings are trivial, so it can be integrated into trivial
devices bindings.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/hwmon/dps650ab.txt  | 11 -----------
 .../devicetree/bindings/trivial-devices.yaml          |  2 ++
 2 files changed, 2 insertions(+), 11 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/hwmon/dps650ab.txt

diff --git a/Documentation/devicetree/bindings/hwmon/dps650ab.txt b/Documentation/devicetree/bindings/hwmon/dps650ab.txt
deleted file mode 100644
index 76780e795899..000000000000
--- a/Documentation/devicetree/bindings/hwmon/dps650ab.txt
+++ /dev/null
@@ -1,11 +0,0 @@
-Bindings for Delta Electronics DPS-650-AB power supply
-
-Required properties:
-- compatible : "delta,dps650ab"
-- reg        : I2C address, one of 0x58, 0x59.
-
-Example:
-	dps650ab@58 {
-		    compatible = "delta,dps650ab";
-		    reg = <0x58>;
-	};
diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 1bbfa98a85d8..b1bad299ec66 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -73,6 +73,8 @@ properties:
           - dallas,ds4510
             # Digital Thermometer and Thermostat
           - dallas,ds75
+            # Delta Electronics DPS-650-AB power supply
+          - delta,dps650ab
           # Delta Electronics DPS920AB 920W 54V Power Supply
           - delta,dps920ab
             # 1/4 Brick DC/DC Regulated Power Module
-- 
2.30.2

