Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 535F059F5F0
	for <lists+devicetree@lfdr.de>; Wed, 24 Aug 2022 11:10:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234852AbiHXJKy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 05:10:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235439AbiHXJKw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 05:10:52 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7A75419B7
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 02:10:51 -0700 (PDT)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1oQmPN-0000BE-Jk; Wed, 24 Aug 2022 11:10:45 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1oQmPM-0006rr-Oz; Wed, 24 Aug 2022 11:10:44 +0200
Date:   Wed, 24 Aug 2022 11:10:44 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     Li Jun <jun.li@nxp.com>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, marex@denx.de,
        devicetree@vger.kernel.org, peng.fan@nxp.com,
        Markus.Niebel@ew.tq-group.com, laurent.pinchart@ideasonboard.com,
        paul.elder@ideasonboard.com, linux-imx@nxp.com, aford173@gmail.com,
        linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Subject: Re: [PATCH] arm64: dts: imx8mp: correct usb clocks
Message-ID: <20220824091044.msaa4lymgyrmektl@pengutronix.de>
References: <1661328612-3932-1-git-send-email-jun.li@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1661328612-3932-1-git-send-email-jun.li@nxp.com>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Li,

On 22-08-24, Li Jun wrote:
> After commit cf7f3f4fa9e5 ("clk: imx8mp: fix usb_root_clk parent"),
> usb_root_clk is no longer for suspend clock so update dts accordingly
> to use right bus clock and suspend clock.

Please don't send two seperate patchsets for this topic, since they can
be applied delayed. So your v2 should contain the patches from [1] as
well.

[1] 1661328262-3867-1-git-send-email-jun.li@nxp.com

Regards,
  Marco
