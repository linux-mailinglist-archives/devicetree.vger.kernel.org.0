Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D65E2439D4E
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 19:17:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232783AbhJYRTt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 13:19:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232852AbhJYRTr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Oct 2021 13:19:47 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E06EC061243
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 10:17:25 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id g201-20020a1c20d2000000b00327775075f7so5758711wmg.5
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 10:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4VxZXnKS9YtNHxd0gj3h59SMAN46hPXrE6hl+KuwiZE=;
        b=XKbQhmKGuAyTv81G8PIzLh87XvVIWPRf8HSVv8JUCugCZNl+9mcb6v3xjqqawhYWmT
         wbzrmdi14bRaJdGe4FpC0nPZ+Q+w+KglnCUAo0tdeq3sPt6k/kPzH8ylv5HKwZ3g84re
         B8sEKMW72HD5IGf9c/UbBpWKQkg1wgJXe/4Fnsm8yRFad/nDaEzJvkLBbyeWSyVSj3FD
         YNPvFRo1nvfndjOJMNch97MGDNQFF+4r3lDigCSzTiVHi/VMQYPmR8XWUQXbnns87N9c
         ToS4ztGjScYLbsWJAm0Ra0iUrcSzX+xYDQYaZTNyyeQAIfGbRHz7unE/rekNLU+3E5T/
         kwKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4VxZXnKS9YtNHxd0gj3h59SMAN46hPXrE6hl+KuwiZE=;
        b=zMi6Saa7DnJ1YymVqfs1jTDCtPlKrNTYZb4NkiplC6GB4ZKWMIQVGjCMwX1TROaRvl
         ZGsElO8b+zVULepAy4y2KzjtmCj5gwUof3Ww94yxtt61ju6IcHonoGd/ULmHbDeGjeAZ
         MbjMLBftbkXcTkr0HcqyqfYxLoVVkOTaEfvPrDPld8yzSt4Rk2B6IyLJE05NqQwUxhJw
         iYXFuFDxuzYW/zo97+mnh2FulniI8Fup4Ia5RRZuNfAJOQAZbQCDvy8bowPPt0/kpaxz
         GY8bwW8QM7MbMmrjcwQ5y178gu+zSt9HrHwJaof6XsSiRLCpgvqZdUoSfXourhggN54K
         doEw==
X-Gm-Message-State: AOAM533LKU3uuC7uIuebxSIJZSGblJmWC+EzdNj3ANqw/vTZW2zeztpD
        bGqTQ5npnMq2aFpB7gwLSPdSZA==
X-Google-Smtp-Source: ABdhPJxlsYqc/GhWru2CeiX9LbQoso0FcSpq0ZGsQtk+JeL/3jLdK0LEXbwzncn22Tdn4/cS6L6vwQ==
X-Received: by 2002:a1c:7e87:: with SMTP id z129mr21367382wmc.75.1635182243771;
        Mon, 25 Oct 2021 10:17:23 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id r11sm5181012wrt.42.2021.10.25.10.17.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Oct 2021 10:17:23 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, bjorn.andersson@linaro.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v10 12/17] ASoC: qdsp6: audioreach: add Kconfig and Makefile
Date:   Mon, 25 Oct 2021 18:16:44 +0100
Message-Id: <20211025171649.17730-13-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20211025171649.17730-1-srinivas.kandagatla@linaro.org>
References: <20211025171649.17730-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now that all the code for audioreach and q6apm are in at this point to be
able to compile, start adding Kconfig and Makefile changes.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
---
 sound/soc/qcom/Kconfig        | 4 ++++
 sound/soc/qcom/qdsp6/Makefile | 3 +++
 2 files changed, 7 insertions(+)

diff --git a/sound/soc/qcom/Kconfig b/sound/soc/qcom/Kconfig
index cc7c1de2f1d9..5a693f83fd6c 100644
--- a/sound/soc/qcom/Kconfig
+++ b/sound/soc/qcom/Kconfig
@@ -84,6 +84,9 @@ config SND_SOC_QDSP6_ASM_DAI
 	select SND_SOC_COMPRESS
 	tristate
 
+config SND_SOC_QDSP6_APM
+	tristate
+
 config SND_SOC_QDSP6
 	tristate "SoC ALSA audio driver for QDSP6"
 	depends on QCOM_APR
@@ -97,6 +100,7 @@ config SND_SOC_QDSP6
 	select SND_SOC_QDSP6_ROUTING
 	select SND_SOC_QDSP6_ASM
 	select SND_SOC_QDSP6_ASM_DAI
+	select SND_SOC_QDSP6_APM
 	help
 	 To add support for MSM QDSP6 Soc Audio.
 	 This will enable sound soc platform specific
diff --git a/sound/soc/qcom/qdsp6/Makefile b/sound/soc/qcom/qdsp6/Makefile
index a4191d395557..1a0803d97eec 100644
--- a/sound/soc/qcom/qdsp6/Makefile
+++ b/sound/soc/qcom/qdsp6/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 snd-q6dsp-common-objs := q6dsp-common.o q6dsp-lpass-ports.o q6dsp-lpass-clocks.o
+snd-q6apm-objs := q6apm.o audioreach.o
 
 obj-$(CONFIG_SND_SOC_QDSP6_COMMON) += snd-q6dsp-common.o
 obj-$(CONFIG_SND_SOC_QDSP6_CORE) += q6core.o
@@ -10,3 +11,5 @@ obj-$(CONFIG_SND_SOC_QDSP6_ADM) += q6adm.o
 obj-$(CONFIG_SND_SOC_QDSP6_ROUTING) += q6routing.o
 obj-$(CONFIG_SND_SOC_QDSP6_ASM) += q6asm.o
 obj-$(CONFIG_SND_SOC_QDSP6_ASM_DAI) += q6asm-dai.o
+
+obj-$(CONFIG_SND_SOC_QDSP6_APM) += snd-q6apm.o
-- 
2.21.0

