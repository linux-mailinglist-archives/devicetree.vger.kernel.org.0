Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9AA965A303
	for <lists+devicetree@lfdr.de>; Sat, 31 Dec 2022 08:00:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229523AbiLaHAm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Dec 2022 02:00:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229514AbiLaHAl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Dec 2022 02:00:41 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7528511154
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 23:00:40 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 1270860920
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 07:00:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0DE36C433EF;
        Sat, 31 Dec 2022 07:00:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1672470039;
        bh=M97o7uxSHgd5YOKyL9p4EgX/E+ovkY0DuZKwZc7fqvA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=K+T1y3CfTpaKATGa+fzIaihu91IUWDG4aK1Zhp2f1juQtW2XCLgqFf7glvbaGhbBX
         PoEB7yq+HUMCZgaRxtyzjJKCLcNTzylXy2MMfOcfGJxNpShgUTqtN9GJwPy34skCvF
         8QV7xe4lzTIr/fIS02m102Ju6wEskhq5wFKiC40jRYfrDW6dcMAWN+GT/SJZJppGeh
         De7xduqwtcvCSWjR/kilUNNpvRY6fuwcgADImhASBPd50t4bucjUUSSQseqWuw6ijt
         pEv/5kddSXGIOFLntrmaB4HxW9dk9p5nxaA3BqyvlafKrLGowze0+yCG2x0Po0vLeK
         d2WHx0wYveFbg==
Date:   Sat, 31 Dec 2022 15:00:32 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 1/2] ARM: dts: imx53: Fix sram.yaml warnings
Message-ID: <20221231070031.GE6112@T480>
References: <20221118132016.1752358-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221118132016.1752358-1-festevam@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 18, 2022 at 10:20:15AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Add ranges, #address-cells and #size-cells properties to the sram
> node to fix the following warnings when checking sram.yaml:
> 
> make dtbs_check DT_SCHEMA_FILES=sram.yaml
> ...
>   DTC_CHK arch/arm/boot/dts/imx53-qsb.dtb
> arch/arm/boot/dts/imx53-qsb.dtb: sram@f8000000: '#address-cells' is a required property
> 	From schema: Documentation/devicetree/bindings/sram/sram.yaml
> /home/fabio/linux-next/arch/arm/boot/dts/imx53-qsb.dtb: sram@f8000000: '#size-cells' is a required property
> 	From schema: Documentation/devicetree/bindings/sram/sram.yaml
> /home/fabio/linux-next/arch/arm/boot/dts/imx53-qsb.dtb: sram@f8000000: 'ranges' is a required property
> 	From schema: Documentation/devicetree/bindings/sram/sram.yaml
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied both, thanks!
