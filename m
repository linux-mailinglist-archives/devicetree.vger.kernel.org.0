Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DEB4755D6A6
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:17:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232326AbiF0INd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 04:13:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229668AbiF0INc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 04:13:32 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40A756265
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 01:13:32 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D0AF560FC9
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 08:13:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87FF6C3411D;
        Mon, 27 Jun 2022 08:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1656317611;
        bh=uN1CXGCUn9agNHj7Bs3ZTUJHqs33BfpPTgkR9jMObZg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=pGyBIDQM5MkrXI2EwuXSJfS2yA//9aFBD+RiJ8h7of8L7Nei6lSg+YO9CSeiLLvsJ
         pFCRN1VRLvZXeIMzTroHwbF0DkIl9W8UKxXxenrnjAapCLVDF6taokRdk9ir5YJEfv
         1jXcn/MqbwEzbl+YoQb0aG/sjxAiSLIyFAXJ49a3PuPpBHuDGMLpt4qWNXzS1eGoVy
         ZpWYC4VCkXCpyJ59lszj5KUzwZ69hjr+Mn5BqQqIHNPHi0BPnhiexyFuB/Oqr9FQXz
         lO0DjBoVx7Lgalvigu0DyYQ7vYBaNvV8FG/bbhxk/AeTgeoXjW8FMMGn0bGeEM1xE2
         CnYoUVd0xxY4A==
Date:   Mon, 27 Jun 2022 16:13:25 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Teresa Remmet <t.remmet@phytec.de>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>, upstream@phytec.de
Subject: Re: [PATCH v4 3/3] arm64: dts: freescale: Add phyBOARD-Polis-i.MX8MM
 support
Message-ID: <20220627081325.GJ819983@dragon>
References: <20220623144124.1821570-1-t.remmet@phytec.de>
 <20220623144124.1821570-3-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220623144124.1821570-3-t.remmet@phytec.de>
X-Spam-Status: No, score=-7.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 23, 2022 at 04:41:24PM +0200, Teresa Remmet wrote:
> Add initial support for phyBOARD-Polis-i.MX8MM.
> Main features are:
> 	* Bluetooth and Wifi
> 	* CANFD
> 	* eMMC
> 	* i2c RTC
> 	* Ethernet
> 	* PCIe
> 	* RS232/RS485
> 	* SD-Card
> 	* SPI-NOR flash
> 	* USB
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
> Changes in v4:
> - Do not modify reserved iomux bits
> - Remove eth phy irq due to a recent found hw issue on SoM

Replaced v3 with this version.

In the future, please give a reply to the old version saying there is
a new version posted, so that I know the old one should be ignored.

Shawn
