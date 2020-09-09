Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F03D26307B
	for <lists+devicetree@lfdr.de>; Wed,  9 Sep 2020 17:26:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727856AbgIIP0a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Sep 2020 11:26:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729507AbgIIPZO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Sep 2020 11:25:14 -0400
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com [IPv6:2a00:1450:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD163C061249
        for <devicetree@vger.kernel.org>; Wed,  9 Sep 2020 07:43:24 -0700 (PDT)
Received: by mail-lj1-x241.google.com with SMTP id k25so3928969ljk.0
        for <devicetree@vger.kernel.org>; Wed, 09 Sep 2020 07:43:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=w8xJywszUviG8IlaqXvca0F9+J7Th0C+yfpGZ/wtGyc=;
        b=lUSkWeyIUec2i/cBga+S8HrTxW+ryKchb0HdSyWyFjDQ3a1DoOKagtRL/bhDjM8XEB
         r/4WoPAur60pdcxmZyRCeDipW2BURPTCj5tCd6EGuV1TF4figfLkSntz/JcYVGqHXuNO
         fUOKzOkZzywnmRyJhMo4IT4Y/iYwh+3RmTxZqJQXd6MT/i1TZqxnpf6DhBCeryADhfgW
         ClUaTJltGTwPRxN7YwpjD8ExFaQ21n+EyNoG3J0uCANCYZGIkNvTkK29cX+R5MCS5Xag
         o160tnnuvAMm8tOdTs5eKduTghR0WswwGygkIWGKIH5m1j63pO0OlN0aKTVArNRwcNqK
         OR4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=w8xJywszUviG8IlaqXvca0F9+J7Th0C+yfpGZ/wtGyc=;
        b=Nkm0AvVmgfnpOSOaLe2ZQfieMD6eG4reTxcddhU7ewTxmClIeOhK+Aw6XgucOmXXZo
         9KlPc5JrZ2CJclCEwZkbMcVAdz5ZsMDMxvIjk9rsQCzElG2eEC2NQCh7ofh26yspb4Jh
         pcT5F9w5mWhtiXoAtZbBA1yDQ9RQ4KwcEeTieaYO71MDzwJGxBuBusPO0xT5oNEinnOk
         sFP65/1GmIZfTu6/MA5dm3DBHi6toLotNRjFo/pRCTA2Md4dfDwB3RRJAS4rt+3XRVPY
         hP23wHimRangFS0CoXDATQC20WCCZknfIuvSFxTQ3yKuvCjRbifxsl0++/eV07/4B9kH
         SO/Q==
X-Gm-Message-State: AOAM533JzscbSXliWlfO+b41kjZwllD5Gu0fw9RTMCC4/53AGR2fW89Y
        wvd8QFlXP4quG0yfA/VCmIiQNQ==
X-Google-Smtp-Source: ABdhPJy7Lm4n8uPvYsm6+724Esh0DNoPvYm4lbou2WBs4gB+mNKGDPZN+zRhRKpTUwch3oJT9CNOZw==
X-Received: by 2002:a2e:6a04:: with SMTP id f4mr1895466ljc.119.1599662600908;
        Wed, 09 Sep 2020 07:43:20 -0700 (PDT)
Received: from eriador.lan ([188.162.64.155])
        by smtp.gmail.com with ESMTPSA id t12sm621665lfk.26.2020.09.09.07.43.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2020 07:43:20 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Hartmut Knaack <knaack.h@gmx.de>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Cc:     linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 07/10] iio: provide of_iio_channel_get_by_name() and devm_ version it
Date:   Wed,  9 Sep 2020 17:42:45 +0300
Message-Id: <20200909144248.54327-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200909144248.54327-1-dmitry.baryshkov@linaro.org>
References: <20200909144248.54327-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There might be cases when the IIO channel is attached to the device
subnode instead of being attached to the main device node. Allow drivers
to query IIO channels by using device tree nodes.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/iio/inkern.c         | 33 +++++++++++++++++++++++++--------
 include/linux/iio/consumer.h | 36 ++++++++++++++++++++++++++++++++++++
 2 files changed, 61 insertions(+), 8 deletions(-)

diff --git a/drivers/iio/inkern.c b/drivers/iio/inkern.c
index ede99e0d5371..3083f886d3da 100644
--- a/drivers/iio/inkern.c
+++ b/drivers/iio/inkern.c
@@ -180,8 +180,8 @@ static struct iio_channel *of_iio_channel_get(struct device_node *np, int index)
 	return ERR_PTR(err);
 }
 
-static struct iio_channel *of_iio_channel_get_by_name(struct device_node *np,
-						      const char *name)
+struct iio_channel *of_iio_channel_get_by_name(struct device_node *np,
+					       const char *name)
 {
 	struct iio_channel *chan = NULL;
 
@@ -261,12 +261,6 @@ static struct iio_channel *of_iio_channel_get_all(struct device *dev)
 
 #else /* CONFIG_OF */
 
-static inline struct iio_channel *
-of_iio_channel_get_by_name(struct device_node *np, const char *name)
-{
-	return NULL;
-}
-
 static inline struct iio_channel *of_iio_channel_get_all(struct device *dev)
 {
 	return NULL;
@@ -382,6 +376,29 @@ struct iio_channel *devm_iio_channel_get(struct device *dev,
 }
 EXPORT_SYMBOL_GPL(devm_iio_channel_get);
 
+struct iio_channel *devm_of_iio_channel_get_by_name(struct device *dev,
+						    struct device_node *np,
+						    const char *channel_name)
+{
+	struct iio_channel **ptr, *channel;
+
+	ptr = devres_alloc(devm_iio_channel_free, sizeof(*ptr), GFP_KERNEL);
+	if (!ptr)
+		return ERR_PTR(-ENOMEM);
+
+	channel = of_iio_channel_get_by_name(np, channel_name);
+	if (IS_ERR(channel)) {
+		devres_free(ptr);
+		return channel;
+	}
+
+	*ptr = channel;
+	devres_add(dev, ptr);
+
+	return channel;
+}
+EXPORT_SYMBOL_GPL(devm_of_iio_channel_get_by_name);
+
 struct iio_channel *iio_channel_get_all(struct device *dev)
 {
 	const char *name;
diff --git a/include/linux/iio/consumer.h b/include/linux/iio/consumer.h
index c4118dcb8e05..0a90ba8fa1bb 100644
--- a/include/linux/iio/consumer.h
+++ b/include/linux/iio/consumer.h
@@ -13,6 +13,7 @@
 struct iio_dev;
 struct iio_chan_spec;
 struct device;
+struct device_node;
 
 /**
  * struct iio_channel - everything needed for a consumer to use a channel
@@ -97,6 +98,41 @@ void iio_channel_release_all(struct iio_channel *chan);
  */
 struct iio_channel *devm_iio_channel_get_all(struct device *dev);
 
+/**
+ * of_iio_channel_get_by_name() - get description of all that is needed to access channel.
+ * @np:			Pointer to consumer device tree node
+ * @consumer_channel:	Unique name to identify the channel on the consumer
+ *			side. This typically describes the channels use within
+ *			the consumer. E.g. 'battery_voltage'
+ */
+#ifdef CONFIG_OF
+struct iio_channel *of_iio_channel_get_by_name(struct device_node *np, const char *name);
+#else
+static inline struct iio_channel *
+of_iio_channel_get_by_name(struct device_node *np, const char *name)
+{
+	return NULL;
+}
+#endif
+
+/**
+ * devm_of_iio_channel_get_by_name() - Resource managed version of of_iio_channel_get_by_name().
+ * @dev:		Pointer to consumer device.
+ * @np:			Pointer to consumer device tree node
+ * @consumer_channel:	Unique name to identify the channel on the consumer
+ *			side. This typically describes the channels use within
+ *			the consumer. E.g. 'battery_voltage'
+ *
+ * Returns a pointer to negative errno if it is not able to get the iio channel
+ * otherwise returns valid pointer for iio channel.
+ *
+ * The allocated iio channel is automatically released when the device is
+ * unbound.
+ */
+struct iio_channel *devm_of_iio_channel_get_by_name(struct device *dev,
+						    struct device_node *np,
+						    const char *consumer_channel);
+
 struct iio_cb_buffer;
 /**
  * iio_channel_get_all_cb() - register callback for triggered capture
-- 
2.28.0

