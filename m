Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA3D0423CFF
	for <lists+devicetree@lfdr.de>; Wed,  6 Oct 2021 13:40:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238270AbhJFLmO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Oct 2021 07:42:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230461AbhJFLmO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Oct 2021 07:42:14 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41AE4C061749
        for <devicetree@vger.kernel.org>; Wed,  6 Oct 2021 04:40:22 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id t8so8004459wri.1
        for <devicetree@vger.kernel.org>; Wed, 06 Oct 2021 04:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4VxZXnKS9YtNHxd0gj3h59SMAN46hPXrE6hl+KuwiZE=;
        b=vIvIxsF2pwQzBNuJKckY6tMHMFGkQ5DulGrCNkNqiMAnqULXFYzRJ+E9tkXfmtKd9Z
         hDCUv9vSXZJXj2TVCeZA0zP9FlX5PEP5QeyZTZS5q92QbVBCmik/Jqrt5gEcyfQ/xRHh
         HuHBVXdcBdVKauXUq1kqOcJ/dyOrWO17FOZeLrMqg3+vs0nVf5Ec0tkBj8N2xh0Xdg3Q
         6dXoVqFHMfMgDrqETQc6obFH0b/kLjBleMZnmKPG/wTN3N76o+kaFwNJjVlLAtMOFhOE
         05iN9K/weAr0OX08gAqgdvusOFjdTI/JqD/P0Q7Ce2aBlhgkV1kea3jFgF+8JZmUESzR
         yfJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4VxZXnKS9YtNHxd0gj3h59SMAN46hPXrE6hl+KuwiZE=;
        b=KGPrF7cVic9OUi5Qo4UbFHYcwhH2nqEgdgDkph9quGRNL4jE+7RvBp/X1MlVGwLyi2
         Wl9zdtT55v4Y/JUn7oYXztDFRE50j4T6P7qLem2RISSGHXOaB9b7HMTfFMwTTvhbiOuL
         S1+rz9wxcO+FicYDKUSMmbY5V0PRRELm4915F/Wsv6sWxsyfTjYfrRV6zbdJt/Nd3NFC
         VYVNBzoI5CYseqvMi6MLwJcsRiM15w8cHlGqYxEVZcgqJ7noebDwkSa2Z5NP9eS2VTAj
         LhiJ8f+ooxyyX46KtjTI3o3xMs4tHsBgvZvPZ1ZODpZ3lcorvEQmHpN4hYBwbCLHB8/D
         XNEQ==
X-Gm-Message-State: AOAM530sgOKwu7kzJXYie4vfcg6XqMVCUXoy4YA+hYAglS3LKU1UvogJ
        amjC2GhBboEae/IGwzKA+Fo4Gg==
X-Google-Smtp-Source: ABdhPJxDNW5At/6GgpVgHP7YFmWCnUdK8gdMMox46RpGnGldU7ZtxevnA/73jqsLFvoAvc35yqD/WA==
X-Received: by 2002:a05:600c:4f51:: with SMTP id m17mr9390021wmq.51.1633520420853;
        Wed, 06 Oct 2021 04:40:20 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id n11sm5540110wmq.19.2021.10.06.04.40.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Oct 2021 04:40:20 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, bjorn.andersson@linaro.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v9 12/17] ASoC: qdsp6: audioreach: add Kconfig and Makefile
Date:   Wed,  6 Oct 2021 12:39:45 +0100
Message-Id: <20211006113950.10782-13-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20211006113950.10782-1-srinivas.kandagatla@linaro.org>
References: <20211006113950.10782-1-srinivas.kandagatla@linaro.org>
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

