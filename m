Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE946729CE4
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 16:30:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240587AbjFIOaF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 10:30:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241470AbjFIO35 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 10:29:57 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC43B30F6
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 07:29:56 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 489256588A
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 14:29:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B688EC4339B;
        Fri,  9 Jun 2023 14:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1686320995;
        bh=7zPwrKtWe/uSVjiySJcT0eYWKB1nUGUsazBLS1HehfI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=CGK7r4oamRLbp0bzKZkWRFeH8KrvhkRtqkVWYQ95xCTvjyv26Iu7SeSazKG91adFz
         GBKLntPPkNxkHpLK5Z0S9alIHl5ssWeAUuUbRREke0No/uhR98CVsCtX9sK/5DhZCR
         wu3ynEPqx6PH+33rCyFQdR094gEIa5W50KGYGwW8dNVPRuzmdQELRlE21meMwR6NI7
         /T7/pwvGrKDGQO+x9aHjtLsoT7pLn4k7qZ62KC2HBwxbtKRHUyIL8aV0F4bw1AugbN
         koVaP8tfYQ6roAnXQXXExIHP9uGvyeVLPI+AEVaBwEtIzgpFeEpgLQvTHqS9zNrVLa
         IP5X2hEEDP0kw==
Date:   Fri, 9 Jun 2023 22:29:42 +0800
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
Subject: Re: [PATCH 1/1] arm64: dts: imx8mq-tqma8mq-mba8mx: Remove invalid
 properties
Message-ID: <20230609142942.GA4199@dragon>
References: <20230606151048.778653-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230606151048.778653-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 06, 2023 at 05:10:48PM +0200, Alexander Stein wrote:
> They originated from the downstream kernel and slipped into mainline.
> Remove them to silence also dtbs_check warnings:
> pcie@33800000: Unevaluated properties are not allowed ('epdev_on-supply',
>   'hard-wired' were unexpected)
> pcie@33c00000: Unevaluated properties are not allowed ('epdev_on-supply',
>   'hard-wired' were unexpected)
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
