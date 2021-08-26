Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C2FA3F815A
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 06:01:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229504AbhHZEBv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 00:01:51 -0400
Received: from lucky1.263xmail.com ([211.157.147.134]:48530 "EHLO
        lucky1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229463AbhHZEBv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Aug 2021 00:01:51 -0400
Received: from localhost (unknown [192.168.167.16])
        by lucky1.263xmail.com (Postfix) with ESMTP id 439A1CFCBB;
        Thu, 26 Aug 2021 12:00:57 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P704T139881091159808S1629950456520017_;
        Thu, 26 Aug 2021 12:00:57 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <61802dde85102c4f0c68310484d91b96>
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: broonie@kernel.org
X-RCPT-COUNT: 6
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From:   Sugar Zhang <sugar.zhang@rock-chips.com>
To:     broonie@kernel.org, heiko@sntech.de
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org,
        Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: [PATCH v3 0/14] Patches to update for rockchip i2s
Date:   Thu, 26 Aug 2021 12:00:41 +0800
Message-Id: <1629950441-14118-1-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

These patches fixup or update for rockchip i2s.

Changes in v3:
- Drop property 'rockchip,playback-only', 'rockchip,capture-only'.
  Implement it by 'dma-names' of DT instead.

Changes in v2:
- split property trcm into single 'trcm-sync-tx-only' and
  'trcm-sync-rx-only' suggested by Nicolas.
- split property trcm into single 'trcm-sync-tx-only' and
  'trcm-sync-rx-only' suggested by Nicolas.
- drop change-id

Sugar Zhang (12):
  ASoC: rockchip: i2s: Add support for set bclk ratio
  ASoC: rockchip: i2s: Fixup clk div error
  ASoC: rockchip: i2s: Improve dma data transfer efficiency
  ASoC: rockchip: i2s: Fix regmap_ops hang
  ASoC: rockchip: i2s: Fix concurrency between tx/rx
  ASoC: rockchip: i2s: Reset the controller if soft reset failed
  ASoC: dt-bindings: rockchip: Document reset property for i2s
  ASoC: rockchip: i2s: Make playback/capture optional
  ASoC: rockchip: i2s: Add compatible for more SoCs
  ASoC: dt-bindings: rockchip: Add compatible strings for more SoCs
  ASoC: rockchip: i2s: Add support for frame inversion
  ASoC: dt-bindings: rockchip: i2s: Document property TRCM

Xiaotan Luo (1):
  ASoC: rockchip: i2s: Fixup config for DAIFMT_DSP_A/B

Xing Zheng (1):
  ASoC: rockchip: i2s: Add support for TRCM property

 .../devicetree/bindings/sound/rockchip-i2s.yaml    |  19 ++
 sound/soc/rockchip/rockchip_i2s.c                  | 278 +++++++++++++++------
 sound/soc/rockchip/rockchip_i2s.h                  |  10 +-
 3 files changed, 224 insertions(+), 83 deletions(-)

-- 
2.7.4



