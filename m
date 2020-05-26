Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9678819E8B5
	for <lists+devicetree@lfdr.de>; Sun,  5 Apr 2020 05:01:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726444AbgDEDBc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 Apr 2020 23:01:32 -0400
Received: from mail-pj1-f73.google.com ([209.85.216.73]:34159 "EHLO
        mail-pj1-f73.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726397AbgDEDBc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 Apr 2020 23:01:32 -0400
Received: by mail-pj1-f73.google.com with SMTP id d2so3985181pje.1
        for <devicetree@vger.kernel.org>; Sat, 04 Apr 2020 20:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=fKzqXXNg9xzVu4YyDWxMV1+X7kCrAroDFOfHUGlJ58E=;
        b=Sqzp3tVry5VikJhBtbH8S7i4F6HSXFPxPg6DEQnSre+2NtOuwKjqzVf2IafEjNUj5a
         C+NeeLsqpbOdoq6OArVTZ59Shl26lYDf8U99URzAqd1/lAnJTqHhkFzvl9zaUrBc0+Um
         aZkwhBOzc8dttV849FyKs7dkxhWKMgu6NGpcJjCUnXTu2gMvQTTOIbG/pVeXwhBjYUES
         H2izvR9dW09AslLmDdTthnbsq5Uzjsdej71g4Fsiclb1VKaGef2DU8o78DbMxdNZlqVC
         1aqWRKz5VKg/P2J7t2XPKkPYFJHZk2JlCRe6HSw2x3nALCJcPpoBWcPY/TJYw6hOiaOX
         027Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=fKzqXXNg9xzVu4YyDWxMV1+X7kCrAroDFOfHUGlJ58E=;
        b=D9+zHr0kaJqkuI25oYo2b0sEq5R379m2UgdXE9iALGoUlpQo+O6kezxKrhuqtp8+S4
         Lu1O6EDCJFOy02QoGXhNI1UhAq1M3kU0W7O9Nkw6ZzQbX4dHbex4Nakh2fgcdHXaIHyF
         cNgMbQiFSU2VQfyQ/92T4EUXGRHfT62W9DGEaRGYgQ6O4R+rPD8KVR6NTTlSqojshtKN
         uOb57dxxAdTdM9dB6jMluw7ZsboQNjHVga81iwxDqjGA8tPBehDCX6GD/mlQVZnl6IX0
         JnhafDb9Od83Va3li493vBoUEzfe2iT5F7PgwCCH9d2+uYjeM5LcKVF3nrp/wnrg17uB
         tYIg==
X-Gm-Message-State: AGi0PubN8fC/0Zs6ACMzwG2gFjBrI5f7velTPDchtCz+hERPkarAUGnA
        bdyhHmCIYSZTtQvQ29OAElpSxuVDSg==
X-Google-Smtp-Source: APiQypJzQ/VynmzGryKqwj/Q41W7uFyHr7iB3BAtTwC2kBApBZa8RfvrjcVzbMMt18OmXIjc52phN4ZmNw==
X-Received: by 2002:a63:9a11:: with SMTP id o17mr3738011pge.234.1586055691194;
 Sat, 04 Apr 2020 20:01:31 -0700 (PDT)
Date:   Sat,  4 Apr 2020 20:01:17 -0700
In-Reply-To: <20200405030118.191950-1-kunyi@google.com>
Message-Id: <20200405030118.191950-3-kunyi@google.com>
Mime-Version: 1.0
References: <20200405030118.191950-1-kunyi@google.com>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
Subject: [PATCH linux hwmon-next v3 2/3] hwmon: (sbtsi) Add documentation
From:   Kun Yi <kunyi@google.com>
To:     jdelvare@suse.com, linux@roeck-us.net, robh+dt@kernel.org,
        mark.rutland@arm.com
Cc:     Kun Yi <kunyi@google.com>, openbmc@lists.ozlabs.org,
        joel@jms.id.au, linux-hwmon@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the SB-TSI sensor interface driver.

Signed-off-by: Kun Yi <kunyi@google.com>
---
 Documentation/hwmon/index.rst      |  1 +
 Documentation/hwmon/sbtsi_temp.rst | 40 ++++++++++++++++++++++++++++++
 2 files changed, 41 insertions(+)
 create mode 100644 Documentation/hwmon/sbtsi_temp.rst

diff --git a/Documentation/hwmon/index.rst b/Documentation/hwmon/index.rst
index 8ef62fd39787..c17cf38f22c2 100644
--- a/Documentation/hwmon/index.rst
+++ b/Documentation/hwmon/index.rst
@@ -140,6 +140,7 @@ Hardware Monitoring Kernel Drivers
    pxe1610
    pwm-fan
    raspberrypi-hwmon
+   sbtsi_temp
    sch5627
    sch5636
    scpi-hwmon
diff --git a/Documentation/hwmon/sbtsi_temp.rst b/Documentation/hwmon/sbtsi_temp.rst
new file mode 100644
index 000000000000..9f0f197c8aa2
--- /dev/null
+++ b/Documentation/hwmon/sbtsi_temp.rst
@@ -0,0 +1,40 @@
+Kernel driver sbtsi_temp
+==================
+
+Supported hardware:
+
+  * Sideband interface (SBI) Temperature Sensor Interface (SB-TSI)
+    compliant AMD SoC temperature device.
+
+    Prefix: 'sbtsi_temp'
+
+    Addresses scanned: This driver doesn't support address scanning.
+
+    To instantiate this driver on an AMD CPU with SB-TSI
+    support, the i2c bus number would be the bus connected from the board
+    management controller (BMC) to the CPU. The i2c address is specified in
+    Section 6.3.1 of the SoC register reference: The SB-TSI address is normally
+    98h for socket 0 and 90h for socket 1, but it could vary based on hardware
+    address select pins.
+
+    Datasheet: The SB-TSI interface and protocol is available as part of
+               the open source SoC register reference at:
+
+	       https://www.amd.com/system/files/TechDocs/56255_OSRR.pdf
+
+               The Advanced Platform Management Link (APML) Specification is
+               available at:
+
+	       http://developer.amd.com/wordpress/media/2012/10/41918.pdf
+
+Author: Kun Yi <kunyi@google.com>
+
+Description
+-----------
+
+The SBI temperature sensor interface (SB-TSI) is an emulation of the software
+and physical interface of a typical 8-pin remote temperature sensor (RTS) on
+AMD SoCs. It implements one temperature sensor with readings and limit
+registers encode the temperature in increments of 0.125 from 0 to 255.875.
+Limits can be set through the writable thresholds, and if reached will trigger
+corresponding alert signals.
-- 
2.26.0.292.g33ef6b2f38-goog

