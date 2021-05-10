Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D05E83780F2
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 12:12:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230458AbhEJKNc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 06:13:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230254AbhEJKN1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 06:13:27 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAEF5C06138C
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 03:12:18 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id n2so16041533wrm.0
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 03:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1RUP68I3HwNhuXkqx8NfMcQ+Gf4uaCrCeHBt2iSVUE0=;
        b=Ia2f0k5b0Vf6TsMPCzwMZHwwp+JOEI/DGNgUINsuRemHW0a0PU3R4PaTCjICwWAnju
         VJs2s5jBI0XyJrHwF4lho8YSz5CTYRWNGWd5wJHqr+zExfcmUJuhG6/F2fnu5zf2jWQ7
         jLXD1tG6UVVopdAXa325epwi9P5F7ZEp3MpWIxvOEsrWYYRFnZmiCrkUWf9gp9RQNBaV
         MLi9hlvIgh42uZGNXnM414RW+twhQf2bNzsT6dFCcLQN0LoqgG3RcXQUUXIJDHsfGt0H
         X7trKfRGlnF9bRtJIaPlnqrCT1hMUPyF6vhnk2+wjeO50ZF2HhaxtrhRybCxZv4O1bAN
         /QMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1RUP68I3HwNhuXkqx8NfMcQ+Gf4uaCrCeHBt2iSVUE0=;
        b=d6IAinsRbWBEBV8iUyrv2PbTJ9icuFrWMTUNiAzfRsE3Vs6k0l1qx+TNVwCgEAfvnp
         a5TMHOruyCvoWgXJ+QAT9nGb954ljcVxxnt09O+LiPMwcaTpW/mXEjIkUfGNprWf9qxm
         DTtVw6PBt5C0JMJShqOI2fsrtqQIwlfedAceHAwCZy2xhC9AFV3XDL+5nd+5wOd2xIZX
         H8hGADZedljz7WFDHbKOAdrfjujJL5uQJZfirL+Wb7IrNwmXqlu0wsy5ZyTZ9c/YpsII
         UMKzUAZxod5yDjAi09YfweXbL962L2KUkbxDoTmownxenMP89MAzMsOIkyfCYELhi76T
         fd0Q==
X-Gm-Message-State: AOAM5320gNinpjDyS1rjqGvLiUjlz7LRpryWMceZW5wUy00fj5kXM0nE
        FIABU70wN4WSYHQBPZf+UVHec+qoeUesjwUA
X-Google-Smtp-Source: ABdhPJy1zZnboxYwU59hy7FUd2GyKCZNULHvX4RQWWp+fstvZEyAyCkHKdPtDLe5i77CJgMopibHDA==
X-Received: by 2002:adf:d1c6:: with SMTP id b6mr26190938wrd.110.1620641537371;
        Mon, 10 May 2021 03:12:17 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id b7sm22072109wri.83.2021.05.10.03.12.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 03:12:16 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     robh@kernel.org, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        lgirdwood@gmail.com, lee.jones@linaro.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH 4/4] ASoC: qcom: sdm845: add jack support for WCD934x
Date:   Mon, 10 May 2021 11:12:01 +0100
Message-Id: <20210510101201.7281-5-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210510101201.7281-1-srinivas.kandagatla@linaro.org>
References: <20210510101201.7281-1-srinivas.kandagatla@linaro.org>
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

