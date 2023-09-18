Return-Path: <devicetree+bounces-1009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D7A7A4614
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 11:38:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D192C282083
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 09:38:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86D481BDF7;
	Mon, 18 Sep 2023 09:38:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB36428FE
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 09:38:22 +0000 (UTC)
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C998109
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 02:38:20 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2c007d6159aso13416201fa.3
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 02:38:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695029898; x=1695634698; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7qMynowtM6sO6WhIunL19I1lsaUMnQPIdw7sq9xV6Eg=;
        b=Y0bwdr9UoMsxsIrPEDQuyq+Ahl+ss46DHE+tY488mJJGXfRjJ8FwZ0CcRppW2Bw3MH
         L4kuZa8vUvcqZXAhdq/b8xpUWsDxRh6tmvJdYOVqpm4Uzayo3DKFpcAUNVVjLnSG8+7V
         8D7IIpu0Gkt4p6H9Z8NEj6sLiPtxZcVm6fs0WAwXtBjrRDyuLdbteJ8VnDNAr0xxrw+T
         dXC4HPKV3vZ6BBVgnq4iazhJ0QA+MGRo50z5b1dc0OVicRHDCEVcp5Dr7ihsHQsxeS3b
         S7Apr1Z+4bSbYqoldosPlX/u62zxBRzEO3DenLSNPljZdcpJuXdrmWPGSG0rEgQieLIR
         mbIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695029898; x=1695634698;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7qMynowtM6sO6WhIunL19I1lsaUMnQPIdw7sq9xV6Eg=;
        b=WwAlaXXKHLHNe03s9xSRnrAYfRLtLLMXrUftc3r07DzZE64do6NWyxgHcRCdLVKJ8t
         DTNHcs7Zw2QPrERfOw9hqNZ+7d2s+xqtCw23cj/vcdikCJw1WZHU05fWr/U12CoLoy3S
         eDDGFjtIPIZv3ZpoDppp047JDC0JRZhb7ciqJwOHW5At7y7yZN8W009TfwV5ILALXRLf
         wSzollJhqgqVFJayB/khu5QFNuM0jT52KIBkW8mEU5QqO8UkXamDrN8+vDor+SwsZ6uJ
         8bnaWyfij8av9Sw37qb0DdKpGa9x8j1iM9zmzQvL0T0J4zTW2k+x9eEUx+ErM6MS/du7
         2UcQ==
X-Gm-Message-State: AOJu0YxIgcCWggAyap/XCxLV0JP71BZWa3uY4h41AX1jYP1DaIpcrBBt
	kiKNGQ9MUD11+IjMvOW8A4am4Q==
X-Google-Smtp-Source: AGHT+IGp45ZVIMqUnpyNlGTjOczPJW9+COazaydZ4vg+A0aUFwj9VUvBstOriVWXiS7GXoKBhC6xIQ==
X-Received: by 2002:a2e:a41c:0:b0:2bf:7dc5:884d with SMTP id p28-20020a2ea41c000000b002bf7dc5884dmr6984504ljn.21.1695029897811;
        Mon, 18 Sep 2023 02:38:17 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4091:a246:8222:872:4a5b:b69c:1318])
        by smtp.gmail.com with ESMTPSA id o10-20020a1709061d4a00b0099293cdbc98sm6251164ejh.145.2023.09.18.02.38.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Sep 2023 02:38:17 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
	Alexandre Mergnat <amergnat@baylibre.com>,
	Chun-Jie Chen <chun-jie.chen@mediatek.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Tinghan Shen <tinghan.shen@mediatek.com>,
	Fabien Parent <parent.f@gmail.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v8 0/8] soc: mediatek: MT8365 power support
Date: Mon, 18 Sep 2023 11:37:44 +0200
Message-Id: <20230918093751.1188668-1-msp@baylibre.com>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

no real changes in this update. Rebase to v6.6-rc2 and according change
of directory.

Thanks for any feedback!

Best,
Markus

Based on v6.6-rc2

Changes in v8:
- Rebased to v6.6-rc2
- Moved changes from drivers/soc to drivers/pmdomain

Changes in v7:
- Rebased to v6.5-rc1
- Fixed a couple of small style issues pointed out by Angelo

Changes in v6:
- Change flags field to be u8 instead of u32
- Use macro concatenation to simplify BUS_PROT macros:
  BUS_PROT_WR(_hwip, ...) etc.
- Use the final bit values for scpsys_bus_prot_flags from the beginning
  of the series.
- Changed scpsys_domain_data->caps to be u16 to accommodate the new flag
  MTK_SCPD_STRICT_BUS_PROTECTION.

Changes in v5:
- Create defines for all registers and bits in mt8365 power domain patch
- Redesign scpsys_bus_prot_data to use flags to store reg_update,
  clr_ack as well as the difference between SMI and INFRACFG. The code
  uses the appropriate regmap depending on the flags.
- The WAY_EN patch now uses two flags, one for inverted operations
  'BUS_PROT_INVERTED' and one to use infracfg-nao for the status flags
  'BUS_PROT_STA_COMPONENT_INFRA_NAO'.

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
v4 - https://lore.kernel.org/linux-arm-kernel/20230105170735.1637416-1-msp@baylibre.com/
v5 - https://lore.kernel.org/linux-arm-kernel/20230619085344.2885311-1-msp@baylibre.com/
v6 - https://lore.kernel.org/linux-arm-kernel/20230627131040.3418538-1-msp@baylibre.com/
v7 - https://lore.kernel.org/linux-arm-kernel/20230713150414.891893-1-msp@baylibre.com

Alexandre Bailon (2):
  soc: mediatek: Add support for WAY_EN operations
  soc: mediatek: Add support for MTK_SCPD_STRICT_BUS_PROTECTION cap

Fabien Parent (2):
  dt-bindings: power: Add MT8365 power domains
  soc: mediatek: pm-domains: Add support for MT8365

Markus Schneider-Pargmann (4):
  soc: mediatek: pm-domains: Move bools to a flags field
  soc: mediatek: pm-domains: Split bus_prot_mask
  soc: mediatek: pm-domains: Create bus protection operation functions
  soc: mediatek: pm-domains: Unify configuration for infracfg and smi

 .../power/mediatek,power-controller.yaml      |   6 +
 drivers/pmdomain/mediatek/mt6795-pm-domains.h |  16 +-
 drivers/pmdomain/mediatek/mt8167-pm-domains.h |  20 +-
 drivers/pmdomain/mediatek/mt8173-pm-domains.h |  16 +-
 drivers/pmdomain/mediatek/mt8183-pm-domains.h | 125 ++++++----
 drivers/pmdomain/mediatek/mt8186-pm-domains.h | 236 ++++++++++--------
 drivers/pmdomain/mediatek/mt8188-pm-domains.h | 223 +++++++++++------
 drivers/pmdomain/mediatek/mt8192-pm-domains.h | 112 ++++++---
 drivers/pmdomain/mediatek/mt8195-pm-domains.h | 199 +++++++++------
 drivers/pmdomain/mediatek/mt8365-pm-domains.h | 197 +++++++++++++++
 drivers/pmdomain/mediatek/mtk-pm-domains.c    | 157 ++++++++----
 drivers/pmdomain/mediatek/mtk-pm-domains.h    |  51 ++--
 .../dt-bindings/power/mediatek,mt8365-power.h |  19 ++
 include/linux/soc/mediatek/infracfg.h         |  41 +++
 14 files changed, 972 insertions(+), 446 deletions(-)
 create mode 100644 drivers/pmdomain/mediatek/mt8365-pm-domains.h
 create mode 100644 include/dt-bindings/power/mediatek,mt8365-power.h


base-commit: ce9ecca0238b140b88f43859b211c9fdfd8e5b70
-- 
2.40.1


