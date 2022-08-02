Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E832958817E
	for <lists+devicetree@lfdr.de>; Tue,  2 Aug 2022 19:59:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236649AbiHBR7u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Aug 2022 13:59:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235808AbiHBR7W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Aug 2022 13:59:22 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA3BE51A33
        for <devicetree@vger.kernel.org>; Tue,  2 Aug 2022 10:59:13 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id l22so18842768wrz.7
        for <devicetree@vger.kernel.org>; Tue, 02 Aug 2022 10:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TuVepJCF1VhVPp+n/Z+Mnas7S62uFs9HoLlJ9erehas=;
        b=Kh3BCvMHHboARNWPh+RZPNmF9sYIrBO7nPt45FCa8GN9tB2w9qCoaNVgD3b7jnUHMl
         S6lPilv9DEklvzoPj1XutlezBbig85yBT9g26SOg//OLdG6RpUQLCtj7wKaoI0TzRJJx
         UWLYQpS0UkouP83VdDHyBdnn9wIuQjFnBf4En4VYF04AWxJoKo5b6z2FRdlquLqvIFXE
         tiosmLf5zMLjPbPy7zk2eQBazgs3kg7cRpEXo2MJLws0+/jN7vfhfIBZ6fDxgsXmymMO
         Va5KIYInk+h90EiUizduw1QJzA8+UpOpvHCg9eMcUZUxhMn83wvo6iD5BYS2UWGLqMth
         FL0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TuVepJCF1VhVPp+n/Z+Mnas7S62uFs9HoLlJ9erehas=;
        b=OB8qWorDMeiWuXG/WrlP4sEUGWwvc6hGVrqPD5bL0wIj06S9o+/27z2MyLM3AFtVA7
         JHCplqdmRyzrzp3YQv0weYO5tVHjGuDx2zdNlqPjKqzHZQmzoGI31oW6izuIipkOBlsv
         POcv424zpZkd/SiDBwWpJls5fslvW6E0VmMuzxIBTR0LD2Q27ZZzzQbYM7LDH11TCqF1
         I8+7iX6zdTW+ImuRRqZBbp12TgaeSD8z26iFF5b0szgbVckOvYEYLTW2vMPdQcjrXqjh
         kchUpquisIFduadGEEnaKT/wYv5kMMkZkBTjHSDOh9//pse0XlUOp3zETImitsn8+B1s
         VEXA==
X-Gm-Message-State: ACgBeo2Q/j4fu1PS+/h6W7SrbVgD2XqvmHmLOouyjQOeckpbnMzAE+PL
        1xSdc1GOLwtFy3BZG56L31Ji1w==
X-Google-Smtp-Source: AA6agR7iyUkADRLOH839oPzAEPSkTF/AuRmupZXbEonsdqFKTvF5lHGdTGS+I/IpSwJQEMuG1V69qw==
X-Received: by 2002:a5d:584f:0:b0:21d:bcd6:5c8e with SMTP id i15-20020a5d584f000000b0021dbcd65c8emr13590680wrf.60.1659463153096;
        Tue, 02 Aug 2022 10:59:13 -0700 (PDT)
Received: from debian.office.codethink.co.uk ([2405:201:8005:8149:e5c9:c0ac:4d82:e94b])
        by smtp.gmail.com with ESMTPSA id 9-20020a05600c020900b003a3187a2d4csm23318222wmi.22.2022.08.02.10.59.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Aug 2022 10:59:12 -0700 (PDT)
From:   Sudip Mukherjee <sudip.mukherjee@sifive.com>
To:     Serge Semin <fancer.lancer@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     greentime.hu@sifive.com, jude.onyenegecha@sifive.com,
        william.salmon@sifive.com, adnan.chowdhury@sifive.com,
        ben.dooks@sifive.com, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        jeegar.lakhani@sifive.com,
        Sudip Mukherjee <sudip.mukherjee@sifive.com>
Subject: [PATCH 08/11] spi: dw: update buffer for enhanced spi mode
Date:   Tue,  2 Aug 2022 18:57:52 +0100
Message-Id: <20220802175755.6530-9-sudip.mukherjee@sifive.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220802175755.6530-1-sudip.mukherjee@sifive.com>
References: <20220802175755.6530-1-sudip.mukherjee@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In enhanced spi mode we will be writing the address to a single FIFO
location instead of writing to multiple FIFOs in the standard SPI mode.
Save the cmd and address bytes in the buffer accordingly.

Signed-off-by: Sudip Mukherjee <sudip.mukherjee@sifive.com>
---
 drivers/spi/spi-dw-core.c | 55 ++++++++++++++++++++++++++++++++++-----
 1 file changed, 48 insertions(+), 7 deletions(-)

diff --git a/drivers/spi/spi-dw-core.c b/drivers/spi/spi-dw-core.c
index 8cb30540ad5b..2564a2276572 100644
--- a/drivers/spi/spi-dw-core.c
+++ b/drivers/spi/spi-dw-core.c
@@ -520,7 +520,8 @@ static bool dw_spi_supports_mem_op(struct spi_mem *mem,
 	return spi_mem_default_supports_op(mem, op);
 }
 
-static int dw_spi_init_mem_buf(struct dw_spi *dws, const struct spi_mem_op *op)
+static int dw_spi_init_mem_buf(struct dw_spi *dws, const struct spi_mem_op *op,
+			       bool enhanced_spi)
 {
 	unsigned int i, j, len;
 	u8 *out;
@@ -548,17 +549,57 @@ static int dw_spi_init_mem_buf(struct dw_spi *dws, const struct spi_mem_op *op)
 	 */
 	for (i = 0; i < op->cmd.nbytes; ++i)
 		out[i] = DW_SPI_GET_BYTE(op->cmd.opcode, op->cmd.nbytes - i - 1);
-	for (j = 0; j < op->addr.nbytes; ++i, ++j)
-		out[i] = DW_SPI_GET_BYTE(op->addr.val, op->addr.nbytes - j - 1);
-	for (j = 0; j < op->dummy.nbytes; ++i, ++j)
-		out[i] = 0x0;
+
+	if (enhanced_spi) {
+		/*
+		 * Fill the remaining spaces of dws->reg_io_width bytes
+		 * size register with zero for cmd.
+		 */
+		for (; i < dws->reg_io_width; ++i)
+			out[i] = 0;
+		/*
+		 * Copy the address bytes in dws->reg_io_width bytes size
+		 * register and fill remaining spaces with zero.
+		 */
+		for (j = op->addr.nbytes; j > 0; ++i, --j)
+			out[i] = DW_SPI_GET_BYTE(op->addr.val, op->addr.nbytes - j);
+		for (j = op->addr.nbytes; j < dws->reg_io_width; ++i, ++j)
+			out[i] = 0;
+	} else {
+		for (j = 0; j < op->addr.nbytes; ++i, ++j)
+			out[i] = DW_SPI_GET_BYTE(op->addr.val, op->addr.nbytes - j - 1);
+	}
+
+	if (!enhanced_spi) {
+		/*
+		 * dummy bytes are not needed in enhanced mode as
+		 * wait_cycles specified as number of SPI clock cycles
+		 * between control frames transmit and data reception
+		 * will be mentioned in enhanced spi mode.
+		 */
+		for (j = 0; j < op->dummy.nbytes; ++i, ++j)
+			out[i] = 0x0;
+	}
 
 	if (op->data.dir == SPI_MEM_DATA_OUT)
 		memcpy(&out[i], op->data.buf.out, op->data.nbytes);
 
 	dws->n_bytes = 1;
 	dws->tx = out;
-	dws->tx_len = len;
+
+	if (enhanced_spi) {
+		/*
+		 * In enhanced mode cmd will be one FIFO and address
+		 * will be one more FIFO.
+		 */
+		dws->tx_len = 1;
+		if (op->addr.nbytes)
+			dws->tx_len += 1;
+		if (op->data.dir == SPI_MEM_DATA_OUT)
+			dws->tx_len += op->data.nbytes;
+	} else {
+		dws->tx_len = len;
+	}
 	if (op->data.dir == SPI_MEM_DATA_IN) {
 		dws->rx = op->data.buf.in;
 		dws->rx_len = op->data.nbytes;
@@ -744,7 +785,7 @@ static int dw_spi_exec_mem_op(struct spi_mem *mem, const struct spi_mem_op *op)
 	 * Collect the outbound data into a single buffer to speed the
 	 * transmission up at least on the initial stage.
 	 */
-	ret = dw_spi_init_mem_buf(dws, op);
+	ret = dw_spi_init_mem_buf(dws, op, enhanced_spi);
 	if (ret)
 		return ret;
 
-- 
2.30.2

