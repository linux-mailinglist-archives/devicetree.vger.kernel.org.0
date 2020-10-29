Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6AC9629DC6E
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 01:30:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728035AbgJ2AaV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Oct 2020 20:30:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728002AbgJ2A2n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Oct 2020 20:28:43 -0400
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C88E7C0613CF
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 17:28:42 -0700 (PDT)
Received: by mail-pf1-x443.google.com with SMTP id 13so873794pfy.4
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 17:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=akb3sFyjPHBbZX4M7aYx39aG9OxmM1r+z59p+g0m3bc=;
        b=Zb0KIao1cRRj4nQdQHR9k+stnfUDsVd78vlm+lB8nUirhOWM/EwMvhclPbv6SOJUR4
         wF6fVDaNtuejzlqvPyQsTBEHNrEBZWF6Yi5NyiW5EIzuWhmM5q4q1VSWid1WwRo+T00t
         Z1sy7fiplEvLj5CAJbWv/xRccfQgeRrQKaC0k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=akb3sFyjPHBbZX4M7aYx39aG9OxmM1r+z59p+g0m3bc=;
        b=JoIVGYCPlJ96auUmKJwvKL2hUrNS3N60/nNtlqKEoLDi4rHxwq1ZyvY4W0u+MzBIz4
         NlPobMsVhKzfxCJj7//DcJ5cnlMFcJlHwHW0oeMTC8ikEdMAVAA7WmZcUBuM8ydSynHI
         fFZlnjhIikeFmSg/ARR9UxUnqbfhSxY7e5tBufQ+6COCPefkUMYbK8X+5aKl2kOTpG+D
         MmoE1Eao18znMcAq8Tilr/+EsUQhwbU1JKjVuDzWUVA1h3qZlado30ve0uRw+qAAkc35
         zTcUe+AwsA9aPDUh2Vt4vDuRh8eSuzhMz+ylnBfWDZYRB31fNGy4vHVWMezeBiEVmAmP
         jPGg==
X-Gm-Message-State: AOAM5324+lMRl4uCDYsvF1OxHCBSD2kdjUQqolebX7tOtBuU9ivbtB5b
        2CZzTeM/3bJE9JOxTOXCCwGAIQ==
X-Google-Smtp-Source: ABdhPJxi6c7TfcFNM60BApDm83Jqp3fP1uFsafWgoIelrna6lLSSvuHO6GU9gVpU882QcxPJuN0olw==
X-Received: by 2002:a17:90a:3f10:: with SMTP id l16mr1465131pjc.110.1603931322399;
        Wed, 28 Oct 2020 17:28:42 -0700 (PDT)
Received: from evgreen-glaptop.cheshire.ch ([2601:646:c780:1404:250:b6ff:fee1:7d4c])
        by smtp.gmail.com with ESMTPSA id u13sm743625pfl.162.2020.10.28.17.28.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Oct 2020 17:28:41 -0700 (PDT)
From:   Evan Green <evgreen@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     Douglas Anderson <dianders@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Evan Green <evgreen@chromium.org>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/4] dt-bindings: nvmem: Add soc qfprom compatible strings
Date:   Wed, 28 Oct 2020 17:28:24 -0700
Message-Id: <20201028172737.v3.1.I8b447ca96abfbef5f298d77350e6c9d1d18d00f6@changeid>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201029002827.1729915-1-evgreen@chromium.org>
References: <20201029002827.1729915-1-evgreen@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add SoC-specific compatible strings so that data can be attached
to it in the driver.

Signed-off-by: Evan Green <evgreen@chromium.org>
---

Changes in v3:
 - Fixed example (Doug and rob-bot)

Changes in v2:
 - Add other soc compatible strings (Doug)
 - Fix compatible string definition (Doug)

 .../devicetree/bindings/nvmem/qcom,qfprom.yaml  | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
index 1a18b6bab35e7..992777c90a0bf 100644
--- a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
+++ b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
@@ -14,7 +14,18 @@ allOf:
 
 properties:
   compatible:
-    const: qcom,qfprom
+    items:
+      - enum:
+          - qcom,apq8064-qfprom
+          - qcom,apq8084-qfprom
+          - qcom,msm8974-qfprom
+          - qcom,msm8916-qfprom
+          - qcom,msm8996-qfprom
+          - qcom,msm8998-qfprom
+          - qcom,qcs404-qfprom
+          - qcom,sc7180-qfprom
+          - qcom,sdm845-qfprom
+      - const: qcom,qfprom
 
   reg:
     # If the QFPROM is read-only OS image then only the corrected region
@@ -60,7 +71,7 @@ examples:
       #size-cells = <2>;
 
       efuse@784000 {
-        compatible = "qcom,qfprom";
+        compatible = "qcom,sc7180-qfprom", "qcom,qfprom";
         reg = <0 0x00784000 0 0x8ff>,
               <0 0x00780000 0 0x7a0>,
               <0 0x00782000 0 0x100>,
@@ -85,7 +96,7 @@ examples:
       #size-cells = <2>;
 
       efuse@784000 {
-        compatible = "qcom,qfprom";
+        compatible = "qcom,sdm845-qfprom", "qcom,qfprom";
         reg = <0 0x00784000 0 0x8ff>;
         #address-cells = <1>;
         #size-cells = <1>;
-- 
2.26.2

