Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 766A765F252
	for <lists+devicetree@lfdr.de>; Thu,  5 Jan 2023 18:15:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235445AbjAEROq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Jan 2023 12:14:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232952AbjAEROW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Jan 2023 12:14:22 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67ECD67182
        for <devicetree@vger.kernel.org>; Thu,  5 Jan 2023 09:08:39 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id ay2-20020a05600c1e0200b003d22e3e796dso1854636wmb.0
        for <devicetree@vger.kernel.org>; Thu, 05 Jan 2023 09:08:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6h6SlU5A0zuGX0GkcqVqSkxWmB5gVmPDaFv9upeKEJY=;
        b=qfgIV6+KNhNlHIai2EadAejv7OOkkRDR11V12OpGP2tFc9XeiyuMawbvzgJTN9tXrs
         cR0WnVCxS9IbqSz+/IAgAFRf8VAPr6vfizkuvRL+wq8B000hdQYJX02aM+1gGLLbyWxQ
         pt2j+9WBxSlmHwLXQq98VlnaRfBlMUXxAWh+gLdjEbK4miiZ5PP8/mZXiSK0k8Irtq1i
         l3/gbHxuDV5Ta1uJ5Q/pE+iQM/uA9Xda1ZoJSe0q8kINY349BDLAFTrAs6cLA2cTpHDb
         NdChNoIriRt72QjEG61Y6333Ql9vNB+Ot0gLLnn2qT0mWLwqs3kXtNMiL0jhkInvyhP+
         KuMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6h6SlU5A0zuGX0GkcqVqSkxWmB5gVmPDaFv9upeKEJY=;
        b=m+qQUgDzbmkMYV43XG74/mamQQ+4SWgFIJmKisHT1EOy0LpdKjjISHBo1+sPkH0B00
         OquoBR7LdBZFVoozUQ+O+KNunVTswJ7WaBgOI3XgnpIRp1nI4sVXXjCmt810JL2ObEzg
         W5jRUQ1C8Igli+jm3xoUI/upEph0PZk7c+CgxqsKC5Wd9pixETYNCwg750NW7/30jZBn
         4WmIZTh8Cy2bQNpmphNSbeotRMJqTohYHTxLciA2jd/YwbyW4bKyvVTBvueqpmkVfRbq
         K2JiqHpdP+8R/2k+sH9P3JSd+rdFr+vOG/HxyFQrYumFpjgBboMuG02rrRX4Jzwx2dk7
         VZgA==
X-Gm-Message-State: AFqh2krcpTaUVxfLSVdJ6Lt8ywMF248Gj/tJ09uIAKI6QkpL2LnsiJVZ
        A/6EZZCHnfaExbRpCDXKxhh03g==
X-Google-Smtp-Source: AMrXdXumBbhvBPsnLXFiWNaKp/0K4dGbueHABbMCGI06JOhA8oP8PTlc7vyC+M9+2rztudNJ19w5kA==
X-Received: by 2002:a7b:c7c8:0:b0:3d7:889:7496 with SMTP id z8-20020a7bc7c8000000b003d708897496mr36733344wmk.17.1672938466777;
        Thu, 05 Jan 2023 09:07:46 -0800 (PST)
Received: from blmsp.fritz.box ([2001:4091:a245:805c:9cf4:fdb8:bb61:5f4e])
        by smtp.gmail.com with ESMTPSA id f14-20020adfe90e000000b002365730eae8sm37164853wrm.55.2023.01.05.09.07.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 09:07:46 -0800 (PST)
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Chun-Jie Chen <chun-jie.chen@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Fabien Parent <parent.f@gmail.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH 0/8] soc: mediatek: MT8365 power support
Date:   Thu,  5 Jan 2023 18:07:27 +0100
Message-Id: <20230105170735.1637416-1-msp@baylibre.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

sorry for the long delay, here is an update to the mt8365 power domain
series. Thanks for all your feedback, I hope I addressed everything. As
Matthias brought up some good points, I got back to try to make the
WAY_EN feature a bit more understandable with less code duplication. I
added a few patches to prepare the driver for the WAY_EN patch. I hope
it is better to understand now.

Thank you!

Best,
Markus

Changes in v4:
- Redesigned WAY_EN patch and split it up in smaller patches.
- Added two documentation patches.
- Added mediatek,infracfg-nao field to the binding.

Changes in v3:
- Mainly redesigned WAY_EN patch to be easier to understand
- Rebased onto v6.0-rc1
- Several other stuff that is described in the individual patches

Changes in v2:
- Updated error handling path for scpsys_power_on()
- Minor updates described in each patch

Previous versions:
v1 - https://lore.kernel.org/linux-mediatek/20220530204214.913251-1-fparent@baylibre.com/
v2 - https://lore.kernel.org/linux-mediatek/20220725081853.1636444-1-msp@baylibre.com/
v3 - https://lore.kernel.org/linux-mediatek/20220822144303.3438467-1-msp@baylibre.com/

Alexandre Bailon (2):
  soc: mediatek: Add support for WAY_EN operations
  soc: mediatek: Add support for MTK_SCPD_STRICT_BUS_PROTECTION cap

Fabien Parent (2):
  dt-bindings: power: Add MT8365 power domains
  soc: mediatek: pm-domains: Add support for MT8365

Markus Schneider-Pargmann (4):
  soc: mediatek: pm-domains: Split bus_prot_mask
  soc: mediatek: pm-domains: Create bus protection operation functions
  soc: mediatek: pm-domains: Document scpsys_bus_prot_data
  soc: mediatek: pm-domains: Fix caps field documentation

 .../power/mediatek,power-controller.yaml      |   6 +
 drivers/soc/mediatek/mt8365-pm-domains.h      | 147 ++++++++++++++++++
 drivers/soc/mediatek/mtk-pm-domains.c         | 135 +++++++++++-----
 drivers/soc/mediatek/mtk-pm-domains.h         |  37 ++++-
 .../dt-bindings/power/mediatek,mt8365-power.h |  19 +++
 5 files changed, 302 insertions(+), 42 deletions(-)
 create mode 100644 drivers/soc/mediatek/mt8365-pm-domains.h
 create mode 100644 include/dt-bindings/power/mediatek,mt8365-power.h

-- 
2.39.0

