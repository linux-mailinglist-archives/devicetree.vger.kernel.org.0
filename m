Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7D414A8124
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2019 13:36:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725840AbfIDLgT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Sep 2019 07:36:19 -0400
Received: from mail-wm1-f51.google.com ([209.85.128.51]:34940 "EHLO
        mail-wm1-f51.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725965AbfIDLgT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Sep 2019 07:36:19 -0400
Received: by mail-wm1-f51.google.com with SMTP id n10so3305400wmj.0
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2019 04:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=6n1x8bAGsyaVUn7RCRrZd6pcUeSbUTUlFO1sD7W+jdE=;
        b=h6B+fLtpSONhSBxg/IJPOu8ZrT+zjGIRlQ9PafT3Q+SZuugLTW6Ms+HeiIs199by73
         /y+NK2ynYGk5Q1wiraznmv2S5N8Lz0qJIog53PZqHuAG5OFvBaAac4XnhbVk0k+0NGWi
         IUHCcEYDqbyRKZZp2QJ8hxBdm7rxewdpV32Cn9jFMFQB3McBI0q5ZjtIQTG3kzNunl+J
         wd5cfQNbtsC+bA9G4OAwDPM+UzwfqTBSFiXdOXS2MFlj5hQCg4AYNsTJ3GCer+YjaTp7
         TYsyWv5RGnBfWrv689OK75VW6sakK4tDIkVN+13SPqxEk7zGNRbD7F3Sp3yWfKoTo0bU
         rcdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=6n1x8bAGsyaVUn7RCRrZd6pcUeSbUTUlFO1sD7W+jdE=;
        b=RRxJv/VbIBhJxUp0GQs4UrUd22d7DgH0X/Rq9CRz7WYTnngEo91SSWfYSHhZYnbdd2
         6PEEIFTfCDnQ6FaEk6PMJovKItbsoOAD0SkvTSNljxK045+Mpw4CWwcfgi4+/kkAIDt6
         oY02F4qEtHDosb1OJrq5IA5plx9dKRSpVjji5sFWwLOnlH8/57lY1eOUKCercvhuKxI6
         WOleBrAK/gKgc2fH6Dza54iMbESwTZ6FVZs2Nwsd4ITlGwQI/Memw4y1GNAZNSHyc4pe
         mwIIx9RS0NJ8Ghp+SRAaeGyZP92uZDOWgPk/ccJDCN40cR/lsnsggq1XmA1IIBIUouBz
         57qQ==
X-Gm-Message-State: APjAAAXbRB8HGjNhsUoe7k1eFlRYwHOWTGniS49dDZltdq2AFMo3sLKW
        6JEtmGKPFehBesn5t2tnPHmLMA==
X-Google-Smtp-Source: APXvYqzrtOfOuNj6frgLWfYGsNvZUObicbYASkZ26jqaCnscUAcwcq1/Gwrc40q+OpB0xe98gVVB7A==
X-Received: by 2002:a1c:20cf:: with SMTP id g198mr4199256wmg.66.1567596977066;
        Wed, 04 Sep 2019 04:36:17 -0700 (PDT)
Received: from localhost.localdomain ([95.147.198.36])
        by smtp.gmail.com with ESMTPSA id d9sm10823933wrc.39.2019.09.04.04.36.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2019 04:36:16 -0700 (PDT)
From:   Lee Jones <lee.jones@linaro.org>
To:     alokc@codeaurora.org, agross@kernel.org, robh+dt@kernel.org,
        mark.rutland@arm.com, bjorn.andersson@linaro.org,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Lee Jones <lee.jones@linaro.org>
Subject: [PATCH 1/2] i2c: qcom-geni: Provide an option to select FIFO processing
Date:   Wed,  4 Sep 2019 12:36:12 +0100
Message-Id: <20190904113613.14997-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/i2c/busses/i2c-qcom-geni.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index a89bfce5388e..dfdbce067827 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -353,13 +353,16 @@ static void geni_i2c_tx_fsm_rst(struct geni_i2c_dev *gi2c)
 static int geni_i2c_rx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
 				u32 m_param)
 {
+	struct device_node *np = gi2c->se.dev->of_node;
 	dma_addr_t rx_dma;
 	unsigned long time_left;
-	void *dma_buf;
+	void *dma_buf = NULL;
 	struct geni_se *se = &gi2c->se;
 	size_t len = msg->len;
 
-	dma_buf = i2c_get_dma_safe_msg_buf(msg, 32);
+	if (!of_property_read_bool(np, "qcom,geni-se-fifo"))
+		dma_buf = i2c_get_dma_safe_msg_buf(msg, 32);
+
 	if (dma_buf)
 		geni_se_select_mode(se, GENI_SE_DMA);
 	else
@@ -392,13 +395,16 @@ static int geni_i2c_rx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
 static int geni_i2c_tx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
 				u32 m_param)
 {
+	struct device_node *np = gi2c->se.dev->of_node;
 	dma_addr_t tx_dma;
 	unsigned long time_left;
-	void *dma_buf;
+	void *dma_buf = NULL;
 	struct geni_se *se = &gi2c->se;
 	size_t len = msg->len;
 
-	dma_buf = i2c_get_dma_safe_msg_buf(msg, 32);
+	if (!of_property_read_bool(np, "qcom,geni-se-fifo"))
+		dma_buf = i2c_get_dma_safe_msg_buf(msg, 32);
+
 	if (dma_buf)
 		geni_se_select_mode(se, GENI_SE_DMA);
 	else
-- 
2.17.1

