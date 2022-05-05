Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0990851B682
	for <lists+devicetree@lfdr.de>; Thu,  5 May 2022 05:21:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240964AbiEEDYm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 23:24:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241105AbiEEDYe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 23:24:34 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4D2F21E3A
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 20:20:55 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id A7B26B82B22
        for <devicetree@vger.kernel.org>; Thu,  5 May 2022 03:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64039C385AC;
        Thu,  5 May 2022 03:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1651720853;
        bh=C1UoIuy17MfX8oCgAInzhXtBPcfF6w1tzEfJ3fiFDx8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=sE/AHqZwS0CFdUpHhcaMTdPdnRwssLDh+C8nN9H9nCwYGltqRPW7L41OkSycY/YeV
         cFiaXtD46OHCpUkIVP77BREBVGw7kF9eOEt1afxCeQfSE48k+y94+adVxuailqRoT1
         SQFbWfFd8Cu8YjDisaoWxhY9lbpV3UDXBhGkbSRFXcqIXFFzIxZHvMCcoNq1/0pqcm
         FafjDkrT5wZOalbyDEIhP4Ysw4JFW1w69w1PjTEN2rFS3O1nBjyrSAiQgoZTlIGKnm
         OF4svN5Jax1LleaqzFrd9gqEZ/3vlaLlP661g5qWAcogb3Np5926+ilIdzoOcqSNuI
         27VgOfpaBaaVw==
Date:   Thu, 5 May 2022 11:20:23 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8mm: Add CPLD on MX8Menlo board
Message-ID: <20220505032023.GP14615@dragon>
References: <20220426195901.252611-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220426195901.252611-1-marex@denx.de>
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 26, 2022 at 09:59:01PM +0200, Marek Vasut wrote:
> The CPLD on MX8Menlo board is used to operate custom hardware,
> the CPLD content is compatible with previous M53Menlo CPLD,
> add the bindings.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Fabio Estevam <festevam@denx.de>
> Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: devicetree@vger.kernel.org
> To: linux-arm-kernel@lists.infradead.org

Applied, thanks!
