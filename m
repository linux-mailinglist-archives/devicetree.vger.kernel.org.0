Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6B15F8B2A2
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2019 10:36:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728283AbfHMIgP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Aug 2019 04:36:15 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:34848 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727843AbfHMIf7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Aug 2019 04:35:59 -0400
Received: by mail-wr1-f66.google.com with SMTP id k2so21102619wrq.2
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2019 01:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yY3j+tzAidsewEpOKH7pvngWyOrXZYN1znzf8G8c2/o=;
        b=z1KFlnpe7m6oruIQ8cwwyUe0xYtx70XatCj0QTT3fQG0wWPqOetxuINiLncLjFTWTm
         99H1BtzfFj+UnuZcErc7bAJTBHGV4j1+4Z5/JyC7VOEUNZIcuuvAzstG9O1gv1RCckId
         TzAMy2Yy5ely6dY38GSWw68qaAwxhYG8sqLPPCksZXgXydyiUuJ0K3sGK/2ut4K19N5Y
         1RF8aEmiY8gLCqkR3QzdAwpqB9f7CbTOvf5THnii6yVLwT6BZA0ObfQ3ZdJYT2W8rKoY
         ZD6dc/JtTu+Oukif2+WVSMwzax90gO1e/MjO1I4Phxk/93Ispzxbp3zCuDhM3ZTKwCEt
         bcFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yY3j+tzAidsewEpOKH7pvngWyOrXZYN1znzf8G8c2/o=;
        b=n+AMgOUNTlb1PPkBe+U4Liq1dm8wLa+b/YcPvcIiPd53IEIEp1XDgq//XmFK6xBQNU
         EBkjVfLo1b6mr7JmDJhILm4Iy9uutGQ/8NWeueCOKNF+4mPZhti9tA+8qC1Eb97ef+nv
         aGQJl2+8z0LRLLA3nTdaDChKp3MGwXdEJHGSpNHF9OUYtao0raM6vrHv69goaJ95iWD4
         PCIkTRglipNJp4jdZxcoZq/k08p0JFy4BxjiMEtTDwvdgCe/LQaBECn6/nO2hV5k8zAm
         TeaVWHY1cLIuk00+RwuK1lRCx3I2Xr+h1zYlDZxzoSRVXS3xZQMlQ39fClrelLc0Q+jm
         v3vA==
X-Gm-Message-State: APjAAAVvdegByZnupQDAC0NakdKgefCj54iAU97FcHNUic9l5iy2+x9G
        R3dIUtifO8UiVK4CUEATFjrHNQ==
X-Google-Smtp-Source: APXvYqySdA0FxJMGYIhbPWPNlaaNMqY14nOQdlvcbZOf6sDtJJSN0OFSBC4FzOtGc7e8Ynj8q0FmxA==
X-Received: by 2002:adf:dc51:: with SMTP id m17mr47047026wrj.256.1565685356898;
        Tue, 13 Aug 2019 01:35:56 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id o11sm8651822wrw.19.2019.08.13.01.35.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Aug 2019 01:35:56 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     vkoul@kernel.org, broonie@kernel.org
Cc:     bgoswami@codeaurora.org, plai@codeaurora.org,
        pierre-louis.bossart@linux.intel.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org, lgirdwood@gmail.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        spapothi@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 2/5] soundwire: stream: make stream name a const pointer
Date:   Tue, 13 Aug 2019 09:35:47 +0100
Message-Id: <20190813083550.5877-3-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190813083550.5877-1-srinivas.kandagatla@linaro.org>
References: <20190813083550.5877-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Make stream name const pointer

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 drivers/soundwire/stream.c    | 2 +-
 include/linux/soundwire/sdw.h | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/soundwire/stream.c b/drivers/soundwire/stream.c
index 60bc2fe42928..49ce21320f52 100644
--- a/drivers/soundwire/stream.c
+++ b/drivers/soundwire/stream.c
@@ -863,7 +863,7 @@ EXPORT_SYMBOL(sdw_release_stream);
  * sdw_alloc_stream should be called only once per stream. Typically
  * invoked from ALSA/ASoC machine/platform driver.
  */
-struct sdw_stream_runtime *sdw_alloc_stream(char *stream_name)
+struct sdw_stream_runtime *sdw_alloc_stream(const char *stream_name)
 {
 	struct sdw_stream_runtime *stream;
 
diff --git a/include/linux/soundwire/sdw.h b/include/linux/soundwire/sdw.h
index aac68e879fae..5e61ad065d32 100644
--- a/include/linux/soundwire/sdw.h
+++ b/include/linux/soundwire/sdw.h
@@ -830,7 +830,7 @@ struct sdw_stream_params {
  * @m_rt_count: Count of Master runtime(s) in this stream
  */
 struct sdw_stream_runtime {
-	char *name;
+	const char *name;
 	struct sdw_stream_params params;
 	enum sdw_stream_state state;
 	enum sdw_stream_type type;
@@ -838,7 +838,7 @@ struct sdw_stream_runtime {
 	int m_rt_count;
 };
 
-struct sdw_stream_runtime *sdw_alloc_stream(char *stream_name);
+struct sdw_stream_runtime *sdw_alloc_stream(const char *stream_name);
 void sdw_release_stream(struct sdw_stream_runtime *stream);
 int sdw_stream_add_master(struct sdw_bus *bus,
 		struct sdw_stream_config *stream_config,
-- 
2.21.0

