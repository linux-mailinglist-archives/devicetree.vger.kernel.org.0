Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C9B31D040A
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2020 02:55:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732100AbgEMAzx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 May 2020 20:55:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732095AbgEMAzc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 May 2020 20:55:32 -0400
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com [IPv6:2607:f8b0:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D318EC05BD0A
        for <devicetree@vger.kernel.org>; Tue, 12 May 2020 17:55:32 -0700 (PDT)
Received: by mail-pg1-x541.google.com with SMTP id n11so6983469pgl.9
        for <devicetree@vger.kernel.org>; Tue, 12 May 2020 17:55:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RUnboi85SF121UrpH3bFZwKuXXQdWqb1eY3bgMeZfq0=;
        b=wDywye9WHHKlG4Dfqc21+Ymi2c2GhfCM0ndcG4w9gBx7gisAbn4XX9/yj7tDGO115V
         abVKOSJEUOvd6HoJP5oJpCXpWvka1K32OidCK+B8/6Jx40lL0mr4aXfEYJSTnCTl1LUI
         kgXiaIugTpwmRc/fuTUgNjtbo5iC7uftSfZM7cd81+K/Z4qfDiTgQUN/UoeRsAeabvEv
         ejL1Hehbz54YHGyo82eRm4yjvmrwTHHr981Dp+29CVSDPEt4AjHetPeMYtEJfRBtxIDQ
         1dyTYk1mY7y8sQr/uRKYp4w2rlVlQXl0f3wPGSwuk13zlP59aq/7d41SYBYCw2u7qWI3
         QKeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RUnboi85SF121UrpH3bFZwKuXXQdWqb1eY3bgMeZfq0=;
        b=F69t7FWUYGt0QtgZjZDgAYnvf6emSMIEHwNsUmKeaynS2OXTQBo55r7AenBBhNyJz5
         M2eLhFUF5o6/WWFD+6//OwZ2nWwG6UyxVuZZj0LTitOZO9PrvqtEKhNw9pif1l07Jm+L
         BbAO1VxHdocpQ6lBGj3QTD3FMSErgP5cuWiq7VRD4MTdCxfPmFpyx19UJetoicTXRXkV
         EXMUk3O9xPxSWHuAlmCBXl4nW9DI583GIn+SsoPYNmuInPKsNhdfztw4Y07DB+/0Bb5x
         jYNEolcjFadFTTwwIoGCN7XLyFSCCzq15ENyNM4/gDpWcfIdfEGWN0+e+e03JHKe28lN
         xcdw==
X-Gm-Message-State: AOAM533+rPIr1jpjME3At2oRZWGwtS5SaAPQ5pR9oF15hBuFV7L/HyZn
        rtAsL4nMTSKYErPofI/5EJSgNg==
X-Google-Smtp-Source: ABdhPJwIlsG5NiDBXR0Xm2F0/KvNmdfVmcPTDcQEKb3c9MavHvcvGtJXMUS6fhDsJSWryUxHKLA6BQ==
X-Received: by 2002:a62:8c0b:: with SMTP id m11mr3886830pfd.105.1589331332342;
        Tue, 12 May 2020 17:55:32 -0700 (PDT)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id p2sm11057428pgh.25.2020.05.12.17.55.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 May 2020 17:55:31 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Ohad Ben-Cohen <ohad@wizery.com>,
        Baolin Wang <baolin.wang7@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] dt-bindings: hwlock: qcom: Allow device on mmio bus
Date:   Tue, 12 May 2020 17:54:39 -0700
Message-Id: <20200513005441.1102586-3-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513005441.1102586-1-bjorn.andersson@linaro.org>
References: <20200513005441.1102586-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In all modern Qualcomm platforms the mutex region of the TCSR is forked
off into its own block, all with a offset of 0 and stride of 4096.
Update the binding to allow the hardware block to be described directly
on the mmio bus, in addition to allowing the existing syscon based
definition.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 .../bindings/hwlock/qcom-hwspinlock.yaml         | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/hwlock/qcom-hwspinlock.yaml b/Documentation/devicetree/bindings/hwlock/qcom-hwspinlock.yaml
index 71e63b52edd5..88f975837588 100644
--- a/Documentation/devicetree/bindings/hwlock/qcom-hwspinlock.yaml
+++ b/Documentation/devicetree/bindings/hwlock/qcom-hwspinlock.yaml
@@ -19,6 +19,9 @@ properties:
       - qcom,sfpb-mutex
       - qcom,tcsr-mutex
 
+  reg:
+    maxItems: 1
+
   '#hwlock-cells':
     const: 1
 
@@ -31,7 +34,12 @@ properties:
 required:
   - compatible
   - '#hwlock-cells'
-  - syscon
+
+oneOf:
+  - required:
+    - reg
+  - required:
+    - syscon
 
 additionalProperties: false
 
@@ -46,6 +54,12 @@ examples:
                 compatible = "qcom,tcsr-mutex";
                 syscon = <&tcsr_mutex_block 0 0x80>;
 
+                #hwlock-cells = <1>;
+        };
+  - |
+        tcsr_mutex: hwlock@1f40000 {
+                compatible = "qcom,tcsr-mutex";
+                reg = <0x01f40000 0x40000>;
                 #hwlock-cells = <1>;
         };
 ...
-- 
2.26.2

