Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BACD54E77D1
	for <lists+devicetree@lfdr.de>; Fri, 25 Mar 2022 16:37:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345213AbiCYPfv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 11:35:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377155AbiCYPdN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 11:33:13 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5907E19C08
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 08:28:36 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 16063B8288D
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 15:28:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4596C340E9;
        Fri, 25 Mar 2022 15:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1648222113;
        bh=L1Z6Za1aEKMOiJGWukUtcTk4fT19c9ZafdifB0eS2lo=;
        h=From:To:Cc:Subject:Date:From;
        b=uyWqbqXuArSKGWKVYuT3AYpsbSz+hgCuAOcuSc0JbJZsZWT8DBT7MiNhxQuWtgs1w
         VMUmFKCKLUKH1EOi0zPjZTPEvxZiheUz4mYkb+GNTqtZXztjQL2MY4CTMDVPtTWEVy
         D5FmY24W7VDDxFw+yYEBZK+Vf0eUwvw21fVm+3dcj0lqY1SR/1ykXGI8tiIAhhDZ1G
         DSodDmqNlAAzz4yXIj3dYamX+t9ryeEj5PdirYvg9e2ETtEBtV+82nVKuk9o7NaAF+
         JVVATKzA0nv8Z3/MTGGdkZ76fCCk6WGOYnJUl/layhiRVs1U108MlygtJx76VXM/Vp
         sXHan9+pgTQMw==
From:   Mark Brown <broonie@kernel.org>
To:     Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Mark Brown <broonie@kernel.org>
Subject: [PATCH v1 0/2] ARM: dts: at91: Fixes for AT91SAM9G20-EK audio DTS
Date:   Fri, 25 Mar 2022 15:27:13 +0000
Message-Id: <20220325152715.1597893-1-broonie@kernel.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1039; h=from:subject; bh=L1Z6Za1aEKMOiJGWukUtcTk4fT19c9ZafdifB0eS2lo=; b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBiPd9QrcWueG7eGoUwpbNL9YbdjRgP55Anp96OGUTd drlz6BCJATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCYj3fUAAKCRAk1otyXVSH0GZXB/ 9JvnacRLmLhDBP69a4D3bc0VLN0mdP3DadtMFZELuXjgwKd5Qi8oTt7spA993trgibK/1laNJa/3Yb tV8ELOX+F+eeAdzpqyjGDt77OOaxB2L5vbXtfvtPGT0/wKz7iwrFF3CHQQCM9mU+Uv5vGdDzSWUYq8 rCMhnr4RKJ+0blGfmp1tzG8Xq/TVU17kW0D8Bq8UIFodrFdYoNRJQAjIfdYma8wrrS7K5UWvnnNgjT AMMTYzGgO0JGveI7Llmp8sRriNrWfl4EwetED11wMVvdHOyTbbnCcY/SDI4FPzCM4NDgVn8dAuVmql KK+cgPyJpiJ0rtwvl+9HEl8maCITLA
X-Developer-Key: i=broonie@kernel.org; a=openpgp; fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-8.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DT description for the audio subsystem on the AT91SAM9G20-EK
reference board is a bit bitrotted, the clocking for the WM8731 audio
CODEC is not described. Previously this was handled in the machine
driver but at some point in the transition to the common clock framework
that code was broken and rendered mostly redundant so the first patch
adds a mapping of the MCLK on the CODEC which is used via existing code
in it's driver.

We also have some warnings on both the WM8731 and the MMC from the
regulator framework since the supplies on the board aren't described.
These don't fundamentally matter since they are fixed voltage regulators
and not controlled by software at runtime but it's nicer to fix them.

Mark Brown (2):
  ARM: dts: at91: Map MCLK for wm8731 on at91sam9g20ek
  ARM: dts: at91: Describe regulators on at91sam9g20ek

 arch/arm/boot/dts/at91sam9g20ek_common.dtsi | 42 +++++++++++++++++++++
 1 file changed, 42 insertions(+)


base-commit: f443e374ae131c168a065ea1748feac6b2e76613
-- 
2.30.2

