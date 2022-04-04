Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA3824F1314
	for <lists+devicetree@lfdr.de>; Mon,  4 Apr 2022 12:28:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349150AbiDDKaJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Apr 2022 06:30:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245337AbiDDKaI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Apr 2022 06:30:08 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 908C93C720
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 03:28:13 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 2C60F614FF
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 10:28:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C886AC2BBE4;
        Mon,  4 Apr 2022 10:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1649068092;
        bh=sfU6uvefBzUCdImb/5DccK6ujXvFtdLeWQdq9M9/UCg=;
        h=From:To:Cc:Subject:Date:From;
        b=LC0A0aitj7sTAWKVWvAs+M68Pj/Qdajqm53n9nQmVWRxThDC/mdFUyXtaTZZSg1TJ
         iZHkVvERoqFtVy6DqXtbPMSQsDj6RX647Hh/3cqSH2EnacmjEkAtv6xgR3BL7EF6eY
         gUAkubLdG6X93rOsWq2GZ/S70wB0pXlhwnOa+bfCkEVu52QtUeCUiBZ5HFN0+avlx+
         V1fHbqYxDsDkMYwLVwvYl2ijb8sii4AzsxdL6rk0ImbjGUpS8nMpXqacBReEBZzGfx
         eSvBPPeqMMIcErym+LiiJ4qq5eoXQKV8jPc+h9x+ahvmmhGJRhjLkncQl+hpZaePD4
         BT64cq4TrlJkQ==
From:   Mark Brown <broonie@kernel.org>
To:     Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Mark Brown <broonie@kernel.org>
Subject: [PATCH v2 0/2] ARM: dts: at91: Fixes for AT91SAM9G20-EK DTS
Date:   Mon,  4 Apr 2022 11:28:04 +0100
Message-Id: <20220404102806.581374-1-broonie@kernel.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1151; h=from:subject; bh=sfU6uvefBzUCdImb/5DccK6ujXvFtdLeWQdq9M9/UCg=; b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBiSsgzpoSIoIyccQpYgy4x9bH0ujBXtjCzRYRWNO8z 3PQ3WA6JATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCYkrIMwAKCRAk1otyXVSH0Nu8B/ 40ORdb5CDB4wI1jR8ZOzIBoaKEo1Dqclo+C47jlcCGECZrQqOvs7pWj3SeZxE3kzbm0XSqFTYvYre1 E55ym4GzyNmh586IEmKZ+E/WgjXTcPTXHQLY0+YwlMjcgORvbAWbtrdgA+DUbvIslzc4tFxFUPi+/+ NOn40iQen6tvmstsMTRrgqqgK1OzFTVqt4lnzsl7cbHoh/CRqjIftcurMmtQgv2JlSmd/nDC7wLnsy lSgv6WHpG4uUzeyuowhm/qGizkRfvL9acdCNhqAO3KAmhDiD2t7xGJeb+mRHPTzy0Jq2Ce3BaHBYw9 uVWD6yPgXGbGYB0A6Ssa1rU1ldDV/K
X-Developer-Key: i=broonie@kernel.org; a=openpgp; fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
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

We also have some warnings on the WM8731, EEPROM and the MMC from the
regulator framework since the supplies on the board aren't described.
These don't fundamentally matter since they are fixed voltage regulators
and not controlled by software at runtime but it's nicer to fix them.

v2:
 - Rebase onto v5.18-rc1.
 - Also cover the serial EEPROM supply which is requested by that driver.

Mark Brown (2):
  ARM: dts: at91: Map MCLK for wm8731 on at91sam9g20ek
  ARM: dts: at91: Describe regulators on at91sam9g20ek

 arch/arm/boot/dts/at91sam9g20ek_common.dtsi | 43 +++++++++++++++++++++
 1 file changed, 43 insertions(+)


base-commit: 3123109284176b1532874591f7c81f3837bbdc17
-- 
2.30.2

