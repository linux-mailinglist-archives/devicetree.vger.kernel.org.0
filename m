Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 02F0E5F4C22
	for <lists+devicetree@lfdr.de>; Wed,  5 Oct 2022 00:46:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229683AbiJDWq0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Oct 2022 18:46:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229531AbiJDWqZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Oct 2022 18:46:25 -0400
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com [IPv6:2607:f8b0:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CC46501A5
        for <devicetree@vger.kernel.org>; Tue,  4 Oct 2022 15:46:25 -0700 (PDT)
Received: by mail-il1-x136.google.com with SMTP id 8so6243461ilj.4
        for <devicetree@vger.kernel.org>; Tue, 04 Oct 2022 15:46:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=lUGmLAO+UyEHxzHYsfZWHoOtdpAGmxoVd+nS8TzFDs8=;
        b=gJfmBcDplWY2FG/9+rfAMBZHoTO2kXKcaA5sPW9YwMR0SXbfNFLp4XQqQCoewAoUBr
         EP9cpMbshZsXLOtqgZaCa0VY8r1aH0jni7544oRGrXKvSAnYei5/GOxSTe8pLDiq9luh
         DQnQnwIjcP7vZcRYCX+UL+M8fzNkDTsYHfQIWkptcqulCslQvWNUgjKINOSts56JXzAE
         Dj8W9zn+3ofri5+eMoAAZcFSpmEOlIaV/XI0y2VFbjyOCsHitD7CNpQO/snwMuZMLv1c
         NFcf58OxrFGhm+cOcmyMENA87e8BfZSrp6iYI1yxlRSaOVL6iqV3ztpH/zedypfXfoga
         ZA3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=lUGmLAO+UyEHxzHYsfZWHoOtdpAGmxoVd+nS8TzFDs8=;
        b=xaEjA6+xLDFDKwnK/HDB7ud1JiZIzMjpOCB9jbSw3559U65Tqp19Ls9yjwxNLbkkLk
         IzJpWZm/2wa0il6Xo4sbmywXVuRbQzkkYNbzuwwonEAbg2mSOQDZfWK8gxCq/ifxugZs
         pmrXxgm0Eps6OnsP+BFvaqDYL4dM+JbT2HMRUXswITNnrKxYRFJfgQ8f/uMuXtvl5SD9
         nRqGH/Ogqo6Vv/EJEmlK+Nk6OdyeJsOsi7BVNrpD6AtfN2ex92YNoX+OILyiphkHsblj
         XGDbIK3P1nY6XPty6LpR9wlMJUCqJgLkmp+rYdPXQCsra++Nr6XOf47CN4kNQK0tr9QR
         1VjA==
X-Gm-Message-State: ACrzQf0zy20qW8wWp0tWehjT45GD8YjsG7FxNEJGi1iJZsV+eJc8NoDf
        /f8ftlTqWww7Ie6/32LQJu4=
X-Google-Smtp-Source: AMsMyM6qIacxLqY4+a9KJy019fK0S8GgSzgU51V8iBUspoS8E0XjiUyC/yJPSvQhQWq4h7PgWqNJng==
X-Received: by 2002:a05:6e02:1bc9:b0:2f1:9ee8:246d with SMTP id x9-20020a056e021bc900b002f19ee8246dmr12835017ilv.246.1664923584568;
        Tue, 04 Oct 2022 15:46:24 -0700 (PDT)
Received: from localhost ([2607:fea8:a2e2:2d00::1eda])
        by smtp.gmail.com with UTF8SMTPSA id i9-20020a5e8509000000b006a1f242b529sm6075823ioj.13.2022.10.04.15.46.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Oct 2022 15:46:24 -0700 (PDT)
From:   Richard Acayan <mailingradian@gmail.com>
To:     iommu@lists.linux.dev
Cc:     Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Richard Acayan <mailingradian@gmail.com>,
        Emma Anholt <emma@anholt.net>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rob Clark <robdclark@chromium.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v2 0/2] iommu: SMMU for SDM670
Date:   Tue,  4 Oct 2022 18:46:17 -0400
Message-Id: <20221004224619.16406-1-mailingradian@gmail.com>
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

