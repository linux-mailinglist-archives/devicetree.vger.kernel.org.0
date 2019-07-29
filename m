Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EB1B979337
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2019 20:40:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388181AbfG2Skc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Jul 2019 14:40:32 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:34496 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388187AbfG2Skb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Jul 2019 14:40:31 -0400
Received: by mail-wr1-f67.google.com with SMTP id 31so62988747wrm.1
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2019 11:40:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yk22Z8JHzlgEU95z+MeljHJJxoVpT6sQyqAKg9tLY5U=;
        b=dx5FxhTIrR+KuBI9Gf5ymUQ2/cStpTGC3wuKFN03eNuQP/BydgV7kfxJ0otUDwewq1
         gtIeE+bffQGFr7ShhV2nEWrlUIcGG6s8z8Cp1JHaY0m79OkutI917g8Q0z8nYhOMqFgy
         cqtH+LsjsC/5mGxtI4+Nmi2WoG35Em2SPc0TvKL8Tw1zpIiMslqOMUAQre9zSOpx7zV5
         PH+QVzrPOo/QQDypc0AjQSrnJvtxkzTLg620KndSj9WIvvAXJJhg08DAodrK87/dpU+h
         R3RLuE3Kwo0QNiyXM1RZGfH8lfnD8XQ64IXaYV80N18RbOAAkjhvfNoFAZQI4GKHjCyd
         IgvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yk22Z8JHzlgEU95z+MeljHJJxoVpT6sQyqAKg9tLY5U=;
        b=SZGYEXmqAbEoyDT5gMW0j1QxzpbXj9nPRWBi8CDjv9nlFVa0lJkUc5oDySY96RDtgR
         W4TmoRrsXQrVL0oCTF3AErDy02sE5ZFvNEDIJ/nxvxnmrAEbnk4HxEUYZd0sac5Gzr8a
         2DgMMDBCNuAtq+H9IA2SuW41KGEnFwSr0V7O8snXwA0u6pwscWDDELUTi8HBEoKRVEX4
         VgoiHCBSE1mxGaBu8i2A9CWaR5L8OgLeXI3fjgmgeTXharQ3/W8LLjIYhghSJuanS/bp
         W3QGzNLhCiJFPTuZ2HU3O5BE1AJmyj+5kG4VWFpAOITn69fV2sW12lUcdg+MyT9e5tjr
         T4GQ==
X-Gm-Message-State: APjAAAVCbMy0JAGFEyvSMJolqiwn9AtZikGenVeW6ERm53Tksip5tj6l
        YSho8PwMgfX1VRAY/ouu3IaQxA==
X-Google-Smtp-Source: APXvYqwsSAAM0wmsZsQ/D1JTKzKEW/BvIsNSYJd7FhsJtS3NmClnVADYyqPc1eSd8uBcCECLdcyi7A==
X-Received: by 2002:a5d:5152:: with SMTP id u18mr124859285wrt.9.1564425629514;
        Mon, 29 Jul 2019 11:40:29 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:f78c:d00:1570:f96d:dab8:76ae])
        by smtp.gmail.com with ESMTPSA id g8sm60735790wmf.17.2019.07.29.11.40.28
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 29 Jul 2019 11:40:28 -0700 (PDT)
From:   Carlo Caione <ccaione@baylibre.com>
To:     srinivas.kandagatla@linaro.org, khilman@baylibre.com,
        narmstrong@baylibre.com, robh+dt@kernel.org, tglx@linutronix.de,
        jbrunet@baylibre.com, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Carlo Caione <ccaione@baylibre.com>
Subject: [PATCH 4/5] firmware: meson_sm: Rework driver as a proper platform driver
Date:   Mon, 29 Jul 2019 19:39:40 +0100
Message-Id: <20190729183941.18164-5-ccaione@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190729183941.18164-1-ccaione@baylibre.com>
References: <20190729183941.18164-1-ccaione@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The secure monitor driver is currently a frankenstein driver which is
registered as a platform driver but its functionality goes through a
global struct accessed by the consumer drivers using exported helper
functions.

Try to tidy up the driver moving the firmware struct into the driver
data and make the consumer drivers referencing the secure-monitor using
a new property in the DT.

Currently only the nvmem driver is using this API so we can fix it in
the same commit.

Signed-off-by: Carlo Caione <ccaione@baylibre.com>
---
 drivers/firmware/meson/meson_sm.c       | 94 +++++++++++++++++--------
 drivers/nvmem/meson-efuse.c             | 23 +++++-
 include/linux/firmware/meson/meson_sm.h | 15 ++--
 3 files changed, 93 insertions(+), 39 deletions(-)

diff --git a/drivers/firmware/meson/meson_sm.c b/drivers/firmware/meson/meson_sm.c
index 772ca6726e7b..2e36a2aa274c 100644
--- a/drivers/firmware/meson/meson_sm.c
+++ b/drivers/firmware/meson/meson_sm.c
@@ -54,8 +54,6 @@ struct meson_sm_firmware {
 	void __iomem *sm_shmem_out_base;
 };
 
-static struct meson_sm_firmware fw;
-
 static u32 meson_sm_get_cmd(const struct meson_sm_chip *chip,
 			    unsigned int cmd_index)
 {
@@ -90,6 +88,7 @@ static void __iomem *meson_sm_map_shmem(u32 cmd_shmem, unsigned int size)
 /**
  * meson_sm_call - generic SMC32 call to the secure-monitor
  *
+ * @fw:		Pointer to secure-monitor firmware
  * @cmd_index:	Index of the SMC32 function ID
  * @ret:	Returned value
  * @arg0:	SMC32 Argument 0
@@ -100,15 +99,15 @@ static void __iomem *meson_sm_map_shmem(u32 cmd_shmem, unsigned int size)
  *
  * Return:	0 on success, a negative value on error
  */
-int meson_sm_call(unsigned int cmd_index, u32 *ret, u32 arg0,
-		  u32 arg1, u32 arg2, u32 arg3, u32 arg4)
+int meson_sm_call(struct meson_sm_firmware *fw, unsigned int cmd_index,
+		  u32 *ret, u32 arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4)
 {
 	u32 cmd, lret;
 
-	if (!fw.chip)
+	if (!fw->chip)
 		return -ENOENT;
 
-	cmd = meson_sm_get_cmd(fw.chip, cmd_index);
+	cmd = meson_sm_get_cmd(fw->chip, cmd_index);
 	if (!cmd)
 		return -EINVAL;
 
@@ -124,6 +123,7 @@ EXPORT_SYMBOL(meson_sm_call);
 /**
  * meson_sm_call_read - retrieve data from secure-monitor
  *
+ * @fw:		Pointer to secure-monitor firmware
  * @buffer:	Buffer to store the retrieved data
  * @bsize:	Size of the buffer
  * @cmd_index:	Index of the SMC32 function ID
@@ -137,22 +137,23 @@ EXPORT_SYMBOL(meson_sm_call);
  *		When 0 is returned there is no guarantee about the amount of
  *		data read and bsize bytes are copied in buffer.
  */
-int meson_sm_call_read(void *buffer, unsigned int bsize, unsigned int cmd_index,
-		       u32 arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4)
+int meson_sm_call_read(struct meson_sm_firmware *fw, void *buffer,
+		       unsigned int bsize, unsigned int cmd_index, u32 arg0,
+		       u32 arg1, u32 arg2, u32 arg3, u32 arg4)
 {
 	u32 size;
 	int ret;
 
-	if (!fw.chip)
+	if (!fw->chip)
 		return -ENOENT;
 
-	if (!fw.chip->cmd_shmem_out_base)
+	if (!fw->chip->cmd_shmem_out_base)
 		return -EINVAL;
 
-	if (bsize > fw.chip->shmem_size)
+	if (bsize > fw->chip->shmem_size)
 		return -EINVAL;
 
-	if (meson_sm_call(cmd_index, &size, arg0, arg1, arg2, arg3, arg4) < 0)
+	if (meson_sm_call(fw, cmd_index, &size, arg0, arg1, arg2, arg3, arg4) < 0)
 		return -EINVAL;
 
 	if (size > bsize)
@@ -164,7 +165,7 @@ int meson_sm_call_read(void *buffer, unsigned int bsize, unsigned int cmd_index,
 		size = bsize;
 
 	if (buffer)
-		memcpy(buffer, fw.sm_shmem_out_base, size);
+		memcpy(buffer, fw->sm_shmem_out_base, size);
 
 	return ret;
 }
@@ -173,6 +174,7 @@ EXPORT_SYMBOL(meson_sm_call_read);
 /**
  * meson_sm_call_write - send data to secure-monitor
  *
+ * @fw:		Pointer to secure-monitor firmware
  * @buffer:	Buffer containing data to send
  * @size:	Size of the data to send
  * @cmd_index:	Index of the SMC32 function ID
@@ -184,23 +186,24 @@ EXPORT_SYMBOL(meson_sm_call_read);
  *
  * Return:	size of sent data on success, a negative value on error
  */
-int meson_sm_call_write(void *buffer, unsigned int size, unsigned int cmd_index,
-			u32 arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4)
+int meson_sm_call_write(struct meson_sm_firmware *fw, void *buffer,
+			unsigned int size, unsigned int cmd_index, u32 arg0,
+			u32 arg1, u32 arg2, u32 arg3, u32 arg4)
 {
 	u32 written;
 
-	if (!fw.chip)
+	if (!fw->chip)
 		return -ENOENT;
 
-	if (size > fw.chip->shmem_size)
+	if (size > fw->chip->shmem_size)
 		return -EINVAL;
 
-	if (!fw.chip->cmd_shmem_in_base)
+	if (!fw->chip->cmd_shmem_in_base)
 		return -EINVAL;
 
-	memcpy(fw.sm_shmem_in_base, buffer, size);
+	memcpy(fw->sm_shmem_in_base, buffer, size);
 
-	if (meson_sm_call(cmd_index, &written, arg0, arg1, arg2, arg3, arg4) < 0)
+	if (meson_sm_call(fw, cmd_index, &written, arg0, arg1, arg2, arg3, arg4) < 0)
 		return -EINVAL;
 
 	if (!written)
@@ -210,6 +213,24 @@ int meson_sm_call_write(void *buffer, unsigned int size, unsigned int cmd_index,
 }
 EXPORT_SYMBOL(meson_sm_call_write);
 
+/**
+ * meson_sm_get - get pointer to meson_sm_firmware structure.
+ *
+ * @sm_node:		Pointer to the secure-monitor Device Tree node.
+ *
+ * Return:		NULL is the secure-monitor device is not ready.
+ */
+struct meson_sm_firmware *meson_sm_get(struct device_node *sm_node)
+{
+	struct platform_device *pdev = of_find_device_by_node(sm_node);
+
+	if (!pdev)
+		return NULL;
+
+	return platform_get_drvdata(pdev);
+}
+EXPORT_SYMBOL_GPL(meson_sm_get);
+
 #define SM_CHIP_ID_LENGTH	119
 #define SM_CHIP_ID_OFFSET	4
 #define SM_CHIP_ID_SIZE		12
@@ -217,14 +238,18 @@ EXPORT_SYMBOL(meson_sm_call_write);
 static ssize_t serial_show(struct device *dev, struct device_attribute *attr,
 			 char *buf)
 {
+	struct platform_device *pdev = to_platform_device(dev);
+	struct meson_sm_firmware *fw;
 	uint8_t *id_buf;
 	int ret;
 
+	fw = platform_get_drvdata(pdev);
+
 	id_buf = kmalloc(SM_CHIP_ID_LENGTH, GFP_KERNEL);
 	if (!id_buf)
 		return -ENOMEM;
 
-	ret = meson_sm_call_read(id_buf, SM_CHIP_ID_LENGTH, SM_GET_CHIP_ID,
+	ret = meson_sm_call_read(fw, id_buf, SM_CHIP_ID_LENGTH, SM_GET_CHIP_ID,
 				 0, 0, 0, 0, 0);
 	if (ret < 0) {
 		kfree(id_buf);
@@ -268,25 +293,34 @@ static const struct of_device_id meson_sm_ids[] = {
 
 static int __init meson_sm_probe(struct platform_device *pdev)
 {
+	struct device *dev = &pdev->dev;
 	const struct meson_sm_chip *chip;
+	struct meson_sm_firmware *fw;
+
+	fw = devm_kzalloc(dev, sizeof(*fw), GFP_KERNEL);
+	if (!fw)
+		return -ENOMEM;
 
-	chip = of_match_device(meson_sm_ids, &pdev->dev)->data;
+	chip = of_match_device(meson_sm_ids, dev)->data;
 
 	if (chip->cmd_shmem_in_base) {
-		fw.sm_shmem_in_base = meson_sm_map_shmem(chip->cmd_shmem_in_base,
-							 chip->shmem_size);
-		if (WARN_ON(!fw.sm_shmem_in_base))
+		fw->sm_shmem_in_base = meson_sm_map_shmem(chip->cmd_shmem_in_base,
+							  chip->shmem_size);
+		if (WARN_ON(!fw->sm_shmem_in_base))
 			goto out;
 	}
 
 	if (chip->cmd_shmem_out_base) {
-		fw.sm_shmem_out_base = meson_sm_map_shmem(chip->cmd_shmem_out_base,
-							  chip->shmem_size);
-		if (WARN_ON(!fw.sm_shmem_out_base))
+		fw->sm_shmem_out_base = meson_sm_map_shmem(chip->cmd_shmem_out_base,
+							   chip->shmem_size);
+		if (WARN_ON(!fw->sm_shmem_out_base))
 			goto out_in_base;
 	}
 
-	fw.chip = chip;
+	fw->chip = chip;
+
+	platform_set_drvdata(pdev, fw);
+
 	pr_info("secure-monitor enabled\n");
 
 	if (sysfs_create_group(&pdev->dev.kobj, &meson_sm_sysfs_attr_group))
@@ -295,7 +329,7 @@ static int __init meson_sm_probe(struct platform_device *pdev)
 	return 0;
 
 out_in_base:
-	iounmap(fw.sm_shmem_in_base);
+	iounmap(fw->sm_shmem_in_base);
 out:
 	return -EINVAL;
 }
diff --git a/drivers/nvmem/meson-efuse.c b/drivers/nvmem/meson-efuse.c
index 9924b98db772..669d20d73877 100644
--- a/drivers/nvmem/meson-efuse.c
+++ b/drivers/nvmem/meson-efuse.c
@@ -17,20 +17,25 @@
 struct meson_efuse {
 	struct nvmem_device *nvmem;
 	struct nvmem_config config;
+	struct meson_sm_firmware *fw;
 	struct clk *clk;
 };
 
 static int meson_efuse_read(void *context, unsigned int offset,
 			    void *val, size_t bytes)
 {
-	return meson_sm_call_read((u8 *)val, bytes, SM_EFUSE_READ, offset,
+	struct meson_efuse *efuse = context;
+
+	return meson_sm_call_read(efuse->fw, (u8 *)val, bytes, SM_EFUSE_READ, offset,
 				  bytes, 0, 0, 0);
 }
 
 static int meson_efuse_write(void *context, unsigned int offset,
 			     void *val, size_t bytes)
 {
-	return meson_sm_call_write((u8 *)val, bytes, SM_EFUSE_WRITE, offset,
+	struct meson_efuse *efuse = context;
+
+	return meson_sm_call_write(efuse->fw, (u8 *)val, bytes, SM_EFUSE_WRITE, offset,
 				   bytes, 0, 0, 0);
 }
 
@@ -43,6 +48,7 @@ MODULE_DEVICE_TABLE(of, meson_efuse_match);
 static int meson_efuse_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
+	struct device_node *sm_np;
 	struct meson_efuse *efuse;
 	unsigned int size;
 	int ret;
@@ -51,6 +57,17 @@ static int meson_efuse_probe(struct platform_device *pdev)
 	if (!efuse)
 		return -ENOMEM;
 
+	sm_np = of_parse_phandle(pdev->dev.of_node, "secure-monitor", 0);
+	if (!sm_np) {
+		dev_err(&pdev->dev, "no secure-monitor node\n");
+		return -ENODEV;
+	}
+
+	efuse->fw = meson_sm_get(sm_np);
+	of_node_put(sm_np);
+	if (!efuse->fw)
+		return -EPROBE_DEFER;
+
 	efuse->clk = devm_clk_get(dev, NULL);
 	if (IS_ERR(efuse->clk)) {
 		ret = PTR_ERR(efuse->clk);
@@ -73,7 +90,7 @@ static int meson_efuse_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	if (meson_sm_call(SM_EFUSE_USER_MAX, &size, 0, 0, 0, 0, 0) < 0) {
+	if (meson_sm_call(efuse->fw, SM_EFUSE_USER_MAX, &size, 0, 0, 0, 0, 0) < 0) {
 		dev_err(dev, "failed to get max user");
 		return -EINVAL;
 	}
diff --git a/include/linux/firmware/meson/meson_sm.h b/include/linux/firmware/meson/meson_sm.h
index 7613bf7c9442..6669e2a1d5fd 100644
--- a/include/linux/firmware/meson/meson_sm.h
+++ b/include/linux/firmware/meson/meson_sm.h
@@ -16,11 +16,14 @@ enum {
 
 struct meson_sm_firmware;
 
-int meson_sm_call(unsigned int cmd_index, u32 *ret, u32 arg0, u32 arg1,
-		  u32 arg2, u32 arg3, u32 arg4);
-int meson_sm_call_write(void *buffer, unsigned int b_size, unsigned int cmd_index,
-			u32 arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4);
-int meson_sm_call_read(void *buffer, unsigned int bsize, unsigned int cmd_index,
-		       u32 arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4);
+int meson_sm_call(struct meson_sm_firmware *fw, unsigned int cmd_index,
+		  u32 *ret, u32 arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4);
+int meson_sm_call_write(struct meson_sm_firmware *fw, void *buffer,
+			unsigned int b_size, unsigned int cmd_index, u32 arg0,
+			u32 arg1, u32 arg2, u32 arg3, u32 arg4);
+int meson_sm_call_read(struct meson_sm_firmware *fw, void *buffer,
+		       unsigned int bsize, unsigned int cmd_index, u32 arg0,
+		       u32 arg1, u32 arg2, u32 arg3, u32 arg4);
+struct meson_sm_firmware *meson_sm_get(struct device_node *firmware_node);
 
 #endif /* _MESON_SM_FW_H_ */
-- 
2.20.1

