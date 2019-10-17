Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CE803DA923
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2019 11:49:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405607AbfJQJtJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Oct 2019 05:49:09 -0400
Received: from relay12.mail.gandi.net ([217.70.178.232]:54131 "EHLO
        relay12.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2408604AbfJQJs6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Oct 2019 05:48:58 -0400
Received: from localhost (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
        (Authenticated sender: kamel.bouhara@bootlin.com)
        by relay12.mail.gandi.net (Postfix) with ESMTPSA id 6955320000A;
        Thu, 17 Oct 2019 09:48:56 +0000 (UTC)
From:   Kamel Bouhara <kamel.bouhara@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Ludovic Desroches <ludovic.desroches@microchip.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: [PATCH 0/2] Add DTS for Smartkiz support
Date:   Thu, 17 Oct 2019 11:48:51 +0200
Message-Id: <20191017094853.14669-1-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Yet another Overkiz's SAM9G25 based board and it's documentation.

Kamel Bouhara (2):
  dt-bindings: arm: at91: Document SmartKiz board binding
  ARM: at91: add support for SmartKiz board

 .../devicetree/bindings/arm/atmel-at91.yaml   |   8 ++
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/at91-smartkiz.dts           | 112 ++++++++++++++++++
 3 files changed, 121 insertions(+)
 create mode 100644 arch/arm/boot/dts/at91-smartkiz.dts

--
2.23.0

