Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8830D41958A
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 15:56:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234669AbhI0N60 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 09:58:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234675AbhI0N60 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 09:58:26 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 813A3C061575
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 06:56:48 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id r11-20020a1c440b000000b0030cf0f01fbaso31417wma.1
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 06:56:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZbocYYAT3Bv95I3T0qjmMa3P6s7bL467iC3FMXh3uYY=;
        b=MZqn6lsy09eZA5BRHm7bSocPvdWE4E10KdE8VJtqui5H0zLD/0MwrGLsbV0Kchr6Yw
         QlJqpm7WKoqqwVOE4x7g/Pd6p9Fy9BpGfVtWQ9XDKZV5oFm1dZTemadl7UMCtJozjUBx
         ETboa48Sj542X8I5yheH3MlPIE3cLe2XEi5owp0oLwsgurBBH502SO22eKmEs66rRZ5b
         emn4qr0n49G9cpKfmMroucN4jvzkMpB3WNfmiF9NFgMqmj056LmpjZxAGb/oP5JHEG6s
         Q84TZrMMsLnFgeyH/5+W4TNU1iRUQBPBRoMWu5Q6EIMfD93a2vKk0ZgBubhjOXY5ThPE
         /5ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZbocYYAT3Bv95I3T0qjmMa3P6s7bL467iC3FMXh3uYY=;
        b=uhAFyonti4CUL7D8POJDfi+R0xR83AW0mU586u+3CRmlwxtUMVdO9MF1R5JyFR4D3l
         U/tDroJRAgdfHt2pnKG+pgKEZk9W4Wc308GKV3RKg0bOsPaUpxkNU/IwhtvCs4YYzxnE
         eZCi1QhgXsiWu8P6zU8ch5vrRYYgaOnBH2FPbXHBQT8VTORgZmDn1ojIoOlYEVgQP372
         Oo6hn95zLSsZBNgABhh+W78td97lFn6Wq82DOHdguuzypX3RMPqPYJavJq5ipkz6TlBW
         5rq5c9+TjVl4ZNRs3ewMQ7MhQWKyqM8JEMz2EcUprXbHLHb6wZcIT6QoqJhYGXBvW1eG
         Kf5Q==
X-Gm-Message-State: AOAM533OVpkYhwEzk8vXuQZYUhMzp+Srgq2ydyn1g7HgC9l46XzY2/+m
        EVZ/2shr8jFJEJtun80VxUSmZw==
X-Google-Smtp-Source: ABdhPJwb6gRvjZPrPSggx9ayU8MlaLG8MrCOLa2tu+bYjKBe1jmVhVRLC+DTCBBJAoYt/9Fgb3Zplg==
X-Received: by 2002:a05:600c:4f0a:: with SMTP id l10mr33174wmq.143.1632751007169;
        Mon, 27 Sep 2021 06:56:47 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id b7sm20485606wrm.9.2021.09.27.06.56.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 06:56:46 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v8 17/22] ASoC: qdsp6: audioreach: add Kconfig and Makefile
Date:   Mon, 27 Sep 2021 14:55:54 +0100
Message-Id: <20210927135559.738-18-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
References: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now that all the code for audioreach and q6apm are in at this point to be
able to compile, start adding Kconfig and Makefile changes.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
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

