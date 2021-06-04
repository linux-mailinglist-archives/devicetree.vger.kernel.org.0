Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6593639B873
	for <lists+devicetree@lfdr.de>; Fri,  4 Jun 2021 13:53:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230314AbhFDLzc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 07:55:32 -0400
Received: from mail-ed1-f47.google.com ([209.85.208.47]:39843 "EHLO
        mail-ed1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229961AbhFDLz2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Jun 2021 07:55:28 -0400
Received: by mail-ed1-f47.google.com with SMTP id dj8so10809917edb.6
        for <devicetree@vger.kernel.org>; Fri, 04 Jun 2021 04:53:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1RUP68I3HwNhuXkqx8NfMcQ+Gf4uaCrCeHBt2iSVUE0=;
        b=f9JycFgOvdiHQiHOBO/jYEJjkIyxvmi829WYnht/Iug8GevPoV+bkkrt2d2T6GQEDG
         o8xbcOwQo0j+SDXJtjWqT6oDDc8LWq76ZEU8sXN48T7CAxlKwd4MByqTnxQxoVwU77Vd
         klP5SCZJKwN3B7ddQAHBF1hb37VKUkc8fSPMhJBq5NqdY9VmjsOrvZVuqC6a4zNAy1ze
         62Kq/ORU21mrHljkgdHmuWh+dVd8LcsnGoc/c4od4E8BX/lJqcEPbRJYFUoEFC2QjfZq
         g496bfFMlFa+MdJRDklyDAyTsv+fMuHR2cr3EgPHo/qMV7vj2nEJTREYWJ7vM6MBnhVN
         gMmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1RUP68I3HwNhuXkqx8NfMcQ+Gf4uaCrCeHBt2iSVUE0=;
        b=gDCdPZSc3Df/kuTmdQr+FNoxVAPKZVlbkrGjUkrZDG6BgkNtVeiAKpnvMkksfN/tfp
         dVqd4adoH+VSjSssQn+LvnBNauQymzEGWE0yd4++GwBEFx/a0RVKmKcHeEfM3bZKFs9T
         inQmFGHLDE95oTDQRm+QNXOMCA0SLBuGtVLpf8NnJR6fnqRd3KxrzUyu8AJlItqLWPjk
         ygYB9QXBG122EJgw9tpqv7U4rduE4TkBt4rHJFVL3YKAf1k6i/69BirmuTMJy14Q43dM
         XRjB2RIgO3Wiu4fBFpB+jOSZ/My8gL/+V7Azr+iZTLI4bDcOpNi7S5u++Yev0GK4UQ8l
         Cv4A==
X-Gm-Message-State: AOAM532NurI6C1Gs4ZOdKJQGGdBSn6OYAeo5teESNOYVgzr+mvzGF9/7
        rLDhWswXlyCA5XD8TIKygAo9Sw==
X-Google-Smtp-Source: ABdhPJzDgNHamWELP1ANrh5hTiuWCkMg/JkfPPGz4kOH6i8YxZ8+Sf0m2C8gWpLOblkVy4xTKvqUjw==
X-Received: by 2002:a05:6402:40c:: with SMTP id q12mr4242123edv.0.1622807562067;
        Fri, 04 Jun 2021 04:52:42 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id x9sm2805527eje.64.2021.06.04.04.52.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jun 2021 04:52:41 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     robh@kernel.org, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        lgirdwood@gmail.com,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v3 4/4] ASoC: qcom: sdm845: add jack support for WCD934x
Date:   Fri,  4 Jun 2021 12:52:30 +0100
Message-Id: <20210604115230.23259-5-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210604115230.23259-1-srinivas.kandagatla@linaro.org>
References: <20210604115230.23259-1-srinivas.kandagatla@linaro.org>
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

