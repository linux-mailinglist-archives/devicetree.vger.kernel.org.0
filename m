Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3983C6196DB
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 14:03:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231404AbiKDNDj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 09:03:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231515AbiKDNDh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 09:03:37 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A1F92E6A3
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 06:03:36 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id l8so6220475ljh.13
        for <devicetree@vger.kernel.org>; Fri, 04 Nov 2022 06:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FT1odVkd0+mwnt+QsL5l37LgpGJDAlm2HVp98pN54hU=;
        b=DySfT25fp+Vb1z+CtX7Gj5SjqpTUhHszdt0EB1kOqG5i1UYzthwbcm4UEFIu+SAg46
         8HgwpVgmlga3DlMNegvthhs0rUNOb8kco4bgi8Ijtiyp17B9i0GsPWrj4OCb4ItiA8Ma
         5XTzE642K8ebhq6pI1UlY4aWkAJ0kyUZJYaDIidUfWqqlScrRCrALxSuzuwo+Gcttu/r
         JdpBX80eDGyWVDyOI7nqHRj2n0KzcqgiO3KtQjkXe/+duhvWLe+Ad0TxilmDKUtjnlFr
         dMXYZMOmYVSSVwmyqLuR69I7MpA9ThSer8/iJZ0uoOvuzLkUQFGoKsAON27o0zKH+zT0
         Vf7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FT1odVkd0+mwnt+QsL5l37LgpGJDAlm2HVp98pN54hU=;
        b=k8Rg4m+Gxu8KZy6EjK89B8p6wUvJrutdyRFAG639RJJzvCawtZpAjBbWgcFkdN0FFq
         vm6/zqDVnr9FSE6/3pJ3pXRhH7zliyPTGh+CEZNB5c1HLPynKQCdfY5M0CKcVHdAkXBn
         kYxTWcm17cNedG4ZBcwrhHmSVm6Qc3PV5T0l37miJD9ZZRp6jp+YaeZq2vT4T/2fyLX4
         S/2ejTVukAatcEbinutfifartEcKeDoc8057/3DzyC+J3Nh/Z6FagSo/vAzhcjua9Vw8
         SIDLGuMj9tdsNrYkqgr/tDVcNdeUj68f7NMVcDyUoHAEwcAQwCCWs77a97BmBI7+MPwy
         WLZg==
X-Gm-Message-State: ACrzQf14IC4wPCL7Xe6MRb8TEx1CVuSeLy/NF2Is4sAAdUPKJrCzQW6+
        UVlBAQJeOy1UKOeaIm8cpGr8Sg==
X-Google-Smtp-Source: AMsMyM7Bl2YV9pxXIkD5j+z8yOwk7mGML1yHuS5s7xAJ3KAlq+hyHtsU2l9cYiDkiHefL1saqCVe6A==
X-Received: by 2002:a2e:9116:0:b0:277:41d:6c1e with SMTP id m22-20020a2e9116000000b00277041d6c1emr1979066ljg.330.1667567014718;
        Fri, 04 Nov 2022 06:03:34 -0700 (PDT)
Received: from localhost.localdomain ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id s6-20020a2eb626000000b0026fe0a052c5sm419975ljn.129.2022.11.04.06.03.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Nov 2022 06:03:34 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, Vinod Koul <vkoul@kernel.org>
Subject: [PATCH v3 6/8] drm/msm/dpu: add support for MDP_TOP blackhole
Date:   Fri,  4 Nov 2022 16:03:22 +0300
Message-Id: <20221104130324.1024242-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221104130324.1024242-1-dmitry.baryshkov@linaro.org>
References: <20221104130324.1024242-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On sm8450 a register block was removed from MDP TOP. Accessing it during
snapshotting results in NoC errors / immediate reboot. Skip accessing
these registers during snapshot.

Tested-by: Vinod Koul <vkoul@kernel.org>
Reviewed-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h |  1 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c        | 11 +++++++++--
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h
index 38aa38ab1568..4730f8268f2a 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h
@@ -92,6 +92,7 @@ enum {
 	DPU_MDP_UBWC_1_0,
 	DPU_MDP_UBWC_1_5,
 	DPU_MDP_AUDIO_SELECT,
+	DPU_MDP_PERIPH_0_REMOVED,
 	DPU_MDP_MAX
 };
 
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
index f3660cd14f4f..95d8765c1c53 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
@@ -927,8 +927,15 @@ static void dpu_kms_mdp_snapshot(struct msm_disp_state *disp_state, struct msm_k
 		msm_disp_snapshot_add_block(disp_state, cat->wb[i].len,
 				dpu_kms->mmio + cat->wb[i].base, "wb_%d", i);
 
-	msm_disp_snapshot_add_block(disp_state, cat->mdp[0].len,
-			dpu_kms->mmio + cat->mdp[0].base, "top");
+	if (dpu_kms->hw_mdp->caps->features & BIT(DPU_MDP_PERIPH_0_REMOVED)) {
+		msm_disp_snapshot_add_block(disp_state, 0x380,
+				dpu_kms->mmio + cat->mdp[0].base, "top");
+		msm_disp_snapshot_add_block(disp_state, cat->mdp[0].len - 0x3a8,
+				dpu_kms->mmio + cat->mdp[0].base + 0x3a8, "top_2");
+	} else {
+		msm_disp_snapshot_add_block(disp_state, cat->mdp[0].len,
+				dpu_kms->mmio + cat->mdp[0].base, "top");
+	}
 
 	pm_runtime_put_sync(&dpu_kms->pdev->dev);
 }
-- 
2.35.1

