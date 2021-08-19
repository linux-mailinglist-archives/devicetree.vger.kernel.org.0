Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E5A563F1FD8
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 20:25:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234045AbhHSS0d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 14:26:33 -0400
Received: from smtp-relay-canonical-1.canonical.com ([185.125.188.121]:51224
        "EHLO smtp-relay-canonical-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233792AbhHSS0a (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Aug 2021 14:26:30 -0400
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPS id A41C1411ED
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629397553;
        bh=VaNdDMIExHpifgg1f/piu7EYnB4gbMsCpL1KpPnqU+E=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=PQzFN6fLVFcqtgrOUZP/wlM0DXZYNMlvWKBW7rO+ZpGh6b4MXgNvuoPKIpXES8b36
         bhemVPMdteQjg8KAoC5ZTXcWUdljdXTFMAUoXVmnLUal2WJ5dpSJ/vm3R3jYSU7ccf
         3Mq334q+ApqlAAJzmV7+/wxnRxbEe5gj+ek/0FCX5OJW2BSVDe67zHh7SBfmwt9gRY
         kbOc3f/7DgS9ZlSjOwzScFmsWMp390TcBQFbC5k4sdbLC1d5yQoEepqj2O9BIt1rkJ
         XWVl7VJq8XtDLPB24Ot3GYPZbXfoB8z9zaFcmFOAAEI3oVcJH9sQJwSjlP6JfmaqV2
         11pzz05J5CwXw==
Received: by mail-ed1-f71.google.com with SMTP id e3-20020a50ec830000b02903be5be2fc73so3231071edr.16
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 11:25:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VaNdDMIExHpifgg1f/piu7EYnB4gbMsCpL1KpPnqU+E=;
        b=oxFfSbIPgfLi1uz0lQ2ZjOQi4BVf1L9nSkygL7sPY5quN07VWlU8BJUJQnad+Jw9hC
         YeuBunnbtDqcU4QoI9C8Cz4HBIKH9p+CxjqKvuSVl1lfbh4qK+5qwdCsOhkj1jjPzFhx
         j22+1vul90211k+22rDOa/dZLavDvRYCBGykKjWbS6+cftE/1n+IGyXLzceJne6Wm+JK
         JFe+2mma6ufEJMXBpNy9oHV6Ve0oIdCbeGkiKv2pEmrqbUzLlj6EJ37EUVo9u+DN74AV
         oqvw2kn8s+HKk0W+Jr1LytC/NyJP8/osgrJvniahWlpB1JfGHQmwv8t/gJZA0Vg2g8Xi
         GuAg==
X-Gm-Message-State: AOAM5306q1dJd2Snut41zGENvRF0SZBwb5oR9wAJdf9a0JvFObF6CXaj
        XN2yrAt+cKstNA0Oz++PpsFwTbL8ryf9ilUHKNxz1Y6kgdStqCb8oVzu2LSm2BocJBownGRj/a2
        8e6jpK9ie1ubGQ8D37JC2P1++YhmeC0y/5zkCEAU=
X-Received: by 2002:a17:906:31cf:: with SMTP id f15mr17345647ejf.272.1629397553317;
        Thu, 19 Aug 2021 11:25:53 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwDCbkHj9coklC1cYVbTAv3iL7SLo9+rGR1X7tS5lUe0qPu3NrXS8RPnZn8fFzFy8dJyBNwHQ==
X-Received: by 2002:a17:906:31cf:: with SMTP id f15mr17345631ejf.272.1629397553110;
        Thu, 19 Aug 2021 11:25:53 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id n2sm2212108edi.32.2021.08.19.11.25.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 11:25:52 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Jean Delvare <jdelvare@suse.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Jiri Kosina <trivial@kernel.org>, linux-hwmon@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 2/2] dt-bindings: hwmon: merge max31785 into trivial devices
Date:   Thu, 19 Aug 2021 20:25:44 +0200
Message-Id: <20210819182544.224121-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210819182544.224121-1-krzysztof.kozlowski@canonical.com>
References: <20210819182544.224121-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Ther Maxim max31785 bindings are trivial, so simply merge it into
trivial-devices.yaml.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../devicetree/bindings/hwmon/max31785.txt    | 22 -------------------
 .../devicetree/bindings/trivial-devices.yaml  |  4 ++++
 MAINTAINERS                                   |  1 -
 3 files changed, 4 insertions(+), 23 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/hwmon/max31785.txt

diff --git a/Documentation/devicetree/bindings/hwmon/max31785.txt b/Documentation/devicetree/bindings/hwmon/max31785.txt
deleted file mode 100644
index 106e08c56aaa..000000000000
--- a/Documentation/devicetree/bindings/hwmon/max31785.txt
+++ /dev/null
@@ -1,22 +0,0 @@
-Bindings for the Maxim MAX31785 Intelligent Fan Controller
-==========================================================
-
-Reference:
-
-https://datasheets.maximintegrated.com/en/ds/MAX31785.pdf
-
-The Maxim MAX31785 is a PMBus device providing closed-loop, multi-channel fan
-management with temperature and remote voltage sensing. Various fan control
-features are provided, including PWM frequency control, temperature hysteresis,
-dual tachometer measurements, and fan health monitoring.
-
-Required properties:
-- compatible     : One of "maxim,max31785" or "maxim,max31785a"
-- reg            : I2C address, one of 0x52, 0x53, 0x54, 0x55.
-
-Example:
-
-        fans@52 {
-                compatible = "maxim,max31785";
-                reg = <0x52>;
-        };
diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 1e4b3464d734..646ab3a82387 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -163,6 +163,10 @@ properties:
           - maxim,max6625
             # 3-Channel Remote Temperature Sensor
           - maxim,max31730
+            # Intelligent Fan Controller with temperature and remote voltage sensing
+            # Datasheet: https://datasheets.maximintegrated.com/en/ds/MAX31785.pdf
+          - maxim,max31785
+          - maxim,max31785a
             # mCube 3-axis 8-bit digital accelerometer
           - mcube,mc3230
             # Measurement Specialities I2C temperature and humidity sensor
diff --git a/MAINTAINERS b/MAINTAINERS
index fda9f438cc27..c8935b455dd2 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14869,7 +14869,6 @@ W:	http://www.roeck-us.net/linux/drivers/
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/groeck/linux-staging.git
 F:	Documentation/devicetree/bindings/hwmon/ibm,cffps1.txt
 F:	Documentation/devicetree/bindings/hwmon/ltc2978.txt
-F:	Documentation/devicetree/bindings/hwmon/max31785.txt
 F:	Documentation/hwmon/adm1275.rst
 F:	Documentation/hwmon/ibm-cffps.rst
 F:	Documentation/hwmon/ir35221.rst
-- 
2.30.2

