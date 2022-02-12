Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB4EE4B31FB
	for <lists+devicetree@lfdr.de>; Sat, 12 Feb 2022 01:28:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347576AbiBLA2n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 19:28:43 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:60660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354449AbiBLA2m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 19:28:42 -0500
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2EB4D9B
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 16:28:37 -0800 (PST)
Received: from p508fd6ee.dip0.t-ipconnect.de ([80.143.214.238] helo=phil.fritz.box)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1nIgHE-0003EL-HH; Sat, 12 Feb 2022 01:28:36 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org
Cc:     Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm: dts: rockchip rk322x: reorder hmdi clocks
Date:   Sat, 12 Feb 2022 01:28:34 +0100
Message-Id: <164462570821.854738.7048363448978256354.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220210142353.3420859-1-s.hauer@pengutronix.de>
References: <20220210142353.3420859-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,T_SPF_HELO_TEMPERROR autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 10 Feb 2022 15:23:53 +0100, Sascha Hauer wrote:
> The binding specifies the clock order to "iahb", "isfr", "cec". Reorder
> the clocks accordingly.

Applied, thanks!

[1/1] arm: dts: rockchip rk322x: reorder hmdi clocks
      commit: be4e65bdffab5f588044325117df77dad7e9c45a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
