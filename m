Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA3776C99B6
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 04:49:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229850AbjC0CtN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Mar 2023 22:49:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229546AbjC0CtM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Mar 2023 22:49:12 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D424C102
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 19:49:11 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 67A5160F9B
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 02:49:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 839F7C4339C;
        Mon, 27 Mar 2023 02:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1679885350;
        bh=JBkGynhYZI68Cr+XUEwlfI/pjGdATfMj4cihdWAXMe0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=RjVGskJgdvFIR0TBmPjDb/GdyHRpuH1vYt1IHOZr830ujD9EvlV1kNPVFVU3BunEu
         OA0LFvru4Kmv1Iig1hm1wBu2xyzjbnm1jMhpQJsZ14pDKcqD9L0JT5Q0/uegJLulUo
         mn3Rt5s6IMPmgcK2nToJBtZRgG22N7eG8300mmO82uVBOBkh9RN0wkRW25f57qA/D+
         XsBEcpW+EwKrMwT90o/iCryQD0qmHhovX5318z07+fHuN/XkRR2K49qEKp0gv7WOx/
         Ai3yuOJleycUBzkGiYe33v1GDpM6vM5Uu+Z8ti07fnx79EfO3kD02AUCFYOjSIBO9D
         mhqXzlexzAxhQ==
Date:   Mon, 27 Mar 2023 10:49:03 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Yang <leoyang.li@nxp.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Matthias Schiffer <matthias.schiffer@tq-group.com>,
        Max Krummenacher <max.krummenacher@toradex.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: Add DH electronics i.MX8M Plus
 DHCOM on PDK3
Message-ID: <20230327024903.GH3364759@dragon>
References: <20230317094725.48305-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230317094725.48305-1-marex@denx.de>
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 17, 2023 at 10:47:24AM +0100, Marek Vasut wrote:
> Add DT compatible string for DH electronics i.MX8M Plus DHCOM on PDK3
> evaluation board into YAML DT binding document. This setup is a general
> purpose SoM evaluation board.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied both, thanks!
