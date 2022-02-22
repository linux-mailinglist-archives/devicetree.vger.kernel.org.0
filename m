Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C00D24BF25C
	for <lists+devicetree@lfdr.de>; Tue, 22 Feb 2022 08:04:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230336AbiBVHCq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Feb 2022 02:02:46 -0500
Received: from gmail-smtp-in.l.google.com ([23.128.96.19]:46432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230316AbiBVHCp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Feb 2022 02:02:45 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCF9F5C341
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 23:02:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1645513340; x=1677049340;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=aaDHfTA8cEuXnBhot1k0WwBv9nEfGPEZMBOiYzq4+dA=;
  b=VVSG1YKRYbd5wpyoiWsyS69n93iqOcoJbwZOPS1/ExeiGramDVstsWEK
   xPuMLYFv+rsJfz1eLUcau9V3CWk13hnDezh9cu7wOiJ6Bod1CU0WZbNff
   r4eD+4Ag9ciF3QVMrkJxwtJmfQ8GQr01KCeI2jexPguRENcy771tWLjpA
   0AmXsk8UzMGb6tgVskmI5YdyoATTTdUeA3pU+ut/J+fO6DSxVCF/vYQMY
   JcHcumVTun1s1MxAWW8ZeaSMXYIQOdc4PeJzXJeK3vXwYWJvkBbT56Izz
   BnjcKHVN6kxwK8EAf5T1xm4iw7xWvuXmCpqZ8slFUpR/3RLkwrwEnnn+u
   w==;
X-IronPort-AV: E=Sophos;i="5.88,387,1635199200"; 
   d="scan'208";a="22225405"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 22 Feb 2022 08:02:16 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 22 Feb 2022 08:02:16 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 22 Feb 2022 08:02:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1645513336; x=1677049336;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=aaDHfTA8cEuXnBhot1k0WwBv9nEfGPEZMBOiYzq4+dA=;
  b=UKaQqKFQuH8ME19f9GFoUAY71tgF7UamW3eGODjmAyEHO5J61MxCbehP
   O4zslF3sbPPfNNKxewVM6+qhgcYPCFGXDjh5LLDx4bgOw9XnZOKpVTFOT
   /ocxrdYUipSGkkZq87QtpAc4bgW38xf4Qj3z0UDtdZN9CULqOje00tmTz
   TBgMqZth80I7jiHWrYHtgZSheU0loyccJ8KnFCbucZy0IDzvPErDonZz6
   l/0b4oNTbMr1DuGjVYIm2TDD/4ICMW2j04MHmxRbIIO6dbSDT1PBJ+geD
   UltmXwuhAsyoxgdvIh8ydvOvlVlfKTnW7sbUhGCU+JIfdL7n3CPcFiA50
   Q==;
X-IronPort-AV: E=Sophos;i="5.88,387,1635199200"; 
   d="scan'208";a="22225395"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 22 Feb 2022 08:01:58 +0100
Received: from steina-w.localnet (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 77B08280065;
        Tue, 22 Feb 2022 08:01:58 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: (EXT) Re: [PATCH v2 0/5] Support for TQMa6ULx & TQMa6ULxL modules
Date:   Tue, 22 Feb 2022 08:01:56 +0100
Message-ID: <3168916.mvXUDI8C0e@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20220222023423.GX2249@dragon>
References: <20220221160419.550640-1-alexander.stein@ew.tq-group.com> <20220222022833.GW2249@dragon> <20220222023423.GX2249@dragon>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Shawn,

Am Dienstag, 22. Februar 2022, 03:34:23 CET schrieb Shawn Guo:
> On Tue, Feb 22, 2022 at 10:28:39AM +0800, Shawn Guo wrote:
> > On Mon, Feb 21, 2022 at 05:04:14PM +0100, Alexander Stein wrote:
> > > Alexander Stein (4):
> > >   ARM: dts: imx6ul: add TQ-Systems MBa6ULx device trees
> > >   ARM: dts: imx6ul: add TQ-Systems MBa6ULxL device trees
> > >   ARM: dts: imx6ull: add TQ-Systems MBa6ULLx device trees
> > >   ARM: dts: imx6ull: add TQ-Systems MBa6ULLxL device trees
> > > 
> > > Matthias Schiffer (1):
> > >   dt-bindings: arm: fsl: add TQ Systems boards based on i.MX6UL(L)
> > 
> > Applied all, thanks!
> 
> I replied too soon.
> 
> ../arch/arm/boot/dts/mba6ulx.dtsi:46.10-50.5: ERROR (duplicate_node_names):
> /gpio-keys/button: Duplicate node name
> ../arch/arm/boot/dts/mba6ulx.dtsi:52.10-56.5: ERROR (duplicate_node_names):
> /gpio-keys/button: Duplicate node name
> ../arch/arm/boot/dts/mba6ulx.dtsi:58.10-63.5: ERROR (duplicate_node_names):
> /gpio-keys/button: Duplicate node name
> ../arch/arm/boot/dts/mba6ulx.dtsi:52.10-56.5: ERROR (duplicate_node_names):
> /gpio-keys/button: Duplicate node name
> ../arch/arm/boot/dts/mba6ulx.dtsi:58.10-63.5: ERROR (duplicate_node_names):
> /gpio-keys/button: Duplicate node name
> ../arch/arm/boot/dts/mba6ulx.dtsi:58.10-63.5: ERROR (duplicate_node_names):
> /gpio-keys/button: Duplicate node name ERROR: Input tree has errors,
> aborting (use -f to force output)
> make[2]: *** [../scripts/Makefile.lib:351:
> arch/arm/boot/dts/imx6ul-tqma6ul2-mba6ulx.dtb] Error 2 make[2]: *** Waiting
> for unfinished jobs....
>   DTC     arch/arm/boot/dts/imx6ul-pico-dwarf.dtb
> ../arch/arm/boot/dts/mba6ulx.dtsi:46.10-50.5: ERROR (duplicate_node_names):
> /gpio-keys/button: Duplicate node name
> ../arch/arm/boot/dts/mba6ulx.dtsi:52.10-56.5: ERROR (duplicate_node_names):
> /gpio-keys/button: Duplicate node name
> ../arch/arm/boot/dts/mba6ulx.dtsi:58.10-63.5: ERROR (duplicate_node_names):
> /gpio-keys/button: Duplicate node name
> ../arch/arm/boot/dts/mba6ulx.dtsi:52.10-56.5: ERROR (duplicate_node_names):
> /gpio-keys/button: Duplicate node name
> ../arch/arm/boot/dts/mba6ulx.dtsi:58.10-63.5: ERROR (duplicate_node_names):
> /gpio-keys/button: Duplicate node name
> ../arch/arm/boot/dts/mba6ulx.dtsi:58.10-63.5: ERROR (duplicate_node_names):
> /gpio-keys/button: Duplicate node name ERROR: Input tree has errors,
> aborting (use -f to force output)
> make[2]: *** [../scripts/Makefile.lib:351:
> arch/arm/boot/dts/imx6ul-tqma6ul1-mba6ulx.dtb] Error 2
> ../arch/arm/boot/dts/mba6ulx.dtsi:46.10-50.5: ERROR (duplicate_node_names):
> /gpio-keys/button: Duplicate node name
> ../arch/arm/boot/dts/mba6ulx.dtsi:52.10-56.5: ERROR (duplicate_node_names):
> /gpio-keys/button: Duplicate node name
> ../arch/arm/boot/dts/mba6ulx.dtsi:58.10-63.5: ERROR (duplicate_node_names):
> /gpio-keys/button: Duplicate node name
> ../arch/arm/boot/dts/mba6ulx.dtsi:52.10-56.5: ERROR (duplicate_node_names):
> /gpio-keys/button: Duplicate node name
> ../arch/arm/boot/dts/mba6ulx.dtsi:58.10-63.5: ERROR (duplicate_node_names):
> /gpio-keys/button: Duplicate node name
> ../arch/arm/boot/dts/mba6ulx.dtsi:58.10-63.5: ERROR (duplicate_node_names):
> /gpio-keys/button: Duplicate node name ERROR: Input tree has errors,
> aborting (use -f to force output)
> make[2]: *** [../scripts/Makefile.lib:351:
> arch/arm/boot/dts/imx6ul-tqma6ul2l-mba6ulx.dtb] Error 2 make[1]: ***
> [/home/r65073/repos/korg/imx/Makefile:1370: dtbs] Error 2 make[1]: Leaving
> directory '/home/r65073/repos/korg/imx/IMX6'
> make: *** [Makefile:219: __sub-make] Error 2

Ah, thanks for pointing this out. Sorry, this is the result from trying to 
trigger a dtbs_check warning.
Will send a fixed version.
Sorry for the noise.

Regards,
Alexander



