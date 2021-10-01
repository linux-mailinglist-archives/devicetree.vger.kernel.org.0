Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E8CD341EEE4
	for <lists+devicetree@lfdr.de>; Fri,  1 Oct 2021 15:49:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231349AbhJANvk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Oct 2021 09:51:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231186AbhJANvk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Oct 2021 09:51:40 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFFF7C061775
        for <devicetree@vger.kernel.org>; Fri,  1 Oct 2021 06:49:55 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id g193-20020a1c20ca000000b0030d55f1d984so42193wmg.3
        for <devicetree@vger.kernel.org>; Fri, 01 Oct 2021 06:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=YIf6Rv5U5rLBxZR1wkJIP6+YB2q/3igVhhZVWCzzQAI=;
        b=q4iTyIqFrBdfhb6tROekXeq3O/9j+zeQdMJ9tfF2MjhpZYcmKKfXwcP93UdnV/+kaS
         VkcX2HF5gyRhsfJLc1nAOy6Ovlp7sYcj1vYPu+YQuqa5FiiUZZ4s6SaKCCPmfqSUq1LW
         SvpPsjB8pI118oAzLmB/Y0uUJQbxCM1DpdBUzqenOEjhHoGdkDaG4yXmyuhYZpq/2ZnE
         npZRgt5M1zZVOEWGGn1OHsSqwEfLwuwtvm5lPd1iBW4Gz7DZKzrFPVRQQu1M8ymugXjc
         Hjxzg0xqDrWYdbusTqHU9wMdHWPFqCl08eAt2SiCbieqgPoGXJrF+kjjmRkLnncX8Ynp
         dv7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=YIf6Rv5U5rLBxZR1wkJIP6+YB2q/3igVhhZVWCzzQAI=;
        b=faF4UcZ0UCxqcO+710ITkSJgry/S//iEIcPNLJXfJ5yvfxaHwh1f1QWKia8lW5B1wW
         gnQhy4RXCxUGD8/wp/QAZsQHdLYj6gdc3PSpLIpI9ppvLw0qHtaekUx3kza227aUz2VW
         XWQaqOej+ihbhxJlkW77aGXeh8F12F77vgOq5PxHGnV2a54ZCnvZF6i6n7jcGGWuMgzn
         S+RWR24ylvTu+ZV8lCLrg90HxfjoLDpOW/N1HyZ9m3xQXMHlCRwtTKljuhz4mpCNc7/u
         tnok8vhYa59D2SmOtRZUy/P3xC5ofNt5uTMn1MixD6lOjBKXa+YBbR6FTCHFXgeCEJT7
         dIQw==
X-Gm-Message-State: AOAM532kXXpUesnRTggtrDJE6H7FdWw0DT+THudWKIqSUoP8qlv0W32Z
        hZebUSOWqutC7vYZhXk4knPhaFrIRmgMweU5
X-Google-Smtp-Source: ABdhPJysr8rAAwvbm9P36j5GMkqhmzMtNZlkDoctNG9VDQUHLIzeDfKXIH/uVkiobQ0Q7C82vd5vOw==
X-Received: by 2002:a05:600c:35d0:: with SMTP id r16mr4570013wmq.26.1633096194289;
        Fri, 01 Oct 2021 06:49:54 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:82c:5f0:426:4b95:c465:7a47])
        by smtp.gmail.com with ESMTPSA id l11sm7471658wms.45.2021.10.01.06.49.53
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Oct 2021 06:49:53 -0700 (PDT)
From:   Loic Poulain <loic.poulain@linaro.org>
To:     will@kernel.org, robh+dt@kernel.org, joro@8bytes.org
Cc:     iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        shawn.guo@linaro.org, bjorn.andersson@linaro.org,
        robin.murphy@arm.com, Loic Poulain <loic.poulain@linaro.org>
Subject: [PATCH 1/2] iommu: arm-smmu-qcom: Add compatible for qcm2290
Date:   Fri,  1 Oct 2021 16:00:31 +0200
Message-Id: <1633096832-7762-1-git-send-email-loic.poulain@linaro.org>
X-Mailer: git-send-email 2.7.4
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: Loic Poulain <loic.poulain@linaro.org>
---
 drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
index 55690af..d105186 100644
--- a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
+++ b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
@@ -412,6 +412,7 @@ static const struct of_device_id __maybe_unused qcom_smmu_impl_of_match[] = {
 	{ .compatible = "qcom,sm8150-smmu-500" },
 	{ .compatible = "qcom,sm8250-smmu-500" },
 	{ .compatible = "qcom,sm8350-smmu-500" },
+	{ .compatible = "qcom,qcm2290-smmu-500" },
 	{ }
 };
 
-- 
2.7.4

