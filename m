Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A78E743B0F4
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 13:17:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235458AbhJZLTv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 07:19:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235469AbhJZLTu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 07:19:50 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 992DBC061745
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 04:17:26 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 82-20020a1c0055000000b0032ccc3ad5c1so765609wma.2
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 04:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4VxZXnKS9YtNHxd0gj3h59SMAN46hPXrE6hl+KuwiZE=;
        b=EvJuBKvT2o9vy3vGWv+zsps7B+OKCAmCFVaA/wa/6VBQxs00eETwt0nLqqAoMmTbg1
         kjBpijGbyavDO3ers9SE8SUTaFltyFx6HRNlwPgGUvE+3XNROnI1CKH2PT/NwZGNc/w1
         NsJ4Spb0AwCv7xhV1yJCHbvYMcFqwIV6z4QRlsH1L6nnvrGXbXmN5ZvtCq8jskK/SekW
         KeS/QaleLQZn+V5+4jrJYiBQc/EJWTh+WChAlWuXPC45Y/P0dB9D29ff+2L8Lui4S7U8
         J1b1e0/MCwRXiSP3Txw/83tzA4CL2y/iqDwD66WKKhUIN6h6mlmoWl0fBI9Wa7aiBUOp
         XGAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4VxZXnKS9YtNHxd0gj3h59SMAN46hPXrE6hl+KuwiZE=;
        b=tSjGQhknyduC24skx/K3iij4kffogr1IsVHfoMnRQus2C5VbwvN9Ly8DppOYVVKSRB
         dpAC2KpJ+S/szlHi+JrJlN4CbMcU+1KfcRHi1yt7DGWIe2HXHuslE4YJaERmHcOXvQVp
         vuQM3yRI8qOK9lPWcnzHzgzbmdruHL4fS3l8+drilB2w5wbMtWo6F63YOJCtOo7hIlS+
         Uqqa0Llezamh7AyxuYsuYlwY8sWksAbe0bslSbAV7oPbo6RRhODi2CuAEQiX9KjN7zms
         k2QrXGrzIQycOcyNidaG62nFNxV/JhJrCkX/E0e2111oY+C41qP1wxhw+QlnjKOOEh36
         8gdQ==
X-Gm-Message-State: AOAM5329IqArvp3mrkcLzQeWQNbgibGwH5qrLHqHnAmMJdLv4yTWBeip
        mWCOw+SY9QM8DhZx2b8AxtTLdxRHp7+acw==
X-Google-Smtp-Source: ABdhPJxC5TZkwmleMND8WnXE7E92XE9Zwb9ksYOaRNKAmy7SkXRITJU5raZY0oBzVXhjwUNg7M2YGQ==
X-Received: by 2002:a05:600c:a0b:: with SMTP id z11mr58572168wmp.147.1635247045270;
        Tue, 26 Oct 2021 04:17:25 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id l124sm355483wml.8.2021.10.26.04.17.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Oct 2021 04:17:24 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, bjorn.andersson@linaro.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v11 12/17] ASoC: qdsp6: audioreach: add Kconfig and Makefile
Date:   Tue, 26 Oct 2021 12:16:50 +0100
Message-Id: <20211026111655.1702-13-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20211026111655.1702-1-srinivas.kandagatla@linaro.org>
References: <20211026111655.1702-1-srinivas.kandagatla@linaro.org>
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

