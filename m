Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4E19701D86
	for <lists+devicetree@lfdr.de>; Sun, 14 May 2023 15:03:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230501AbjENNDg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 14 May 2023 09:03:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229942AbjENNDg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 14 May 2023 09:03:36 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55BDF1BFE
        for <devicetree@vger.kernel.org>; Sun, 14 May 2023 06:03:35 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id DF3F660B58
        for <devicetree@vger.kernel.org>; Sun, 14 May 2023 13:03:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A1DDC433D2;
        Sun, 14 May 2023 13:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684069414;
        bh=SYmkQdmlBy6PE7HKOEw/mUvRFEdCNNfqeW6CJs4xyJI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=lXrsE0Eee0Ido183C6Tb32arOEIl4+7/tpkosDmk3Q8ei2uUexMMyKwjjZvZ6NmUi
         y2xppBEYMwxeVRatiqWADIUCcB4HhQDuH7g/coll24KydpyWYU0AS2pqXoHKNO99j0
         R/YBpnYO2uApQqMK5FvQ0yHb9wHeheRtIpQ0ug5QzS9tkzLIvOesCbLRGGL3t3byfW
         4tgT/6BBGjwkWbyj6JkxEYRIOkZbjMRn1u00o91YcQQixX7atOi/Bwva/qNnmCrU2N
         FbySrr+q6N85NN33SdP5Des0G5aWwE/REV0YpiHodaP4dKIpDoPNG6aAbulEsMPRey
         EX9kOml+7HSqQ==
Date:   Sun, 14 May 2023 21:03:22 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>,
        Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/3] ARM: dts: imx6qdl-mba6: Add missing pvcie-supply
 regulator
Message-ID: <20230514130322.GW727834@dragon>
References: <20230503113112.1751886-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230503113112.1751886-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 03, 2023 at 01:31:10PM +0200, Alexander Stein wrote:
> This worked before by coincidence, as the regulator was probed and enabled
> before PCI RC probe. But probe order changed since commit 259b93b21a9f
> ("regulator: Set PROBE_PREFER_ASYNCHRONOUS for drivers that existed in
> 4.14") and PCIe supply is enabled after RC.
> Fix this by adding the regulator to RC node.
> 
> The PCIe vaux regulator still needs to be enabled unconditionally for
> Mini-PCIe USB-only devices.
> 
> Fixes: ef3846247b41 ("ARM: dts: imx6qdl: add TQ-Systems MBa6x device trees")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
