Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B9B878BA57
	for <lists+devicetree@lfdr.de>; Mon, 28 Aug 2023 23:34:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230098AbjH1VeU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Aug 2023 17:34:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233745AbjH1VeH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Aug 2023 17:34:07 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF37A186
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 14:34:04 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 7B988645B2
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 21:34:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4D87C433C8;
        Mon, 28 Aug 2023 21:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1693258443;
        bh=6fcApPvCZss8ExAOclKs9AFG0b+NxjbECMWCbvnj5GQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=SJzMTfupCrzPuObBEVnPV2jIwwEKBlKwTWOj4V8KaaqovTmXB6x6rrQ9irg9rEBd4
         /9IYOgn47sNcN92jv13adEPHlV5Et/b4/23MjG4HMvvJFfxIMzmDQ8MtpKOMDeZLTd
         fSwLMP3dzacZ9em0wao5kuOeZsG3ABENo6ngTNYiIFEcIjZn2jmZhk1eMJVxSRPBJ9
         p7Br5pvDBw/MdH8rCQrTvL38xUtDwIlZzBuJa92q5my2Z/2VZksZugsH+M9XevfMVf
         Hy9jt98mZMNnkcQDUU3py6/8c0p3IE8KH/JffLszxadFAHMbb8x8Hb9aaJ1QsxDM6Y
         hBClngb2XDhNA==
Received: (nullmailer pid 383795 invoked by uid 1000);
        Mon, 28 Aug 2023 21:33:59 -0000
Date:   Mon, 28 Aug 2023 16:33:59 -0500
From:   Rob Herring <robh@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     robh+dt@kernel.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, wens@csie.org,
        Chris Morgan <macromorgan@hotmail.com>, mripard@kernel.org,
        Conor Dooley <conor.dooley@microchip.com>,
        linux-sunxi@lists.linux.dev, neil.armstrong@linaro.org,
        noralf@tronnes.org, jernej.skrabec@gmail.com, jagan@edgeble.ai,
        uwu@icenowy.me, airlied@gmail.com, andre.przywara@arm.com,
        samuel@sholland.org, devicetree@vger.kernel.org, sam@ravnborg.org,
        daniel@ffwll.ch, heiko@sntech.de
Subject: Re: [PATCH V4 2/8] dt-bindings: display: panel: mipi-dbi-spi: add
 Saef  SF-TC154B
Message-ID: <169325843883.383742.8355219779786570661.robh@kernel.org>
References: <20230828181941.1609894-1-macroalpha82@gmail.com>
 <20230828181941.1609894-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230828181941.1609894-3-macroalpha82@gmail.com>
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_HI,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Mon, 28 Aug 2023 13:19:35 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The Saef SF-TC154B is a 1.54 inch 240x240 square panel with a MIPI DBI
> compatible interface. The panel is used on the Anbernic RG-Nano
> handheld gaming device.
> 
> The initialization of the panel requires a firmware binary which can
> be made with the mipi-dbi-cmd[1] tool. The command sequence needed
> can be found in both source[2] and binary form[3].
> 
> [1]: https://github.com/notro/panel-mipi-dbi
> [2]: https://github.com/macromorgan/panel-mipi-dbi-firmware/raw/main/saef%2Csftc154b.txt
> [3]: https://github.com/macromorgan/panel-mipi-dbi-firmware/raw/main/saef%2Csftc154b.bin
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Acked-by: Noralf Trønnes <noralf@tronnes.org>
> ---
>  .../devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml    | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks!

