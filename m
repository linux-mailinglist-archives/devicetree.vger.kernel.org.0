Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D8FE5476373
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 21:38:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236211AbhLOUhc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 15:37:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236204AbhLOUha (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 15:37:30 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DD24C06173E
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 12:37:30 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1mxb1g-0006jz-Ni; Wed, 15 Dec 2021 21:37:25 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1mxb1c-004jAa-LL; Wed, 15 Dec 2021 21:37:19 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1mxb1a-0001Pd-QY; Wed, 15 Dec 2021 21:37:18 +0100
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
To:     Fabrice Gasnier <fabrice.gasnier@foss.st.com>
Cc:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
Subject: [PATCH v2 1/2] dt-bindings: mfd: stm32-timers: Document how to specify interrupts
Date:   Wed, 15 Dec 2021 21:37:08 +0100
Message-Id: <20211215203709.52916-2-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211215203709.52916-1-u.kleine-koenig@pengutronix.de>
References: <20211215203709.52916-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Patch-Hashes: v=1; h=sha256; i=Ua29ErnMvWtG1PwQBhezjCBc0JdZIdojjLdmzLrVbUI=; m=+CoshTMQi81nxraUkr7hDTo2psUjT5b4zYhDqufPh1I=; p=/mxG1k3fCbRerhEOYpdM+MZtKGQJLNPg2ukDm32ylDw=; g=5d77fa5d4d1d7e5b7e26ff01a2a2e38084109227
X-Patch-Sig: m=pgp; i=u.kleine-koenig@pengutronix.de; s=0x0D2511F322BFAB1C1580266BE2DCDD9132669BD6; b=iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmG6Ue0ACgkQwfwUeK3K7An+iAf+Nri OkQrY9qL3ThwzwmDwXCTZ/3wWz8PoXbtB/6wU9flfA4lrfmXn03GtFEb4Hkow0gkwp/U0CDcDBvbQ 6NSGp969P2x1br+iyvotVUCSnk6zJLv0TNThtlF+Vj7f7uTNAztJmkFZt76mjVY6+xzaCSkhFlMg+ rxgCE7swC3xdTV5NO5orTiOkAbHb+lNn4V1LuGmiJ/n2njRj7YERpuj7uY29UspDA+MhwY9IrnQ5N MW1xNcCH8ZONZ2Y775lkFGYS3RB741lR7OgE0pgXXPvl7Fmam3St9DPkRiIpcgdisWHczCnaea2xp Qs/yZitwZCEZURmsQLwBytInQeD+IQA==
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The timer units in the stm32mp1 CPUs have interrupts, depending on the
timer flavour either one "global" or four dedicated ones. Document how
to formalize these in a device tree.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 .../devicetree/bindings/mfd/st,stm32-timers.yaml    | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml b/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
index 10b330d42901..5e4214d1613b 100644
--- a/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
+++ b/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
@@ -46,6 +46,19 @@ properties:
     minItems: 1
     maxItems: 7
 
+  interrupts:
+    maxItems: 4
+
+  interrupt-names:
+    anyOf:
+      - items:
+          - const: global
+      - items:
+          - const: brk
+          - const: up
+          - const: trg-com
+          - const: cc
+
   "#address-cells":
     const: 1
 
-- 
2.33.0

