Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF9F84F8EFE
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 09:07:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235220AbiDHGhV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 02:37:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234658AbiDHGhQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 02:37:16 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6CA53DA74
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 23:35:13 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1nciD8-0002FR-Ep; Fri, 08 Apr 2022 08:35:10 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1nciD6-001kex-8Y; Fri, 08 Apr 2022 08:35:06 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1nciD4-001ukW-0I; Fri, 08 Apr 2022 08:35:06 +0200
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
To:     Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, kernel@pengutronix.de,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Lee Jones <lee.jones@linaro.org>,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/2] ARM: dts: stm32: Add timer interrupts
Date:   Fri,  8 Apr 2022 08:35:00 +0200
Message-Id: <20220408063502.136403-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=694; h=from:subject; bh=os+sB465SUAoV3Y8OsU7DaePMiyec5Wvr70CxiCJCyI=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBiT9eM0iRXjV1Ht7pazClNVlbL//HKP30hOBKaXeix YorcU8mJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCYk/XjAAKCRDB/BR4rcrsCS/tB/ 4ghq9F68lfO3lSrTRFIMPZvE3nQIK39+WFcbK63JGXiTSri5vOLbNaqVrdsl/ZZMynJ+CIiS7kdOyp Qb7E3f6S9r7Gg0KWVuF3zEH1jgfC3WwbxMW5TbXcqF0mcyf7aD+AaWgI36WxZrxWQCg5oPDAIV0cNx 66ep8SQPIrrwtuLTyZPDqQzVykLn/vGQGur3f048jguHkUmEB5FS6fCNK0k7qflIGEV1dcYGwCqz98 clAx1q3sXx4WQ23OLPM5KHUJHulMgbeasL9ICMhqST6NPDAZFsRUZNF5JXTscKDDJx5NyqtWw+U6u4 FVAd0Rq1l9M/PvukTcA1uWZmAOWXuc
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

compared to v2
(https://lore.kernel.org/linux-arm-kernel/20211215203709.52916-1-u.kleine-koenig@pengutronix.de)
I mentionend the SoC variant in the subject line and added Rob to To: to
get an all clear for the STM people to apply it. (Both indicated by
Alexandre via PM.)

Best regards
Uwe

Uwe Kleine-König (2):
  dt-bindings: mfd: stm32-timers: Document how to specify interrupts
  ARM: dts: stm32mp15x: Add timer interrupts

 .../bindings/mfd/st,stm32-timers.yaml         | 13 +++++++
 arch/arm/boot/dts/stm32mp151.dtsi             | 34 +++++++++++++++++++
 2 files changed, 47 insertions(+)


base-commit: 3123109284176b1532874591f7c81f3837bbdc17
-- 
2.35.1

