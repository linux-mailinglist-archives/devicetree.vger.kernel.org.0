Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3AC1A5F05D2
	for <lists+devicetree@lfdr.de>; Fri, 30 Sep 2022 09:38:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230507AbiI3HiM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Sep 2022 03:38:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230510AbiI3HiL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Sep 2022 03:38:11 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25D601FBC80
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 00:38:04 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id d1-20020a17090a6a4100b002095b319b9aso2324104pjm.0
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 00:38:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=quanta-corp-partner-google-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=IjUYdhbpzAPEhSywDJbo41PAxauUqdW2WUGx6vDOdhg=;
        b=uLgKXdlgxdKJTt9hv3xZbS3eY+FhUzAGkChgA35HpUi/G49mU+SZ/B1kxuwkKjL0ar
         1t/9HNk23N7y78qq777a38HVtwGTfFg9v2a4Q4bBxiMMXbFnJqAhf6chw6+4YfzbU+rt
         EtHFHY3jharOZHegbfmYWxcLFH33U1+AP02Y3felhUZkqQUKYyb0uiZs8sb7GOoueugR
         C5Ow1TncAhIndCOZiFuKta6kTcehe5x2Cpp0uHNwAskdWv1YPl8d703gPxpdJQOOR7Cm
         JP3XRSKNc06sjMHwSWldZqQZAcf1OceXu45KpkggTLFz50IIXUoe42XM+XedK747uECM
         NIjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=IjUYdhbpzAPEhSywDJbo41PAxauUqdW2WUGx6vDOdhg=;
        b=RDZwC23zpNlTl5IVK4dglOdH91SlV+CPsk9ZRlK3YLd1L0H6CxchV1W0SdVMxTeUJ+
         xoK4IL3PN10fI9uiOb6H+rTMXx5Ku3rgkMzJ+dXP9xhiuNM5+BEUfuYiPQPh63fGudCZ
         UgU0ubkAtJKT9jLS+wbfoIuX3CwXE2FhnqF2viEQciv88CL1U6i7x/oB3yI81Cci28Dj
         yVzEKIWYsk66NeClo2kvJ2cpdLbefy4NvInpf95+spSATwXI6+W+CaI/Z7FEJcu1O1v4
         zcws0gbz5giyqC4BkmeOHfbz+envb6pz/Zv9z5ingFGJEISlddnvsOImg2QOnP42m/1e
         PFsQ==
X-Gm-Message-State: ACrzQf0GhLtRa0Iq9XwK48FvJXnFjHPOOH9K2HiVQYIyJdFO1HxEWpNh
        88XwJvsuCG1w9GAQLkSRgwmstg==
X-Google-Smtp-Source: AMsMyM4u3hgtU52+KnUxhGMmWbt4ETHWt+gjmfMQZxBMLLqSjjd18WT7AX8JuH0pZiVsX7pi+YsL8A==
X-Received: by 2002:a17:902:f612:b0:178:a692:b20a with SMTP id n18-20020a170902f61200b00178a692b20amr7580276plg.55.1664523483908;
        Fri, 30 Sep 2022 00:38:03 -0700 (PDT)
Received: from liang-Predator-PH517-52.. (60-250-232-247.hinet-ip.hinet.net. [60.250.232.247])
        by smtp.gmail.com with ESMTPSA id e8-20020a170902ef4800b0017ba371b0a9sm1166132plx.167.2022.09.30.00.38.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 00:38:03 -0700 (PDT)
From:   Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
To:     LKML <linux-kernel@vger.kernel.org>
Cc:     dianders@chromium.org,
        Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@codeaurora.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: [PATCH v5 1/3] dt-bindings: arm: qcom: Separate LTE/WIFI SKU for sc7280-evoker
Date:   Fri, 30 Sep 2022 15:37:52 +0800
Message-Id: <20220930153538.v5.1.Ide53082044aac56877c4ff5725777769e377476a@changeid>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220930073754.1391044-1-sheng-liang.pan@quanta.corp-partner.google.com>
References: <20220930073754.1391044-1-sheng-liang.pan@quanta.corp-partner.google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

evoker will have WIFI/LTE SKU, separate it for each different setting.

Signed-off-by: Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v5:
- none

Changes in v4:
- fix typo in tittle and commit

Changes in v3:
- none

Changes in v2:
- none

 Documentation/devicetree/bindings/arm/qcom.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 8060c35d003b4..c15a729a6852e 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -513,6 +513,11 @@ properties:
           - const: google,evoker
           - const: qcom,sc7280
 
+      - description: Google Evoker with LTE (newest rev)
+        items:
+          - const: google,evoker-sku512
+          - const: qcom,sc7280
+
       - description: Google Herobrine (newest rev)
         items:
           - const: google,herobrine
-- 
2.34.1

