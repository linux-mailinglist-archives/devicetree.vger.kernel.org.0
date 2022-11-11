Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 066B66252EB
	for <lists+devicetree@lfdr.de>; Fri, 11 Nov 2022 06:07:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230270AbiKKFHW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Nov 2022 00:07:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229461AbiKKFHW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Nov 2022 00:07:22 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77F8166CAA
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 21:07:21 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0EDE361B9A
        for <devicetree@vger.kernel.org>; Fri, 11 Nov 2022 05:07:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55137C433D6;
        Fri, 11 Nov 2022 05:07:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1668143240;
        bh=XEvCGkCeUUY6fz3KFMQUbPJJjx7gmHJEseF1apVDMS8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=E5DYKX2ZWqwulUo906P8aU85JBtut2dYLsNG3jMOzFXxHp8WODebeJIasVOsx4gH0
         DgR5Njlgv18fWfA/PjZedDpll5ZghX5wXOMeeLUkP1l+PT0nCG88IL0mkjrZwJgV22
         RQUO7GOdi8F7D71UWIe9Zp7BgLn9+VZQ6WDzI0NwpH5Ll9ahNM3W+93PiUTJ1uuNA6
         e4HIECQtxw81jAK2tp2iL4kTpCTkePfZLi9kbsNplDsFsJPUQbDSOt5wjSxBSq3JI9
         SK3vMH9M/gsZV6PxxVr3vwD7hv+pNQ4TDXs7QP6BfAoUahVr6Yb6Z8fum5agejey3F
         g5viRA/Z6uojA==
Date:   Fri, 11 Nov 2022 13:07:13 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/1] arm64: dts: mba8mpxl: Add PWM fan support
Message-ID: <20221111050713.GB2649582@dragon>
References: <20221101090642.269209-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221101090642.269209-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 01, 2022 at 10:06:42AM +0100, Alexander Stein wrote:
> This adds the support for optional PWM fan 422J/2HP.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
