Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F78F616CC4
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 19:44:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231479AbiKBSo3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 14:44:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231494AbiKBSo1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 14:44:27 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D9462D1D3
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 11:44:26 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id p8so29607612lfu.11
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 11:44:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m9IFAoIiE6zk/68PG4L50nqjshUlH8V6wR65bpY1Vak=;
        b=yn/vfHE6LozuJmD95+HrWoH82ZlB0zLDoaY4bc4O2qtmL9V2/xY8NRF3Jeb9iDtN0v
         bVVa7tfENlg6q3FEb49B86k9ykRduXKY+gtj9DbpoHY8SzqUTxFfAom5RqUMSQqNxMFx
         mxd6dfEwVYEYq4yYNh61eFuHvx8zUEpV+OlWp/9zoWYwe/ONtca9c0vwGT+H+SzJs5ak
         yR4BekvoCsZNPeszYxengsxi3k0sZyExV+gL0NiMo/u1FisyfAceJa3CYObOX03KsC8f
         Q6xl7sOdMLWj8I5+qs+q14IQP8kFJWI5YniMTrT9OkAlzEBsYUE5xdX45UmFVXrzofEu
         tGPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m9IFAoIiE6zk/68PG4L50nqjshUlH8V6wR65bpY1Vak=;
        b=pQfHti9Wd7nxBrNPzObqnklQJTfdWeytukI/5HCbvjmd6E8r7uf1/8kBXdfWQFdxdH
         B1dfnq6Id2wqlevaPQJI3txkQXA+GiIhfCrSPMDgFyRVNtCJI3bI9aU8hiCuX4ljo3pJ
         QTsP7hd6s6SNugsYiTnjADLCbcEt7vc6eSN3sTgL7qLRz+N8XDZjn8jaj/SXWeS25Lx+
         uaUpPDLv8auJ8+4OunnnsTNinym6n4db6aIhyMBR5y1bAuogd+Ovcl68x30xrzITlRFd
         IPhn2R8f+JJTHBBdWhKbmeos7AabPqOHFIkVUc8QZP7dd0qciKE83OjZJ7e57Wnv/US4
         g8gw==
X-Gm-Message-State: ACrzQf2l0YyhLLTGZW7qZzOj5crVQF/jY7hADjk97puzqYA76tvVVaPC
        IHjlM76Ptq/frHP8qoXhGYyXlA==
X-Google-Smtp-Source: AMsMyM4yJnkpdkDouKkNsFT3wdHhrbQSpdR2Dk71mqLLaRPuqYXDy19etdJWvMoHbhsWFCKlUNnNaA==
X-Received: by 2002:a05:6512:ac8:b0:4a2:61e7:7963 with SMTP id n8-20020a0565120ac800b004a261e77963mr9685893lfu.363.1667414664824;
        Wed, 02 Nov 2022 11:44:24 -0700 (PDT)
Received: from eriador.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id t8-20020a05651c204800b00277092c03e7sm2277540ljo.33.2022.11.02.11.44.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 11:44:24 -0700 (PDT)
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
Subject: [RFC PATCH v2 04/11] dt-bindings: arm-smmu: add special case for Google Cheza platform
Date:   Wed,  2 Nov 2022 21:44:13 +0300
Message-Id: <20221102184420.534094-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221102184420.534094-1-dmitry.baryshkov@linaro.org>
References: <20221102184420.534094-1-dmitry.baryshkov@linaro.org>
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

Cheza fw does not properly program the GPU aperture to allow the
GPU to update the SMMU pagetables for context switches. The board file
works around this by dropping the "qcom,adreno-smmu" compat string.
Add this usecase to arm,smmu.yaml schema.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index abcb1ee4b58f..f44572cbb071 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -66,6 +66,10 @@ properties:
               - qcom,sdm845-smmu-v2
           - const: qcom,adreno-smmu
           - const: qcom,smmu-v2
+      - description: Qcom Adreno GPUs on Google Cheza platform
+        items:
+          - const: qcom,sdm845-smmu-v2
+          - const: qcom,smmu-v2
       - description: Marvell SoCs implementing "arm,mmu-500"
         items:
           - const: marvell,ap806-smmu-500
-- 
2.35.1

