Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3AFAF503751
	for <lists+devicetree@lfdr.de>; Sat, 16 Apr 2022 17:40:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232427AbiDPPnA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Apr 2022 11:43:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232422AbiDPPm7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 16 Apr 2022 11:42:59 -0400
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FC0F4349E
        for <devicetree@vger.kernel.org>; Sat, 16 Apr 2022 08:40:27 -0700 (PDT)
Received: by mail-pg1-x52b.google.com with SMTP id h5so11252920pgc.7
        for <devicetree@vger.kernel.org>; Sat, 16 Apr 2022 08:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rmGiO08X0yEC4elXRkAdRalPc23L32HC464CcWqkvSQ=;
        b=zU5WUq0XkuFzWaKAEZsCe9l09Fz1VCPVZgtigC0cBIhdxUqT1ZyNquREemeMXkT1v8
         DwZvodCv8lIcWjL4dJZPatmR7Bb+qboehmyV6rPuCRecVHwio7ySS4b37BA8YHHI49uz
         vZ83/4Qwfga+E4XfXfEDmWzV9JoHaB4y3svjtyuUrLDKm0Nhb61OG2RKs1KEmy40VXTY
         J21rGFfiCaXi0Uh20/XVKjYN5cleV+czjVTEc98+lWF8sTL3Yu6VyUNI9brPvEEYiqgt
         8IKvKKebzjL4a4g/VJifxJ30VyJ3WrBg43LV42Rb2/ngzfz7n7PORIRpsm24XMhI1aKH
         Ezkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rmGiO08X0yEC4elXRkAdRalPc23L32HC464CcWqkvSQ=;
        b=pPH0rTZeiw48XqEY1UJ5LbP3gyMiPNTAAD6pFoQvL+NvuLBrUqhtWZ9xUNLxwlGKcS
         v31tbEjuVtD6tb3RPrksRGyWS5sNkbmynysZCY9tyastuYm1XaoTNawZbXqlYoHBChLV
         L1c15EANfHikrxLBjNjbrAWojdJRxRdkzShtVZeiX3ebwhX8FLnS9gOX7gu0pzeyCN7A
         HtjKQd9PK/0Zd3uWbZ/keQWRMvMTTHiQUuLpsixZAGfJ9a/+jjG5O7NSiZGeBEPAub3w
         Mg8L19tyZb/dVQYbFZA89203XTJNdsg9c413JHrI/R4dUXP7b6+EchhrsQbi9WE99GNL
         gFvA==
X-Gm-Message-State: AOAM531dQSJgWvxbWC+x7RVj3Eg+7KJs1IYOIeQHl03yRZNTuCWVwLej
        qpTWQLE/SQPdGPMfUiHKg+H2mymnv6uQZJNRd7dtmA==
X-Google-Smtp-Source: ABdhPJwBAYLkiJ8r9Q6T/TfFVkAQPtSFDLa1AMnXZTVuLrztSziUCHqQSmOJ/9AYgib7OM/xqfcvsQ==
X-Received: by 2002:a65:568b:0:b0:378:86b8:9426 with SMTP id v11-20020a65568b000000b0037886b89426mr3322626pgs.70.1650123626385;
        Sat, 16 Apr 2022 08:40:26 -0700 (PDT)
Received: from localhost.localdomain ([134.195.101.46])
        by smtp.gmail.com with ESMTPSA id z16-20020a056a00241000b004f3a647ae89sm6358681pfh.174.2022.04.16.08.40.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Apr 2022 08:40:25 -0700 (PDT)
From:   Leo Yan <leo.yan@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Leo Yan <leo.yan@linaro.org>
Subject: [PATCH v1 0/5] interconnect: qcom: icc-rpm: Support voting bucket
Date:   Sat, 16 Apr 2022 23:40:08 +0800
Message-Id: <20220416154013.1357444-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_BL_SPAMCOP_NET,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch set is to support bucket in icc-rpm driver, so it implements
the similar mechanism in the icc-rpmh driver.

We can use interconnect path tag to indicate the bandwidth voting is for
which buckets, and there have three kinds of buckets: AWC, wake and
sleep, finally the wake and sleep bucket values are used to set the
corresponding clock (active and sleep clocks).  So far, we keep the AWC
bucket but doesn't really use it.

Patches 01, 02, 03 enable interconnect path tag and update the DT
binding document; patches 04 and 05 support bucket and use bucket values
to set the bandwidth and clock rates.

This patch set is dependent on another patch set "interconnect: qcom:
icc-rpm: Fix setting clock rate" [1], and it has been tested on QCOM
msm8939 platform.

[1] https://lore.kernel.org/lkml/20220416031029.693211-1-leo.yan@linaro.org/


Leo Yan (5):
  dt-bindings: interconnect: Update property for icc-rpm path tag
  interconnect: qcom: Move qcom_icc_xlate_extended() to a common file
  interconnect: qcom: icc-rpm: Change to use qcom_icc_xlate_extended()
  interconnect: qcom: icc-rpm: Support multiple buckets
  interconnect: qcom: icc-rpm: Set bandwidth and clock for bucket values

 .../bindings/interconnect/qcom,rpm.yaml       |   2 +-
 drivers/interconnect/qcom/Makefile            |   3 +
 drivers/interconnect/qcom/icc-common.c        |  34 +++++
 drivers/interconnect/qcom/icc-common.h        |  13 ++
 drivers/interconnect/qcom/icc-rpm.c           | 134 ++++++++++++++++--
 drivers/interconnect/qcom/icc-rpm.h           |   6 +
 drivers/interconnect/qcom/icc-rpmh.c          |  26 +---
 drivers/interconnect/qcom/icc-rpmh.h          |   1 -
 drivers/interconnect/qcom/sm8450.c            |   1 +
 9 files changed, 178 insertions(+), 42 deletions(-)
 create mode 100644 drivers/interconnect/qcom/icc-common.c
 create mode 100644 drivers/interconnect/qcom/icc-common.h

-- 
2.25.1

