Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 233E364BBEA
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 19:28:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236401AbiLMS2E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 13:28:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236523AbiLMS2C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 13:28:02 -0500
Received: from relay02.th.seeweb.it (relay02.th.seeweb.it [IPv6:2001:4b7a:2000:18::163])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF60A18E14
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 10:27:59 -0800 (PST)
Received: from TimeMachine.lan (adsl-d248.84-47-10.t-com.sk [84.47.10.248])
        by m-r1.th.seeweb.it (Postfix) with ESMTPA id 5B667201CA;
        Tue, 13 Dec 2022 19:27:57 +0100 (CET)
From:   Martin Botka <martin.botka@somainline.org>
To:     martin.botka1@gmail.com
Cc:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Jami Kettunen <jamipkettunen@somainline.org>,
        Paul Bouchara <paul.bouchara@somainline.org>,
        Jan Trmal <jtrmal@gmail.com>, Tom <takuya@takuya.tech>,
        Martin Botka <martin.botka@somainline.org>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/3] AXP1530 PMIC
Date:   Tue, 13 Dec 2022 19:27:39 +0100
Message-Id: <20221213182743.3087889-1-martin.botka@somainline.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This patch series adds support for the AXP1530 PMIC which is controlled via the
I2C bus.

Changes in v2:
Remove RSB support.
Drop .id = 0
Add dt-binding for the AXP1530

Changes in v3:
Move AXP1530 dt-binding to alphabetical order

Changes in v4:
Fix indentation

Martin Botka (3):
  dt-bindings: mfd: x-powers,axp152: Document the AXP1530 variant
  mfd: ax20x: Add suppport for AXP1530 PMIC
  regulator: axp20x: Add support for AXP1530 variant

 .../bindings/mfd/x-powers,axp152.yaml         |  1 +
 drivers/mfd/axp20x-i2c.c                      |  2 +
 drivers/mfd/axp20x.c                          | 62 +++++++++++++++++++
 drivers/regulator/axp20x-regulator.c          | 44 +++++++++++++
 include/linux/mfd/axp20x.h                    | 34 ++++++++++
 5 files changed, 143 insertions(+)

-- 
2.38.1

