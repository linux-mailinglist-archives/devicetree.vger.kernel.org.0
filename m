Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EFB673C878B
	for <lists+devicetree@lfdr.de>; Wed, 14 Jul 2021 17:31:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239774AbhGNPeJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jul 2021 11:34:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239819AbhGNPeH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jul 2021 11:34:07 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69EE8C061766
        for <devicetree@vger.kernel.org>; Wed, 14 Jul 2021 08:31:14 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id l8-20020a05600c1d08b02902333d79327aso1085614wms.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jul 2021 08:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=idmBojPKMaEqXxTsPN9NMivz3VoeKNs2nUJ6x42cpzc=;
        b=agLBPgKG6NCQ7IVxrRVEplMT6waFwhNQPFhzQQpnpJKX7/YBMSJxK8w0vmN7DtVDGL
         n6ikaA3s1XieoJ4wRldmKO6pq8vcxxFdy8IS5k8GTYZzMzC+iKIUz673QMQaI8WmL9cZ
         hv2rjCDIlmlUxI4wLEsVn8lUOjIJugBtWJ6S4X1UsBmQM4Usmmy6uM++A73uREFhxFYd
         aFSNA+OW9gwsGk0HhsAlBlgQ3DRIlFuYyzyi6gDhUb+1/Erymzr82qHYGhfPHpJnB2dx
         u35VhguFMJxpiwV+YLjjbLR8WZ0BgLRIrGShF2Wvn25hY2xJVgDmnOKLaz0v/UjyFavT
         FeEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=idmBojPKMaEqXxTsPN9NMivz3VoeKNs2nUJ6x42cpzc=;
        b=FUhx2XzLDfJTX1Urov5+YqpUX1SGxrZJkTvk9mKWY3GCMb/QPeNYCewsWu9TlDZJ2a
         ahUwHlLnZlGIDX3Kr1qcdmSQWZs60MJPvUibTVClxWy3n0lkh3puvG9bgAPLtDt4NWXX
         j1knWiNFs/ykiKrDHrpziJQ9hYnnllftnrmZ4IBR3mgyjbyHhxE/ItvSaOsq1y8FuX3m
         dKgLD0vAHWqQp9czIXWIVzrW4EWvX+/6F6J9Mh7pRNhfbybC84MAB0kwVJ1Mq0b/GLhd
         Jj8yWEH/0i9Fk0vlhBQYFDO4WyYxUwu1ugeanquyO3rNmM+dYqYSf4ks57dqVWCxvbJO
         Yr4g==
X-Gm-Message-State: AOAM531pa7mZm/h84SNDDQ/5qT2Kvw4LXMGhVmY2MqcwrXOuXcPodqXe
        8dRxsUIv4oRCIqiels+WjzZdVg==
X-Google-Smtp-Source: ABdhPJyFR8qTlHqmBxq+Y/7qdiBh4rN3/klZm8ldzfOe2/EYYw/757jwvFtTjLXf6nZHKQSaQPgvpA==
X-Received: by 2002:a1c:80cd:: with SMTP id b196mr4732641wmd.179.1626276672854;
        Wed, 14 Jul 2021 08:31:12 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id y6sm2465174wma.48.2021.07.14.08.31.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jul 2021 08:31:12 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org,
        linux-kernel@vger.kernel.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 11/16] ASoC: qcom: dt-bindings: add bindings for Proxy Resource Manager
Date:   Wed, 14 Jul 2021 16:30:34 +0100
Message-Id: <20210714153039.28373-12-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210714153039.28373-1-srinivas.kandagatla@linaro.org>
References: <20210714153039.28373-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds bindings support for Qualcomm Proxy Resource Manager
service in Audio DSP.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../devicetree/bindings/sound/qcom,q6prm.yaml | 43 +++++++++++++++++++
 1 file changed, 43 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,q6prm.yaml

diff --git a/Documentation/devicetree/bindings/sound/qcom,q6prm.yaml b/Documentation/devicetree/bindings/sound/qcom,q6prm.yaml
new file mode 100644
index 000000000000..6f14146c1ea1
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/qcom,q6prm.yaml
@@ -0,0 +1,43 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/qcom,q6prm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Q6 Proxy Resource Manager
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+description: |
+  Proxy Resource Manager module is core module used to manage
+  core dsp resources like clocks
+
+properties:
+  compatible:
+    const: qcom,q6prm
+
+  reg:
+    maxItems: 1
+
+  '#clock-cells':
+    const: 2
+
+required:
+  - compatible
+  - reg
+  - '#clock-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    gpr {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        gprservice@2 {
+          compatible = "qcom,q6prm";
+          reg = <2>;
+          #clock-cells = <2>;
+       };
+    };
-- 
2.21.0

