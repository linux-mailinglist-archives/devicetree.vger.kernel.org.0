Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B533251B970
	for <lists+devicetree@lfdr.de>; Thu,  5 May 2022 09:47:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236675AbiEEHvQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 May 2022 03:51:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346005AbiEEHvP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 May 2022 03:51:15 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29FC94754D
        for <devicetree@vger.kernel.org>; Thu,  5 May 2022 00:47:37 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A87BF61D38
        for <devicetree@vger.kernel.org>; Thu,  5 May 2022 07:47:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 523E8C385A8;
        Thu,  5 May 2022 07:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1651736856;
        bh=AKr7B5OuxpT3JWt5WT1yi3sIPRyhFC3zyGfLTuhc7Os=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=sZ2qjYIbs9LiOKmvz9PtqPMywINf7XyewoAeK4zwwAj8jxmQksiCAJTLCiyECS6rr
         NioesgSftjBf8vxgw9sI7qby2QBkxive1L1db7/LhKQIFFP9MEmAfdwKIMlJiY1dbP
         LwbMMwgOr4OQSNk8zu5qpT7h8bZdlV7vergzzd6mgcTqBW8oIgFmDyOsYAZy4qNd7g
         t8PxKh8PrTrWaCrynKah2JXxojo+O4/NHl6gP1EF7QG+nyiSfOtNVBdWu+RZAQuzdb
         7zbx/uwcxOpp1xsvAOUIy+wWtxu3Hn04B8GueCGWc5W2d5JjdBQtLNcBGfexPIsvlp
         CwLC216WoNXGg==
Date:   Thu, 5 May 2022 15:47:26 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/4] i.MX8M PWM polarity support
Message-ID: <20220505074726.GD14615@dragon>
References: <20220502094901.251310-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220502094901.251310-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 02, 2022 at 11:48:57AM +0200, Alexander Stein wrote:
> Hello,
> 
> this patchset adds the possibility to specify a PWM polarity inversion for
> i.MX8M. The pwm-imx27 driver already supports this in the 3rd pwm-cells, but
> the DT for imx8m so far only set #pwm-cells=<2>.
> Add support by setting #pwm-cells=<3> and adding the (default) normal (0)
> polarity to all boards.
> make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/pwm/imx-pwm.yaml
> was used to get all boards.
> 
> Best regards,
> Alexander
> 
> Markus Niebel (4):
>   arm64: dt: imx8mq: support pwm polarity inversion
>   arm64: dt: imx8mm: support pwm polarity inversion
>   arm64: dt: imx8mn: support pwm polarity inversion
>   arm64: dt: imx8mp: support pwm polarity inversion

Applied all, thanks!
