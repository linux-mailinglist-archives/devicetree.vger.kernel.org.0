Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 47910273342
	for <lists+devicetree@lfdr.de>; Mon, 21 Sep 2020 21:56:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728319AbgIUT4V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Sep 2020 15:56:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728274AbgIUT4N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Sep 2020 15:56:13 -0400
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com [IPv6:2607:f8b0:4864:20::f49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7E5EC0613D0
        for <devicetree@vger.kernel.org>; Mon, 21 Sep 2020 12:56:12 -0700 (PDT)
Received: by mail-qv1-xf49.google.com with SMTP id w2so10006711qvr.19
        for <devicetree@vger.kernel.org>; Mon, 21 Sep 2020 12:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=5FrumbcAeu54idbHYrGk3eIL/4JmYNsuV6pzKeioD/A=;
        b=HQP4hkQPyaPQaPeZMQKr/WG/vHJn4/+lNs+7YQFMBIRpjgRBIWc5GE5fFu6RC9EG9k
         m4A3j598FJsGaCigKu7PPkymhVoROdhlrwEu3Ug2/44bgbSnnADhNwRtGYjvdfB01vu8
         flYwXyMU64kQv9unrHVlFj4+KGPFqIHWR3kAJsl0O8CSxhRXU4/jPDE4IA6hIN0REUvd
         y9Vtz83gghNTR/r0bl7Tin0b8wV2BVvEcTQtomFcbvhIQydH5BWMlY3NDl7P5umj0Hod
         +MBjvKJEYAkgs/E/yfV4ZWf+QpYARkLJIUwKmCm1J0kA5xJQoyP/OjjYVJgBkI/58xPs
         eJeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=5FrumbcAeu54idbHYrGk3eIL/4JmYNsuV6pzKeioD/A=;
        b=CSER4XVJs0Davp2SDaIWXRgNsdsRZXPywnrdrFxV1BH1G90iT8mmzyxvo/3fFYkVqQ
         f80/gnvC4LCHvSErFPcMPIHMF9BblYhjYiZ9DOppz+76+DjWsvdMqNhyuXN0XPgVPEsE
         WEbVWztW2OdGcI4zy+IWGGujOTGoZ/VvrL2IYC4teiANaqqPIg+9FMHRRd51oXWBK1Q+
         z+vCsd/UwZ0udH2vd7GoLNmwsvZS9pTuhzC5X40kUZGU/ZB00PzI9JfV6uCnD7HyiISl
         AoncuoR2vxrsM6DGZK28iUDj8gXt4OHuayJgNTiwOy17Ns0aYuUR38mnWYybLKzmZCod
         HAag==
X-Gm-Message-State: AOAM532LFxKFNYSy7NFN5MQwBEeEOzsDa0ec72fyrOjv0im1Xx7TQ9U+
        RPtR0SlH/uXpy3Uao/uW8v8RsziVBbQ=
X-Google-Smtp-Source: ABdhPJyywnIiDx/8snJDlo4oLbprY1kUapZltGvSNvHTc/9eF/ckRq07b7AMs57MSoSBQqlTFWXNIOPHmcU=
Sender: "badhri via sendgmr" <badhri@badhri.mtv.corp.google.com>
X-Received: from badhri.mtv.corp.google.com ([2620:15c:211:1:f292:1cff:fee0:66cf])
 (user=badhri job=sendgmr) by 2002:a0c:ee86:: with SMTP id u6mr1826182qvr.56.1600718172071;
 Mon, 21 Sep 2020 12:56:12 -0700 (PDT)
Date:   Mon, 21 Sep 2020 12:55:49 -0700
In-Reply-To: <20200921195555.1050731-1-badhri@google.com>
Message-Id: <20200921195555.1050731-5-badhri@google.com>
Mime-Version: 1.0
References: <20200921195555.1050731-1-badhri@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v8 05/11] dt-bindings: connector: Add property to set initial
 current cap for FRS
From:   Badhri Jagan Sridharan <badhri@google.com>
To:     Guenter Roeck <linux@roeck-us.net>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Thierry Reding <treding@nvidia.com>,
        Prashant Malani <pmalani@chromium.org>,
        Badhri Jagan Sridharan <badhri@google.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This change adds frs-typec-current which allows setting the initial current
capability of the new source when vSafe5V is applied during PD3.0
sink Fast Role Swap.

Signed-off-by: Badhri Jagan Sridharan <badhri@google.com>
---
Changes since v1:
- Changing patch version to v6 to fix version number confusion.

Changes since v6:
- Removed the redundant usb-connector.txt that I created by mistake.
- Moved to yaml.

Changes since v7:
- Rebase 
---
 .../devicetree/bindings/connector/usb-connector.yaml   |  8 ++++++++
 include/dt-bindings/usb/pd.h                           | 10 ++++++++++
 2 files changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
index 9bd52e63c935..1ca8e6a337e5 100644
--- a/Documentation/devicetree/bindings/connector/usb-connector.yaml
+++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
@@ -142,6 +142,14 @@ properties:
     required:
       - port@0
 
+  frs-typec-current:
+    description: Initial current capability of the new source when vSafe5V
+      is applied during PD3.0 Fast Role Swap. "Table 6-14 Fixed Supply PDO - Sink"
+      of "USB Power Delivery Specification Revision 3.0, Version 1.2" provides the
+      different power levels and "6.4.1.3.1.6 Fast Role Swap USB Type-C Current"
+      provides a detailed description of the field.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
 required:
   - compatible
 
diff --git a/include/dt-bindings/usb/pd.h b/include/dt-bindings/usb/pd.h
index 985f2bbd4d24..db1ad4532197 100644
--- a/include/dt-bindings/usb/pd.h
+++ b/include/dt-bindings/usb/pd.h
@@ -35,6 +35,16 @@
 
 #define VSAFE5V 5000 /* mv units */
 
+/*
+ * Based on "Table 6-14 Fixed Supply PDO - Sink" of "USB Power Delivery Specification Revision 3.0,
+ * Version 1.2"
+ * Initial current capability of the new source when vSafe5V is applied.
+ */
+#define FRS_NOT_SUPPORTED	0
+#define FRS_DEFAULT_POWER	1
+#define FRS_5V_1P5A		2
+#define FRS_5V_3A		3
+
 #define PDO_BATT_MAX_VOLT_SHIFT	20	/* 50mV units */
 #define PDO_BATT_MIN_VOLT_SHIFT	10	/* 50mV units */
 #define PDO_BATT_MAX_PWR_SHIFT	0	/* 250mW units */
-- 
2.28.0.681.g6f77f65b4e-goog

