Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B071C611ECE
	for <lists+devicetree@lfdr.de>; Sat, 29 Oct 2022 02:52:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229501AbiJ2Aw0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 20:52:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229482AbiJ2AwZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 20:52:25 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F622188586
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 17:52:24 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id BCE87B82CA1
        for <devicetree@vger.kernel.org>; Sat, 29 Oct 2022 00:52:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C799C433C1;
        Sat, 29 Oct 2022 00:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1667004741;
        bh=w3Ahm5BfD11/31TVPaSgvYLRoMlR3M6140EKol6e4oc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ODWwzxbanRcS5VU2IPTHlM5/ag61REngXMQX2YMvBpfU8MuqnsGCcDnnh4jny8B4x
         XUWo0riWzJmOoC5YABQe2GPb+A8dUiQyaXE9IVkXI9Dep+B+15TvCnL6TGQ4ps2Dt1
         XP2D1DlRYlpyw/msqAbRxjL+Wbd9FUnQlwTjLreos1oloo7dlKgeSNLDjKs2zt7xsJ
         8Kl8PBqUk8TknBHvao0YxP3aQGDH6x5/yIJiCcowrw/Hgf+qo83iAson1MokB+c2Le
         a7z/F6bZCu3MTKgASgXGclyzYC/IRh6F5jtrcmX5ta5sTEVpxCnfAF8UAFtmGqFLPj
         26aKQs0ttJrBg==
Date:   Sat, 29 Oct 2022 08:52:13 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: Re: [PATCH 1/1] arm64: dts: imx8mm-tqma8mqml-mba8mx: Fix USB DR
Message-ID: <20221029005213.GD125525@dragon>
References: <20220926112622.2912885-1-alexander.stein@ew.tq-group.com>
 <20221024013123.GV125525@dragon>
 <5614294.DvuYhMxLoT@steina-w>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5614294.DvuYhMxLoT@steina-w>
X-Spam-Status: No, score=-7.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 24, 2022 at 10:15:28AM +0200, Alexander Stein wrote:
> Hello Shawn,
> 
> Am Montag, 24. Oktober 2022, 03:31:23 CEST schrieb Shawn Guo:
> > On Mon, Sep 26, 2022 at 01:26:22PM +0200, Alexander Stein wrote:
> > > extcon does not work somehow, so switch to usb-role-switch instead.
> > 
> > So extcon was added without testing?
> 
> It had been tested, but apparently only the USB Host case :( extcon itself 
> does work and detects ID pin correctly. Cable states switch when a USB device 
> (mass storage) is attached and removed, thus mass storage is detect and 
> usable.
> But unfortunately this is not the case for USB device using g_serial udc 
> driver. IMHO this seems to be a problem within chipidea usb driver.
> Using usb-role-switch instead, both USB host and USB device do work.

Thanks for the clarification!  Could you improve the commit log a bit
with these information?

Shawn
