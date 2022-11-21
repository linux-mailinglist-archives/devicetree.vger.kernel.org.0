Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 346A06329CB
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 17:41:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229701AbiKUQlZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 11:41:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229509AbiKUQlY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 11:41:24 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3B585592
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 08:41:23 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mtr@pengutronix.de>)
        id 1ox9rF-0007nq-Pm; Mon, 21 Nov 2022 17:41:21 +0100
Received: from mtr by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <mtr@pengutronix.de>)
        id 1ox9rA-0003Ni-Ge; Mon, 21 Nov 2022 17:41:16 +0100
Date:   Mon, 21 Nov 2022 17:41:16 +0100
From:   Michael Tretter <m.tretter@pengutronix.de>
To:     Shengyu Qu <wiagn233@outlook.com>
Cc:     devicetree@vger.kernel.org, ezequiel@vanguardiasur.com.ar,
        heiko@sntech.de, jacob-chen@iotwrt.com, kernel@pengutronix.de,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net,
        robh+dt@kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add RGA2 support to rk356x
Message-ID: <20221121164116.GE15565@pengutronix.de>
References: <20221121151755.2072816-3-m.tretter@pengutronix.de>
 <TY3P286MB2611FB223B1CC437B01BD984980A9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <TY3P286MB2611FB223B1CC437B01BD984980A9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, 22 Nov 2022 00:01:28 +0800, Shengyu Qu wrote:
> Someone from pine64 discord found that RGA2 doesn't work properly on over
> 
> 4GB memory RK3568 devices. Are you sure current driver works now?

I am absolutely sure that the driver works on a 2GB ROCK3A board.
Unfortunately, I don't have a device with 4GB or more memory and I cannot test
the driver with such a device.

As the documentation for the RGA2 is the same in the TRM of the rk3288 and
rk3568, I would guess that the driver doesn't work on a rk3288 with more than
4GB (if there is such a thing) either and the driver needs to be fixed for
both SoCs.

Michael
