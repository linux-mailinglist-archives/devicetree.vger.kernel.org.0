Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8AE40374A50
	for <lists+devicetree@lfdr.de>; Wed,  5 May 2021 23:38:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233841AbhEEVjM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 May 2021 17:39:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233136AbhEEVjL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 May 2021 17:39:11 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19E4DC061574
        for <devicetree@vger.kernel.org>; Wed,  5 May 2021 14:38:11 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id a11so1927255plh.3
        for <devicetree@vger.kernel.org>; Wed, 05 May 2021 14:38:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=G8+gYdiVbmjOwjaPy7U2TKEE4QviaMAH4q5NozXKn0Q=;
        b=iBQAa1NKgpUgni9h2YA6oy4Dn8VunyJlqmjKKrxMQ3nQ6IbaEFRXGLYlYp+pgZz5fT
         4juD1l4LNyQyKEfwDt5lQ1qbmSyVPZRXOWH5t/g9PfGAmBDOVnQCoKTHQe4w6xJfgngd
         +UgsZOvjPV96U8y5firvnk35d14xflagdpdkrwzEX850NrG+kUIU4ydsTX7Cug/bQjfQ
         Q80OH4+HkkBX3vI35IfBIRTH9Xf5Y7n3baFScUzxxT6Xw05G4T7nRrus7lj/f7gHTxJd
         xXGnXALRWRZ5RXml1+sMSnlHE5BizZyLQ1tA3hlpDqlD8i8iwYh+cw1X//TT3ZL7F3Di
         HwUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=G8+gYdiVbmjOwjaPy7U2TKEE4QviaMAH4q5NozXKn0Q=;
        b=ZQgy1K8xgVN2Yvswlhx+NQA6G6f41yha4Av1nI1d5uVwRa1D93yADCfLzvA6EeGVlR
         3qrCUVNw4VWmV4/zl13PMsIVw0Cz48AOK8TNxDkQ3V98i1ZhcFfunVVg7aG+40SyImRK
         HJ3A6mQcwIg1W/AzjWhpDjf1HQZ9KA+HJ19Axz41QO6cHzba6drpyRZ0ZQJJwYjdVq5i
         baVJmkiwwVHyUHJcb6Fmx5u1O+YN04ybU+7eia7X9B20y7PuiBpWDxJnL04Rxcsb+atE
         QSEd8ySaiG1WBwwYYHszWkjHWcKbuz5YRYAtEnMKWPb8FtMCTcUIocN9hlO+gyj70Ijd
         Ivwg==
X-Gm-Message-State: AOAM531Hs8wJ7F3NPUWOraQodKm0O/m8/Rer6OVwTg5m8XGMGFV2VhOq
        kEPd4QEhJiBrXno7pCzhcM7Vsg==
X-Google-Smtp-Source: ABdhPJzTn9wRcKkeSIPwlw1URylkANElXVgG9hVuwr1AC3j5LFOGnSLRAMSLSbgcIRCZohliYs84cg==
X-Received: by 2002:a17:90a:246:: with SMTP id t6mr737090pje.228.1620250690710;
        Wed, 05 May 2021 14:38:10 -0700 (PDT)
Received: from localhost.localdomain.name ([223.235.141.68])
        by smtp.gmail.com with ESMTPSA id z26sm167031pfq.86.2021.05.05.14.38.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 May 2021 14:38:10 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org,
        Thara Gopinath <thara.gopinath@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S . Miller" <davem@davemloft.net>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Vinod Koul <vkoul@kernel.org>, dmaengine@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bhupesh.linux@gmail.com
Subject: [PATCH v2 02/17] dt-bindings: qcom-bam: Add 'iommus' to required properties
Date:   Thu,  6 May 2021 03:07:16 +0530
Message-Id: <20210505213731.538612-3-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210505213731.538612-1-bhupesh.sharma@linaro.org>
References: <20210505213731.538612-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the missing required property - 'iommus' to the
device-tree binding documentation for qcom-bam DMA IP.

This property describes the phandle(s) to apps_smmu node with sid mask.

Cc: Thara Gopinath <thara.gopinath@linaro.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Andy Gross <agross@kernel.org>
Cc: Herbert Xu <herbert@gondor.apana.org.au>
Cc: David S. Miller <davem@davemloft.net>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: dmaengine@vger.kernel.org
Cc: linux-clk@vger.kernel.org
Cc: linux-crypto@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: bhupesh.linux@gmail.com
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/dma/qcom_bam_dma.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/dma/qcom_bam_dma.txt b/Documentation/devicetree/bindings/dma/qcom_bam_dma.txt
index 077242956ff2..60a76c0fb118 100644
--- a/Documentation/devicetree/bindings/dma/qcom_bam_dma.txt
+++ b/Documentation/devicetree/bindings/dma/qcom_bam_dma.txt
@@ -13,6 +13,7 @@ Required properties:
 - clock-names: must contain "bam_clk" entry
 - qcom,ee : indicates the active Execution Environment identifier (0-7) used in
   the secure world.
+- iommus  : phandle to apps_smmu node with sid mask
 
 Optional properties:
 - qcom,controlled-remotely : optional, indicates that the bam is controlled by
-- 
2.30.2

