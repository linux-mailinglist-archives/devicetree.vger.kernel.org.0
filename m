Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 171ED476371
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 21:38:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236207AbhLOUhb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 15:37:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234794AbhLOUha (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 15:37:30 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DCE1C061574
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 12:37:30 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1mxb1g-0006jt-Nh; Wed, 15 Dec 2021 21:37:24 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1mxb1c-004jAZ-H1; Wed, 15 Dec 2021 21:37:19 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1mxb1a-0001PX-Jn; Wed, 15 Dec 2021 21:37:18 +0100
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
To:     Fabrice Gasnier <fabrice.gasnier@foss.st.com>
Cc:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
Subject: [PATCH v2 0/2] ARM: dts: stm32: Add timer interrupts
Date:   Wed, 15 Dec 2021 21:37:07 +0100
Message-Id: <20211215203709.52916-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

compared to (implicit) v1, I split the changes into two patches now and
improved the commit log a bit.

It's not entirely clear to me, who will merge these patches (assuming
they are considered ok)?!

Best regards
Uwe

Uwe Kleine-König (2):
  dt-bindings: mfd: stm32-timers: Document how to specify interrupts
  ARM: dts: stm32: Add timer interrupts

 .../bindings/mfd/st,stm32-timers.yaml         | 13 +++++++
 arch/arm/boot/dts/stm32mp151.dtsi             | 34 +++++++++++++++++++
 2 files changed, 47 insertions(+)


base-commit: 0bafb8f3ebc84525d0ae0fcea22d12151b99312f
-- 
2.33.0

