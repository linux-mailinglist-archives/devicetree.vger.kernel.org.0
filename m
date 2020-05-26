Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E5491CF4DF
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2020 14:53:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729836AbgELMx4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 May 2020 08:53:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1727859AbgELMxz (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 12 May 2020 08:53:55 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20625C061A0F
        for <devicetree@vger.kernel.org>; Tue, 12 May 2020 05:53:55 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id g12so23126795wmh.3
        for <devicetree@vger.kernel.org>; Tue, 12 May 2020 05:53:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1SdYNVTNaFvyLINhitLbEPKE0p+9pMDxlpt3g6of/ns=;
        b=Xwqjy0RHnIb5Rvf3b47+nB0QUCnzZWaHwSCvbj+70eIdHcw5wWyuLhAWupxQ/fndsS
         IALkY3q+9pJGLILVNHxx2/yLm3U57RaI5QaqRtfNYq4MRf685W9K1GHEPJacRfrO+ozo
         g0gSkI6ShBTsk0pjMYkjAShUaBB5fNLACioo8oH5aJU0gzr5gFdv4cKWfdRJQYG401FS
         04faqFc/R/Y1Mx4TL6Rrwb55RQn1XNjtJDPOzmkof58YmNnNkiYylrtXym/761g0hX+H
         3piXVEeD41H9tJfeNEX34mDfsCPYtXpxsduPWvMgTFE5I8IFPxhLz/0MLZkqtVEySn+H
         EDGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1SdYNVTNaFvyLINhitLbEPKE0p+9pMDxlpt3g6of/ns=;
        b=VMV4FaOesNwc1MoXadZT4O0sza/1/zkSQmhH3DLGpNLbAM7Q/+Sks6XLsRuo3hKZPH
         2qRWxWqhvvX6qcVFRLhm2G8b2ni+UAPaq52gqfgdQEksAQ9AuFPHlJKh8qLHdCUV7c5B
         RZTjdKi9PjF1BWA7dIYnvE4+q3aO7FPQ2mQ7YpuaS6KZ6ZLUFmU2GJ+l65Ce6zML7FyV
         HWQ/Gi6BdB0L1HyOYWWlI/swIemiML59UMDmiVSR3UCOOcRsL/J+RZG0ZwVqsTmoZb/V
         CIcptGXarLjReJQSTnSDzk1xvksXydKoIostVu9D+Zid7oUMgNKFbqraEKLy68HOQlC7
         Vbrw==
X-Gm-Message-State: AGi0PuYX41XnuC9G3HqHzy06qEYK6Pc98RLBWCLgv8TaHRrmf1HN8CkV
        Y66dsQLNL7IrUxGnvwHD99lQRQ==
X-Google-Smtp-Source: APiQypJwjvPGkayKcc1IbT12QaENm3WRCE4IZfuh0ZT1+eHBylHTrvlamxCMCr7VwP3NSbdPGDRvLw==
X-Received: by 2002:a7b:ca53:: with SMTP id m19mr29619717wml.182.1589288033812;
        Tue, 12 May 2020 05:53:53 -0700 (PDT)
Received: from localhost.localdomain (212-39-89-66.ip.btc-net.bg. [212.39.89.66])
        by smtp.googlemail.com with ESMTPSA id n13sm2433938wrs.2.2020.05.12.05.53.51
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 May 2020 05:53:53 -0700 (PDT)
From:   Georgi Djakov <georgi.djakov@linaro.org>
To:     vireshk@kernel.org, nm@ti.com, sboyd@kernel.org, rjw@rjwysocki.net,
        saravanak@google.com, sibis@codeaurora.org, mka@chromium.org
Cc:     robh+dt@kernel.org, rnayak@codeaurora.org,
        bjorn.andersson@linaro.org, vincent.guittot@linaro.org,
        jcrouse@codeaurora.org, evgreen@chromium.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, georgi.djakov@linaro.org,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v8 01/10] dt-bindings: opp: Introduce opp-peak-kBps and opp-avg-kBps bindings
Date:   Tue, 12 May 2020 15:53:18 +0300
Message-Id: <20200512125327.1868-2-georgi.djakov@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512125327.1868-1-georgi.djakov@linaro.org>
References: <20200512125327.1868-1-georgi.djakov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Saravana Kannan <saravanak@google.com>

Interconnects often quantify their performance points in terms of
bandwidth. So, add opp-peak-kBps (required) and opp-avg-kBps (optional) to
allow specifying Bandwidth OPP tables in DT.

opp-peak-kBps is a required property that replaces opp-hz for Bandwidth OPP
tables.

opp-avg-kBps is an optional property that can be used in Bandwidth OPP
tables.

Signed-off-by: Saravana Kannan <saravanak@google.com>
Reviewed-by: Sibi Sankar <sibis@codeaurora.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Georgi Djakov <georgi.djakov@linaro.org>
---
v8:
* Picked reviewed-by tags.
* Changes on wording.

 Documentation/devicetree/bindings/opp/opp.txt   | 17 ++++++++++++++---
 .../devicetree/bindings/property-units.txt      |  4 ++++
 2 files changed, 18 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/opp/opp.txt b/Documentation/devicetree/bindings/opp/opp.txt
index 68592271461f..9d16d417e9be 100644
--- a/Documentation/devicetree/bindings/opp/opp.txt
+++ b/Documentation/devicetree/bindings/opp/opp.txt
@@ -83,9 +83,14 @@ properties.
 
 Required properties:
 - opp-hz: Frequency in Hz, expressed as a 64-bit big-endian integer. This is a
-  required property for all device nodes but devices like power domains. The
-  power domain nodes must have another (implementation dependent) property which
-  uniquely identifies the OPP nodes.
+  required property for all device nodes, unless another "required" property to
+  uniquely identify the OPP nodes exists. Devices like power domains must have
+  another (implementation dependent) property.
+
+- opp-peak-kBps: Peak bandwidth in kilobytes per second, expressed as an array
+  of 32-bit big-endian integers. Each element of the array represents the
+  peak bandwidth value of each interconnect path. The number of elements should
+  match the number of interconnect paths.
 
 Optional properties:
 - opp-microvolt: voltage in micro Volts.
@@ -132,6 +137,12 @@ Optional properties:
 - opp-level: A value representing the performance level of the device,
   expressed as a 32-bit integer.
 
+- opp-avg-kBps: Average bandwidth in kilobytes per second, expressed as an array
+  of 32-bit big-endian integers. Each element of the array represents the
+  average bandwidth value of each interconnect path. The number of elements
+  should match the number of interconnect paths. This property is only
+  meaningful in OPP tables where opp-peak-kBps is present.
+
 - clock-latency-ns: Specifies the maximum possible transition latency (in
   nanoseconds) for switching to this OPP from any other OPP.
 
diff --git a/Documentation/devicetree/bindings/property-units.txt b/Documentation/devicetree/bindings/property-units.txt
index e9b8360b3288..c80a110c1e26 100644
--- a/Documentation/devicetree/bindings/property-units.txt
+++ b/Documentation/devicetree/bindings/property-units.txt
@@ -41,3 +41,7 @@ Temperature
 Pressure
 ----------------------------------------
 -kpascal	: kilopascal
+
+Throughput
+----------------------------------------
+-kBps		: kilobytes per second
