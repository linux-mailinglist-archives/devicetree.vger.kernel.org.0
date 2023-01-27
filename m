Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A3C667DEB5
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 08:53:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229575AbjA0HxB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 02:53:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231287AbjA0HxA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 02:53:00 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 668CA6C127
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 23:52:59 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id F067C61A21
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 07:52:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55717C433EF;
        Fri, 27 Jan 2023 07:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1674805978;
        bh=VBAppkMJFtAu58j7X9LUIoG4yxGDA5AuNKS3v4F8NoE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=CsR2RWjXnB1vEIsEa7Mq8ccjrHR5N1s09H1lCu/LSTfybB+I+7hvlMBV7gxmoN8/c
         xgU58GTVDT8jRKQFWo2WrReBeKtvnfpRC5yZpspFuF6ptJLEE4DdGU8bKhQi/QbRfQ
         8BH+SxD3XS8fDdXNj5LOzRYJ2DSMPE/khDNag1UI8ZjX3oG+ozYSvbqgp/LgMeV5DI
         VrULfdY6lRRzfvyb6ecP0LEoRav09SGsaruzP7enZYMI/MfZVAcz+K8R/aeKb4IqM8
         kFu661L8uS/u4/V9B0sEFIT8TXfYHmevFy+Qk/XS75nVrTs63qdTIWj2RkTLt5xuUq
         X0Jr5tOaX7BjA==
Date:   Fri, 27 Jan 2023 15:52:49 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Sean Anderson <sean.anderson@seco.com>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Camelia Alexandra Groza <camelia.groza@nxp.com>,
        Madalin Bucur <madalin.bucur@nxp.com>,
        Bagas Sanjaya <bagasdotme@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Yang <leoyang.li@nxp.com>
Subject: Re: [PATCH v9 07/10] arm64: dts: ls1046ardb: Add serdes bindings
Message-ID: <20230127075248.GL20713@T480>
References: <20221230000139.2846763-1-sean.anderson@seco.com>
 <20221230000139.2846763-8-sean.anderson@seco.com>
 <20230125234335.GC20713@T480>
 <8074f0be-8a70-a937-49f2-123e0bfc6218@seco.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8074f0be-8a70-a937-49f2-123e0bfc6218@seco.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 26, 2023 at 11:48:53AM -0500, Sean Anderson wrote:
> On 1/25/23 18:43, Shawn Guo wrote:
> > On Thu, Dec 29, 2022 at 07:01:36PM -0500, Sean Anderson wrote:
> >> This adds appropriate bindings for the macs which use the SerDes. The
> >> 156.25MHz fixed clock is a crystal. The 100MHz clocks (there are
> >> actually 3) come from a Renesas 6V49205B at address 69 on i2c0. There is
> >> no driver for this device (and as far as I know all you can do with the
> >> 100MHz clocks is gate them), so I have chosen to model it as a single
> >> fixed clock.
> >> 
> >> Note: the SerDes1 lane numbering for the LS1046A is *reversed*.
> >> This means that Lane A (what the driver thinks is lane 0) uses pins
> >> SD1_TX3_P/N.
> >> 
> >> Because this will break ethernet if the serdes is not enabled, enable
> >> the serdes driver by default on Layerscape.
> >> 
> >> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> >> ---
> >> This depends on [1].
> >> 
> >> [1] https://lore.kernel.org/netdev/20220804194705.459670-4-sean.anderson@seco.com/
> >> 
> >> Changes in v9:
> >> - Fix name of phy mode node
> >> - phy-type -> fsl,phy
> >> 
> >> Changes in v8:
> >> - Rename serdes phy handles to use _A, _B, etc. instead of _0, _1, etc.
> >>   This should help remind readers that the numbering corresponds to the
> >>   physical layout of the registers, and not the lane (pin) number.
> >> 
> >> Changes in v6:
> >> - XGI.9 -> XFI.9
> >> 
> >> Changes in v4:
> >> - Convert to new bindings
> >> 
> >>  .../boot/dts/freescale/fsl-ls1046a-rdb.dts    | 112 ++++++++++++++++++
> >>  drivers/phy/freescale/Kconfig                 |   1 +
> > 
> > The phy driver Kconfig change shouldn't be part of this patch.
> 
> I put it here for bisectability, since this is the point where we need
> to enable it. But I can do this in a separate patch if you want.

From DT ABI perspective, it's already broken anyway if you need to change
kernel and DT atomically.

Shawn
