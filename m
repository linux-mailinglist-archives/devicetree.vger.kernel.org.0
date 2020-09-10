Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BF0832643B3
	for <lists+devicetree@lfdr.de>; Thu, 10 Sep 2020 12:20:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725981AbgIJKUF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 06:20:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726600AbgIJKSG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 06:18:06 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CD72C0617A1
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 03:17:57 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id c18so6054742wrm.9
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 03:17:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8bRTU8pthtdc5exifPcJ/72rhAqstkkv8aWsmQdcsLQ=;
        b=Q4nRiOk7rNVQQICvXsEmCDU8Qxq/zPCgyRrf06DwYIHZKFAmyYgiS3BzZ/ESKS3Z8O
         YzE5DtWIZUGRyzq975KU79P3ATuuchvWakwtMAqeRx1fGLwrMt5IKj88rVEeucI7AUm+
         B3qXareBx+AU2M8hZhyLq3un6jP/aNYfZe1/3nXXgMaJlzDLH/2Q9WwxVMqd/NMrPMgE
         vNOgSWwg32URHGdU93NjvqQ52ZMGUePoDRNMVHXMgWmmIltDGD+Bo+qoZK188WfA9x3R
         7VIlT3GTEafHD4Ht5KSD2SZI5WvRLRMT7RBS1YUAw0dPdljpbLQiPkH+JIWQzVGkdFvE
         ZrnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8bRTU8pthtdc5exifPcJ/72rhAqstkkv8aWsmQdcsLQ=;
        b=CutA3NF+taPOQCnasr6aP96d8YDYYIMds/6PqPkLJDkjavfeGv05iLDbnVPPqsgL4V
         rTu7UjZxN22wA5Oa/BYjXr/5N6j3JVNHQtcHprJXIUSfCS6MqbAXmfRW8hOUe2aKbgCa
         /DuSWTJrdGojNgYSdbTndWoOOFP/JzDb/j7Qm3hvd7nwKSQdGhnohhuqkLZlaqr+tOUU
         Mr5xYRuDEVwix84ju2YXS8poNR81kpkHp9oxU2XKbHGVCH8I5M8uSwluY5ZHc+eLykH2
         STHH0yhuKzSJ0BrVbG0Fh+j+Cr/yDyAj5jxrgz1EQ1eWq4sddZ39qWsJFLHStN+AZDnJ
         MfBg==
X-Gm-Message-State: AOAM5324T1lqvPc+qKo1N4Gxve37hsu3oGvjf70P3+rs93q3DXbLyJ1y
        kr//mLONSFZfox0LLr43LjYopA==
X-Google-Smtp-Source: ABdhPJz56AXyfzVlQkiaiwc+AGSB3xOkP7QpWQR8eayAG/RxewXIeyNeQbO7sjiqnCkNG6Vmt0hiJw==
X-Received: by 2002:a5d:5261:: with SMTP id l1mr8184447wrc.193.1599733076251;
        Thu, 10 Sep 2020 03:17:56 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id m4sm8851731wro.18.2020.09.10.03.17.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 03:17:55 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     lgirdwood@gmail.com, robh+dt@kernel.org, plai@codeaurora.org,
        bgoswami@codeaurora.org, perex@perex.cz, tiwai@suse.com,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH 7/8] ASoC: q6dsp: q6afe: add codec lpass clocks
Date:   Thu, 10 Sep 2020 11:17:31 +0100
Message-Id: <20200910101732.23484-8-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200910101732.23484-1-srinivas.kandagatla@linaro.org>
References: <20200910101732.23484-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

LPASS now has integrated codec control whose clocks are controlled by Q6DSP.
This patch adds support to those clocks.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 sound/soc/qcom/qdsp6/q6afe.c | 24 ++++++++++++++++++++++++
 sound/soc/qcom/qdsp6/q6afe.h | 11 +++++++++++
 2 files changed, 35 insertions(+)

diff --git a/sound/soc/qcom/qdsp6/q6afe.c b/sound/soc/qcom/qdsp6/q6afe.c
index 9ed5537ee58e..688878a002a4 100644
--- a/sound/soc/qcom/qdsp6/q6afe.c
+++ b/sound/soc/qcom/qdsp6/q6afe.c
@@ -359,6 +359,7 @@
 #define TIMEOUT_MS 1000
 #define AFE_CMD_RESP_AVAIL	0
 #define AFE_CMD_RESP_NONE	1
+#define AFE_CLK_TOKEN		1024
 
 struct q6afe {
 	struct apr_device *apr;
@@ -887,6 +888,9 @@ static int q6afe_callback(struct apr_device *adev, struct apr_resp_pkt *data)
 				port->result = *res;
 				wake_up(&port->wait);
 				kref_put(&port->refcount, q6afe_port_free);
+			} else if (hdr->token == AFE_CLK_TOKEN) {
+				afe->result = *res;
+				wake_up(&afe->wait);
 			}
 			break;
 		default:
@@ -1094,6 +1098,25 @@ static int q6afe_set_digital_codec_core_clock(struct q6afe_port *port,
 				       sizeof(*cfg));
 }
 
+int q6afe_set_lpass_clock(struct device *dev, int clk_id, int attri,
+			  int clk_root, unsigned int freq)
+{
+	struct q6afe *afe = dev_get_drvdata(dev->parent);
+	struct afe_clk_set cset = {0,};
+
+	cset.clk_set_minor_version = AFE_API_VERSION_CLOCK_SET;
+	cset.clk_id = clk_id;
+	cset.clk_freq_in_hz = freq;
+	cset.clk_attri = attri;
+	cset.clk_root = clk_root;
+	cset.enable = !!freq;
+
+	return q6afe_set_param(afe, NULL, &cset, AFE_PARAM_ID_CLOCK_SET,
+			       AFE_MODULE_CLOCK_SET, sizeof(cset),
+			       AFE_CLK_TOKEN);
+}
+EXPORT_SYMBOL_GPL(q6afe_set_lpass_clock);
+
 int q6afe_port_set_sysclk(struct q6afe_port *port, int clk_id,
 			  int clk_src, int clk_root,
 			  unsigned int freq, int dir)
@@ -1130,6 +1153,7 @@ int q6afe_port_set_sysclk(struct q6afe_port *port, int clk_id,
 	case Q6AFE_LPASS_CLK_ID_PRI_MI2S_IBIT ... Q6AFE_LPASS_CLK_ID_QUI_MI2S_OSR:
 	case Q6AFE_LPASS_CLK_ID_MCLK_1 ... Q6AFE_LPASS_CLK_ID_INT_MCLK_1:
 	case Q6AFE_LPASS_CLK_ID_PRI_TDM_IBIT ... Q6AFE_LPASS_CLK_ID_QUIN_TDM_EBIT:
+	case Q6AFE_LPASS_CLK_ID_WSA_CORE_MCLK ... Q6AFE_LPASS_CLK_ID_VA_CORE_2X_MCLK:
 		cset.clk_set_minor_version = AFE_API_VERSION_CLOCK_SET;
 		cset.clk_id = clk_id;
 		cset.clk_freq_in_hz = freq;
diff --git a/sound/soc/qcom/qdsp6/q6afe.h b/sound/soc/qcom/qdsp6/q6afe.h
index 93592670ef0b..22e10269aa10 100644
--- a/sound/soc/qcom/qdsp6/q6afe.h
+++ b/sound/soc/qcom/qdsp6/q6afe.h
@@ -133,6 +133,15 @@
 /* Clock ID for INT MCLK1 */
 #define Q6AFE_LPASS_CLK_ID_INT_MCLK_1                             0x306
 
+#define Q6AFE_LPASS_CLK_ID_WSA_CORE_MCLK			0x309
+#define Q6AFE_LPASS_CLK_ID_WSA_CORE_NPL_MCLK			0x30a
+#define Q6AFE_LPASS_CLK_ID_TX_CORE_MCLK				0x30c
+#define Q6AFE_LPASS_CLK_ID_TX_CORE_NPL_MCLK			0x30d
+#define Q6AFE_LPASS_CLK_ID_RX_CORE_MCLK				0x30e
+#define Q6AFE_LPASS_CLK_ID_RX_CORE_NPL_MCLK			0x30f
+#define Q6AFE_LPASS_CLK_ID_VA_CORE_MCLK				0x30b
+#define Q6AFE_LPASS_CLK_ID_VA_CORE_2X_MCLK			0x310
+
 #define Q6AFE_LPASS_CORE_AVTIMER_BLOCK			0x2
 #define Q6AFE_LPASS_CORE_HW_MACRO_BLOCK			0x3
 #define Q6AFE_LPASS_CORE_HW_DCODEC_BLOCK		0x4
@@ -224,6 +233,8 @@ void q6afe_cdc_dma_port_prepare(struct q6afe_port *port,
 int q6afe_port_set_sysclk(struct q6afe_port *port, int clk_id,
 			  int clk_src, int clk_root,
 			  unsigned int freq, int dir);
+int q6afe_set_lpass_clock(struct device *dev, int clk_id, int clk_src,
+			  int clk_root, unsigned int freq);
 int q6afe_vote_lpass_core_hw(struct device *dev, uint32_t hw_block_id,
 			     char *client_name, uint32_t *client_handle);
 int q6afe_unvote_lpass_core_hw(struct device *dev, uint32_t hw_block_id,
-- 
2.21.0

