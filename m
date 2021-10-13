Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA48442BE14
	for <lists+devicetree@lfdr.de>; Wed, 13 Oct 2021 12:57:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233316AbhJMK6r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Oct 2021 06:58:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232079AbhJMK6W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Oct 2021 06:58:22 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7DE9C061765
        for <devicetree@vger.kernel.org>; Wed, 13 Oct 2021 03:56:19 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id np13so1885331pjb.4
        for <devicetree@vger.kernel.org>; Wed, 13 Oct 2021 03:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=i9oPzVwWCm9JuYn8EJwbsDpWxM8JS5HRJn2O4LrL//g=;
        b=gfbku9/ujExwMth0d/hbC+Oym84zjb6RGPTznm25hHga2ydITxJoDeh6PxJCmMzq8V
         sWQWDWLB8nfb8Rbz/JU3z1hme4wJ/FnObAsx6T16DF5483rgek6SJbN+H8MaFGSmAexS
         vBSfCwc8peqsS1xb2vAyIKM6KPW3zKwUpyXaPvdwhBvc78n9dPNt1aQp+vzVj3p9bxYJ
         1S9JRU+H6wONG5yhKgTgEP+JQZqj/B0ITbuauf+EotrebGmpbMVKd03uxSSFLQDI+osx
         rR3gJMdk2IvhGBuQro2FWAZtsF0WITrAYkL/ieNw9VMvdTs6hxjiVIN4kN7ysRMhm+2U
         W7sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=i9oPzVwWCm9JuYn8EJwbsDpWxM8JS5HRJn2O4LrL//g=;
        b=s3q3OUiShm0+53Dap9eDPDKX5YUFapfYMUMGm/4vf5oi161A2wPAtSSXZ/Dt2t6F7R
         unj8/kCKhPFBRPvU8zFdLWYWxzb3+kTpTBDlezXRBWlDPS3U9cSfFdRtl4+MnGR38Q2n
         4DYI4Z/5PUZkwWkj5iCfXHiPYxz0DPf7U9unEyY0zvUusZhpcyHwZaBV7V8YrugiT1eK
         YnA01z+j+fT/oE//DrORdJ4IuHupgmXNWClBZAgzJ9jYaDTR48vhAZqh3SMQg5ut+dGG
         eaMjfqb7bOE54IDUzNoflb3WqxLeG2dUblhcXXzzsQideqf1RXp9Fh97quLnNr60b95z
         +gBg==
X-Gm-Message-State: AOAM530X5flG8fLJHPhEp1EQIx1BuBL3AxRM0xumDpj63fGlrax3H6qV
        5YLdQmgSSCUINUUABN+cjr0MmT/vjpBleA==
X-Google-Smtp-Source: ABdhPJwPSWXpbxfjpaz/1Ak368nKLHOPQ75ESjdVq9dARdEytxAMSjsiYy7Z2vm6AUbSSSkceef0rQ==
X-Received: by 2002:a17:90a:4814:: with SMTP id a20mr12550420pjh.154.1634122579365;
        Wed, 13 Oct 2021 03:56:19 -0700 (PDT)
Received: from localhost.name ([122.161.48.68])
        by smtp.gmail.com with ESMTPSA id b13sm6155351pjl.15.2021.10.13.03.56.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Oct 2021 03:56:19 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, agross@kernel.org, herbert@gondor.apana.org.au,
        davem@davemloft.net, Thara Gopinath <thara.gopinath@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH v4 05/20] dt-bindings: qcom-bam: Add 'interconnects' & 'interconnect-names' to optional properties
Date:   Wed, 13 Oct 2021 16:25:26 +0530
Message-Id: <20211013105541.68045-6-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211013105541.68045-1-bhupesh.sharma@linaro.org>
References: <20211013105541.68045-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add new optional properties - 'interconnects' and
'interconnect-names' to the device-tree binding documentation for
qcom-bam DMA IP.

These properties describe the interconnect path between bam and main
memory and the interconnect type respectively.

Cc: Thara Gopinath <thara.gopinath@linaro.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/dma/qcom_bam_dma.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/dma/qcom_bam_dma.yaml b/Documentation/devicetree/bindings/dma/qcom_bam_dma.yaml
index 32b47e3b7769..602e68df971f 100644
--- a/Documentation/devicetree/bindings/dma/qcom_bam_dma.yaml
+++ b/Documentation/devicetree/bindings/dma/qcom_bam_dma.yaml
@@ -45,6 +45,14 @@ properties:
     const: 1
     description: The single cell represents the channel index.
 
+  interconnects:
+    maxItems: 1
+    description: |
+      Interconnect path between bam and main memory.
+
+  interconnect-names:
+    const: memory
+
   qcom,ee:
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
-- 
2.31.1

