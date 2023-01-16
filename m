Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ACAA166CFAC
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 20:44:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232509AbjAPTo3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 14:44:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233904AbjAPToR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 14:44:17 -0500
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E37C2CC7F
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 11:44:16 -0800 (PST)
Received: by mail-pj1-x102c.google.com with SMTP id w4-20020a17090ac98400b002186f5d7a4cso34924711pjt.0
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 11:44:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Jj5GD3DKXw2chV5kNmTm4/6CZG6IvkClM16gsR9f++g=;
        b=jotprHaG1+hKmKwd4j03MbAR0AU4XR3XQhCufP6VwwYI7uejVqU67R0t5wdkgA/sjK
         /YkUi7C4yl0yOkZPlTX79NkWmNyauIj49JXB1LnI1DO7e9ZKM7l4ZaPmATD4ZrzrxJlc
         SDGpr7qgSVsAtz5r1wq2sYw8lzHy3GH/mZidg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jj5GD3DKXw2chV5kNmTm4/6CZG6IvkClM16gsR9f++g=;
        b=YtMnDTh0bx/vrg08wON+ommQqP4pU3gBOpsFRP14CEj0Yfwxc+3dkyZSWmvLcHaKwU
         LMIbcCBHMP7bETNTjvP8ximdjOIuXOVpfOrYSq6thE2kd7MF2gfs7WEzG8W1vzSiEmtH
         vGsam3ALbveFLtCqOEv8JbIApXTtm4XuaJwg3x8seJriIg0XFj2hEcKqiPmvX60VB9b7
         RjhY1DVZW38J/VkXDziXMElI/0EgzRvCWSHBXkfoudmqLqBu3v3BNRAxseYQCeaHYwv2
         bH6xWHEcKZduUlKltJglczgJNaIf9tvP1l/sSa/RWrllEp6gpS64JRJG9843qx2ndumt
         XE9g==
X-Gm-Message-State: AFqh2krPdXbHgtO9MWeXEr5hDB3N97iPW4ESz4WO4vyBp7IobmJV+w1T
        BYX0rz1MHrpqTLB37luYM+lQoU0KUU4hZBU/og4XxQ==
X-Google-Smtp-Source: AMrXdXu99GRZ+omp3viTEeTVHBlqlIVS4/LAzXQ6xB7U7WY25Llc7YcDpyOj5yN56Wp0IT7aH1VthQ==
X-Received: by 2002:a17:902:cccb:b0:192:b927:39d1 with SMTP id z11-20020a170902cccb00b00192b92739d1mr928892ple.3.1673898255891;
        Mon, 16 Jan 2023 11:44:15 -0800 (PST)
Received: from doug-ryzen-5700G.. ([192.183.212.197])
        by smtp.gmail.com with ESMTPSA id t13-20020a170902b20d00b001926a76e8absm19734663plr.114.2023.01.16.11.44.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jan 2023 11:44:15 -0800 (PST)
From:   Doug Brown <doug@schmorgal.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Adrian Hunter <adrian.hunter@intel.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>
Subject: [PATCH v5 0/8] mmc: sdhci-pxav2: Add support for PXA168
Date:   Mon, 16 Jan 2023 11:43:53 -0800
Message-Id: <20230116194401.20372-1-doug@schmorgal.com>
X-Mailer: git-send-email 2.34.1
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

This is a revival of an earlier patch series from 2013 to add support
for the PXA168 SDHC controller, with an additional SDIO IRQ errata fix.
It also cleans up the clock naming to be consistent with the existing DT
schema shared with the pxav3 driver (in a backwards-compatible way).

Here is the original patch series this is based on:
https://lore.kernel.org/linux-mmc/1363544206-3671-1-git-send-email-tanmay.upadhyay@einfochips.com/

Note that I left out the platform_specific_completion and clock gating
changes from the original patches. They both seemed controversial, and
don't seem necessary based on my testing. I've been running this code on
a PXA168 for months without any issues.

Changes in v5:
- Fix missing assignment to ret in core clock patch found by test robot

Changes in v4:
- Rebase on latest mmc/next to fix conflict with DT binding

Changes in v3:
- Use OF match data rather than of_match_device and of_device_is_compatible
- Simplify some instances of pdev->dev that could have just been "dev"
- Handle EPROBE_DEFER when getting the clock
- Use devm_clk_get_optional_enabled for the core clock (it's simpler)
- Clear sdio_mrq before calling mmc_request_done
- Small tweaks to devicetree binding requested by Krzysztof

Changes in v2:
- Fix mistakes in devicetree binding
- Use cleaner code for pxav1_readw suggested by Adrian
- Switch to request_done() and irq() for SDIO workaround CMD0 handling

Doug Brown (8):
  mmc: sdhci-pxav2: add initial support for PXA168 V1 controller
  mmc: sdhci-pxav2: enable CONFIG_MMC_SDHCI_IO_ACCESSORS
  mmc: sdhci-pxav2: add register workaround for PXA168 silicon bug
  mmc: sdhci-pxav2: change clock name to match DT bindings
  mmc: sdhci-pxav2: add optional core clock
  mmc: sdhci-pxav2: add SDIO card IRQ workaround for PXA168 V1
    controller
  mmc: sdhci-pxav2: add optional pinctrl for SDIO IRQ workaround
  dt-bindings: mmc: sdhci-pxa: add pxav1

 .../devicetree/bindings/mmc/sdhci-pxa.yaml    |  19 ++-
 drivers/mmc/host/Kconfig                      |   1 +
 drivers/mmc/host/sdhci-pxav2.c                | 154 ++++++++++++++++--
 3 files changed, 160 insertions(+), 14 deletions(-)

-- 
2.34.1

