Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A9F8391CE4
	for <lists+devicetree@lfdr.de>; Wed, 26 May 2021 18:21:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232197AbhEZQXH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 May 2021 12:23:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233789AbhEZQXH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 May 2021 12:23:07 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B6C6C061574
        for <devicetree@vger.kernel.org>; Wed, 26 May 2021 09:21:35 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id c20so3384716ejm.3
        for <devicetree@vger.kernel.org>; Wed, 26 May 2021 09:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Ny/LVTZ9NhT7pAThv8EZzNISFLoNH72249Lr1FcP2cI=;
        b=DiMkylxvByFm8pw9ICWMTsxJtAVMkIc1v+qhXw8MlH8NYoOQHZDzPwYhMKyf4zehcU
         9BNQZFb9m83eA/WivtK5JIiBd4CBiLu6jsxruJCx2FxqUBSHWfYIswDrkBbj34h8J23B
         lqaFT3E/HC7lRmeBzk+WxMIEH79wtIqeoj081sGiC3xbeyMQdgoLwp/s+UAvdIwYunwf
         wTgcqQL/RzXf19RnNXhRFRjvlFUb0SxOfGYi82FD8Wnwe3w584+pU+UxuUZaku/pGTrn
         C313eJUpAnO9OUiQrzvBZLWbGuT/2fXE9gNwjeJ7hJRd+C0onv7py91r2R+Mao66KI7F
         cjnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Ny/LVTZ9NhT7pAThv8EZzNISFLoNH72249Lr1FcP2cI=;
        b=GK1KCfAOBkkmIuD2n+Zdml4hRidCjwMNwMwCo4KF0FFofRoyPyI2WyfGBkX7nDxRrn
         HJsqyYF/T7ovkT05iNtRhh/wwDgtfkl46cbzvp2TNoYBJpDq+j7vtMoq4xh+jGIlR0Ek
         urqbXyN7aliu97FXFqcMuDdzMkB4lVP7V7gpnrOZYRJc4jZevOpLwZCT0HDfbHD2XaH8
         8dD2AeuZ1gopCbZe0Lh0AzlRsNjI/Lk1jJGsBXUJPej4HOG74nvxtg7c+29VSBl97BAq
         4JHQFhrCjeUsHf8VawLvsd4a3WJrzFQzvVUxuAmO+MFjpLX68HLzZv7ijUfNzASg4fDP
         wqMA==
X-Gm-Message-State: AOAM532LaBTv1+vPmnSqCEp9Ub9mXb1wpBhuGsEWqYq77fn7eeE6ZjRR
        vt108NN5wNL2zvgMXR8u3NLqvw==
X-Google-Smtp-Source: ABdhPJyqzgF1RD6CdwvK48ZfcwVE7vT+A0zVtv0WtiBKRWJwPQ1T58Q1HOYoySz9zdFZA/kfZFQwvw==
X-Received: by 2002:a17:906:a0a:: with SMTP id w10mr34330704ejf.416.1622046093908;
        Wed, 26 May 2021 09:21:33 -0700 (PDT)
Received: from localhost.localdomain (adsl-84-226-106-126.adslplus.ch. [84.226.106.126])
        by smtp.gmail.com with ESMTPSA id e6sm10497145ejd.31.2021.05.26.09.21.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 May 2021 09:21:33 -0700 (PDT)
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     joro@8bytes.org, will@kernel.org
Cc:     robh+dt@kernel.org, lorenzo.pieralisi@arm.com,
        guohanjun@huawei.com, sudeep.holla@arm.com, rjw@rjwysocki.net,
        lenb@kernel.org, robin.murphy@arm.com, Jonathan.Cameron@huawei.com,
        eric.auger@redhat.com, zhangfei.gao@linaro.org,
        wangzhou1@hisilicon.com, iommu@lists.linux-foundation.org,
        devicetree@vger.kernel.org, linux-acpi@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: [PATCH v15 0/3] iommu/arm-smmu-v3: Add stall support
Date:   Wed, 26 May 2021 18:19:25 +0200
Message-Id: <20210526161927.24268-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add stall support for SMMUv3, enabling I/O page faults and SVA for
compatible devices. No change since last version [1], but I'd still like
this to be considered for upstream, because there exists hardware and
applications.

Stall is implemented by the Kunpeng 920 processor for its compression
and crypto accelerators, with which I tested the SVA infrastructure.
Using the userspace accelerator API [2], a program can obtain a queue
from one of these devices and submit compression or encryption work
within the program's address space. UADK [3] provides a library to do
this, and there is an openssl plugin [4] to use it.

That's probably as far as we can go in terms of real users of SVA at the
moment, since userspace won't progress much further without upstream
kernel support - these three patches.

Stall is only enabled if the firmware declares that the device supports
stalling (explicit flags from patches 1 and 2) or, in the case of the
Kunpeng 920, with a quirk [5]. If that property is not set, stall will
still be disabled in the STE and CD, and this series should not have any
negative impact on existing systems.

[1] https://lore.kernel.org/linux-iommu/20210401154718.307519-1-jean-philippe@linaro.org/
[2] Documentation/misc-devices/uacce.rst
[3] https://github.com/Linaro/uadk
[4] https://github.com/Linaro/openssl-uadk
[5] https://lore.kernel.org/linux-pci/1615258837-12189-1-git-send-email-zhangfei.gao@linaro.org/
    FWIW future devices should implement PRI:
    https://lore.kernel.org/linux-pci/5FD9EE6E.1040505@hisilicon.com/

Jean-Philippe Brucker (3):
  dt-bindings: document stall property for IOMMU masters
  ACPI/IORT: Enable stall support for platform devices
  iommu/arm-smmu-v3: Add stall support for platform devices

 .../devicetree/bindings/iommu/iommu.txt       |  18 ++
 drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.h   |  43 ++++
 drivers/acpi/arm64/iort.c                     |   4 +-
 .../iommu/arm/arm-smmu-v3/arm-smmu-v3-sva.c   |  59 +++++-
 drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c   | 196 +++++++++++++++++-
 5 files changed, 304 insertions(+), 16 deletions(-)

-- 
2.31.1

