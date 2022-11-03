Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D097618CC3
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 00:26:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230209AbiKCX0z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 19:26:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229882AbiKCX0w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 19:26:52 -0400
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com [IPv6:2607:f8b0:4864:20::d35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E917A1E2
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 16:26:51 -0700 (PDT)
Received: by mail-io1-xd35.google.com with SMTP id 11so2686563iou.0
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 16:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=j2MxtLOgKpYqADcHi0Ms5rAnV0GYIWE9u/0gNL7Fhik=;
        b=OpbNUsypFM1RninV6RLllkyCftJbdR1wOFxqN4+JBJvIY5EFbqE+/YL483TAJbiJPE
         rrwdh0dallEp5pyTTKD+0C8FIxdCYbEPQi65kNj7NuLLTs9wlkPYq3qHQ9qaUJ16Y/Rp
         6w2JBrPclqEBVI/kPCA8Q2oe0g6F/tol3P1G0bGpXDi1BbKajobrCk6WWD2sbsHzqVml
         4zRc7CLoWFt0Y+MuckUMwMrfbHx3uMPkk04inlj0Jy2/yMu8WrzIvk9VvnJCqhnRBjiB
         xlbOomyVFQ0vCkDpZxTehaKdwkfau5D/tk+fcLYHRFFIty4ONDBe94+TLDSilQQgCv3D
         YOHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j2MxtLOgKpYqADcHi0Ms5rAnV0GYIWE9u/0gNL7Fhik=;
        b=Ra3PUqdGA4B8oZiUkvBQ+C1+X2PmzDiZnPJVBfbGBbOWsF1vFLsGQ0V9NhUHt27uDV
         SalOgEJxoTFQu9T4w29ho178I79+qzyTQKF2Kh2wORtHS7hwn94Z8tmzI1jafwcPW2Tu
         HDVYJe5JMDHBIUPI4X1KnGntTAOvEWqDjYLq5m+T+jYWJ2Ie49CYRSX2Z5TNIHl31HYT
         bVz6NbB+paBbtoDXqxVKw1p14JCVgnAMENFl4BaoBOtPjI63K3z8ZdzetbDP5cFl7ISh
         uEuTDcjbBIe3unZmmcmHDZzj40fTQxUKSszW8qZRLTGvZKekHmvBFfwsrK90IC7h95KI
         2Tnw==
X-Gm-Message-State: ACrzQf2zN+pPqIOBVOx2dmr/DelTWPh69+oKorOw35tu86urF3Zjh9mh
        6Tf/DF3fUNkAyzU/8m/XvUM=
X-Google-Smtp-Source: AMsMyM7onJtADF2TVejUtu5zJXSlEYzCF9cQnLipsTcL/WhqsMRyzA4AAxmCP58Bzxiny24H+6JVWg==
X-Received: by 2002:a05:6602:134f:b0:6a4:cd04:7842 with SMTP id i15-20020a056602134f00b006a4cd047842mr21063075iov.172.1667518011328;
        Thu, 03 Nov 2022 16:26:51 -0700 (PDT)
Received: from localhost ([2607:fea8:a2e2:2d00:f1f0:c4d7:e39e:e2f])
        by smtp.gmail.com with ESMTPSA id n4-20020a027144000000b003752e5b3c23sm654334jaf.20.2022.11.03.16.26.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Nov 2022 16:26:50 -0700 (PDT)
From:   Richard Acayan <mailingradian@gmail.com>
To:     Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Vinod Koul <vkoul@kernel.org>, Emma Anholt <emma@anholt.net>,
        Rob Clark <robdclark@chromium.org>,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org
Cc:     Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v3 0/2] iommu: SMMU for SDM670
Date:   Thu,  3 Nov 2022 19:26:30 -0400
Message-Id: <20221103232632.217324-1-mailingradian@gmail.com>
X-Mailer: git-send-email 2.38.1
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

Changes since v2:
 - rewrite driver patch (2/2)
 - rebase on (1/2):
   https://lore.kernel.org/linux-iommu/20221102184420.534094-1-dmitry.baryshkov@linaro.org/
 - reset review process (1-2/2)

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
 drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c            | 8 ++++++++
 2 files changed, 9 insertions(+)

-- 
2.38.1

