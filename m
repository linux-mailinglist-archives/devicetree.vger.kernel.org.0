Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EF18F20401D
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2020 21:20:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728507AbgFVTTg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jun 2020 15:19:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728282AbgFVTTf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jun 2020 15:19:35 -0400
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com [IPv6:2607:f8b0:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DC8CC061795
        for <devicetree@vger.kernel.org>; Mon, 22 Jun 2020 12:19:35 -0700 (PDT)
Received: by mail-oi1-x241.google.com with SMTP id c194so16674715oig.5
        for <devicetree@vger.kernel.org>; Mon, 22 Jun 2020 12:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=WpdygEuxEbkEHwJ7Dc7yTeQc0s6WGpubIGVPN8hUzwI=;
        b=ptebOAxvDdaND1bSmx+wZ0WhkMUfYrP4NqBlrOz/GpBppJcuw1tk1uUy+i7V13LWhH
         s0UO1oY/AyHU1T/Es4lhiqpz/RTShFaacDb8lGR3pSwZrh7MofFAUI/EqnOYVXe4t2Vd
         e9BO75ciF7zO40MPLegW44aW1clYneJChKo7/X1FP82k9qBXRNfvUITgoPUu3uTmGvSD
         0bb1wdoHI4Crq6siiscGwkg7P5q82flpWWOjbGiIYYwwKrjm2R7Gn/WQlwGuymzSRRhG
         Ra5XQz37tzPKUX9cQB9FnfaVIs4mo4danY29Wz9XyFTbnXqtNCcrpBNjG9O1zpkXRYex
         G16g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WpdygEuxEbkEHwJ7Dc7yTeQc0s6WGpubIGVPN8hUzwI=;
        b=pFgKKeKSODV1loTJib5BCtbj3dIrzSuqesdpqviDPB8793MnKzd7OwPvdt9rvlpyUL
         su6uWHQaJdWzVkzJmb3XP5Z0c27cV6sicAybzBknghQFrrGSZC8DICHwQBrdTo1ityt1
         EmoB680mpuccJFq4TixgO8wLLYAoKP9oa6xMAtK1z8RdHnznZDVM17qeMYrPZNGx6DLa
         bCmOAn4xM8g9fxAAUcSB5BO6mQmcwtcy2BlvkI4cAFFPK719qMD7I8nWJS9n9YLNtvx8
         njcwlOVEGGqUM5hAoQNSLncRx2BB8ypgaoOAJj21BdOhQl3Tkmtu09iaGFSXG8QIZGeC
         TBcQ==
X-Gm-Message-State: AOAM531JLw+3WnV4r3eA4QN60ezFC2zF8M+1KuKCKQMP5ReBWj9PpGHR
        oi5XBbnbDvWObKvSwFyuCFoW3A==
X-Google-Smtp-Source: ABdhPJxCQJjXXe3MeYjxEJNBUioEcpD4vOcB90cUSGsvH5+8BuzTtqMKADCuuOeTccITGNegZeaqow==
X-Received: by 2002:a54:4d96:: with SMTP id y22mr12894021oix.55.1592853574476;
        Mon, 22 Jun 2020 12:19:34 -0700 (PDT)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id m84sm3348294oif.32.2020.06.22.12.19.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 12:19:33 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Ohad Ben-Cohen <ohad@wizery.com>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Vinod Koul <vkoul@kernel.org>
Subject: [PATCH v7 1/5] dt-bindings: remoteproc: Add Qualcomm PIL info binding
Date:   Mon, 22 Jun 2020 12:19:38 -0700
Message-Id: <20200622191942.255460-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200622191942.255460-1-bjorn.andersson@linaro.org>
References: <20200622191942.255460-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a devicetree binding for the Qualcomm peripheral image loader
relocation information region found in the IMEM.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Reviewed-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v6:
- None

 .../bindings/remoteproc/qcom,pil-info.yaml    | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/qcom,pil-info.yaml

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,pil-info.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,pil-info.yaml
new file mode 100644
index 000000000000..87c52316ddbd
--- /dev/null
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,pil-info.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/remoteproc/qcom,pil-info.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm peripheral image loader relocation info binding
+
+maintainers:
+  - Bjorn Andersson <bjorn.andersson@linaro.org>
+
+description:
+  The Qualcomm peripheral image loader relocation memory region, in IMEM, is
+  used for communicating remoteproc relocation information to post mortem
+  debugging tools.
+
+properties:
+  compatible:
+    const: qcom,pil-reloc-info
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+    imem@146bf000 {
+      compatible = "syscon", "simple-mfd";
+      reg = <0x146bf000 0x1000>;
+
+      #address-cells = <1>;
+      #size-cells = <1>;
+
+      ranges = <0 0x146bf000 0x1000>;
+
+      pil-reloc@94c {
+        compatible = "qcom,pil-reloc-info";
+        reg = <0x94c 0xc8>;
+      };
+    };
+...
-- 
2.26.2

