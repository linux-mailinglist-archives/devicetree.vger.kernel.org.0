Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 958C8625100
	for <lists+devicetree@lfdr.de>; Fri, 11 Nov 2022 03:43:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232988AbiKKCnn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 21:43:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233114AbiKKCnZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 21:43:25 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4ECA352897
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 18:38:41 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id C5441B822ED
        for <devicetree@vger.kernel.org>; Fri, 11 Nov 2022 02:38:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF468C433C1;
        Fri, 11 Nov 2022 02:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1668134288;
        bh=+YdWmBEyFjYs/K07Tb5EOB7N3NQX761/wvrHR9XoKv4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=byXU3RscUaiqi7nQV+gqNs8dwSZAp/UFXiMVwF74zChhdBvkUTzN6oNbSxO4yaWjk
         MZX/tzu2QDx9d5D4jQnUBZVmbRSR11L/xinJsWIJ+uD88kC0y54Cqg6oRi1Vxgy4/m
         HaFk3GCBEfgmtu/6XYSMcJgl9x+e8dj3G9yhcKuwQGIo+UDQj/t63NYre1q6Nqs/gL
         +XXZNtz+sQ6Kv7GAFPdeRcqgI6/Zc18OcqXnbqhDON7Km6jgHqrWm4/I316wtuLasm
         aTpr9xG1s8JqcsI6bBoplnKEQ8zwyCjYuaQUUwrfiQnLm9SmZRbrdM4LSo4r1cNfbW
         g75XiwXGcIsng==
Date:   Fri, 11 Nov 2022 10:37:57 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Li Jun <jun.li@nxp.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, xu.yang_2@nxp.com
Subject: Re: [PATCH] arm64: dts: imx8mm/n-evk: enable wakeup-source for usb
 phy
Message-ID: <20221111023757.GG125525@dragon>
References: <1666922318-7062-1-git-send-email-jun.li@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1666922318-7062-1-git-send-email-jun.li@nxp.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 28, 2022 at 09:58:38AM +0800, Li Jun wrote:
> Enable usb phy to be wakeup source to support system wakeup
> from usb.
> 
> Signed-off-by: Li Jun <jun.li@nxp.com>

Applied, thanks!
