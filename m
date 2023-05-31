Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70640718595
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 17:05:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234012AbjEaPFR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 11:05:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234045AbjEaPEv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 11:04:51 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87D4018B
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 08:04:31 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-4f3a611b3ddso1360180e87.0
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 08:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685545470; x=1688137470;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fiTMvGB8HErpiqe2o3ZU7CnLtvKjGdeRLZBnEjNhU7o=;
        b=StJdu96j3/XNZxyg5eBVgEwqSXS3Wcz5Htr4jlMkhFev0kefaGT1sW9G/idRzUfXrl
         FfUyZmwXdhJ8cMFV51tw+1DLqVaTSsFCOVcFeaawAnqnj1Z4x0N6rkFwkzXk7Iz5Ik2c
         fmt3ZtbHA4AjUKJnTYHZAPT17ZgWSvur3RvKwMtnAcgRC1LLKpyk04Bi61PxFf9RtJYN
         BryPn6eU3JJqegSD3UwtJnuVGL6T4BavSY9SwThYZ5ZRplaWSn2FiI4/vr3QD3McL8me
         De+gLF8EgZdrxzFNxCvdjQqBT3CXkp12YV+OPwmqTzy0odkBO87ysld+h9ycF3UtqEB7
         ZsoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685545470; x=1688137470;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fiTMvGB8HErpiqe2o3ZU7CnLtvKjGdeRLZBnEjNhU7o=;
        b=PStzpZzzDtWbGSY6jTAc8G54PqfD112ERp+D9VXtH4Bp7s9I3w8b+q4byN3lVEvAqO
         2QcTmFgbS4wdjECIU+OB6TSJtLXH7YSvwCGfx16KkNIBXpz1AwRQCLgebPvj18JY2CGI
         +lxiq+kOsrnFAZC1PGJqdOpd9xXAKqmfufpD3D+Mv/BNKwEGiR8cKb7gAl02Zc4X8mzS
         zpmVarZU7q8OQi4QkxUxAVr2I9j48le/6//QXR2W93oe0H8GQeFg+w/tAlJsDzQcUI1K
         UYsC2fA4v6VkWJ5luvtKkseIML8q0IPLm+qMg+OAgDLyC33kqZ5bvXC5uO6LTvbgAG9G
         eRFg==
X-Gm-Message-State: AC+VfDykOUCdf8QIoy09HLv9qAdUG32JgwBnrFuRLcws0MY1BgIQLdvq
        HNREZuamVh2HXkQlze71lXeUDg==
X-Google-Smtp-Source: ACHHUZ6B0Iz7krBLd1B0iaQcomiMQZShU8ZA7yaAYGwJq+fvY+WGLaS3B9f+Lo8eqHcE3APS+kiy8A==
X-Received: by 2002:a05:6512:10cc:b0:4f2:47ea:2f32 with SMTP id k12-20020a05651210cc00b004f247ea2f32mr4506235lfg.23.1685545469755;
        Wed, 31 May 2023 08:04:29 -0700 (PDT)
Received: from [192.168.1.101] (abyj77.neoplus.adsl.tpnet.pl. [83.9.29.77])
        by smtp.gmail.com with ESMTPSA id v25-20020a197419000000b004f019d3eab4sm756325lfe.23.2023.05.31.08.04.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 May 2023 08:04:29 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH 0/2] SM6375 GPU SMMU
Date:   Wed, 31 May 2023 17:04:22 +0200
Message-Id: <20230531-topic-sm6375_gpusmmu-v1-0-860943894c71@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPZhd2QC/x2NWwrCMBAAr1L220AeVNGriEg2ru1Ck4ZsI0Lp3
 V38nIFhdhBqTAK3YYdGHxZei4I7DZDmWCYy/FIGb32wY3BmWysnI/kcLuNzql1y7gavMaH1Hp1
 PoClGIYMtljRrXPqyqKyN3vz9v+6P4/gBEI3PzXsAAAA=
To:     Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1685545468; l=857;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=ihuIa5z+sCVM/dPT9nv97DWtZT8WnTtyU4Ykbs/OYTw=;
 b=PR8mQCQ3IisTHZqcXsO0nduFHV4WKooTGDBvnygFx/9tqu4rsSueE4EnwfTMbC8lDonGIaWYx
 26Ppu7f4ytKDLRNQok9991Qykuu3/yy2VstUym3W1z5MzPVCGX6MEBj
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,SUBJ_ALL_CAPS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series hooks up the GPU SMMU, as well as GPUCC as its direct
dependency.

The thing sadly can't seem to be able to do PPPT, not even on downstream..

Depends on (bindings and functionality-wise):
https://lore.kernel.org/linux-arm-msm/20230529-topic-sm6375gpuccpd-v1-0-8d57c41a6066@linaro.org/

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Konrad Dybcio (2):
      dt-bindings: arm-smmu: Add SM6375 GPU SMMU
      arm64: dts: qcom: sm6375: Add GPUCC and Adreno SMMU

 .../devicetree/bindings/iommu/arm,smmu.yaml        |  2 ++
 arch/arm64/boot/dts/qcom/sm6375.dtsi               | 37 ++++++++++++++++++++++
 2 files changed, 39 insertions(+)
---
base-commit: d4cee89031c80066ec461bb77b5e13a4f37d5fd2
change-id: 20230531-topic-sm6375_gpusmmu-b9acb022b12c

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>

