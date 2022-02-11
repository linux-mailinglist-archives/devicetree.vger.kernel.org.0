Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6E894B1CFD
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 04:37:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229534AbiBKDhx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Feb 2022 22:37:53 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:54032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234699AbiBKDhw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Feb 2022 22:37:52 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94992B73
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 19:37:52 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 57330B82697
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 03:37:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93C8CC004E1;
        Fri, 11 Feb 2022 03:37:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1644550670;
        bh=cTC0oL8FxdRoFWpgWRcoS99Tl2LILqmYFNkHW7a4k2Y=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=k8U4QKPGRie6PhqDJjqzjM15V2Xv1Z3rDXAVkkNTaSN7KTKBefwXR7s5G5KZOrlDd
         gdrJphA2Cnk4jvNOB+LdGQcWvNj2nOTfI7hgQm2PfiqWAVYh3eGE2LuyIBUF5YBBK6
         PZye2uKtM3iPNWFVatfwBW1yWrFLa+1MY0XZqQ8nVN6wAZs9ppSGxZGUjA49gMk9gf
         GyLHyCSU5bMvIb2CNCzeiGI/52wP0+lmDzBxuxhuKi5u+nBIMwLGia5Sf4Lbq1uoqc
         q7Rt+d1NmAwgnZrK0k9NQyz2Ad61cb203g/NSC482rgYZuj6QzeMumQE7BphKqliM4
         SPL5YO1SJX41A==
Date:   Fri, 11 Feb 2022 11:37:43 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/8] various imx6ul DT fixes
Message-ID: <20220211033743.GI4909@dragon>
References: <20220125135014.3041002-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220125135014.3041002-1-alexander.stein@ew.tq-group.com>
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

On Tue, Jan 25, 2022 at 02:50:06PM +0100, Alexander Stein wrote:
> This patch set fixes several, but not all, dt_binding_check warnings. Some are
> missing properties or their format, others address issues regarding to
> compatible names. I only touched those where compatibles are stated in the yaml
> bindings.
> There are several imx6ul compatible names used by imx6ul.dtsi, but which are
> not listed in the bindings. Namely:
> * "fsl,imx6ul-gpt", "fsl,imx6sx-gpt"
> * "fsl,imx6ul-tempmon", "fsl,imx6sx-tempmon"
> * "fsl,imx6ul-gpc", "fsl,imx6q-gpc"
> * "fsl,imx6ul-usdhc", "fsl,imx6sx-usdhc"
> 
> Despite GPC, the others are apperently compatible to imx6sx. I'm not sure how
> to fix the DTB check warning. Add the imx6ul compatible to bindings and drivers?

Add the compatible to bindings, I would say.

Shawn

> Or change the .dtsi to use only the imx6sx compatible.
> 
> The GPC on imx6ul apparently does only support power gating for ARM CPU, so
> this would require actually a new compatible which supports only 1 domain.
> 
> Alexander Stein (8):
>   ARM: dts: imx6ul: add missing properties for sram
>   ARM: dts: imx6ul: change operating-points to uint32-matrix
>   ARM: dts: imx6ul: fix keypad compatible
>   ARM: dts: imx6ul: fix adc node compatible
>   ARM: dts: imx6ul: remove unsupported adc property
>   ARM: dts: imx6ul: fix csi node compatible
>   ARM: dts: imx6ul: fix lcdif node compatible
>   ARM: dts: imx6ul: fix qspi node compatible
> 
>  arch/arm/boot/dts/imx6ul.dtsi | 36 +++++++++++++++++------------------
>  1 file changed, 18 insertions(+), 18 deletions(-)
> 
> -- 
> 2.25.1
> 
