Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 981F1AA614
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2019 16:41:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730622AbfIEOl2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Sep 2019 10:41:28 -0400
Received: from mail-wm1-f46.google.com ([209.85.128.46]:56006 "EHLO
        mail-wm1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726179AbfIEOl2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Sep 2019 10:41:28 -0400
Received: by mail-wm1-f46.google.com with SMTP id g207so3110270wmg.5
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2019 07:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=gvXZWVwHpbdck37kQtyWXbSqSEeeYIFeArcoXQY5L9I=;
        b=mB3Sko2ifz0tOSCJAHjX283XAID1lWJHxJ8+5TDxf+6IIqPTfr+z/PPEttOLXQQH+b
         8VhpLSs2Xx38CdkqQN3H01l2xCICqrXkssFgkSPUbXJ7w82PFNTO/EflDqdaBZrjTBr4
         OPh0RTFzOYZ9LW56DmIi7VmHRBlGKptwDvVx48791iI0/CHvG7SloF7JfIgzVPVxd9SI
         Rs/Blwyl15h0QvyK0ESbbrFGhGmV1HOpEJtqRhDWTDXP8pDPRI+cycCzopj1+4fHb/Dm
         IQ1Epwi19TWJKlDbg2Ewvh51NYJmGcEGrfcOJBcKHYIVsbxVndIy9Vz+arcpx4sv7wik
         J4KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=gvXZWVwHpbdck37kQtyWXbSqSEeeYIFeArcoXQY5L9I=;
        b=EoIGV12TUDvMDQww/u3Xm+UDObLPQTFuTQypzNuhVxa2DJcfa+GRtBltBV7eBI6ILO
         6WAbC0bov3fyxP4+amTEcjeCVXrjUNdig89A/Dv4MT+umEwzu4Mu1I1ztgzEsDXcRt78
         rNgqR4LZ7r14T4zlBFWNRkIx8bv9EtcnIGWMWnRK7Lb6hJ/Udj/Z/40NxTTnKeLYVu69
         yv5AkMBZRmleANeu8fVu+LHbCY+xsGgEiu+UJ0IJSukjltQiQ/hyrNjuizYxJonhUeui
         qQAqW0GfKdE1cbz1LKcQZHK7PKvAxZqoTjQ5TQP8lEwsr+DjA5/+bPMpsJxZquS8uk+T
         d35A==
X-Gm-Message-State: APjAAAXssiNOSz3x7T3MEY3LlW9wOnaypZr3q1NZZigTwDFJ+TZ0yNGG
        2m+r6UMlb6QfsMuL0t1+nYgXOQ==
X-Google-Smtp-Source: APXvYqwSsdzWd7u9Fz8nhhPSzaTVwwrjIYP4HGLSO8rAw+8XajRcLI9Thgj6+E2e/hZXiqvdsbjQ7w==
X-Received: by 2002:a1c:be04:: with SMTP id o4mr3387448wmf.60.1567694485991;
        Thu, 05 Sep 2019 07:41:25 -0700 (PDT)
Received: from localhost.localdomain ([95.147.198.36])
        by smtp.gmail.com with ESMTPSA id c132sm4191392wme.27.2019.09.05.07.41.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2019 07:41:25 -0700 (PDT)
From:   Lee Jones <lee.jones@linaro.org>
To:     alokc@codeaurora.org, agross@kernel.org, robh+dt@kernel.org,
        mark.rutland@arm.com, bjorn.andersson@linaro.org, vkoul@kernel.org,
        wsa@the-dreams.de
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Lee Jones <lee.jones@linaro.org>
Subject: [RESEND v3 1/1] i2c: qcom-geni: Provide an option to disable DMA processing
Date:   Thu,  5 Sep 2019 15:41:22 +0100
Message-Id: <20190905144122.5689-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We have a production-level laptop (Lenovo Yoga C630) which is exhibiting
a rather horrific bug.  When I2C HID devices are being scanned for at
boot-time the QCom Geni based I2C (Serial Engine) attempts to use DMA.
When it does, the laptop reboots and the user never sees the OS.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/i2c/busses/i2c-qcom-geni.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index a89bfce5388e..17abf60c94ae 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -355,11 +355,13 @@ static int geni_i2c_rx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
 {
 	dma_addr_t rx_dma;
 	unsigned long time_left;
-	void *dma_buf;
+	void *dma_buf = NULL;
 	struct geni_se *se = &gi2c->se;
 	size_t len = msg->len;
 
-	dma_buf = i2c_get_dma_safe_msg_buf(msg, 32);
+	if (!of_machine_is_compatible("lenovo,yoga-c630"))
+		dma_buf = i2c_get_dma_safe_msg_buf(msg, 32);
+
 	if (dma_buf)
 		geni_se_select_mode(se, GENI_SE_DMA);
 	else
@@ -394,11 +396,13 @@ static int geni_i2c_tx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
 {
 	dma_addr_t tx_dma;
 	unsigned long time_left;
-	void *dma_buf;
+	void *dma_buf = NULL;
 	struct geni_se *se = &gi2c->se;
 	size_t len = msg->len;
 
-	dma_buf = i2c_get_dma_safe_msg_buf(msg, 32);
+	if (!of_machine_is_compatible("lenovo,yoga-c630"))
+		dma_buf = i2c_get_dma_safe_msg_buf(msg, 32);
+
 	if (dma_buf)
 		geni_se_select_mode(se, GENI_SE_DMA);
 	else
-- 
2.17.1

