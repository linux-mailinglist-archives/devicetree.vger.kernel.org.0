Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 00806386A4
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2019 10:57:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727207AbfFGI5h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jun 2019 04:57:37 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:54121 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727624AbfFGI5L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jun 2019 04:57:11 -0400
Received: by mail-wm1-f67.google.com with SMTP id x15so1179230wmj.3
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2019 01:57:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KUhboSAFmz5mtk8bqOkf7FrFn2o/dLGKQrpvRYoaznc=;
        b=qzcDMMv6/dC+W88mLNVStn/1exwxI5WCsOypC3gl2r3+gaoDMIOQYEYcuG41mZg4K4
         W1+wDi7jZIIjYFe0bNSdJb8dlG/Hdk64D0lQNdVEqzyU9mQixYMn/sVvGQUgfbOb4OqH
         n96hpVWConp+8aolrBLU5RAXiICd9cEHnv2TAUrcSEaayPHCnj6dJSpJrXjOzMRw5IA0
         mBvyCeu658+xZPj40wPPTfT7en/Xiv5jINsfwExCLe7XtZ4ZG2ApUlR4ftF4W3DT1GzV
         tVPKkImfEiPpV3dHfL4xblmzzRC5VoTyVg0NLYHV3VcSB2vR8W52pxL4AhlnKiak1Hy5
         V9qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KUhboSAFmz5mtk8bqOkf7FrFn2o/dLGKQrpvRYoaznc=;
        b=Oz8N/ev0EQBL7AevFAhyWg3C7+WY4Hm3Fknv1JCxoifb0jN5tSU/e3hzuNtunUEuCU
         V05tXux8kOhJnMdKpE4xmF7Zx5Bq9HsPTgl8tqBFeg9mRU8MjgcVFQfE71ZNG3Udp0zc
         unouoX5AT+NhtHCvD2aut1xZOiFTa5Z8bUCmaxCQbKxvFn70UAdBbISI8D1o52MU+ZpY
         st9D60j49BbDE0WgJTMPnTQ+sdeMOgr2CbhH0pAmIV8mactGsdQepuLNiWgKP9Q8PyAR
         Vh9pzhnYIGKK1YJPx03FBHhr2+dAHFqjSRGgaDT3WuW0ay6WcDpuoH5QeHc8tPUrekcu
         jW3Q==
X-Gm-Message-State: APjAAAVrxWVmc5xZ4gl8G/BfXsum3QuA2b9IMUpcagHyMBvL13uXVXCA
        zLf/ZhQW7OGcn5MT9zqTCZcQPg==
X-Google-Smtp-Source: APXvYqzJ0U31BGjMNzkX8zVESpp3QIDFY+q4gJbhCTHx2fmvyIfqZREqJHenhK+kiiD0Nec89G7cWA==
X-Received: by 2002:a1c:9a53:: with SMTP id c80mr2627868wme.173.1559897829451;
        Fri, 07 Jun 2019 01:57:09 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id d10sm2035308wrh.91.2019.06.07.01.57.08
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 07 Jun 2019 01:57:08 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, vkoul@kernel.org
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        mark.rutland@arm.com, pierre-louis.bossart@linux.intel.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [RFC PATCH 2/6] soundwire: Add compute_params callback
Date:   Fri,  7 Jun 2019 09:56:39 +0100
Message-Id: <20190607085643.932-3-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190607085643.932-1-srinivas.kandagatla@linaro.org>
References: <20190607085643.932-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Vinod Koul <vkoul@kernel.org>

This callback allows masters to compute the bus parameters required.

Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 drivers/soundwire/stream.c    | 9 +++++++++
 include/linux/soundwire/sdw.h | 2 ++
 2 files changed, 11 insertions(+)

diff --git a/drivers/soundwire/stream.c b/drivers/soundwire/stream.c
index 73c52cd4fec8..b86992145799 100644
--- a/drivers/soundwire/stream.c
+++ b/drivers/soundwire/stream.c
@@ -1485,6 +1485,15 @@ static int _sdw_prepare_stream(struct sdw_stream_runtime *stream)
 		bus->params.bandwidth += m_rt->stream->params.rate *
 			m_rt->ch_count * m_rt->stream->params.bps;
 
+		/* Compute params */
+		if (bus->compute_params) {
+			ret = bus->compute_params(bus);
+			if (ret < 0) {
+				dev_err(bus->dev, "Compute params failed: %d", ret);
+				return ret;
+			}
+		}
+
 		/* Program params */
 		ret = sdw_program_params(bus);
 		if (ret < 0) {
diff --git a/include/linux/soundwire/sdw.h b/include/linux/soundwire/sdw.h
index bea46bd8b6ce..aac68e879fae 100644
--- a/include/linux/soundwire/sdw.h
+++ b/include/linux/soundwire/sdw.h
@@ -718,6 +718,7 @@ struct sdw_master_ops {
  * Bit set implies used number, bit clear implies unused number.
  * @bus_lock: bus lock
  * @msg_lock: message lock
+ * @compute_params: points to Bus resource management implementation
  * @ops: Master callback ops
  * @port_ops: Master port callback ops
  * @params: Current bus parameters
@@ -739,6 +740,7 @@ struct sdw_bus {
 	DECLARE_BITMAP(assigned, SDW_MAX_DEVICES);
 	struct mutex bus_lock;
 	struct mutex msg_lock;
+	int (*compute_params)(struct sdw_bus *bus);
 	const struct sdw_master_ops *ops;
 	const struct sdw_master_port_ops *port_ops;
 	struct sdw_bus_params params;
-- 
2.21.0

