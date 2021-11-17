Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6CBA8454945
	for <lists+devicetree@lfdr.de>; Wed, 17 Nov 2021 15:52:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231518AbhKQOzi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Nov 2021 09:55:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230085AbhKQOzg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Nov 2021 09:55:36 -0500
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6243C061570
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 06:52:37 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id y13so12171632edd.13
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 06:52:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nbFF/7gtUy+99k8e1NtB2gMx+MTF8Q65aibKnryEXnE=;
        b=xBUaFM2qmdQljE9TB00BFnFwIarIPq6wrlAQZG0rfdHNpQ35r8lFwuxJSea9OQ1FAY
         6uOwGhPHwdiIxrb2/43B2IdIBdWfGZ5iwyUm5ew6s0lV1H2As1kK6xn7AT482vJFjH8b
         GmcyzUZB30sJ5tnwdUvHqZzFMQ44ASQ5vFPmF43Ic/0fw2YnU7jspNxHkoEJpSd0yuk8
         R5i9IjjO1VKftdJtVN3ohcqhdyJ5rLFw+Qb1rK8G6h3CosmV921I6zEPVVNRrU4//yUB
         AfJxC/bL6OmVhKaYE76R8vz0UYSiJ4WOt+rv1jYJmHjo0M2kwfIXVywFBHBGrFwVP9cJ
         p8lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nbFF/7gtUy+99k8e1NtB2gMx+MTF8Q65aibKnryEXnE=;
        b=cnTCg/3kQ3XP/Bl1DzQK3po8xUufBJMAqT4VWXhAiN5hISflMIJN9/HKGghN9OVtXw
         3oG+yBxrX3lN2E6Z30hgcg4vXIkfXz8rG00r3BA1LNxo4H5kQqQZNrzGL250Xs0JKBIs
         8OX5J3/2VHP0Iqvg8jKe5Zw49nIWjZuzLM+PzxPYbrjB4jyd8pNUGyr9cG2OA+cQN8JS
         fSTzIuCbB9gOXjT6BKxcSPYfrtcz286RcE1mkA1/oqTtjFBXgW1REeeB+/pMiIjXDzO5
         1PQLH1F/WQNXgq4NuA0BOvGJxqc7KCyALPL6Cwq1k7H4TUOxM3iu5ENHutHocX3pbbY0
         cFUg==
X-Gm-Message-State: AOAM533u/jDz1rNzoqOXQeCIJQPmJcpTCQ8GNepv5Aa4ST611KCMGBOY
        NN1gBfdqT6zB51wSa+DftktKdeYtRqdRmw==
X-Google-Smtp-Source: ABdhPJzaluFCdabwVapcVv+el0UpwvCLsJJrI7V1vzIb9r6w8HWWT7EJru/5Eoh/o49qPUxpbXIpUw==
X-Received: by 2002:a17:906:b50:: with SMTP id v16mr22778059ejg.384.1637160756247;
        Wed, 17 Nov 2021 06:52:36 -0800 (PST)
Received: from localhost.localdomain (cpc92880-cmbg19-2-0-cust679.5-4.cable.virginm.net. [82.27.106.168])
        by smtp.gmail.com with ESMTPSA id gs15sm63917ejc.42.2021.11.17.06.52.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Nov 2021 06:52:35 -0800 (PST)
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     robh+dt@kernel.org
Cc:     iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, will@kernel.org,
        robin.murphy@arm.com, joro@8bytes.org, mark.rutland@arm.com,
        jkchen@linux.alibaba.com, leo.yan@linaro.org,
        uchida.jun@socionext.com,
        Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: [PATCH v2 0/3] perf/smmuv3: Support devicetree
Date:   Wed, 17 Nov 2021 14:48:42 +0000
Message-Id: <20211117144844.241072-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree binding for the SMMUv3 PMU, called Performance Monitoring
Counter Group (PMCG) in the spec. Each SMMUv3 implementation can have
multiple independent PMCGs, for example one for the Translation Control
Unit (TCU) and one per Translation Buffer Unit (TBU).

Since v1 [1]:
* Fixed warnings in the binding doc
* Removed hip08 support
* Merged Robin's version. I took the liberty of splitting the driver
  patch into 2 and 3. One fix in patch 3, and whitespace changes (the
  driver uses spaces instead of tabs to align #define values, which I
  was going to fix but actually seems more common across the tree.)

[1] https://lore.kernel.org/linux-iommu/20211116113536.69758-1-jean-philippe@linaro.org/

Jean-Philippe Brucker (2):
  dt-bindings: Add Arm SMMUv3 PMCG binding
  perf/smmuv3: Add devicetree support

Robin Murphy (1):
  perf/smmuv3: Synthesize IIDR from CoreSight ID registers

 .../bindings/perf/arm,smmu-v3-pmcg.yaml       | 70 +++++++++++++++++++
 drivers/perf/arm_smmuv3_pmu.c                 | 66 ++++++++++++++++-
 2 files changed, 134 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/perf/arm,smmu-v3-pmcg.yaml

-- 
2.33.1

