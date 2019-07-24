Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0BD5E72A28
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2019 10:33:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726402AbfGXIdL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Jul 2019 04:33:11 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:42604 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726260AbfGXIdL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Jul 2019 04:33:11 -0400
Received: by mail-pf1-f196.google.com with SMTP id q10so20559223pff.9
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2019 01:33:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=3mpFcJm52vqDHrD294AKdjpEOxw1VpKoEQduQjdZ2L0=;
        b=aP58wc/2YXAfkX+FuNWDMlnhsNNEHFzP+2c9ml9eyP9dsH8O2zrW8VgKkX0U27kQok
         5PZkqjYKRV4mtv49n+YdTe545LnKECNwSbDAHqSKQjj+suwiYOvHIOjiJWoxPWoX5n7u
         Y34+2axR8FY2IfI4L4AAFMlxsdd3ah+OaExm0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=3mpFcJm52vqDHrD294AKdjpEOxw1VpKoEQduQjdZ2L0=;
        b=Nj6aXuNeUdIamO7pOQkbAPy7vRmHHNQT2lRMhyz1JxUz+fENcF4U6tZv2LNhuWSN84
         DMDrS3EaLP/hEIeonJQakBFnZwBpepap+Yg9/KvNvRFeezN14HsfjD1UkD2EaG62PdJ9
         ciL8SHUySP5afLSC2bwSg5urXXQZoLw6qXu173lCLrAlZt4lATJ/xaYNYwmq4+5TIla7
         LUGjUywuFBVfRNVRFKmrwlWkNEkrgxpZ5yAomK2re4VBlUEKmvl4ZTWXo7oBpw76lxbf
         dds/1L7vdAiBGBMMIopYPaV6C2XpUghxArrq/+KXB0/NKYy+jrBbJxBNtQAee9ZnV5k2
         s75w==
X-Gm-Message-State: APjAAAUJXiekFVAiwJH2GRspVnhRGmNZdVoIoz01yh+/X07H56xKn0HP
        16ptLtnN7HXREotRb08lxhXae7rz8gk=
X-Google-Smtp-Source: APXvYqxs7n3SvBSpEfhTxVDDL+ugCuHHYVOhhtmhsxZtMi/aqCqQ5OTABjBfpafmHW8kNT3gZ4b7jQ==
X-Received: by 2002:a63:4f58:: with SMTP id p24mr16283806pgl.50.1563957190508;
        Wed, 24 Jul 2019 01:33:10 -0700 (PDT)
Received: from rayagonda.dhcp.broadcom.net ([192.19.234.250])
        by smtp.gmail.com with ESMTPSA id u128sm52437425pfu.48.2019.07.24.01.33.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 24 Jul 2019 01:33:09 -0700 (PDT)
From:   Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
To:     Wolfram Sang <wsa@the-dreams.de>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        Ray Jui <ray.jui@broadcom.com>,
        Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH v1 1/1] i2c: iproc: Fix i2c master read more than 63 bytes
Date:   Wed, 24 Jul 2019 13:58:27 +0530
Message-Id: <1563956907-21255-1-git-send-email-rayagonda.kokatanur@broadcom.com>
X-Mailer: git-send-email 1.9.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use SMBUS_MASTER_DATA_READ.MASTER_RD_STATUS bit to check for RX
FIFO empty condition because SMBUS_MASTER_FIFO_CONTROL.MASTER_RX_PKT_COUNT
is not updated for read >= 64 bytes. This fixes the issue when trying to
read from the I2C slave more than 63 bytes.

Fixes: c24b8d574b7c ("i2c: iproc: Extend I2C read up to 255 bytes")

Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
---
 drivers/i2c/busses/i2c-bcm-iproc.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/i2c/busses/i2c-bcm-iproc.c b/drivers/i2c/busses/i2c-bcm-iproc.c
index 2c7f145..d7fd76b 100644
--- a/drivers/i2c/busses/i2c-bcm-iproc.c
+++ b/drivers/i2c/busses/i2c-bcm-iproc.c
@@ -392,16 +392,18 @@ static bool bcm_iproc_i2c_slave_isr(struct bcm_iproc_i2c_dev *iproc_i2c,
 static void bcm_iproc_i2c_read_valid_bytes(struct bcm_iproc_i2c_dev *iproc_i2c)
 {
 	struct i2c_msg *msg = iproc_i2c->msg;
+	uint32_t val;
 
 	/* Read valid data from RX FIFO */
 	while (iproc_i2c->rx_bytes < msg->len) {
-		if (!((iproc_i2c_rd_reg(iproc_i2c, M_FIFO_CTRL_OFFSET) >> M_FIFO_RX_CNT_SHIFT)
-		      & M_FIFO_RX_CNT_MASK))
+		val = iproc_i2c_rd_reg(iproc_i2c, M_RX_OFFSET);
+
+		/* rx fifo empty */
+		if (!((val >> M_RX_STATUS_SHIFT) & M_RX_STATUS_MASK))
 			break;
 
 		msg->buf[iproc_i2c->rx_bytes] =
-			(iproc_i2c_rd_reg(iproc_i2c, M_RX_OFFSET) >>
-			M_RX_DATA_SHIFT) & M_RX_DATA_MASK;
+			(val >> M_RX_DATA_SHIFT) & M_RX_DATA_MASK;
 		iproc_i2c->rx_bytes++;
 	}
 }
-- 
1.9.1

