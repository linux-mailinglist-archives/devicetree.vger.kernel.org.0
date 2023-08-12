Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94C45779C5A
	for <lists+devicetree@lfdr.de>; Sat, 12 Aug 2023 03:44:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236441AbjHLBov (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Aug 2023 21:44:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229793AbjHLBov (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Aug 2023 21:44:51 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E886830F8
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 18:44:50 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 88953613B3
        for <devicetree@vger.kernel.org>; Sat, 12 Aug 2023 01:44:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDCC9C433C8;
        Sat, 12 Aug 2023 01:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691804690;
        bh=v2yI7HG8zevl6NWEFaqJg8QSuRx7KEBVaN16uGXHLqc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=bhR7PwGjxXV5ZloppnWSGNzf2fLyyqiVg9ZRyhhEGg468nFYMmEr/fUnjSC0toLrC
         qlQg32wZL5+4w2azH5vRuXdepSxt8E1HJzHCgXh9j4qtcQ6CZbxwQuRaFQVSabmz2H
         kKcRNDJpY0bxjjsCIY4lHZ1I3zbEetv476MVBbBZMVbXvmdqgPOnKHeN/CQ0RmRuMM
         sfZg6Q382tX8haSn6fEHvfxmtcG/ZyC1foBVcNztR8j9UdlFwxcUTHn3ab6tsPOcef
         FZbp31U7x8gKKrNmmgUgUjBFf66CNGocFyiK5UgD/J1n6aSHuqoBxGANZqFy9fi0mm
         tu2YQw+BpSdwA==
Date:   Sat, 12 Aug 2023 09:44:39 +0800
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
Subject: Re: [PATCH 3/3] ARM: dts: imx6ul: Fix nand-controller #size-cells
Message-ID: <20230812014439.GF151430@dragon>
References: <20230810095541.720489-1-alexander.stein@ew.tq-group.com>
 <20230810095541.720489-4-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230810095541.720489-4-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 10, 2023 at 11:55:41AM +0200, Alexander Stein wrote:
> nand-controller.yaml bindings says #size-cells shall be set to 0.
> Fixes the dtbs_check warning:
> arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul2l-mba6ulx.dtb:
>  nand-controller@1806000: #size-cells:0:0: 0 was expected
>  from schema $id: http://devicetree.org/schemas/mtd/gpmi-nand.yaml#
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
