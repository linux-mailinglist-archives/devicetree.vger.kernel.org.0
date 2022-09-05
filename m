Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C17D85AC884
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 03:28:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231922AbiIEB2M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Sep 2022 21:28:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229702AbiIEB2L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Sep 2022 21:28:11 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6005A2BB37
        for <devicetree@vger.kernel.org>; Sun,  4 Sep 2022 18:28:07 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 3E1D761045
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 01:28:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E52E2C433D6;
        Mon,  5 Sep 2022 01:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1662341286;
        bh=0mTbvwSHe4ATzyC6Gj7sTLXrmYXXng8MbSJ/6opxwXI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=UJsyBhNKQjDuwOURbLXYYDWrqGGI8ZRezpFYm3dv7c77E8FSMDfn1/uefLHIMnCjm
         XmvhQkM15Fk6VmG0DqHYDZpj3r48+peDhTQSLXSiebvZRi6LPqWCFA8GABiE9FRu0O
         VIdEzIRGGUpibRXLlvQXbOBC+Ju0KdRys7ol6mjA5dHk2HGEwM1VXnX1ndz8xGC5A9
         MwFw4O6+h2pA6j/yhE2dqpZ0p/pS/K9OzgCy8dGhJAQA/IoZDDAzvYGHSBXTx2ANzN
         izHq/Qjz1MXtUusYXOp25ar1UXEl6aBMW7kcXnP2oHH+xc+hPkj+tvxgoEYfxExIQH
         BPW7GTmaXmNAw==
Date:   Mon, 5 Sep 2022 09:28:00 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/6] Add missing sram properties for imx6
Message-ID: <20220905012800.GU1728671@dragon>
References: <20220826055336.2821876-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220826055336.2821876-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 26, 2022 at 07:53:30AM +0200, Alexander Stein wrote:
> Hi all,
> 
> this is another bunch of imx6 DT fixes for sram, similar to 5655699cf5cf
> ("ARM: dts: imx6ul: add missing properties for sram").
> 
> Best regards,
> Alexander
> 
> Alexander Stein (6):
>   ARM: dts: imx6q: add missing properties for sram
>   ARM: dts: imx6dl: add missing properties for sram
>   ARM: dts: imx6qp: add missing properties for sram
>   ARM: dts: imx6sl: add missing properties for sram
>   ARM: dts: imx6sll: add missing properties for sram
>   ARM: dts: imx6sx: add missing properties for sram

Applied all, thanks!
