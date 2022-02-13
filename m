Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C58F4B38DB
	for <lists+devicetree@lfdr.de>; Sun, 13 Feb 2022 03:04:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232845AbiBMCEY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Feb 2022 21:04:24 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:60844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230179AbiBMCEY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 12 Feb 2022 21:04:24 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DD685FF1C
        for <devicetree@vger.kernel.org>; Sat, 12 Feb 2022 18:04:20 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 5FAA160EF2
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 02:04:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F988C340E7;
        Sun, 13 Feb 2022 02:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1644717858;
        bh=4fqpLA3AQP6QvI1Cj4/t8XNJKA4habhVge5VRZOtIwg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=H38R0Go6xWvEJ4jMuB4aAloSJbeS/dRvxuCY0ezs+Wa/I8o4EDuzvNQtF8fBqSU46
         ivyAYI90DYv/z/2mfbMpXxLlDC+8KIeZdez063kbAElR/J+BY9JTcT2xnZtS2SBbqN
         1bLfTr2LdKBFCLdb9VoD4iIod+OgV9Kxd6u0fE6/3Am31RX/kNeb0kUcPVB1g2LHu+
         m+rkYU0V1xR4cEeDIYUQQLd3fV1h0C62A0gmRITMoE8RiKu7nwel44CYBOI+tp0UD6
         uC2b9ZBlMHxkAJK1BSPIuMZDVdk0vngJoq5g1v7i4n2TFkfXufI52ZJZfTO1uuTKsO
         NJFQxMXXYw8Tw==
Date:   Sun, 13 Feb 2022 10:04:14 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de
Subject: Re: [PATCH v2 5/9] dt-bindings: soc: add binding for i.MX8MP HSIO
 blk-ctrl
Message-ID: <20220213020413.GG4909@dragon>
References: <20220207192547.1997549-1-l.stach@pengutronix.de>
 <20220207192547.1997549-5-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220207192547.1997549-5-l.stach@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 07, 2022 at 08:25:43PM +0100, Lucas Stach wrote:
> This adds the binding for the HSIO blk-ctrl on the i.MX8MP SoC.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied, thanks!
