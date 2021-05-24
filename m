Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3ADC738E4D4
	for <lists+devicetree@lfdr.de>; Mon, 24 May 2021 13:07:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232676AbhEXLIs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 May 2021 07:08:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232643AbhEXLIq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 May 2021 07:08:46 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E48F1C06138E
        for <devicetree@vger.kernel.org>; Mon, 24 May 2021 04:07:18 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id r12so28099006wrp.1
        for <devicetree@vger.kernel.org>; Mon, 24 May 2021 04:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1RUP68I3HwNhuXkqx8NfMcQ+Gf4uaCrCeHBt2iSVUE0=;
        b=e0P9PDIDn59yFnHeDut/LBVMSKTB+WulaHlndXolRHicxhZ3f9Qk0xoRkiXowaNubX
         8PP4jIbq2eo4TfxpoK1Ua1Uc1vYNRi6GBhXl8ImK4K8uF4yPn4fCIsZ+I+fURcsFXHfo
         hYqLJip34CignAkIoGkCWMlXrvT7kKVbqfzadC+MBKr7z4fOf90Vxw7P6+SVH/QpjX36
         JYOvW6NpUEo29tYON124o+Az8Mqv1Yr2v1TVWcvfvbqNECAyCnfw1lxUXOPqeDzw5GR6
         MLhdSk0XxwNY8guO8PA+yQTZuiIK8fE9TO6YhN4k/AE6wf/+ci9G1xPbcPfLSU/w12vM
         TJlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1RUP68I3HwNhuXkqx8NfMcQ+Gf4uaCrCeHBt2iSVUE0=;
        b=YN9qeZuPoB0IRXqQocIfc8wb8LjyhT8DzyVfsz50xPxOwYWO16tURwMFeDjzeaBsXe
         EUmn1b5M6Xx1vJTPlFPIrTexQeyzVq21Q1RX26diW2eU0jZq3hGtM0OwHp8/R0/6lrjT
         nG/gPD8u3AwoOVhKKXz6p+3PrJXbj7WR/O5QwKOx3RaF9um/pc5NYyG+IFlLsC42529k
         yw4WvZ0ankLhDETuBlyPMfJCLO1/9sFUIpNMk5whndri8dpO+Mpy/HBeVakfcWJEGLME
         5r54oznBCqaOpw/m2YANm/vmI9OjX3EOOqrYPvAuc78aGT2yqlShXfJEsi0cRIu9KP78
         APMg==
X-Gm-Message-State: AOAM531XDj0K2L6ruWMV82sfgg8rvyMmMpLvpdFd+kv97UihPBcXsR9Z
        QZJX+oHUZnT8QdlO53PPISxH1bZAThh39A==
X-Google-Smtp-Source: ABdhPJzi9GLp/45oFFd8/DlCNBsAgZZOYebEDhB5FTTfCuIOj2L150Qtq6d1rT7Po8grL9X5EPpd0g==
X-Received: by 2002:a05:6000:50d:: with SMTP id a13mr20798928wrf.130.1621854437515;
        Mon, 24 May 2021 04:07:17 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id x4sm7590978wmj.17.2021.05.24.04.07.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 May 2021 04:07:17 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     robh@kernel.org, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        lgirdwood@gmail.com,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 4/4] ASoC: qcom: sdm845: add jack support for WCD934x
Date:   Mon, 24 May 2021 12:07:00 +0100
Message-Id: <20210524110700.27077-5-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210524110700.27077-1-srinivas.kandagatla@linaro.org>
References: <20210524110700.27077-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 sound/soc/qcom/sdm845.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/sound/soc/qcom/sdm845.c b/sound/soc/qcom/sdm845.c
index 153e9b2de0b5..0adfc5708949 100644
--- a/sound/soc/qcom/sdm845.c
+++ b/sound/soc/qcom/sdm845.c
@@ -288,6 +288,14 @@ static int sdm845_dai_init(struct snd_soc_pcm_runtime *rtd)
 			snd_soc_dai_set_sysclk(codec_dai, 0,
 					       WCD934X_DEFAULT_MCLK_RATE,
 					       SNDRV_PCM_STREAM_PLAYBACK);
+
+			rval = snd_soc_component_set_jack(codec_dai->component,
+							  &pdata->jack, NULL);
+			if (rval != 0 && rval != -ENOTSUPP) {
+				dev_warn(card->dev, "Failed to set jack: %d\n", rval);
+				return rval;
+			}
+
 		}
 		break;
 	default:
-- 
2.21.0

