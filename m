Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85900729CE0
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 16:28:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231981AbjFIO2k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 10:28:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241459AbjFIO2i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 10:28:38 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B99630D7
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 07:28:37 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E1F0165887
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 14:28:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5414C433D2;
        Fri,  9 Jun 2023 14:28:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1686320916;
        bh=sJIqZ6V2YbrRnVNxl4pDOqAvbX9moFJnHdndQjjjP9M=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=S0BtoGwUMRcRr27R351mnwli/ELC8IJlwaO/mvOTNPdtddJFCUl9vum46krHi/X20
         /MKXFbebiqpRAwVjXmLKltU0u7lUgaqtoobMUjRoBo06cJeyCM3woGjvG3BGHFwV7X
         Us5uzQggn2XMFIgVvt3Gt7t9gFD1efGSMtTKQDZQwu+pd85WNCLSZfbWcOnNOQauTA
         08gp+vkjaZAQSkfisB883FU5TrFgdvVABoDZkkfS+TLrYf6WXO2Atebq2VhXyIkDZt
         sDps/5w4cHjFCB1i38D2ARgpUDTYU02RUVFrGfOsr+aYwWWmcMzeNWts3uK1EvFjqL
         DaX1pHGGHgZwA==
Date:   Fri, 9 Jun 2023 22:28:24 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/3] imx8mq DT fixes
Message-ID: <20230609142824.GZ4199@dragon>
References: <20230606150919.778261-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230606150919.778261-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 06, 2023 at 05:09:16PM +0200, Alexander Stein wrote:
> Hi,
> 
> this series fixes various dtbs_check warnings for imx8mq.
> Admittedly I do not know why lcdif is currently usable without apb and axi
> clocks configured.
> 
> Best regards,
> Alexander
> 
> Alexander Stein (3):
>   arm64: dts: imx8mq: Fix lcdif compatible
>   arm64: dts: imx8mq: Fix lcdif clocks
>   arm64: dts: imx8mq: Add missing pci property

Applied all, thanks!
