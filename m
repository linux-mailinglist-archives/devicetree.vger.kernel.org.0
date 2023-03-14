Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4D986B8B91
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 07:56:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229531AbjCNG4K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 02:56:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229468AbjCNG4J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 02:56:09 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADBA87B4AF
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 23:56:05 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 5BBA7B8189F
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 06:56:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05A7AC4339B;
        Tue, 14 Mar 2023 06:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1678776963;
        bh=gtuLoMMUIgTtWAAlnL6A/UdOLkPFpzSyNz844s33oYU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=GU0Wj+0/GN4jaMhdngxeQrmbN3w7bRaZgoYz7wVBLbYKxdgmsxZYs5ZMJlmzLukN3
         8+qY++z2a1vsqLxTqiVXvYPZzQ1Hgzo+dwY5/kCo4CSeyzg7Fhxd/JwY/ur+ouiRRl
         NcJTivFRuSzNyQFyTirPDL1iiAg9Qr9B9Zop3ULJZCmr6bXYVC7Ni2rrm83H9ZQ+a8
         vjshGrKpfKzNI57o4UBB5GK9oxKJYy9HG+taY1y0SWWQLjo84gb6TaupcLjvEHGMwo
         0ZdLb3Zk9vz4434tKk8SCAdK64IwhteJbc/z/JPT6jMBWc+ny7YQGDZKZvWGsmo23M
         rC0VFgtyPPa5A==
Date:   Tue, 14 Mar 2023 14:55:56 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: imx93: add missing #address-cells and
 #size-cells to i2c nodes
Message-ID: <20230314065556.GW143566@dragon>
References: <20230308101720.2781627-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230308101720.2781627-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 08, 2023 at 11:17:20AM +0100, Alexander Stein wrote:
> Add them to the SoC .dtsi, so that not every board has to specify them.
> 
> Fixes: 1225396fefea ("arm64: dts: imx93: add lpi2c nodes")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
