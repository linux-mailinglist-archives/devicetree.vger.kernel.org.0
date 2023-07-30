Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E7867768567
	for <lists+devicetree@lfdr.de>; Sun, 30 Jul 2023 15:09:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229559AbjG3NJI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Jul 2023 09:09:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229495AbjG3NJG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Jul 2023 09:09:06 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 647F8130
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 06:09:05 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D494A60C4A
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 13:09:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C737FC433C8;
        Sun, 30 Jul 2023 13:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690722544;
        bh=+PoEOCyAskGd7gB4R321ywRSOlC4+CgN9fneB6gdCiY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=IOKaW1EK+aDsfNlEPR1hkKeYbYtbM/ownhryPodgUOwSO/CM/hIxx7g/Kd8Nf3lEx
         Pb4NGxYxJhzdxnoc3uBAFp2GFwF4Xi5DlvfF5L9kLMOIZYiO2ODbo3NyGzrt3eJb3Z
         JOunH7G2TrZ2DufVBgJzvusFhQtZp4A4SJVbo+Sw+ht4zpofTMLs0hucqTYhwRDtog
         a5PB+ZndHVZEqVxD/8t2EDUNIQTj06MhrcqEjljYwSRsdNApVQyFg32WzEvhldYu6P
         vwRn6R6Pp5kQhizipLqIJpHbu8sIhnkzbFB/0794crR5PrpIr6lK36BJred/ddH0pr
         37QS+zvm+32aA==
Date:   Sun, 30 Jul 2023 21:08:52 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Frank Li <Frank.Li@nxp.com>, Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/3] arm64: dts: imx8qm: Fix VPU core alias name
Message-ID: <20230730130852.GK151430@dragon>
References: <20230721111038.1234387-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230721111038.1234387-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 21, 2023 at 01:10:36PM +0200, Alexander Stein wrote:
> Alias names use dashes instead of underscores, fix this. Silences also
> dtbs_check warning:
> imx8qxp-tqma8xqp-mba8xx.dtb: aliases: 'vpu_core0', 'vpu_core1', 'vpu_core2'
>  do not match any of the regexes: '^[a-z][a-z0-9\\-]*$', 'pinctrl-[0-9]+'
> from schema $id: http://devicetree.org/schemas/aliases.yaml#
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied all, thanks!
