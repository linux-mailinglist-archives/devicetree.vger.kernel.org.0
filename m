Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B8FAC40915B
	for <lists+devicetree@lfdr.de>; Mon, 13 Sep 2021 15:59:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244023AbhIMOAz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Sep 2021 10:00:55 -0400
Received: from comms.puri.sm ([159.203.221.185]:39610 "EHLO comms.puri.sm"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S243728AbhIMN6o (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 13 Sep 2021 09:58:44 -0400
Received: from localhost (localhost [127.0.0.1])
        by comms.puri.sm (Postfix) with ESMTP id 062D2E0FDD;
        Mon, 13 Sep 2021 06:57:25 -0700 (PDT)
Received: from comms.puri.sm ([127.0.0.1])
        by localhost (comms.puri.sm [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id 6djZ9Dce4JhH; Mon, 13 Sep 2021 06:57:24 -0700 (PDT)
From:   Martin Kepplinger <martin.kepplinger@puri.sm>
To:     robh@kernel.org, shawnguo@kernel.org, kernel@pengutronix.de,
        festevam@gmail.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        kernel@puri.sm, Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: [PATCH v1 0/6] arm64: dts: imx8mq-librem5: wifi updates and minor fixes
Date:   Mon, 13 Sep 2021 15:57:00 +0200
Message-Id: <20210913135706.309685-1-martin.kepplinger@puri.sm>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

hi,

In order to maintain support the Librem 5 phone, this updates the
DT description. It's mainly wifi additions.

thanks a lot,

                           martin

Angus Ainslie (3):
  arm64: dts: imx8mq-librem5: delay the startup of the SDIO
  arm64: dts: imx8mq-librem5: add power sequencing for M.2 cards
  arm64: dts: imx8mq-librem5: Limit the max sdio frequency

Guido Günther (1):
  arm64: dts: imx8mq-librem5: wire up the wifi regulator

Martin Kepplinger (1):
  arm64: dts: imx8mq-librem5: add reset gpio to mantix panel description

Sebastian Krzyszkowiak (1):
  arm64: dts: imx8mq-librem5: Fix led_r and led_g pinctrl assignments

 .../boot/dts/freescale/imx8mq-librem5.dtsi    | 43 ++++++++++++++++++-
 1 file changed, 41 insertions(+), 2 deletions(-)

-- 
2.30.2

