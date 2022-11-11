Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 392276252ED
	for <lists+devicetree@lfdr.de>; Fri, 11 Nov 2022 06:09:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230299AbiKKFJJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Nov 2022 00:09:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229461AbiKKFJI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Nov 2022 00:09:08 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CAD166CAA
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 21:09:07 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 0A19CB823E5
        for <devicetree@vger.kernel.org>; Fri, 11 Nov 2022 05:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFD3AC433D6;
        Fri, 11 Nov 2022 05:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1668143344;
        bh=G36AL/j3UwkteEjkmE7S3PPZmuSfcOmKs0lYBkOKBEk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=fZp/eFZ6z1J6flVTEheyKqjCLRTBsAbLBuJDflHrdrbZIB9+qrMDH7WUbvofiFA5Z
         hJDWFe/rRzWgCZvdw6vi3yxsdSY7LXoOkwQVvJ+W9foj+yxycN42DlQVg+cYeLIsB4
         4jv9xMpPWNXIUyu+CCf/5w+6WZrmtpvbo6b/xQmE9hncGEg3EPnUrk1eROgSlobnCr
         QAsQLo1xoxlk6CiQrOlZipZNcbWRhum6Z8R9lKVEwQcOwICfG3tjslqZiHhfx+exIO
         wS/bzMJwicmquvk1VnVY0vk0fd69A4nrCaM/puYngCfOv5UZSxnPbXxr4TgoRIW4u0
         0A4ue/KvtNYnA==
Date:   Fri, 11 Nov 2022 13:08:57 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/1] arm64: dts: imx8mm-tqma8mqml-mba8mx: Fix USB DR
Message-ID: <20221111050857.GC2649582@dragon>
References: <20221101093031.278241-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221101093031.278241-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 01, 2022 at 10:30:31AM +0100, Alexander Stein wrote:
> Using extcon USB host mode works properly on DR interface, e.g.
> enabling/disabling VBUS. But USB device mode is not working.
> Fix this by switching to usb-role-switch instead.
> 
> Fixes: dfcd1b6f7620 ("arm64: dts: freescale: add initial device tree for TQMa8MQML with i.MX8MM")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
