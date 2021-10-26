Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0366043B03E
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 12:38:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234550AbhJZKlO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 06:41:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233927AbhJZKlJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 06:41:09 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BE73C061348
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 03:38:45 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id u18so14964014wrg.5
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 03:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4VxZXnKS9YtNHxd0gj3h59SMAN46hPXrE6hl+KuwiZE=;
        b=ytAUZS2rRi8TI59g9qzGRiQ9UETFuIKKWl1+pq8NRUTW0PBskMSM502UzCWEHhJT0/
         ByWCV7It99BxCvYkU7ECP9fLEufTO4CGdyAwPY8bSx/KmT31RmaWo9uCanRLnlVG745P
         nfxQ4XGeySUuonzO6oLSmyP5pGPjjqJr6IVeqlKrUI4OQyyqTkdiYoKFSDjtvG8/voBm
         Wxrl/+Ejpizo55Z+rlUwxfF5rnGqsc7qU7juBrrSv279IuzZjuGQ2iUv9FiYwFFbJL2G
         V19xK74i/o1LvFZOG5P8CiPgUmNNDfKXzpnkJVcIk2zMfNCmP5K899/8Wu1vKfVv0OnD
         h8SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4VxZXnKS9YtNHxd0gj3h59SMAN46hPXrE6hl+KuwiZE=;
        b=k08DLy2Lt4ue9RMvtFpD32l6gd0PiDKWwOHXjLVoBwCx2K/pRYp1nVDhlTQHWVitqz
         Y9STIYqMcLWe9+c5lADmyiIk0sFLgzrVA/crrPTDt1AUjZ1sWQiBxQFUoiFwPlmxY1la
         Tw9KnG/Xi/EFFioPay4CR9HKwcZz2Rdlg7AKmguLI5df/XOFt7t2oeADivrjkhti1y4k
         +I+/2MR0fldn2aYIF11/zjozWw74/jVzbnwwVbOjMrAO4Zb9NxNk3elS4AR8fMBZ/Fk5
         B2BAKxmo7QwwCZ8NnDEQuIfsf9grOMsmXKlYJGLxNfhqaNB7FdqLq18a7tjTj8FUmKmy
         5ROA==
X-Gm-Message-State: AOAM5332xoiELIQ+t8EqNZnm0kp+uUFuxxwsnllQLNfpaVYswLPQdROv
        QchcghLmdyPVl8Dh4E1Rq2wPPA==
X-Google-Smtp-Source: ABdhPJwVY+XLnxnZn3sv5oy3fgNy0PzIq4VM2c9eDIoyL2/EFkpRE6LdjV9GJCCG5LeUls6QmDZMvg==
X-Received: by 2002:adf:e483:: with SMTP id i3mr22501743wrm.175.1635244723752;
        Tue, 26 Oct 2021 03:38:43 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id x21sm221397wmc.14.2021.10.26.03.38.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Oct 2021 03:38:43 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, bjorn.andersson@linaro.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [RESEND PATCH v10 12/17] ASoC: qdsp6: audioreach: add Kconfig and Makefile
Date:   Tue, 26 Oct 2021 11:38:10 +0100
Message-Id: <20211026103815.19468-13-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20211026103815.19468-1-srinivas.kandagatla@linaro.org>
References: <20211026103815.19468-1-srinivas.kandagatla@linaro.org>
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

