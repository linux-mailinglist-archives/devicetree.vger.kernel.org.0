Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 07449664F3B
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 23:59:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231596AbjAJW6C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 17:58:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234489AbjAJW5b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 17:57:31 -0500
X-Greylist: delayed 66 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 10 Jan 2023 14:57:29 PST
Received: from xtrwkkxd.outbound-mail.sendgrid.net (xtrwkkxd.outbound-mail.sendgrid.net [167.89.17.173])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E1D9E89
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 14:57:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
        h=from:subject:mime-version:to:cc:content-transfer-encoding:
        content-type:cc:content-type:from:subject:to;
        s=s1; bh=6ZWg242ARAu9nPb5WSm5B9LJkeQqaU7EN/Do4yz6zdU=;
        b=mHjjgy3YZf2HP5s3xrvYm6ikGxTnX1ypIF2fdOFiBl3wbMdxVKKwVZIpOhF6zEEqN6NV
        eaUEB6uga2PZybfE8sQbv7Ch2Gp50VJxz2z1hAEveu3UviUgaKccUp19OHuGogUWMPH8mP
        nwsiXy3xih01n+OwqW5yyKrcxeM40cR6akPF1mypb2ZLn0eR4R87cpOrBZXtQ+YcML4VdE
        skxaw6OEOok6S1rcSmZLOJx/wN9/WqU1uB7D2zHV0hzpaEjEAm4if4MhHmxyhDupAbcVIx
        cwCgzb8t2tqu9T02FjUIr/nx+B8aoJmaX29C/c5vF//zik3O/Mnwv8tEkEf5pMzQ==
Received: by filterdrecv-69c5db5cf4-rhmnr with SMTP id filterdrecv-69c5db5cf4-rhmnr-1-63BDECF6-2
        2023-01-10 22:55:50.123018673 +0000 UTC m=+908336.910790272
Received: from bionic.localdomain (unknown)
        by geopod-ismtpd-6-0 (SG)
        with ESMTP
        id CuugowVBRhuwrdY-kQgdWw
        Tue, 10 Jan 2023 22:55:49.755 +0000 (UTC)
From:   Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 0/2] Fix HDMI CEC on Radxa ROCK 3 Model A
Date:   Tue, 10 Jan 2023 22:55:50 +0000 (UTC)
Message-Id: <20230110225547.1563119-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h2Ka1=2F2lP9RML5+0X?=
 =?us-ascii?Q?Av4b9yN0QJBSP4lP4aJcxkv1=2FMe91b5nCQhEq4F?=
 =?us-ascii?Q?DcvZsEclEt+WZEUXAhk5v4efo78N80YTp3lOfNr?=
 =?us-ascii?Q?dHqKgkJ3iTMfHUEGKSfGBtL+J0umW1LYX1AKUO5?=
 =?us-ascii?Q?vZOuEPnXEbPyEWZ=2FH6MNlOAWKjnH6tLtmNpXCx?=
To:     Heiko Stuebner <heiko@sntech.de>,
        linux-rockchip@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Chukun Pan <amadeus@jmu.edu.cn>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Jonas Karlman <jonas@kwiboo.se>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=us-ascii
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The HDMI CEC is not working correctly on Radxa ROCK 3 Model A.

This series assigns a clock rate of 32768 to hdmi cec clock and a pinctrl
to use HDMITX_CEC_M1 function of GPIO0_C7.

Please note that this series also requires a fix in the pinctrl driver to
correctly select HDMITX IO mux M1 for a fully working HDMI CEC, see [1].

[1] https://lore.kernel.org/all/20230110084636.1141740-1-jonas@kwiboo.se/

Jonas Karlman (2):
  arm64: dts: rockchip: assign rate to clk_rtc_32k on rk356x
  arm64: dts: rockchip: fix hdmi cec on rock-3a

 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 1 +
 arch/arm64/boot/dts/rockchip/rk356x.dtsi        | 5 +++--
 2 files changed, 4 insertions(+), 2 deletions(-)

-- 
2.39.0

