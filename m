Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D49C6B8B92
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 07:56:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229552AbjCNG4d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 02:56:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229468AbjCNG4c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 02:56:32 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CCD37B4AF
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 23:56:32 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 9827B61072
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 06:56:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE520C433D2;
        Tue, 14 Mar 2023 06:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1678776991;
        bh=CoHwJxOj4sGZmxm/IsB6SXeZ2m3l3eiloPcUW7s/T5o=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Jo9LOMcngazNzhQZxfl/vnVJhvadk5nUiS0CADxhp80gAaqXqgCroskMTdRXdjKpN
         Bx9RxXf68O/6U72izmefhzxQm4S2y57ioX1oA6zegt1wfrrMlY4vy07n10pFvEH4aJ
         qpzTwA2srdbbuCYEGU6nhN8tcU676xCwppBwmQSl8tJS9ntNuxEbbkjjJtwNHx3FlQ
         r4aoTsFtmPeOgU/h2ToP0i1pKEc9f+LeJTvXKqWprKIvOqFtImpdZjmt2OnRCzV7I1
         M85l74hHKo+DGgRRmhHf66zPu1OhtUgqKv1KZxNekdCblitbxDaM11szkb2Lf9tZTZ
         ZCT/0wAZRrb5w==
Date:   Tue, 14 Mar 2023 14:56:24 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/1] arm64: dts: imx93: add missing tpm pwm instances
Message-ID: <20230314065624.GX143566@dragon>
References: <20230308124829.2925511-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230308124829.2925511-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 08, 2023 at 01:48:29PM +0100, Alexander Stein wrote:
> From: Markus Niebel <Markus.Niebel@ew.tq-group.com>
> 
> TPM1/TPM3 are missing, add them.
> 
> Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks!
