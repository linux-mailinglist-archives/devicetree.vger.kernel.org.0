Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D37D6C007B
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 11:06:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229911AbjCSKGc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 06:06:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229799AbjCSKGa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 06:06:30 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D184023D81
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 03:06:29 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1pdpvn-0007gj-Oi; Sun, 19 Mar 2023 11:06:27 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1pdpvm-005CGG-Vv; Sun, 19 Mar 2023 11:06:27 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1pdpvm-00673y-79; Sun, 19 Mar 2023 11:06:26 +0100
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     devicetree@vger.kernel.org, kernel@pengutronix.de
Subject: [PATCH 0/3] of: unittest: Convert to platform remove callback returning void
Date:   Sun, 19 Mar 2023 11:06:17 +0100
Message-Id: <20230319100620.295849-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1196; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=m60KJD4XSMgQ4B1ucbxtce22rRHQjekjawzF6Uuwn0U=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBkFt6TemPMJ7PtLgawGSB5MECHNlZBq+G2Y+rG/ czasAK4SliJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZBbekwAKCRCPgPtYfRL+ TspYB/9YJjlZeBexHaAJoTT8mT3frnPyp6bCtIuw0/tzj1P0SHzti2pbhp/G4HEQ/JuiC52X6Jq z2UJ6EEV4Z/yykB3DFkjtw7J2EBhmoSsnVei+T/GTBgE/yuZOmZ/S56ClLT3BZsQ+GPt5xNwFDp U8sni5lkMf7Dfsa8cjrgomdbyWd96/SU2884lg4uI9LBF31KHhigP6Ka2DZndwK8yX6dnE0Ysol G6KQwkn3ZJ52n/JIxuEwNqnwyXZS3Ta2embWi9ESxeX/4CRhUilf1GBFAeMlWeB9hETua1noYtJ LkVn3mE5DdfYrKLUkZxxAeKMsoPj0l35+xgQa3ru3A7upnhu
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

this series converts the of unittests to use the
.remove_new() callback. Compared to the traditional .remove() callback
.remove_new() returns no value. This is a good thing because the driver core
doesn't (and cannot) cope for errors during remove. The only effect of a
non-zero return value in .remove() is that the driver core emits a warning. The
device is removed anyhow and an early return from .remove() usually yields a
resource leak.

By changing the remove callback to return void driver authors cannot
reasonably assume any more that there is some kind of cleanup later.

The first patch is an orthogonal cleanup. The second patch fixes the one
driver that doesn't already always return zero in .remove(). The last
patch does the actual conversion.

Best regards
Uwe

Uwe Kleine-König (3):
  of: unittest: Drop call to platform_set_drvdata(..., NULL)
  of: unittest: Drop if blocks with always false condition
  of: unittest: Convert to platform remove callback returning void

 drivers/of/unittest.c | 21 ++++++---------------
 1 file changed, 6 insertions(+), 15 deletions(-)


base-commit: fe15c26ee26efa11741a7b632e9f23b01aca4cc6
-- 
2.39.2

