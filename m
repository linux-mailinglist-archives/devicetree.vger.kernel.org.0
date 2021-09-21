Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D9F9B413473
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 15:39:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233147AbhIUNkh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 09:40:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233142AbhIUNkg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Sep 2021 09:40:36 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 242CFC061574
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 06:39:08 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id co2so28034587edb.8
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 06:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZbocYYAT3Bv95I3T0qjmMa3P6s7bL467iC3FMXh3uYY=;
        b=ILXEIm+KrfglysXOb1TqJtXNsNT5TVIFiLikFLJP9SrbeP56zoVxnAgPeeh3j2yec/
         7hQ4WmdrZKFi2CaYBUamwFmjVA5wafqaj8Q9zqTEpxq0N5Hp8mtDhNhzSCc9G+C6IEKK
         Y1/JXJwCFTx0H05i39TTUImTnc1MUigme0tW3HiNB0vNkZsHLe212GNXbOk+9gPYIs2U
         XhsFHNfb8wxeNg1sEadZTC9zn9WuLPx21YHYM03RXW+hTzuB9E6tF+9ab2c09U/VAoFH
         CYsqAFiAfAozU71LVDegOsgdSWFxyWvPo/527tgZ0bQYf2YmrIdqlCP8K9TcMO7qPs8g
         BoTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZbocYYAT3Bv95I3T0qjmMa3P6s7bL467iC3FMXh3uYY=;
        b=h70tq22RWzvhv55uIvv7TmPQHHAld9u6wAlHn2bz2ZtYnd+Qbkp0xU7hWmle+MAK7F
         +OOSqm1OEpK1mclO3Q5joEgXdQwOu5S6FvOhWqIwIWDZSEYp42Rzw2Eu2W9AbK6hyDNY
         931HadseeIOrpXs2HtEDjtuwHqTdEg/00UpwHkJLVSAg4QrMEP51fpwWhACwZW6GixxX
         P7nFrCNh7bgv+GCudzxBXhfpWm0NZlW9lWa/UDvozfYFQWTta3Yqil3O742KESIK+45U
         Efd+nze0vdW15ePqeYKDUfXiHq8ElvWy4+fU44BnlTbA0FxcaIhhebllYmPvXLwuEVez
         9q5g==
X-Gm-Message-State: AOAM530KEkMYK9HSDpFPcWdaB+n5KYTlQWss4+VzjlsI6G6iajf4rS7V
        5fZEMlHauGscrTiTa8vKWZsGfA==
X-Google-Smtp-Source: ABdhPJx3d9E2uufVxn9gHvDuUHlA2POxPxAM0cN8i8evynQurD59C4qGgX0pWLDpIIihjPUJOfO2zA==
X-Received: by 2002:a50:be8f:: with SMTP id b15mr36069466edk.200.1632231469870;
        Tue, 21 Sep 2021 06:37:49 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id b3sm7915799edx.55.2021.09.21.06.37.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Sep 2021 06:37:49 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v7 17/22] ASoC: qdsp6: audioreach: add Kconfig and Makefile
Date:   Tue, 21 Sep 2021 14:37:04 +0100
Message-Id: <20210921133709.4973-18-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210921133709.4973-1-srinivas.kandagatla@linaro.org>
References: <20210921133709.4973-1-srinivas.kandagatla@linaro.org>
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

