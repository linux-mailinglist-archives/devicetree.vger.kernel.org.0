Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F0E92ADA62
	for <lists+devicetree@lfdr.de>; Tue, 10 Nov 2020 16:26:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731068AbgKJP0h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Nov 2020 10:26:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730754AbgKJP0g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Nov 2020 10:26:36 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CFE9C0613D1
        for <devicetree@vger.kernel.org>; Tue, 10 Nov 2020 07:26:36 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id q19so13412179ljc.10
        for <devicetree@vger.kernel.org>; Tue, 10 Nov 2020 07:26:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Hrb6YP9kE4AwvLFEXLY+N294/vTm6VCcAtZUMc+ytIw=;
        b=arCTA79lo8o4TuvmmtQEBn9mUMplCTkzre1af+8j0uuLIOJHU+Ny/vE0jpjcswWXrg
         /W9cNQxZ10DZ+ZqvmyzLtZPN6otk2IBJ0zioWFvmO5AQDf8cCY0zO4XibUFV6Nt4lTSK
         jYt+FEwhkGaq4L4pjRqpg+aYg+yJb2SNNqczMlvYRlx0GJeGb6Tb4decRX2dzwyD0xpf
         fGXogdInnO2xL03YrBs8nf2mBMKY5Qq717DWtG8wIzYZdA42Vsqlrvqnd54LdRXLNorC
         lbUdSBSXCVNAe2GmFCOc6kPOEsxRiONWXzIUFaF8atKf3eec9aLoohfz09FvJBak7RdG
         XD/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Hrb6YP9kE4AwvLFEXLY+N294/vTm6VCcAtZUMc+ytIw=;
        b=ME6/MHu3mdCKzYOS+4cVIVKTL6GFoIy8WZcJK1EytAGOhin2RHcDMRBgkYquBw64i1
         njpErb4HqIWh7iguw1D2E/Zbc5mQTf94h6a4lRfOBdVVHpsP9t+Nv3mMVGgDs6FV5qXS
         w81V7EzV2qn204V5JBmKQIPtgoC9J+8X028sgMTp8HMuPTNcc/m7z7U/Vlvh8n17CJl7
         JFgW4w+akLpXfrGItxYPuQrZy4L0Ceg4F00ZQHIA7vhf+X+RK67i2iTqMa4Qlu9LAAhC
         233jl66trk6RkzR1u+rdx+EMgAxJ1B28/tUTPS3uEDCo3BXqRmFKnKLjzsT0QECfyYfx
         DdcA==
X-Gm-Message-State: AOAM531ltFcCTbYIln0VAlvCeGP/tdg39DNbgFXJHeCTq8MdfBrRFNLf
        y0RwFWn903x5OxT7Y/OUdYOqJw==
X-Google-Smtp-Source: ABdhPJyzfSidqot4CTeXhhTaEjeRNR84mOeeF0U0Cf56XjgSm2EbaVMKCg7nAWobdrsuBHxliu0eug==
X-Received: by 2002:a2e:b8d4:: with SMTP id s20mr57502ljp.226.1605021994870;
        Tue, 10 Nov 2020 07:26:34 -0800 (PST)
Received: from localhost (c-9b28e555.07-21-73746f28.bbcust.telenor.se. [85.229.40.155])
        by smtp.gmail.com with ESMTPSA id j11sm2127665lfg.69.2020.11.10.07.26.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Nov 2020 07:26:34 -0800 (PST)
From:   Anders Roxell <anders.roxell@linaro.org>
To:     robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de
Cc:     linux-arm-kernel@lists.infradead.org, krzk@kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Anders Roxell <anders.roxell@linaro.org>
Subject: [PATCHv2] arm64: dts: freescale: fix typo Makefile
Date:   Tue, 10 Nov 2020 16:26:31 +0100
Message-Id: <20201110152631.3007779-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

While trying to do 'make dtbs_install' the following error shows up

make[3]: *** No rule to make target
  '/tmp/out/obj-dir/dtbinstallfreescale/imx8mm-kontron-n801x-s.dts', needed by '__dtbs_install'.

Fix typo in imx8mm-kontron-n801x-s.dts change file ending to *.dtb

Fixes: 8668d8b2e67f ("arm64: dts: Add the Kontron i.MX8M Mini SoMs and baseboards")
Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 arch/arm64/boot/dts/freescale/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 876bf484bbe6..6f0777ee6cd6 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -32,7 +32,7 @@ dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-lx2162a-qds.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-beacon-kit.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-ddr4-evk.dtb
-dtb-$(CONFIG_ARCH_MXC) += imx8mm-kontron-n801x-s.dts
+dtb-$(CONFIG_ARCH_MXC) += imx8mm-kontron-n801x-s.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-var-som-symphony.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-ddr4-evk.dtb
-- 
2.28.0

