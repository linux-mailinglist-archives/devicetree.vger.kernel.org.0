Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 553F0659154
	for <lists+devicetree@lfdr.de>; Thu, 29 Dec 2022 21:04:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229871AbiL2UEq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Dec 2022 15:04:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229650AbiL2UEp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Dec 2022 15:04:45 -0500
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F94113F77
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 12:04:44 -0800 (PST)
Received: by mail-pl1-x631.google.com with SMTP id d3so19871245plr.10
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 12:04:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7Kdx6qunKWdZtPXqSsAPAhwXntfvceiLldzWWE6K89Y=;
        b=XUEP9mpisotf6w0WuMD7GCwLevwuY/XmWInGswNkdlhjeIHOfeWF0L1V8bnQ7PXZ4R
         Nery7ja3ft1afKaqRc7r0fYZK8/K/vTuk6LRorawWoWNnOBPhozi73GKazMIKzi1K6DR
         Z4cN/SHys4A50fcKzphFHhE2YNEjajGdlb2po=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7Kdx6qunKWdZtPXqSsAPAhwXntfvceiLldzWWE6K89Y=;
        b=aemI0tCxO05lq0c8FxSXYwhAZORZDG/x09ZFOudoRdE1G4JXC7wCzZrbBqZAWu6oOw
         weZZ8ytyXYG7++/ScZ/xTuamGweiNUs7ezX+wSvzRVoC59lyYdEm8hlQn97B9RA/iuKZ
         tJL8rN7hnDRRwCrmXZ6z8HjMnfVXiEx9bunny0fulfkgPnea06LrQURRKEoOzr+edLuM
         EfbqhuaiWoQHJniQkdqhecaMxDpLl5uNBDFGMpNEb01qG5svBkr1WMsTPxTEPowTuIY1
         QID7JB6JWjtfyT/WspjBZqAEAILXqC2gSCvcUx0db8ODcRYi7Lq0/DatU8qfV1qH1R3d
         zlXA==
X-Gm-Message-State: AFqh2kor9Oh6pIe91L09hK064UsASm45Y6WBh+3kNMUZ34UYzqDjrNWl
        6iErhdNPbUFU4v87AAZib5sd5w==
X-Google-Smtp-Source: AMrXdXscnFQ+HQja6CEM+QckKJAnMvh73I84o5AlMRWucUYaKiwUxNScyiUcN0nvWl9YT89ovvv7xQ==
X-Received: by 2002:a17:902:eb8f:b0:186:f57d:8573 with SMTP id q15-20020a170902eb8f00b00186f57d8573mr32381962plg.2.1672344283627;
        Thu, 29 Dec 2022 12:04:43 -0800 (PST)
Received: from doug-ryzen-5700G.. ([192.183.212.197])
        by smtp.gmail.com with ESMTPSA id w17-20020a170902e89100b00189ac5a2340sm13438589plg.124.2022.12.29.12.04.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Dec 2022 12:04:43 -0800 (PST)
From:   Doug Brown <doug@schmorgal.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Adrian Hunter <adrian.hunter@intel.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>
Subject: [PATCH v3 0/8] mmc: sdhci-pxav2: Add support for PXA168
Date:   Thu, 29 Dec 2022 12:04:03 -0800
Message-Id: <20221229200411.295339-1-doug@schmorgal.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
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
 drivers/mmc/host/sdhci-pxav2.c                | 153 ++++++++++++++++--
 3 files changed, 159 insertions(+), 14 deletions(-)

-- 
2.34.1

