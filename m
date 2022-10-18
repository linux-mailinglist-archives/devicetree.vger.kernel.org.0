Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BEA0060203A
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 03:11:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229603AbiJRBL2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 21:11:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231372AbiJRBLH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 21:11:07 -0400
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com [IPv6:2607:f8b0:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2ACF1705E
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 18:11:04 -0700 (PDT)
Received: by mail-il1-x131.google.com with SMTP id u2so6754333ilv.6
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 18:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lUGmLAO+UyEHxzHYsfZWHoOtdpAGmxoVd+nS8TzFDs8=;
        b=qiCS1CYVNm2hhnp0GB1inFD/WgFm91+6EQ/i2Q6MEqZ2w4Hf7VZc7QgYL/OsHtH6g+
         eX4vgHBLBMhCP0btXHSSOWsPQ0+HEyP88/M3R8sfToGKM+os0iAI+DFnUCggCyrr33pD
         khZhonkn8A0m+4UUGUOlTzZkd3WzPMk70Yvqsh3H2RggatREM7lu7z1xxEC49f35M+vL
         zM08xOUgi75DAXdGlhVr3SEm/K0q7z/7gHCcNRsSjKfpIOZJ1akPVp6PhjeISYLU8Mkp
         n9x9P53hi0Y+6xGHa0S5ryLoDkCC9a634nqkrePHmQeKXQtO8mSxdWohECc6DGmRNY/K
         kbOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lUGmLAO+UyEHxzHYsfZWHoOtdpAGmxoVd+nS8TzFDs8=;
        b=vVSiNxS4MoSh7fTL03uDCe0ONZnw+JOq5PlUjKjNBSjrLhyRsG7BnysmZiHsyqWjTA
         T9N9zRwwvXejuUI1JT59K669PpwHwU97rtEtMwgOKuAr6ssrQ2iHO0kGkyXQeunGcMLC
         trO2HNS09w1gDQuQw+/hAw2/0pOKQXQ+Le6ozHc9FdipyCbCrpnBCaPqni59fLmhPGHd
         RECxPS42LofMwg39xAcsXz4lo/Z1jwBYjYvHCxuZPs5Q2tJ6Cg77QR6XUZ7U0pMNZ58D
         lWFCXqFq+Wpqgn8A+iFtChWdz5TptO+IMHnyIhaP/LNxxr64gdE59CcT9kPutKb3WNTN
         Bm2Q==
X-Gm-Message-State: ACrzQf08uVR9X0t3SU+gx/Owv3sRjqfwyxXFSwaqvb/BN/twsJIILdJX
        dVuzJgR7QbdOiPkhF0sk2NY=
X-Google-Smtp-Source: AMsMyM6IB6dhw+gIryWO6kHLBntXwikUmUVZu9vEkx3nSgFpNYvp6/Q+aN+jppnMktaHfdUcrF4txQ==
X-Received: by 2002:a05:6e02:1c02:b0:2fa:1594:b7aa with SMTP id l2-20020a056e021c0200b002fa1594b7aamr528586ilh.263.1666055464387;
        Mon, 17 Oct 2022 18:11:04 -0700 (PDT)
Received: from localhost ([2607:fea8:a2e2:2d00::4a89])
        by smtp.gmail.com with UTF8SMTPSA id g19-20020a05660203d300b0069e1bcbddaesm499939iov.16.2022.10.17.18.11.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Oct 2022 18:11:03 -0700 (PDT)
From:   Richard Acayan <mailingradian@gmail.com>
To:     iommu@lists.linux.dev
Cc:     Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Richard Acayan <mailingradian@gmail.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Clark <robdclark@chromium.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [RESEND PATCH v2 0/2] iommu: SMMU for SDM670
Date:   Mon, 17 Oct 2022 21:10:46 -0400
Message-Id: <20221018011048.25371-1-mailingradian@gmail.com>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Changes since v1 (no emails related to this series since last week):
 - accumulate tags (both were added because it seems like the discussion
   ended in agreement to keep adding compatible strings to the driver)

This adds the compatible string for the Qualcomm Snapdragon 670's SMMU. The
SMMU is necessary for GENI I2C, included in initial bringup because it
doesn't need non-trivial patches except for patches conventionally added
before the initial device tree (global clock controller and pinctrl).

Richard Acayan (2):
  dt-bindings: iommu: arm-smmu: add sdm670 compatible
  iommu: arm-smmu-qcom: add sdm670 compatible

 Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 1 +
 drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c            | 1 +
 2 files changed, 2 insertions(+)

-- 
2.38.0

