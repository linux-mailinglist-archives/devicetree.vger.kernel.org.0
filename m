Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D25CF33FF53
	for <lists+devicetree@lfdr.de>; Thu, 18 Mar 2021 07:09:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229688AbhCRGJI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Mar 2021 02:09:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229643AbhCRGIk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Mar 2021 02:08:40 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D54FFC061760
        for <devicetree@vger.kernel.org>; Wed, 17 Mar 2021 23:08:39 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id mz6-20020a17090b3786b02900c16cb41d63so2566087pjb.2
        for <devicetree@vger.kernel.org>; Wed, 17 Mar 2021 23:08:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=QOCh/TS5wxbMixJ7U1RoahsowYw6MPj7syv0qXToETI=;
        b=OSNnFQJ9g8WOy5HU5t5ON2uOn4RJGZMdvNEVS7gPDoKYMWj5hT9NOo4uNGCU1rGI24
         YDs3ITxQETXVdDATX47Mhz5PZWYxMB3D6sSosj3gAyn4DPOxJOqeVZlZRs53D+F6xWii
         sSOvo8gRXLWdiA37HtSSapyLmvChWTbOq5btpITekVRt5hgngQlRnliZm2+2cd5EnILC
         E8n47jJBgMYvijJr+8tS80hyq9gTssWkATn1tMJg0FxLMBQuneDDx/ci5KDdpNZypjAG
         LJQAoRliyLoG4BSiXQY0QeYDNgOK437xpOPo8m8oUULUoR3tYZLX3qw0/wB7up3/czEf
         Vx8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QOCh/TS5wxbMixJ7U1RoahsowYw6MPj7syv0qXToETI=;
        b=l0TWorB+ZXJUK+gj372WqoM7F2FE4iGD7BKmDfxDFscdjPI5uJqZExaMJDUMWYfXWh
         ZKBKURH71mjbe9T1PXIGDvJ02PC3OmHjMV53kiTpQsLIQDMkukL7P4OwM9e/7iBpSdKH
         cCj8RT4BpCihG1zCnmO55D7cKVK11kx2vXcX67Fcl0rfXh5QFigmUB5I8KSDcfFFzvOL
         jGsOwSqMCvTMGS/lKK9s8LI61zaJ5HQzWOtA6IrJz4y6O/FegBnZvFZM5HSqNuREv3hk
         kaX/pGm2RIDmfi4BLnYMDkiU2nkMhDolQdWeJ9gVp82PzxSc7JT20B69W89QNba8See2
         3jAg==
X-Gm-Message-State: AOAM532fz2mAAGuPYWmo3baZjqmzXbM8uThpXIta89OyWqiUAReuflb1
        RWS/DDIxHthPO8bEDjIziNvEYw==
X-Google-Smtp-Source: ABdhPJx16mWqhA7ExfAYAyXajYSVjGOiyGqdUj61KCpCqrNusOxlG5QHcFo4hqVoLue2bm3E0Fbd3Q==
X-Received: by 2002:a17:90a:9d82:: with SMTP id k2mr2541894pjp.48.1616047719436;
        Wed, 17 Mar 2021 23:08:39 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
        by smtp.gmail.com with ESMTPSA id 68sm967353pfd.75.2021.03.17.23.08.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Mar 2021 23:08:39 -0700 (PDT)
From:   Greentime Hu <greentime.hu@sifive.com>
To:     greentime.hu@sifive.com, paul.walmsley@sifive.com, hes@sifive.com,
        erik.danie@sifive.com, zong.li@sifive.com, bhelgaas@google.com,
        robh+dt@kernel.org, palmer@dabbelt.com, aou@eecs.berkeley.edu,
        mturquette@baylibre.com, sboyd@kernel.org,
        lorenzo.pieralisi@arm.com, p.zabel@pengutronix.de,
        alex.dewar90@gmail.com, khilman@baylibre.com,
        hayashi.kunihiko@socionext.com, vidyas@nvidia.com,
        jh80.chung@samsung.com, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        helgaas@kernel.org
Subject: [PATCH v2 3/6] MAINTAINERS: Add maintainers for SiFive FU740 PCIe driver
Date:   Thu, 18 Mar 2021 14:08:10 +0800
Message-Id: <e32c9700ba07b6e07e7923c0e680b7f643cec8ee.1615954046.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1615954045.git.greentime.hu@sifive.com>
References: <cover.1615954045.git.greentime.hu@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Here add maintainer information for SiFive FU740 PCIe driver.

Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index bfc1b86e3e73..4da888be6e80 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13592,6 +13592,14 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.txt
 F:	drivers/pci/controller/dwc/*imx6*
 
+PCI DRIVER FOR FU740
+M:	Paul Walmsley <paul.walmsley@sifive.com>
+M:	Greentime Hu <greentime.hu@sifive.com>
+L:	linux-pci@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/pci/sifive,fu740-pcie.yaml
+F:	drivers/pci/controller/dwc/pcie-fu740.c
+
 PCI DRIVER FOR INTEL VOLUME MANAGEMENT DEVICE (VMD)
 M:	Jonathan Derrick <jonathan.derrick@intel.com>
 L:	linux-pci@vger.kernel.org
-- 
2.30.2

