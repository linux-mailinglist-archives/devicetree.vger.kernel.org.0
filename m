Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 02A8F5B8253
	for <lists+devicetree@lfdr.de>; Wed, 14 Sep 2022 09:54:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230192AbiINHyP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Sep 2022 03:54:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229472AbiINHyN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Sep 2022 03:54:13 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44A6872FCC
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 00:54:08 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id ge9so2217942pjb.1
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 00:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=gbwg87hG3tf6Wqw8hsoPn0QdO74QME7etMAVFms+/pw=;
        b=ljDxR322JltyV7F/QZun8KlOd5owh+tpFy2pY0cKU+zKsqRc50k4t5cyHvkM6i0xo3
         pq6ZR06hgYFaJfAHniPKBC0tFQAX6jWo4BLBjC+8MwffaTfyY5mRtUoc2MLbKB+EemR3
         XspmcR19OZ0B02d8lswcBsROs4SX/Yp4UHWhPt1VDV8hJKZO0CJTBVHTL+Y+LZD6F7fi
         G+Ud256J3h+fp070+YqAApIwLDIWKyUOfr3OdFJWDpx/lA3BhIhRF6vNcokWCN+1LIfE
         d6UJRpyLQp2d9bP2FgYosUkCk7J9p7BjAKNrKP/gt+SYNUnjtuFO+FJJPbkkzDi2JYx2
         kktg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=gbwg87hG3tf6Wqw8hsoPn0QdO74QME7etMAVFms+/pw=;
        b=MAowSZswhwgKrKIjeM6aRPjG6aBS3KI1yuO7eGgcaUM+Nq+x/xDF3RCL8DdnMRR0Fk
         yBylb1rytOrgw4esAuB39B+N5A8ThkWgLQFzds5msP5hxfK3G4bXdsDOpONpmai/TBG3
         EL2KfzfEgbcTlFdxS8W0uOoFwftR3Y/94esMSSnRSv/YwP6GW5FcjNBu67MXjQnV7F/l
         wiMhBzkvGN5PcWk/IGfKVmergyGR+bU+3ZTsjKg8ah9zgHQIhp28sQacJTVDxhiYk/Kz
         0ImgRYDfakh8U5zkXCSSNUf0OrNlwBvA7PTAvRHcQWuhQXobowAh4h+QR6qzvkwXWika
         Y2/Q==
X-Gm-Message-State: ACgBeo3bwJA4m3SksTg1c32LJln3jj/SgujGa4S+n0+REXvNL0qhFux9
        U5NY5IhX//IWGX5Hy8osa2Az
X-Google-Smtp-Source: AA6agR687zf0LoatHaeWiGH4w815XItAduyFQasakKnQ/p68K4peAppr3Gu0UF/br24Pcir9Gx0E5A==
X-Received: by 2002:a17:902:b217:b0:172:bd6c:814d with SMTP id t23-20020a170902b21700b00172bd6c814dmr35664854plr.55.1663142047255;
        Wed, 14 Sep 2022 00:54:07 -0700 (PDT)
Received: from localhost.localdomain ([117.202.184.122])
        by smtp.gmail.com with ESMTPSA id p8-20020a1709027ec800b00174ea015ee2sm10119054plb.38.2022.09.14.00.54.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Sep 2022 00:54:06 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     lpieralisi@kernel.org, robh@kernel.org, andersson@kernel.org
Cc:     kw@linux.com, bhelgaas@google.com, linux-pci@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@linaro.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v4 01/12] PCI: qcom-ep: Add kernel-doc for qcom_pcie_ep structure
Date:   Wed, 14 Sep 2022 13:23:39 +0530
Message-Id: <20220914075350.7992-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220914075350.7992-1-manivannan.sadhasivam@linaro.org>
References: <20220914075350.7992-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add kernel-doc for qcom_pcie_ep structure.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/pci/controller/dwc/pcie-qcom-ep.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom-ep.c b/drivers/pci/controller/dwc/pcie-qcom-ep.c
index 9f92d53da81a..27b7c9710b5f 100644
--- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
+++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
@@ -140,6 +140,23 @@ static struct clk_bulk_data qcom_pcie_ep_clks[] = {
 	{ .id = "slave_q2a" },
 };
 
+/**
+ * struct qcom_pcie_ep - Qualcomm PCIe Endpoint Controller
+ * @pci: Designware PCIe controller struct
+ * @parf: Qualcomm PCIe specific PARF register base
+ * @elbi: Designware PCIe specific ELBI register base
+ * @perst_map: PERST regmap
+ * @mmio_res: MMIO region resource
+ * @core_reset: PCIe Endpoint core reset
+ * @reset: PERST# GPIO
+ * @wake: WAKE# GPIO
+ * @phy: PHY controller block
+ * @perst_en: Flag for PERST enable
+ * @perst_sep_en: Flag for PERST separation enable
+ * @link_status: PCIe Link status
+ * @global_irq: Qualcomm PCIe specific Global IRQ
+ * @perst_irq: PERST# IRQ
+ */
 struct qcom_pcie_ep {
 	struct dw_pcie pci;
 
-- 
2.25.1

