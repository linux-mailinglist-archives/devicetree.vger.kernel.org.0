Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 95B244123BE
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 20:26:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348370AbhITS0y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 14:26:54 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:46984
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1378528AbhITSYv (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 Sep 2021 14:24:51 -0400
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 608BE4025C
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 18:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632162090;
        bh=392DGrLNIruEKZ82iDFDDSFrn2e1XRvH9Fknb6uNRpM=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=GLHHW0VRdkRcmu2Qs7HQ5jZWIxdbH98MFu9kNEf8XIbb1KU6dnHt4yXv0IPRF++gN
         cjJ8g30wZQQONwkIKAX4DmceORL4rvDypsjhpCByqPuWdxNDukFVmNgiv96e0RFs4L
         cJqWq1YlIoR7pR/hjh8K8BlPZF7KlNZ6eR5dfzjujK9fL2xtwLM3U9uYKzqHyfR+mP
         qffd1VCOh2jgWoXLtZG76ksoMz9CIxd40jrFDi8BypJfrj8NxyXjH3z8dJV5IISLsS
         NHGea5dL4Ld+LQF44VUgnp4meAgRVA99cL0bdl8O1JTrzvWbqBMl0SKU9M47q4pBzi
         mtr7nyn43L79g==
Received: by mail-wr1-f72.google.com with SMTP id i4-20020a5d5224000000b0015b14db14deso6790983wra.23
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 11:21:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=392DGrLNIruEKZ82iDFDDSFrn2e1XRvH9Fknb6uNRpM=;
        b=c9BCE/n5fYGY0Vk5ybCQ4YBhPij2npmZE5nwnXyg9D/ABo+IlR4hYkljag3Sm7zeg8
         Y/GKBu8wlZGY0yUNkzQGAyWuSEAjqepoYFfZGOzWvfo1kj0z2rlzLTtzLvwI9uq0tR6o
         EI42z+ue2Yyi1kv2Rjcgulyyw5wIa6bhnvFPy2tKzWtpIwvwokYOtLYhKgc8KmF1X0pQ
         MMp7EGLcFPVujQNhgi1EL2bAuP3VeoB4Ty2U98aVbt9wiOVOe5V22wrFtaU80/8fNU5Z
         4asgjne7eo3fuPhmPjKc7E6ngImu/7K0bHGnbmQ2c7WTtK4s8OjbWre2CJsSoYsvkdLK
         w1rA==
X-Gm-Message-State: AOAM5328eVDwNWDu+orjpUdq3w1WSULAq0Y3ckd2mcHcF0XaPoy1IutT
        1ncKpNahkYfUhuGa1500bqOVE/2lVVabWdEqljnM3s3t2PqegvLaE0pZYLf0UaMbmFq7WKqKVjZ
        UeS5BwZtJeAtjuAkpdR2Snlzf7IVKqaG+MNt693s=
X-Received: by 2002:adf:f48e:: with SMTP id l14mr30940410wro.109.1632162088996;
        Mon, 20 Sep 2021 11:21:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzRMPpAIRUuFY+N/fgxtfYjgdOXqjwE/V3P9AsXXFvbBbsggZfj/+s1dljcDHu9J4kwD+8IWQ==
X-Received: by 2002:adf:f48e:: with SMTP id l14mr30940395wro.109.1632162088862;
        Mon, 20 Sep 2021 11:21:28 -0700 (PDT)
Received: from kozik-lap.lan (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id e5sm10515285wrd.1.2021.09.20.11.21.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 11:21:28 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Jean Delvare <jdelvare@suse.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Jiri Kosina <trivial@kernel.org>,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 6/6] dt-bindings: hwmon: jedec,jc42: add nxp,se97b
Date:   Mon, 20 Sep 2021 20:21:14 +0200
Message-Id: <20210920182114.339419-6-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210920182114.339419-1-krzysztof.kozlowski@canonical.com>
References: <20210920182114.339419-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document bindings for NXP SE97B, a DDR memory module temperature sensor
with integrated SPD and EEPROM via Atmel's AT24 interface.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/hwmon/jedec,jc42.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/hwmon/jedec,jc42.yaml b/Documentation/devicetree/bindings/hwmon/jedec,jc42.yaml
index a7bb4e3a1c46..0e49b3901161 100644
--- a/Documentation/devicetree/bindings/hwmon/jedec,jc42.yaml
+++ b/Documentation/devicetree/bindings/hwmon/jedec,jc42.yaml
@@ -10,6 +10,14 @@ maintainers:
   - Jean Delvare <jdelvare@suse.com>
   - Guenter Roeck <linux@roeck-us.net>
 
+select:
+  properties:
+    compatible:
+      const: jedec,jc-42.4-temp
+
+  required:
+    - compatible
+
 properties:
   compatible:
     oneOf:
@@ -31,6 +39,7 @@ properties:
               - microchip,mcp98244
               - microchip,mcp9843
               - nxp,se97
+              - nxp,se97b
               - nxp,se98
               - onnn,cat6095
               - onnn,cat34ts02
-- 
2.30.2

