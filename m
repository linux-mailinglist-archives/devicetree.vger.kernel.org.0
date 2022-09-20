Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 318F55BDCE8
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 08:10:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229676AbiITGKS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 02:10:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229546AbiITGKS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 02:10:18 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B290819C2E
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 23:10:16 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 6E497B824E2
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 06:10:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68EE8C433D6;
        Tue, 20 Sep 2022 06:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1663654214;
        bh=Y6YT1/Ffr14tsM3bpTfrYhn9ayz5RIr5C5L15QBXNkE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=qKpS/ppF3a3P6S4K+yWOm2+zwFNYWDOmWfJA7U9VQ8sQhnx1+5Z8K12KN1yMvoqup
         HXDSc5BejS1K4ZNbiF/n19jELEWomvgM94lmjhCuk2skM+Fz4MQPtsN9jlELFQ4UeM
         L3VJUT1BTONb7A8uURTE7282lVh0Ndu+r1xEdEgwS0J/Ib8CgUmWf1hk7mbhHANXzK
         /Lg2cUyNm9Bc1CTZspdc7gT8Ug+VQtJFOqV4/yHrfOuJ7ldxmW3J7wUeVvCpKDyztC
         dGBCsF21Hu6zyyX9XPSoLgKOp3Dv/L6Nt3DOqfjF//oegx2X8mJXIKMX3eOrGpUdhk
         xixGXriot8xxg==
Date:   Tue, 20 Sep 2022 11:40:09 +0530
From:   Vinod Koul <vkoul@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-phy@lists.infradead.org, jbx6244@gmail.com,
        cl@rock-chips.com, frank-w@public-files.de, s.hauer@pengutronix.de,
        michael.riesch@wolfvision.net, pgwipeout@gmail.com,
        heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, kishon@ti.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v4 0/3] rockchip-dsi for rk3568
Message-ID: <YylZQaBObE42Ioon@matsya>
References: <20220919164616.12492-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220919164616.12492-1-macroalpha82@gmail.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19-09-22, 11:46, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> This series adds support for the dsi and dphy controllers on the
> Rockchip RK3568.

Applied 1,2, thanks

-- 
~Vinod
