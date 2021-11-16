Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 15505453175
	for <lists+devicetree@lfdr.de>; Tue, 16 Nov 2021 12:52:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235595AbhKPLz3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Nov 2021 06:55:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235751AbhKPLzQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Nov 2021 06:55:16 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2FF1C061200
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 03:52:14 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id u1so37005649wru.13
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 03:52:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7+tviJRIIqKFH/joMd9Q2VuwL2kp++/vcVTuNBiLmTY=;
        b=HuQiMtiZzY3tdoruvkLz+dFNF4HPYoYbLJTFSRlg4HRZnlHKcnqq1IoO4ZwobFLcRC
         BQZ6XgkY4SsDEhJKABgXqn/SfHerqbyeRYxCM0hy3QXPz3W6CFGZdEbDHxlmtyQ+BKgp
         VW9hUr6mhhmm2e4Y20CvwcO/knaFw/blt4cbVZHY6YcS0BlYchEgzdel/4n5GYIl1M1k
         a01lUXY5YzDpacvANaEX2KcmlG5rrkTYYLlbv1TQJjULgaC00SfTJOL0s7SMq9TKFYSE
         4WRItc2FbEBFER611wRJJ/I1iKKcxSapImMYriUx2q0dowq8HHTxXFHAyolm2jnb6EDK
         5dpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7+tviJRIIqKFH/joMd9Q2VuwL2kp++/vcVTuNBiLmTY=;
        b=2VX8zEuDVdYp3KL2pbRDQ5NFeI2pwNlNb9lfNoihVp5D9DgT9H7OwVlZA022qTFdd6
         UerZRwE2bNTCD8TykwojkE5nI6Ifo+pnyZDZBEkxRBkYQD2wfUoVQmld2nST1W//JGgm
         a5Py241UoBLW8xRL8aYguY1EV4qhk3oBAIdawq6ZEnwTWUmKs+Eu9iof+/5RDmevvpXZ
         xI/kgKBoRZnjNxBU+4DEkMBk24Nj7MXI5b+unXXJ5b50R5+jo/r/BG785kW+Cz+WnqI4
         Lp4jhMo3rprf175j9DWRkmefPPE7YVXWdnKMb4gd/KsskUPVG4hXUIjXYKFOnrKz97vj
         X7Kw==
X-Gm-Message-State: AOAM533j4GNinRrY+8CPh+iX2+VRZa07kOfhe1C5cfxkk5jcjblTW+L5
        0eTeVnLCPN3MQOSRQOO2FtNQUA==
X-Google-Smtp-Source: ABdhPJzoIAXoYG38x1WM1fYsQvGCoCy5YoncrC23En2Ic65ARoZ2im8YfvNnsAezImOGHOPPsguxAA==
X-Received: by 2002:a05:6000:144a:: with SMTP id v10mr8881733wrx.315.1637063533400;
        Tue, 16 Nov 2021 03:52:13 -0800 (PST)
Received: from localhost.localdomain (cpc92880-cmbg19-2-0-cust679.5-4.cable.virginm.net. [82.27.106.168])
        by smtp.gmail.com with ESMTPSA id b6sm2232846wmq.45.2021.11.16.03.52.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Nov 2021 03:52:12 -0800 (PST)
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     robh+dt@kernel.org
Cc:     iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, will@kernel.org,
        robin.murphy@arm.com, joro@8bytes.org, mark.rutland@arm.com,
        jkchen@linux.alibaba.com, leo.yan@linaro.org,
        uchida.jun@socionext.com,
        Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: [PATCH 0/2] perf/smmuv3: Support devicetree
Date:   Tue, 16 Nov 2021 11:35:35 +0000
Message-Id: <20211116113536.69758-1-jean-philippe@linaro.org>
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

I previously sent the binding as reply to Jay Chen's thread implementing
device tree support [1]. This posting addresses the comments from that
thread.

Patch 1 adds two compatible strings. "arm,smmu-v3-pmcg" is common to all
PMCGs. "hisilicon,smmu-v3-pmcg-hip08" allows to support the same quirk
as IORT for that implementation (see patch 2). We'll probably want to
also introduce compatible strings for each implementation that has
additional perf events. For example the MMU-600 implementation has
different events for TCU and TBU PMCGs [2], but both components have the
same device IDs. So the driver could differentiate them if they had two
distinct compatible strings such as "arm,mmu-600-pmcg-tbu" and
"arm,mmu-600-pmcg-tcu".

The series doesn't deal with this because for testing I use a software
model which only implements architected events. I do not include DTS
change for that platform because enabling PMCGs requires an additional
model option. See my branch smmu/pmu-dt [3] for details.

[1] https://lore.kernel.org/all/20200707150114.GC159413@myrica/
[2] https://developer.arm.com/documentation/100310/0202/Functional-description/Operation/Performance-Monitoring-Unit
[3] https://jpbrucker.net/git/linux/log/?h=smmu/pmu-dt

Jean-Philippe Brucker (2):
  dt-bindings: Add Arm SMMUv3 PMCG binding
  perf/smmuv3: Add devicetree support

 .../bindings/iommu/arm,smmu-v3-pmcg.yaml      | 67 +++++++++++++++++++
 drivers/perf/arm_smmuv3_pmu.c                 | 25 ++++++-
 2 files changed, 90 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/iommu/arm,smmu-v3-pmcg.yaml

-- 
2.33.1

