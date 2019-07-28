Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4242A781A4
	for <lists+devicetree@lfdr.de>; Sun, 28 Jul 2019 23:04:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726193AbfG1VEc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Jul 2019 17:04:32 -0400
Received: from antares.kleine-koenig.org ([94.130.110.236]:35742 "EHLO
        antares.kleine-koenig.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726097AbfG1VEb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Jul 2019 17:04:31 -0400
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
        id D59FE741559; Sun, 28 Jul 2019 23:04:29 +0200 (CEST)
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Ludovic Desroches <ludovic.desroches@microchip.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        info@acmesystems.it
Subject: [PATCH 0/2] at91: add support for Arietta G25
Date:   Sun, 28 Jul 2019 23:04:01 +0200
Message-Id: <20190728210403.2730-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

I now took the time to work on mainline support for the Arietta G25.

It boots fine on v5.3-rc1 apart from the issue I reported on the Linux
ARM list yesterday[1].

Best regards
Uwe

[1] http://lists.infradead.org/pipermail/linux-arm-kernel/2019-July/669167.html

Uwe Kleine-König (2):
  dts: add vendor prefix "acme" for "Acme Systems srl"
  ARM: dts: at91: add support for Arietta G25

 .../devicetree/bindings/vendor-prefixes.yaml  |  2 +
 arch/arm/boot/dts/at91sam9g25-arietta.dts     | 86 +++++++++++++++++++
 2 files changed, 88 insertions(+)
 create mode 100644 arch/arm/boot/dts/at91sam9g25-arietta.dts

-- 
2.20.1

