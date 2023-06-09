Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 691BF729C9F
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 16:20:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238158AbjFIOUN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 10:20:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232446AbjFIOUN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 10:20:13 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D48430F3
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 07:20:12 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 7BA3462D03
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 14:20:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36716C433D2;
        Fri,  9 Jun 2023 14:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1686320410;
        bh=bZogR9rLa8b+LoJymIKaQNloHtK2uH4tMA75gnJLxZU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=u59oT3hyhVgVr9aPuA9KYHDCrrBIhl2uoOkWJ9mSGtkOdrSVGgOwKxxDJHeLPa5uQ
         sPawyFuBP/cZ3BV5gcmb0sydB5c5xR/ehxMU65prcc0gBJmDOJeg08WhAYj91NaBMd
         BLKkqn3LDJecIacwWJ6KCV7F1IjCjGPsM1rDpIeXXZKHSdO1GVp1lzqjvKqTw0KG5i
         R5wSSANtHVkYhWulEN9lUPjnyX57nl3IcYZyeuxTTTpq1JA+Cyjr4EOjn+2erG/j0H
         UHROf09Y+HXtWZbhlEnk5rg8iFpoi4CXa0YlQKvLJFpcbLIrYXLLcdaHiA7qt0GFD7
         2pmPwUp7x/B+A==
Date:   Fri, 9 Jun 2023 22:19:57 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        patchwork-lst@pengutronix.de
Subject: Re: [PATCH] arm64: dts: imx8mp: don't initialize audio clocks from
 CCM node
Message-ID: <20230609141957.GY4199@dragon>
References: <20230602191013.4124840-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230602191013.4124840-1-l.stach@pengutronix.de>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 02, 2023 at 09:10:13PM +0200, Lucas Stach wrote:
> The audio clocks should be intitialized to the correct rate by the subsystem
> using them. There is no need to always initialize them from the CCM node
> assigned-clocks property. This way boards using the audio clocks in a non-
> standard way can change them without first duplicating the CCM clock
> setup.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied, thanks!
