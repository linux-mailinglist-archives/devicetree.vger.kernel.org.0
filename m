Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C66A540C613
	for <lists+devicetree@lfdr.de>; Wed, 15 Sep 2021 15:15:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234072AbhIONQY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Sep 2021 09:16:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234048AbhIONQX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Sep 2021 09:16:23 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 094C3C061767
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 06:15:04 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id g16so3869704wrb.3
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 06:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZbocYYAT3Bv95I3T0qjmMa3P6s7bL467iC3FMXh3uYY=;
        b=KDZC78CTZMz8tkTc8orpMm1VU96DrHY2yyf/Nxs9/k3HXIdrFJ6YGeygsHaU03at6M
         RIwXyWCt/tuKPlrGCwC9SUOBqMzJ0xAK327YmydqREIapcIAqUBZDYHnV7+GNzRTNpyQ
         WTXz7OB2e42+cHSg509DWSdtphNuDsOhhRzTqUZGvety+m56mUJVZztrT1/l3WcluqzA
         EY7HQ/LtY2yIkcMCApr8+GVia/m5RsnMjxYf7n6HJYckSI4aT8JaZiDFXM9WC9m59cSY
         kw5ecdqhyTNlvgjL/7PGFUTgwmnhGZG3+B8bS/GxCZA3jTWu9pcTzJQXaxz/r8pzYu1U
         ia4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZbocYYAT3Bv95I3T0qjmMa3P6s7bL467iC3FMXh3uYY=;
        b=uGQ41TKXVKbTyaXUwjrMIR+29VVgv1iwR14c5ARIy8e/owgqIJ94imm8YH3p/lzfqA
         oj2lZ27K60UuwBpZLH4WCWsB6qdyuDPfaO27i0wsgK4mNsbb+YV+zjKKfxi2HM+DO1z/
         xxTN7aLdrKEfdRvoicCl2ZQktVuFhnYJ5v84YevcEp7Yg/y0iJSytJSq2ynRkvQTh5Xx
         isYJkVIbOxK2b7tNjurUS2iBsfjn2r2gUEs7SZUqjA3nW9YyC+WNVIPscTGyG2YFRuGd
         mgbazmRIYDqxoDkfze8tWkicLslEgIYnE9bhILGTMAxk/xg64efXGTaAGc48VOxR95Xa
         ewMg==
X-Gm-Message-State: AOAM531BoaXQHL3Rmf6VFIDj4iWz/AfveGNemBFdSAwCX5HPRQ9OQsbu
        WqqpBFbN4LtKegRwIB9UmU7agQ==
X-Google-Smtp-Source: ABdhPJxVhiXjcD2NUcgK1N9wks3hqpRTdLC5VtX218bO9z9ugvbEt3IXSaWUpQaM0ZQkfufGBkaWpw==
X-Received: by 2002:adf:f789:: with SMTP id q9mr5018181wrp.367.1631711702873;
        Wed, 15 Sep 2021 06:15:02 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id m29sm14501717wrb.89.2021.09.15.06.15.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Sep 2021 06:15:02 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v6 17/22] ASoC: qdsp6: audioreach: add Kconfig and Makefile
Date:   Wed, 15 Sep 2021 14:13:28 +0100
Message-Id: <20210915131333.19047-18-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210915131333.19047-1-srinivas.kandagatla@linaro.org>
References: <20210915131333.19047-1-srinivas.kandagatla@linaro.org>
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

