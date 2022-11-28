Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F51C639F93
	for <lists+devicetree@lfdr.de>; Mon, 28 Nov 2022 03:44:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229513AbiK1Coy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Nov 2022 21:44:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229646AbiK1Cow (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Nov 2022 21:44:52 -0500
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A53211466
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 18:44:48 -0800 (PST)
Received: by mail-pg1-x532.google.com with SMTP id 6so8730710pgm.6
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 18:44:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=10C9l5cM9Gx+6A1r6iqoMzAy/dFS6z3guP1T2Uf7DqQ=;
        b=TzBcy4nze14e3VK8qk9Vn+oKWTOVmmiAYi2YP/56bEjInTRbOpIeA41cLwD8pzVUk4
         KzCdnA5yXc9RPsiHm7U4CSy5JdPHs7nWwd39kH2HaT2ShTAKLT5+bTT/B23Lo7189Vm2
         T2hf2Tfmwi9NVzj2Kvn9Z71RyvTWOu+MH29MU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=10C9l5cM9Gx+6A1r6iqoMzAy/dFS6z3guP1T2Uf7DqQ=;
        b=E7lutFQJeFETR/XR8E5lsXlDQKmtN2DBl/f1hc5vEMrtdGF+4C16z8gnwHwH9jBIPV
         KFDjWaOeCPnaIpXZC76Tqlv/BYDaV3UgGikedBBNrsvVSXkte4gEsh/JTvql7nM5zl72
         2QqYeTe+89ZgY2YLoXGxUhpmmcPBjvGj4Pu1QU4xmQ2lS8/zwIiGRalXijJ2fAHD3EUb
         5Ugmh87LUrNcx2G6H+G2vhA1lFFAjpmM3FnOWMKj6dwXozEd5BZgUjI3kCOI+nHedi2K
         iNdE2Fd6ewITwWTKAxiH+yFAO6JX+SXjSoTBfSZF5I1SHdGNcehLZcb3/0poBhn3GEFM
         yUOg==
X-Gm-Message-State: ANoB5pmgq7TtZWx6vD2bAMcBPZ9I7oBc5ceGXFjjlqor7dBMtLhRoEEU
        lN8VjoUhpeKhQI0vH+kdAV+Ncg==
X-Google-Smtp-Source: AA0mqf4wEG3Y0VAbLcuqmet6VRWOB3QCpK1YuSNDfiUOVFN9yKT3gYncIWlBfV5R0ycdyechcMpwzQ==
X-Received: by 2002:a63:f253:0:b0:434:afab:5ff9 with SMTP id d19-20020a63f253000000b00434afab5ff9mr24630939pgk.349.1669603487556;
        Sun, 27 Nov 2022 18:44:47 -0800 (PST)
Received: from doug-ryzen-5700G.. ([192.183.212.197])
        by smtp.gmail.com with ESMTPSA id z16-20020aa79910000000b005752201d4ffsm1431568pff.213.2022.11.27.18.44.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Nov 2022 18:44:47 -0800 (PST)
From:   Doug Brown <doug@schmorgal.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Adrian Hunter <adrian.hunter@intel.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>
Subject: [PATCH 2/8] mmc: sdhci-pxav2: enable CONFIG_MMC_SDHCI_IO_ACCESSORS
Date:   Sun, 27 Nov 2022 18:44:01 -0800
Message-Id: <20221128024407.224393-3-doug@schmorgal.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221128024407.224393-1-doug@schmorgal.com>
References: <20221128024407.224393-1-doug@schmorgal.com>
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

Enable CONFIG_MMC_SDHCI_IO_ACCESSORS for the pxav2 driver. The read_w
callback is needed for a silicon bug workaround in the PXA168.

Signed-off-by: Doug Brown <doug@schmorgal.com>
---
 drivers/mmc/host/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mmc/host/Kconfig b/drivers/mmc/host/Kconfig
index 5e19a961c34d..b9e9185c86a6 100644
--- a/drivers/mmc/host/Kconfig
+++ b/drivers/mmc/host/Kconfig
@@ -360,6 +360,7 @@ config MMC_SDHCI_PXAV2
 	depends on MMC_SDHCI_PLTFM
 	depends on ARCH_MMP || COMPILE_TEST
 	default CPU_PXA910
+	select MMC_SDHCI_IO_ACCESSORS
 	help
 	  This selects the Marvell(R) PXAV2 SD Host Controller.
 	  If you have a PXA9XX platform with SD Host Controller
-- 
2.34.1

