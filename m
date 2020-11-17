Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E735B2B6BFB
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 18:41:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726768AbgKQRjc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 12:39:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729446AbgKQRjb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Nov 2020 12:39:31 -0500
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com [IPv6:2607:f8b0:4864:20::1044])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50992C0617A7
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 09:39:31 -0800 (PST)
Received: by mail-pj1-x1044.google.com with SMTP id b12so896867pjl.0
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 09:39:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=a081+5sEtLZdxVjnEsgO/mWDD8NzqZQtkeB5cfYLH30=;
        b=kCPiliRHIVUfr3L65ip40e8uAZiZ43JMLQyUgVBVtUA29OXaMwbzaSiamP11wt0nLi
         YVa3Qf38eA5gN/+rNsQ2yM+7QDY/yuP/UdK8t7jLdm57RGM4czTgeq4kP1cVpogmijvV
         wVjnFT8FXE1vJP4YXScEOzp/B9Pef8KcRULWWV4OzUD2rdL3nK/eh3z2bTvZw7qs9an7
         5QQE5YXAMymBZT4ZOuhJAS7VyRoE8JXOX2V/jyfYemcIdNu/N3KtrbCHfJ/sb+LCu0/B
         4xh1S+Bz4jEDDhMyHZgJGwX6DIIZ2Gr9XIAgLvexRPm71kwn/sfBOs90yUGokUHCxsoU
         E3Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=a081+5sEtLZdxVjnEsgO/mWDD8NzqZQtkeB5cfYLH30=;
        b=YZ6m5BynnHJCU3mnOjVK92ocscIVsM5V+AmWwZU0UHcc+PRTuw7qLdVr86IVOtdYz0
         FCSZJBP+w5pE9cAAkqGT2362wvw193PyAJg+EHpBrvrMzcNafJYT8t760zSHqN9OqAwb
         G6W5+dE8wFaEeVslfalYAoy97iPL+03/xUQOev9FPL3n1cYvZTjCCxHxxZQIxnv09+Wr
         UG7WR28O9v2yivAumv+p8RSHKd+F/nUTJy/91wYIOvmt141RNOKVpJW6mDZCAMBiwpJx
         EM3ornJInIt3y1HwJNuxUbBpz1q6Iu7iiLdxb3fmRIpgXxoXaM77u8A0rnhHaSRBnHNo
         mC4w==
X-Gm-Message-State: AOAM532PRjjwqw7D2Qayg6fzL06XdMXjIDfWj6aykHQFEF2qxjko+ESj
        v7QtYcyA+/sMJoXqbmBbpB96
X-Google-Smtp-Source: ABdhPJzen4z1mH9hBVGR9pVV33DpCmvTAdG0rBun1a5GKDaehYXQ3z704Mh6UStGa5Zhwit7VNd1Xw==
X-Received: by 2002:a17:90b:a02:: with SMTP id gg2mr149355pjb.225.1605634770702;
        Tue, 17 Nov 2020 09:39:30 -0800 (PST)
Received: from localhost.localdomain ([103.59.133.81])
        by smtp.googlemail.com with ESMTPSA id a21sm1751330pjq.37.2020.11.17.09.39.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2020 09:39:29 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org
Cc:     bjorn.andersson@linaro.org, linux-mtd@lists.infradead.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 0/4] Add support for Qcom SMEM based NAND parser
Date:   Tue, 17 Nov 2020 23:09:05 +0530
Message-Id: <20201117173909.23585-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This series adds support for parsing the partitions defined in Shared
Memory (SMEM) of the Qualcomm platforms supporting NAND interface.
Current parser only supports V3 and V4 of the partition tables.

This series has been tested on SDX55 MTP board which has an onboard NAND
device.

Thanks,
Mani

Manivannan Sadhasivam (4):
  dt-bindings: mtd: partitions: Add binding for Qcom SMEM parser
  mtd: parsers: Add Qcom SMEM parser
  mtd: rawnand: qcom: Add support for Qcom SMEM parser
  mtd: parsers: afs: Fix freeing the part name memory in failure

 .../mtd/partitions/qcom,smem-part.yaml        |  31 ++++
 drivers/mtd/nand/raw/qcom_nandc.c             |   4 +-
 drivers/mtd/parsers/Kconfig                   |   8 +
 drivers/mtd/parsers/Makefile                  |   1 +
 drivers/mtd/parsers/afs.c                     |   4 +-
 drivers/mtd/parsers/qcomsmempart.c            | 169 ++++++++++++++++++
 6 files changed, 213 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mtd/partitions/qcom,smem-part.yaml
 create mode 100644 drivers/mtd/parsers/qcomsmempart.c

-- 
2.17.1

