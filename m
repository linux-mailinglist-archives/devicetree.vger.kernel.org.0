Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C1CE33F5755
	for <lists+devicetree@lfdr.de>; Tue, 24 Aug 2021 06:34:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229732AbhHXEfe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Aug 2021 00:35:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229630AbhHXEfd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Aug 2021 00:35:33 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25143C06175F
        for <devicetree@vger.kernel.org>; Mon, 23 Aug 2021 21:34:50 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id u13-20020a17090abb0db0290177e1d9b3f7so933659pjr.1
        for <devicetree@vger.kernel.org>; Mon, 23 Aug 2021 21:34:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=kM+/qtuecMY4rwyh4CAd/6/l8VczUh+C0H7yTgD5l9I=;
        b=C1BSeTMSTiuXURuIkor7ch+3EBsKtClK8fJDglOJ9JfIDxlTsSGRUPwg8+yKACGRbh
         bFXcx9Jegu+fb0aRasHMRS82tb8cN8QSntraHbLfEC7Y/T6kGG6vG3/E9c9sRMjR2yXH
         yzFk6PkcQ78+hhol0KBFYxQ0cLgvh6Q37BQzgZ90hEavr3R4BB46YEtAHnrwZD/rzAnz
         hfBo6RfHr1450Ey8/HXEm89Sj3Sg/IMr7JSGokV8h9uIC5mlzo9ZN1umkbz5c3swF+X9
         w0gk1AQ82c5vDnEjYuPPxH6rrNUeYkchQa673mYwrX/Tsp5IpiEF7DK/mQ2iuFR5uFur
         tzzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=kM+/qtuecMY4rwyh4CAd/6/l8VczUh+C0H7yTgD5l9I=;
        b=gtKdR58z6LYVQYttEPnCPEHw4pItuyn+N9VRTWSvvNtClur2qa61ZywsKhECPGmKBP
         qvBuRbyR2XAanNjyhPHHukl2hwgGKUtYHYn8DlbGI8gCh+GpmYItREUm0xX3ZhCPFjI6
         Aa7DaiFDGxfe3mr8sGyI5q19HwydhErv7g4y0OIjNS7VDi7rQ0YE0/6y1IErsYY5zgHY
         +it60hw/afB73LXzhQrwPZ3V+rT+McusS3njY+LXwQJVYQ3txEK9Ko4o5vHlTIYzOBpj
         NOOkhpQRZYsujlDO4zsuhbaMynZyAPXdeuDIz/Fd+lPexIj+MxwEPu02RoFmcEXW+d/U
         PKcw==
X-Gm-Message-State: AOAM532KE7mrBeXWFknxCAsD4weyMWDw3qpsgIC2XFICtdzb35GF6beF
        pIxjh4zBqV9CaLMX8q3s/f9oNopZHZiQlw==
X-Google-Smtp-Source: ABdhPJxn/MMrSkc28FvXszBm2e2PGYOijM+kBz1jlyTSkChSIOALJvWmZuJPnmkuJ/55PgH9go7TtQ==
X-Received: by 2002:a17:90a:9dc6:: with SMTP id x6mr2352694pjv.122.1629779689616;
        Mon, 23 Aug 2021 21:34:49 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id p10sm789401pjv.39.2021.08.23.21.34.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Aug 2021 21:34:49 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Georgi Djakov <djakov@kernel.org>
Cc:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH v2 2/3] interconnect: qcom: sdm660: Add missing a2noc qos clocks
Date:   Tue, 24 Aug 2021 12:34:34 +0800
Message-Id: <20210824043435.23190-3-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210824043435.23190-1-shawn.guo@linaro.org>
References: <20210824043435.23190-1-shawn.guo@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It adds the missing a2noc clocks required for QoS registers programming
per downstream kernel[1].  Otherwise, qcom_icc_noc_set_qos_priority()
call on mas_ufs or mas_usb_hs node will simply result in a hardware hang
on SDM660 SoC.

[1] https://source.codeaurora.org/quic/la/kernel/msm-4.4/tree/arch/arm/boot/dts/qcom/sdm660-bus.dtsi?h=LA.UM.8.2.r1-04800-sdm660.0#n43

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
Tested-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/interconnect/qcom/sdm660.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/interconnect/qcom/sdm660.c b/drivers/interconnect/qcom/sdm660.c
index c89c991a80a0..661eb3635d21 100644
--- a/drivers/interconnect/qcom/sdm660.c
+++ b/drivers/interconnect/qcom/sdm660.c
@@ -174,6 +174,16 @@ static const struct clk_bulk_data bus_mm_clocks[] = {
 	{ .id = "iface" },
 };
 
+static const struct clk_bulk_data bus_a2noc_clocks[] = {
+	{ .id = "bus" },
+	{ .id = "bus_a" },
+	{ .id = "ipa" },
+	{ .id = "ufs_axi" },
+	{ .id = "aggre2_ufs_axi" },
+	{ .id = "aggre2_usb3_axi" },
+	{ .id = "cfg_noc_usb2_axi" },
+};
+
 /**
  * struct qcom_icc_provider - Qualcomm specific interconnect provider
  * @provider: generic interconnect provider
@@ -811,6 +821,10 @@ static int qnoc_probe(struct platform_device *pdev)
 		qp->bus_clks = devm_kmemdup(dev, bus_mm_clocks,
 					    sizeof(bus_mm_clocks), GFP_KERNEL);
 		qp->num_clks = ARRAY_SIZE(bus_mm_clocks);
+	} else if (of_device_is_compatible(dev->of_node, "qcom,sdm660-a2noc")) {
+		qp->bus_clks = devm_kmemdup(dev, bus_a2noc_clocks,
+					    sizeof(bus_a2noc_clocks), GFP_KERNEL);
+		qp->num_clks = ARRAY_SIZE(bus_a2noc_clocks);
 	} else {
 		if (of_device_is_compatible(dev->of_node, "qcom,sdm660-bimc"))
 			qp->is_bimc_node = true;
-- 
2.17.1

