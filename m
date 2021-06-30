Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 02CC23B8321
	for <lists+devicetree@lfdr.de>; Wed, 30 Jun 2021 15:32:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234877AbhF3Ne2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Jun 2021 09:34:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235018AbhF3Ne0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Jun 2021 09:34:26 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A5ADC0617A8
        for <devicetree@vger.kernel.org>; Wed, 30 Jun 2021 06:31:54 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id q18so5118882lfc.7
        for <devicetree@vger.kernel.org>; Wed, 30 Jun 2021 06:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nNBOq0bo15wva/D2WTCq88A/17ZeZyPRomS/LrNe0ts=;
        b=dgIY7sK4bnZntJsFdKeuX3JSXJijisPf4DrByhje8LZyHq2IWlhKVP9ku1xgZUzpAf
         sJWmXN80L2edOpoIl0L+D9g1zNv3tkeyos/BqwQa07bx+5RrBdGrTiOa/TebxsbQNiv6
         /NZPnfZS/AuQAyccnvHLFdjQIBN8dUXq1/waUmbVrAhiJjUClWN0IbU9EXh0dcvp3esK
         AUbTUloBr+crrte1LDaHE0hBUOciBT092e8iikvHXYMEHuWY8KlzOydsxPF2hfhs86id
         RLc2NT9iscm5unOzaEBluXFP0UbvZukVXIZDho2VFUVs7AmsMf1uin/zQ33PQw+K4oFp
         qXUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nNBOq0bo15wva/D2WTCq88A/17ZeZyPRomS/LrNe0ts=;
        b=poYhtp1K1o9T28DEn2s8stwjnXG0ZGsqYrnh7ZoJHURE1EN4g35HWr+cwLC5KnpRHb
         S+OR7NmH325TrUasdJbHjzwxc7Ew2QUibh+aenzeTSJ5JewOftS5LcTeB2WqLyhAMQEz
         T3M6j/noWFWPi4ZY/8MlJeMpaop4HXGnQ4AJ/dfjWYFQjyrKM2r8cL2UEudpzmDpz0wx
         kxX2pq/Mc/EMzNtTiMJSNtyI7zGvhs5NkYfqLa6tsioDOZZGHnEh/rdoei60H/8FJGFu
         1w5WF22bHEgVAVQ13MdqiTLBZFpmRHjx4FmBI49tjAzNEEJh1NXsC4AoKowjUS5OhVgn
         S8Sw==
X-Gm-Message-State: AOAM531xImKeOI0O5Qvbc8xEuhpI/lmq1k22Bk2TxftlbxSRLRB/lYEz
        xZVczFw5uKQwZqqCv+Gb5aGW4QIpocjCmA==
X-Google-Smtp-Source: ABdhPJzdmU+WJzwkad4YSPbt5INjxwDGUwStMVsVt49AZYkHTIMCGR6hXow3w1TJOc0Tf4F3l08Gcg==
X-Received: by 2002:ac2:546b:: with SMTP id e11mr28134650lfn.282.1625059912401;
        Wed, 30 Jun 2021 06:31:52 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id x20sm1578098lfd.128.2021.06.30.06.31.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jun 2021 06:31:51 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Taniya Das <tdas@codeaurora.org>,
        Jonathan Marek <jonathan@marek.ca>,
        Michael Turquette <mturquette@baylibre.com>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/6] dt-bindings: clock: qcom,dispcc-sm8x50: add mmcx power domain
Date:   Wed, 30 Jun 2021 16:31:44 +0300
Message-Id: <20210630133149.3204290-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210630133149.3204290-1-dmitry.baryshkov@linaro.org>
References: <20210630133149.3204290-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On sm8250 dispcc requires MMCX power domain to be powered up before
clock controller's registers become available. For now sm8250 was using
external regulator driven by the power domain to describe this
relationship. Switch into specifying power-domain and required opp-state
directly.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/clock/qcom,dispcc-sm8x50.yaml    | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,dispcc-sm8x50.yaml b/Documentation/devicetree/bindings/clock/qcom,dispcc-sm8x50.yaml
index 0cdf53f41f84..48d86fb34fa7 100644
--- a/Documentation/devicetree/bindings/clock/qcom,dispcc-sm8x50.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,dispcc-sm8x50.yaml
@@ -55,6 +55,16 @@ properties:
   reg:
     maxItems: 1
 
+  power-domains:
+    description:
+      A phandle and PM domain specifier for the MMCX power domain.
+    maxItems: 1
+
+  required-opps:
+    description:
+      Performance state to use for MMCX to enable register access.
+    maxItems: 1
+
 required:
   - compatible
   - reg
@@ -64,6 +74,15 @@ required:
   - '#reset-cells'
   - '#power-domain-cells'
 
+# Either both properties are present or both are absent
+dependencies:
+  power-domains:
+    required:
+      - required-opps
+  required-opps:
+    required:
+      - power-domains
+
 additionalProperties: false
 
 examples:
-- 
2.30.2

