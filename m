Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EFB8167C4FC
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 08:42:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233130AbjAZHm2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 02:42:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229630AbjAZHm2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 02:42:28 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F2B565F1D
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 23:42:27 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id ED36A616E8
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 07:42:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3489C433EF;
        Thu, 26 Jan 2023 07:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1674718946;
        bh=f85KJo7r6MSMWwq3KBeJc6NmcQoFAb7euxULFwRotI8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=qVIiSCBKZbwY/re7Rq0VIK1NTNotgFaCF472zTkPjVhydNdJuhUOSEzHNAltM7Tdo
         mnRtEQ198qS8hV5J15Lf9TUSVfRg7TL54dO/qRUhfNzfqMJ7LNS9zyCimssI6iUmCU
         nSb3j1v/UG65LIchWvtwmxN30nwCBoclwHvLghxJbuNHrFpz78eWpYhcaEqCCAl/Xn
         tkmoRvAed4BRcdFdhedC1YN5nqK/lJ18ZBakLL465V0vSM/TUYIrlz7Km46tkReOhU
         tZV3VZQk/R+CSMLnLKEDHyEsiXChpmvNYfFxvRk76lju1IS2uHhpn9X7ziZlbWRB5N
         vHHMeJj0phw1A==
Date:   Thu, 26 Jan 2023 15:42:20 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        peng.fan@nxp.com, shengjiu.wang@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: imx8mm-evk: use correct gpio-expander
 compatible
Message-ID: <20230126074219.GY20713@T480>
References: <20230117171837.3122129-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230117171837.3122129-1-m.felsch@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 17, 2023 at 06:18:37PM +0100, Marco Felsch wrote:
> Commit c871335217e7 ("arm64: dts: imx8mm-evk: Enable pca6416 on i2c3
> bus") says that the assembled expander is a PCA6416 and not a TCA6416.
> No functional change since the driver handles both expanders the same
> way.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Applied, thanks!
