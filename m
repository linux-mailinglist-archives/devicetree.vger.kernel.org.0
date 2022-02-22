Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 75E644BEF89
	for <lists+devicetree@lfdr.de>; Tue, 22 Feb 2022 03:43:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232439AbiBVCe5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 21:34:57 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:54430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232402AbiBVCe4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 21:34:56 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B85DF25C5F
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 18:34:31 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 4A995B81754
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 02:34:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1239C340E9;
        Tue, 22 Feb 2022 02:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1645497269;
        bh=lPFo83zywahpDyOeTHnmY7t6/xhLBF316PaQzsH9Yys=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Lg6en94fYnDfW6+Ge8tdv1EcvpGCPLSQKsQeTdMUzLXwIPymffpgjvuaWzt6ObBe9
         4cJVccMXhG/uIqTM6KLZ7licMagSl1kd/qpsgLzDCPYEL5NirbPKD6ZCpljbK7B6si
         WrgFbbpqVuoh/la6HgIV7HWSM8VzjYQxWh+TLJaA5krpfEz1OQXhKIya0g3jk5UupB
         Xoc17i/ikF7DGeOXs114k/V/j8B8CEmKxke13CqAY37IHSFY0v8DCNmEr1oMMszicQ
         9Z3lXHc1/uONTXIHhEtOy4bq7y3WlXMKV/lGpNWuLvGepVSUsntj2qytDul+SDtzjs
         TRD2+fsntXheg==
Date:   Tue, 22 Feb 2022 10:34:23 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/5] Support for TQMa6ULx & TQMa6ULxL modules
Message-ID: <20220222023423.GX2249@dragon>
References: <20220221160419.550640-1-alexander.stein@ew.tq-group.com>
 <20220222022833.GW2249@dragon>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220222022833.GW2249@dragon>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 22, 2022 at 10:28:39AM +0800, Shawn Guo wrote:
> On Mon, Feb 21, 2022 at 05:04:14PM +0100, Alexander Stein wrote:
> > Alexander Stein (4):
> >   ARM: dts: imx6ul: add TQ-Systems MBa6ULx device trees
> >   ARM: dts: imx6ul: add TQ-Systems MBa6ULxL device trees
> >   ARM: dts: imx6ull: add TQ-Systems MBa6ULLx device trees
> >   ARM: dts: imx6ull: add TQ-Systems MBa6ULLxL device trees
> > 
> > Matthias Schiffer (1):
> >   dt-bindings: arm: fsl: add TQ Systems boards based on i.MX6UL(L)
> 
> Applied all, thanks!

I replied too soon.

../arch/arm/boot/dts/mba6ulx.dtsi:46.10-50.5: ERROR (duplicate_node_names): /gpio-keys/button: Duplicate node name
../arch/arm/boot/dts/mba6ulx.dtsi:52.10-56.5: ERROR (duplicate_node_names): /gpio-keys/button: Duplicate node name
../arch/arm/boot/dts/mba6ulx.dtsi:58.10-63.5: ERROR (duplicate_node_names): /gpio-keys/button: Duplicate node name
../arch/arm/boot/dts/mba6ulx.dtsi:52.10-56.5: ERROR (duplicate_node_names): /gpio-keys/button: Duplicate node name
../arch/arm/boot/dts/mba6ulx.dtsi:58.10-63.5: ERROR (duplicate_node_names): /gpio-keys/button: Duplicate node name
../arch/arm/boot/dts/mba6ulx.dtsi:58.10-63.5: ERROR (duplicate_node_names): /gpio-keys/button: Duplicate node name
ERROR: Input tree has errors, aborting (use -f to force output)
make[2]: *** [../scripts/Makefile.lib:351: arch/arm/boot/dts/imx6ul-tqma6ul2-mba6ulx.dtb] Error 2
make[2]: *** Waiting for unfinished jobs....
  DTC     arch/arm/boot/dts/imx6ul-pico-dwarf.dtb
../arch/arm/boot/dts/mba6ulx.dtsi:46.10-50.5: ERROR (duplicate_node_names): /gpio-keys/button: Duplicate node name
../arch/arm/boot/dts/mba6ulx.dtsi:52.10-56.5: ERROR (duplicate_node_names): /gpio-keys/button: Duplicate node name
../arch/arm/boot/dts/mba6ulx.dtsi:58.10-63.5: ERROR (duplicate_node_names): /gpio-keys/button: Duplicate node name
../arch/arm/boot/dts/mba6ulx.dtsi:52.10-56.5: ERROR (duplicate_node_names): /gpio-keys/button: Duplicate node name
../arch/arm/boot/dts/mba6ulx.dtsi:58.10-63.5: ERROR (duplicate_node_names): /gpio-keys/button: Duplicate node name
../arch/arm/boot/dts/mba6ulx.dtsi:58.10-63.5: ERROR (duplicate_node_names): /gpio-keys/button: Duplicate node name
ERROR: Input tree has errors, aborting (use -f to force output)
make[2]: *** [../scripts/Makefile.lib:351: arch/arm/boot/dts/imx6ul-tqma6ul1-mba6ulx.dtb] Error 2
../arch/arm/boot/dts/mba6ulx.dtsi:46.10-50.5: ERROR (duplicate_node_names): /gpio-keys/button: Duplicate node name
../arch/arm/boot/dts/mba6ulx.dtsi:52.10-56.5: ERROR (duplicate_node_names): /gpio-keys/button: Duplicate node name
../arch/arm/boot/dts/mba6ulx.dtsi:58.10-63.5: ERROR (duplicate_node_names): /gpio-keys/button: Duplicate node name
../arch/arm/boot/dts/mba6ulx.dtsi:52.10-56.5: ERROR (duplicate_node_names): /gpio-keys/button: Duplicate node name
../arch/arm/boot/dts/mba6ulx.dtsi:58.10-63.5: ERROR (duplicate_node_names): /gpio-keys/button: Duplicate node name
../arch/arm/boot/dts/mba6ulx.dtsi:58.10-63.5: ERROR (duplicate_node_names): /gpio-keys/button: Duplicate node name
ERROR: Input tree has errors, aborting (use -f to force output)
make[2]: *** [../scripts/Makefile.lib:351: arch/arm/boot/dts/imx6ul-tqma6ul2l-mba6ulx.dtb] Error 2
make[1]: *** [/home/r65073/repos/korg/imx/Makefile:1370: dtbs] Error 2
make[1]: Leaving directory '/home/r65073/repos/korg/imx/IMX6'
make: *** [Makefile:219: __sub-make] Error 2

Shawn
