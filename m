Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B67FF55983F
	for <lists+devicetree@lfdr.de>; Fri, 24 Jun 2022 12:55:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230324AbiFXKyR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Jun 2022 06:54:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230425AbiFXKyR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Jun 2022 06:54:17 -0400
Received: from mail.bugwerft.de (mail.bugwerft.de [46.23.86.59])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 9BB896F787
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 03:54:16 -0700 (PDT)
Received: from hq-00021.holoplot.net (unknown [176.126.217.202])
        by mail.bugwerft.de (Postfix) with ESMTPSA id 328A9282E26;
        Fri, 24 Jun 2022 10:47:22 +0000 (UTC)
From:   Daniel Mack <daniel@zonque.org>
To:     broonie@kernel.org, ryan.lee.analog@gmail.com
Cc:     robh+dt@kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, Daniel Mack <daniel@zonque.org>
Subject: [PATCH 0/8] ASoC: max98396: Some assorted fixes and additions
Date:   Fri, 24 Jun 2022 12:47:04 +0200
Message-Id: <20220624104712.1934484-1-daniel@zonque.org>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is a series of some patches that I collected while using the
max98396 driver is a TDM mode setup.

They correct BSEL and PCM mode configs, add support for power supplies
and add some bits to the documentation.

The code is tested in TDM-16 and TDM-8 mode with 32 channel width.


Thanks,
Daniel

Daniel Mack (8):
  ASoC: dt-bindings: max98396: add voltage supplies
  ASoC: dt-bindings: max98396: Add #sound-dai-cells
  ASoC: dt-bindings: max98396: Document adi,bypass-slot-no
  ASoC: max98396: add voltage regulators
  ASoC: max98396: Improve some error prints
  ASoC: max98396: Fix register access for PCM format settings
  ASoC: max98396: Implement DSP speaker monitor
  ASoC: max98396: Fix TDM mode BSEL settings

 .../bindings/sound/adi,max98396.yaml          |  34 ++-
 sound/soc/codecs/max98396.c                   | 265 ++++++++++++++----
 sound/soc/codecs/max98396.h                   |   8 +
 3 files changed, 257 insertions(+), 50 deletions(-)

-- 
2.36.1

