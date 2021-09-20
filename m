Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B23F412375
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 20:23:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352452AbhITSZK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 14:25:10 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:46896
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1348160AbhITSWy (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 Sep 2021 14:22:54 -0400
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 414B840291
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 18:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632162086;
        bh=aMSiOms6prdZ099C0szw2vjYvnbIcB4EP4lQR9/7bd4=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=k5QQTo2Xo9hyK5S/q+DbzguKRbEqVKuHv8FOGAN5BPin7ocZf7VdWlh38QX3A5QPp
         0x4N5m/K+y72WfgJEx5Oci/TaB0kxqNF3uHiZR7pRXPcdCdwdZrS2RtjRMfVElGxOQ
         EY3sXmH8mnt720Qak+3++ErhpK855yCVSrapuHIrH+ogaC5NYaFN1zdDjmxPm9NRoR
         ATWVbeV3qElXXcOA9cAf0h1C6Kt3oYZd8Q7U0gQsxCxxw6d5pDCqekQIep5anbHjrh
         zFYTnDy91TIUHsoQPOPFOSmeVnMKi5q/7wK4kT5so5THdFaVavXlCiueApMWoHDvLD
         FAbHkqy+aM0iA==
Received: by mail-wr1-f72.google.com with SMTP id j16-20020adfa550000000b0016012acc443so1427661wrb.14
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 11:21:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aMSiOms6prdZ099C0szw2vjYvnbIcB4EP4lQR9/7bd4=;
        b=WF4Ov954F9ofLTMPpG338PqGHkjUsx7HqUOyP3s20uPw9YlqECA0FHHxz1nRRCXOsV
         qX8VbbLLsEsnwMOjUY7N9vg6+HlZXtmsdV7jY3SR0BKTYxuPu1M6PWSOyikq2gn1q1LO
         P9PCTo5wURLeSE9jb2s9BKM0VYutksfa+HXYkEUnCbwi7RcdmxOuxG/gm9gQVtyNgUTB
         jRImAdAom2/hcnur7KWUaEn2DnozZybzYjhNlTNtqjyaoZCOc1z8HkTLQF4j70gPvjzU
         +9a7mPSIEP8r/q7mJGVm+wey9OPWRsDAU8p6/idA+dUr0fVnBeOTyWCDkzifsY/zxvE4
         tRfQ==
X-Gm-Message-State: AOAM530DVHXSsEjZZLK72tC/EBviApXtBJWNCRhnv2lYEbABFB4l8uXQ
        EHA4iIr9ENOqzaW7NKR7UQ/452e2dk/t82pxaYo1KZxDm5VLQ2DNjrhbLA7jRV2ktZ+tPCGazhy
        IS/Rkgj+nUaXP4v3C/N/loKNFX/TVAGKetza/suI=
X-Received: by 2002:adf:d1cf:: with SMTP id b15mr4098026wrd.181.1632162085200;
        Mon, 20 Sep 2021 11:21:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw774b/B1NbEVUkHVEbXU9WEty43J69NGTEEI3VR3a+6pwFjffJn/aWJcn7R38bDYtguu4aNA==
X-Received: by 2002:adf:d1cf:: with SMTP id b15mr4098013wrd.181.1632162085016;
        Mon, 20 Sep 2021 11:21:25 -0700 (PDT)
Received: from kozik-lap.lan (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id e5sm10515285wrd.1.2021.09.20.11.21.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 11:21:24 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Jean Delvare <jdelvare@suse.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Jiri Kosina <trivial@kernel.org>,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 4/6] dt-bindings: hwmon: hih6130: move to trivial devices
Date:   Mon, 20 Sep 2021 20:21:12 +0200
Message-Id: <20210920182114.339419-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210920182114.339419-1-krzysztof.kozlowski@canonical.com>
References: <20210920182114.339419-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The hih6130 bindings are trivial, so it can be integrated into trivial
devices bindings.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/hwmon/hih6130.txt  | 12 ------------
 .../devicetree/bindings/trivial-devices.yaml         |  2 ++
 2 files changed, 2 insertions(+), 12 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/hwmon/hih6130.txt

diff --git a/Documentation/devicetree/bindings/hwmon/hih6130.txt b/Documentation/devicetree/bindings/hwmon/hih6130.txt
deleted file mode 100644
index 2c43837af4c2..000000000000
--- a/Documentation/devicetree/bindings/hwmon/hih6130.txt
+++ /dev/null
@@ -1,12 +0,0 @@
-Honeywell Humidicon HIH-6130 humidity/temperature sensor
---------------------------------------------------------
-
-Requires node properties:
-- compatible : "honeywell,hi6130"
-- reg : the I2C address of the device. This is 0x27.
-
-Example:
-	hih6130@27 {
-		compatible = "honeywell,hih6130";
-		reg = <0x27>;
-	};
diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index b1bad299ec66..c9333fb81fdf 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -111,6 +111,8 @@ properties:
           - mps,mp2888
             # Monolithic Power Systems Inc. multi-phase controller mp2975
           - mps,mp2975
+            # Honeywell Humidicon HIH-6130 humidity/temperature sensor
+          - honeywell,hi6130
             # Infineon IR36021 digital POL buck controller
           - infineon,ir36021
             # Infineon IR38064 Voltage Regulator
-- 
2.30.2

