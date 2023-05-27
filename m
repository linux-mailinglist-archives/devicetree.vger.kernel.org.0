Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 747CD7134E6
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 15:07:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232647AbjE0NHl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 09:07:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231387AbjE0NHj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 09:07:39 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8186910A
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 06:07:38 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 1208861AEF
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 13:07:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 311CBC433D2;
        Sat, 27 May 2023 13:07:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685192857;
        bh=wPaPS/S1H7l0Ltw1ccW+yD82gp5Oh0f3PA5HaV5qzSw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=F8avS/tA4OhiWY8bHvxfzTR7eivIznSWY4h8Mm67FxP1FLYTqkIDwg7vWvaDbnZsP
         czekc69Hisv5n/9Zt75ywHsPOt1DNqtGscm9VusJapeEPAgkoZn/FC+HJ+QKk3r9jW
         cszRL3AotMZ74ynfdGpT3FNwW9g9ZWDK94FTDjVbIEXEbKR9U+TBbSVbW1uuXpzV3Q
         7uQwdCMuXlAKuu8ueDpK3ba6kwFdqfTyqR/otbLJQWRfi2ddTBT18RMWQ7yd6Tw9dJ
         /G+zTyxuBzvlvfY1xJmMCvt18+5ru7TTkJ6AFCAIKXjwJuwNwqKJPnpb7vnh5n3YxS
         JrzW2nymGRXAw==
Date:   Sat, 27 May 2023 21:07:17 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 1/4] ARM: dts: imx7d-smegw01: Remove unneeded
 #address-cells/#size-cells
Message-ID: <20230527130717.GY528183@dragon>
References: <20230524131008.161193-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230524131008.161193-1-festevam@gmail.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 24, 2023 at 10:10:05AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Remove the unneeded #address-cells/#size-cells from sram@0 to fix
> the following 'make CHECK_DTBS=y imx7d-smegw01.dtb' warning:
> 
> sram@0: Unevaluated properties are not allowed ('#address-cells', '#size-cells' were unexpected)
> From schema: Documentation/devicetree/bindings/mtd/microchip,mchp48l640.yaml
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied all, thanks!
