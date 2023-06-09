Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C8C1372932D
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 10:32:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241044AbjFIIbf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 04:31:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240835AbjFIIbR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 04:31:17 -0400
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B41EF3C3F
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 01:30:38 -0700 (PDT)
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-6532671ccc7so1599949b3a.2
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 01:30:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1686299435; x=1688891435;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AFGD2wbog2bLEzZcMSA5NeQN0FooPgViUDH/kJdJu7g=;
        b=VxhiTdCBLxIsBltzObFF5Ym1+vwcIDLSkmfzPbm/DGoU4AfLRLWFTTi0hHFiBZPDV8
         Is4Wmq9C2828uo2zXCjZ19F2WivyaaiuCV17Co/i1luMzZCUg+0OncdpjzZkeDvwoSNV
         oNiEWRGo02+aYzvGoDQwSyjFIiVUGTMEeSt4I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686299435; x=1688891435;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AFGD2wbog2bLEzZcMSA5NeQN0FooPgViUDH/kJdJu7g=;
        b=APQ1kjsAQYSygpMgDX0nhRFfyF1L1hxpGtbn1xoAgwCMiPEWhy/v74TWZaZW9nOAwO
         h2HWi5gfGdImYIS9ZWv979jIASuJ0SlXhVQsDFwzOR09+qDe5N33sMFOBmclk/TW4uXc
         V+MI1D1wScH+2CIAqjwt0NBs98040EX+jlKMVYr2Z8BjyEBMcTskVu+HStJ1NKUDEOWj
         KMJ8ppLlFzKSV4yTb9QwlxW8qnyf/csaSMDaJzca9tXXPpkhpw10a91atyb6ORGpdrP9
         CFHrPu38Wk0TBV16AREoIWOQImNO1KiDpYuoWXCg7X2c4yylLODs5y+TNRuim4su15+c
         tthg==
X-Gm-Message-State: AC+VfDwXTuZWpNBZXRoeEl9CFSTjLvXRsq63qR4VO2UDK+46V7p6K0bC
        6YFMzHt7kjFyrwm9c3G1uNEIPA==
X-Google-Smtp-Source: ACHHUZ5udhhInSJ2+0MKW14NrN54X3Z/UNROlsx8dyPSioAo/cbj2o66CYh4A8eq4yqkuAQhXJI5cw==
X-Received: by 2002:a05:6a20:2d23:b0:111:26ee:8e5 with SMTP id g35-20020a056a202d2300b0011126ee08e5mr616594pzl.62.1686299435416;
        Fri, 09 Jun 2023 01:30:35 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:c2ea:d8e4:1fe8:21f0])
        by smtp.gmail.com with ESMTPSA id 23-20020aa79157000000b0063b806b111csm2184327pfi.169.2023.06.09.01.30.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jun 2023 01:30:35 -0700 (PDT)
From:   Chen-Yu Tsai <wenst@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     Chen-Yu Tsai <wenst@chromium.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/9] regulator: mt6358: Remove bogus regulators and improvements
Date:   Fri,  9 Jun 2023 16:29:57 +0800
Message-ID: <20230609083009.2822259-1-wenst@chromium.org>
X-Mailer: git-send-email 2.41.0.162.gfafddb0af9-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

This series is a cleanup and improvement of the MT6358 regulator driver.
Various discrepancies were found while preparing to upstream MT8186
device trees, which utilize the MT6366 PMIC, that is also covered by
this driver.

Patches 1~8 should go through the regulator tree, and patch 9 through
the soc tree. This series (patches 7 and 8) depends on "regulator: Use
bitfield values for range selectors" [1] I sent out earlier.

This series can be seen as three parts: 

Part 1 - Fixing bogus regulators (patches 1~4 and 9)

There are some regulators listed in the bindings and driver that have no
corresponding pin on the actual hardware. MediaTek says these are a
hardware construct for shared control of the same regulator in the
VCN33 case and an alternative control scheme for low power suspend.

In the VCN33 case, there's only one actual regulator, so we merge the
two and rename them to match the hardware pin. No existing devices use
these AFAICT, so this should be safe to change.

In the *_SSHUB case, the two extra regulators refer to alternative
configuration registers of the same regulators. They are intended for
the SoC's low power mode companion processor to use, not the main
processor or OS. It should be left to the implementation to choose
which set of registers to actually control.

Part 2 - Code cleanup (patches 5 and 6)

Various tables in the regulator driver were not constant, even though
they are just lookup tables. With some reworking of the code, they are
made constant.

Also, some regulators that have a single linear range were using linear
range helpers. This is more complicated than just declaring the range
and step directly in the description. This is simplified to use the
latter approach.

Part 3 - Output voltage fine tuning support (patches 7 and 8)

Many of the LDOs on these PMIC support an extra level of output voltage
fine tuning. Most default to no offset, but a couple have a non-zero
offset by default. Previously this was unaccounted for in the driver and
device tree constraints. On the outputs with non-zero offset, this ends
up becoming a discrepancy between the device tree and actual hardware.
These two patches adds support for this second level of tuning, modeled
as bunch of linear ranges. While it's unlikely we need this level of
control, it's nice to be able to read back the accurate hardware
settings.

Please have a look. After this series is done I'll send out patches for
the MT6366 PMIC, which is what started this. That will also include
updated YAML bindings for MT6366. I think we can merge MT6358 bindings
into them afterwards.

Thanks
ChenYu

[1] https://lore.kernel.org/linux-arm-kernel/20230609075032.2804554-1-wenst@chromium.org/

Chen-Yu Tsai (9):
  regulator: dt-bindings: mt6358: Merge ldo_vcn33_* regulators
  regulator: dt-bindings: mt6358: Drop *_sshub regulators
  regulator: mt6358: Merge VCN33_* regulators
  regulator: mt6358: Drop *_SSHUB regulators
  regulator: mt6358: Const-ify mt6358_regulator_info data structures
  regulator: mt6358: Use linear voltage helpers for single range
    regulators
  regulator: mt6358: Add output voltage fine tuning to fixed regulators
  regulator: mt6358: Add output voltage fine tuning to variable LDOs
  arm64: dts: mediatek: mt6358: Merge ldo_vcn33_* regulators

 .../bindings/regulator/mt6358-regulator.txt   |  34 +-
 arch/arm64/boot/dts/mediatek/mt6358.dtsi      |  11 +-
 drivers/regulator/mt6358-regulator.c          | 499 ++++++++----------
 include/linux/regulator/mt6358-regulator.h    |  10 +-
 4 files changed, 234 insertions(+), 320 deletions(-)

-- 
2.41.0.162.gfafddb0af9-goog

