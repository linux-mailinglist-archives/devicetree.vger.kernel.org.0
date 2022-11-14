Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B270A62867B
	for <lists+devicetree@lfdr.de>; Mon, 14 Nov 2022 18:06:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238099AbiKNRGk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 12:06:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238089AbiKNRGj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 12:06:39 -0500
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45A7A2D1D1
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 09:06:38 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id l8so14029129ljh.13
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 09:06:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=g6guTtDkA1ReGKdqMu1CmE/t+c1qdwq/DIe8B70Maw4=;
        b=lXt9G05aMbjIX8SyJJmKxQQbhZbT47qR3PDriRUC/rwgstPI+MLj2IFqwqUnpZ5tU3
         ayjVTb6PpWhS+A2bV67A6/YDG2ql+DBZdtCwwlg62vZCFRODHCAhjZhgjgpGa98zlYua
         pL4KZFtycsD2vkES+aMG8bJdCT7dTW0auwFq82bVlk19ckcJuRjI6UU/glPoHnmz6cxY
         NfXglJ+Do9C4CJB0/BTKUhGIexhuMIfUFhFq03SoKV+AvchXxYvb9NdZmYk9WJ0sWRtW
         7OugrtBlrqzWa9ZLPsxTLLo2jyE5UOP05RpTJR8nfJQYf/Qe6TAG+tddDgln383CNe5N
         7GIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g6guTtDkA1ReGKdqMu1CmE/t+c1qdwq/DIe8B70Maw4=;
        b=wW9/JpbZcXYvMoUswhYQz0NFt3p+y1SUyz9XNe1Eakqxn4Nod6f/KVLiGOqLCIaor9
         alm0+IpD8wPaPMa4FXE56wJyNkc3Do12LIOifJ/sLT/wYBOrlmhEiH4OXpvT+lxydCXA
         X2rU5dBgtmUkXPuMdYxwBZM8KlQvJxJkGGL2gQr3r3ZSKGdF7Zcv2hdBPuN48qjRoy3c
         TfMebcDST03330UYX7wJMFl2jls9gDjh7xl5ceO6zb6eEyl5eKej22AEqkrlAEXIUlMR
         DTAntZUwaX1MAmxuRrs0VDAqb8zXZS3np3GL4ne2dQ5KmXrdYeiBYiihKJdFub7OY5Tp
         Jh/w==
X-Gm-Message-State: ANoB5pkRIWBTn1dfc9BhG34dCVGz1rEOw+7whRnsAhKWSRggy30rg+8A
        qgYWjFOAcjtBC5WYPCRgMLKhJvpnvExlsw==
X-Google-Smtp-Source: AA0mqf7mzNaaz3n1mkr6Lj1F4uek+u1lXPv2BxwOoadDwOtOhQ+ybNFAsCQDUPJniHl3xDGMrg1xYw==
X-Received: by 2002:a05:651c:194a:b0:277:9e5:6cc9 with SMTP id bs10-20020a05651c194a00b0027709e56cc9mr4916409ljb.165.1668445596544;
        Mon, 14 Nov 2022 09:06:36 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id q7-20020a056512210700b004a2ae643b99sm1896344lfr.170.2022.11.14.09.06.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Nov 2022 09:06:36 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, freedreno@lists.freedesktop.org
Subject: [PATCH v1 00/10] iommu/arm-smmu-qcom: Rework Qualcomm SMMU bindings and implementation
Date:   Mon, 14 Nov 2022 20:06:25 +0300
Message-Id: <20221114170635.1406534-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
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

The main goal of this patchset is to define a generic qcom,smmu-500
binding to be used by newer Qualcomm platforms instead of defining each
and every SoC line with no actual differences between the compats.

While preparing this change it was required to cleanup the existing
bindings and to rework the way the arm-smmu-qcom implementation handles
binding to IOMMU devices.

Changes since RFC v2:
 - Dropped the dts patch, picked up by Bjorn
 - Fixed minor nits in commit messages and in-file comments (noted by
   Krzysztof and Richard Acayan)

Changes since RFC v1:
 - Added the dts patch fixing order of clocks in msm8996.dtsi
 - Fixed the DT bot errors
 - Added separate clause for Google Cheza devices

Dmitry Baryshkov (10):
  dt-bindings: arm-smmu: Add missing Qualcomm SMMU compatibles
  dt-bindings: arm-smmu: fix clocks/clock-names schema
  dt-bindings: arm-smmu: add special case for Google Cheza platform
  dt-bindings: arm-smmu: Add generic qcom,smmu-500 bindings
  iommu/arm-smmu-qcom: Move implementation data into match data
  iommu/arm-smmu-qcom: Move the qcom,adreno-smmu check into
    qcom_smmu_create
  iommu/arm-smmu-qcom: provide separate implementation for
    SDM845-smmu-500
  iommu/arm-smmu-qcom: Merge table from arm-smmu-qcom-debug into match
    data
  iommu/arm-smmu-qcom: Stop using mmu500 reset for v2 MMUs
  iommu/arm-smmu-qcom: Add generic qcom,smmu-500 match entry

 .../devicetree/bindings/iommu/arm,smmu.yaml   | 173 +++++++++++++++++-
 .../iommu/arm/arm-smmu/arm-smmu-qcom-debug.c  |  91 ---------
 drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c    | 163 ++++++++++++-----
 drivers/iommu/arm/arm-smmu/arm-smmu-qcom.h    |  21 ++-
 4 files changed, 298 insertions(+), 150 deletions(-)

-- 
2.35.1

