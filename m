Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6FE5A360079
	for <lists+devicetree@lfdr.de>; Thu, 15 Apr 2021 05:30:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230001AbhDODaf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Apr 2021 23:30:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229895AbhDODad (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Apr 2021 23:30:33 -0400
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7836AC061756
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 20:30:08 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id a85so14695214pfa.0
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 20:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AqTCmxCVXgLJsXqXTluosraXffm24ijyPJ7oIm03HUg=;
        b=hTv5o9+BrrE9EjC5denORW74HCF/42J7he8+Mx0uWBZ3C28CT6ebw/hsjvDuB+UF9A
         zjmO6Nuw3ItN1cnh/p3RQDlGkYcPyIpKofML84pTYZQQkU8drprtOTub7CrBOOHilPlf
         JkFisLLIsgX+NBMhogntTdF3kDl0Su9WJKXJ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AqTCmxCVXgLJsXqXTluosraXffm24ijyPJ7oIm03HUg=;
        b=FFtLyzr+VullOa/CwqB52090Zvy+isrEeBt1zO8bhpCXERgR0sbRVgE8QOhYenXdZ/
         4n5TOYD3CEG6vaWIyaroqypi5cgD1dS5nX9PElQ42Ajt3hAi3rNzA+mRMVM03035ldG0
         mAWx1INnv+3eEaW10Dh/bet/3W97bkGN6pDGl8tLiCXwEjaZGh38rE3EvqOndNmIeSbj
         QaEAF0JrX4CgLMYHSh6+QO1avu/dYp9tlvB33Z40na17pigvgVCkMP09oquFfXeTgNXT
         FT89DhZFYAS39BpCjg9xxbe18LQKnJ4mLIRmrpsNw1zOkMMhzgZChOlR8x0T4J4oMH51
         VZ1A==
X-Gm-Message-State: AOAM531oa38UI/EfZUJ2zs0iniChuegrH8gTXC0L6dxG2XNYQMtf9LDm
        kbrrBD8uJqydi9LMhpgvZSSckQ==
X-Google-Smtp-Source: ABdhPJzWZIDaJ7ZCMyQwwmkIH+E2r8i72JxGRuxVcUtvX0FJErfjLa8ExIklqYcWRBEqZgfChLrvhQ==
X-Received: by 2002:aa7:8d84:0:b029:1f8:3449:1bc6 with SMTP id i4-20020aa78d840000b02901f834491bc6mr1262712pfr.76.1618457408048;
        Wed, 14 Apr 2021 20:30:08 -0700 (PDT)
Received: from ikjn-p920.tpe.corp.google.com ([2401:fa00:1:b:2d50:863d:8932:d6bc])
        by smtp.gmail.com with ESMTPSA id n3sm351622pga.92.2021.04.14.20.30.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 20:30:07 -0700 (PDT)
From:   Ikjoon Jang <ikjn@chromium.org>
To:     linux-input@vger.kernel.org, devicetree@vger.kernel.org
Cc:     Dmitry Torokhov <dtor@chromium.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Ikjoon Jang <ikjn@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Guenter Roeck <groeck@chromium.org>,
        Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/2] mfd: google,cros-ec: add DT bindings for a baseboard's switch device
Date:   Thu, 15 Apr 2021 11:29:57 +0800
Message-Id: <20210415032958.740233-2-ikjn@chromium.org>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
In-Reply-To: <20210415032958.740233-1-ikjn@chromium.org>
References: <20210415032958.740233-1-ikjn@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is for ChromeOS tablets which have a 'cros_cbas' switch device
in the "Whiskers" base board. This device can be instantiated only by
device tree on ARM platforms. ChromeOS EC doesn't provide a way to
probe the device.

Signed-off-by: Ikjoon Jang <ikjn@chromium.org>

---

Changes in v5:
 - Add missing blank lines and change the description property's position.
 - Add a note to description: "this device cannot be detected at runtime."

Changes in v4:
Define cros-cbase bindings inside google,cros-ec.yaml instead of
a separated binding document.

 .../bindings/mfd/google,cros-ec.yaml          | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
index 76bf16ee27ec..8dcce176b72e 100644
--- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
+++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
@@ -114,6 +114,22 @@ properties:
       - "#address-cells"
       - "#size-cells"
 
+  cbas:
+    type: object
+
+    description:
+      This device is used to signal when a detachable base is attached
+      to a Chrome OS tablet. This device cannot be detected at runtime.
+
+    properties:
+      compatible:
+        const: google,cros-cbas
+
+    required:
+      - compatible
+
+    additionalProperties: false
+
 patternProperties:
   "^i2c-tunnel[0-9]*$":
     type: object
@@ -180,6 +196,10 @@ examples:
             interrupts = <99 0>;
             interrupt-parent = <&gpio7>;
             spi-max-frequency = <5000000>;
+
+            base_detection: cbas {
+                compatible = "google,cros-cbas";
+            };
         };
     };
 
-- 
2.31.1.295.g9ea45b61b8-goog

