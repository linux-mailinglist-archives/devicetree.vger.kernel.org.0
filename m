Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 80271FE24E
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2019 17:08:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727666AbfKOQId (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Nov 2019 11:08:33 -0500
Received: from metis.ext.pengutronix.de ([85.220.165.71]:36171 "EHLO
        metis.ext.pengutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727564AbfKOQId (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Nov 2019 11:08:33 -0500
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28] helo=dude02.lab.pengutronix.de)
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1iVe90-0002S4-MD; Fri, 15 Nov 2019 17:08:22 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1iVe8y-00047B-5i; Fri, 15 Nov 2019 17:08:20 +0100
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     robh+dt@kernel.org, KCHSU0@nuvoton.com, broonie@kernel.org,
        thomas.fehrenbacher@siedle.de
Cc:     kernel@pengutronix.de, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
Subject: [PATCH 0/3] Add NAU8812 support
Date:   Fri, 15 Nov 2019 17:08:16 +0100
Message-Id: <20191115160819.15557-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

this small series adds the documentation and support for the nau8812
devices. The exisiting nau8810 driver can handle both devices so we only
need to add the dt-bindings and inform the user by adapting the Kconfig
entry.

Futhermore the series adds the support for the aux-port control.

@John Hsu
Please can you verify that register accesses to the aux-port control
bits don't affect the nau8810 devices? I don't have such a device but
the documentations says that those register fields are just '0'ed. So I
assume the nau8810 devices ignore such writes.

Marco Felsch (2):
  dt-bindings: ASoC: add nau8812 documentation
  ASoC: nau8810: add support for nau8812

Thomas Fehrenbacher (1):
  ASoC: nau8810: add aux input control, available on NAU8812

 Documentation/devicetree/bindings/sound/nau8810.txt | 2 +-
 sound/soc/codecs/Kconfig                            | 2 +-
 sound/soc/codecs/nau8810.c                          | 9 +++++++++
 sound/soc/codecs/nau8810.h                          | 2 ++
 4 files changed, 13 insertions(+), 2 deletions(-)

-- 
2.20.1

