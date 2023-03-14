Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C2A56B8766
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 02:06:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229865AbjCNBGU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 21:06:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230048AbjCNBFs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 21:05:48 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CFE2888B9
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 18:05:47 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id F2D6BB8169D
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 01:05:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2A89C433EF;
        Tue, 14 Mar 2023 01:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1678755944;
        bh=PgSDmDqAPuQFEs/QjQJk/uOOezA3wjZkbksr0C3NOA0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=gQhl08gQg0KGkGB0vK+xv88ApSkQ6cWcX+B1xbCsa9N/tWgXoz1KKh8y8doj7CsZn
         ztLfBIQD3V1dVHGc1aXZWwAFQhroxEDtMjm4Nt7rBfc858TDkLszGbEmKx6xAEzD9q
         8go6yGkGZzfFPsxfLf6VpCmjo4huUIvAL7fGM62WcREDqeodUv0b1Ppw3ReGDZ7NOn
         gVad5au0/gHHpYSMbO19javCLsMobQYoQjtPrZn89vxW52TgIIIsmzbO2oJARKcbtP
         QpwfymwQC3WfI184N9Yrct2PvyC42SDHZzyWjWJE0Ih9h6IZQXfjvMgy6B9fqYkePq
         o5xIHTpoSOt/g==
Date:   Tue, 14 Mar 2023 09:05:38 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-imx@nxp.com, kernel@pengutronix.de,
        Teresa Remmet <t.remmet@phytec.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH v2] arm64: dts: freescale: imx8mm-phyboard: Add I2C4
 pinmuxing
Message-ID: <20230314010538.GY143566@dragon>
References: <20230215233226.25856-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230215233226.25856-1-laurent.pinchart@ideasonboard.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 16, 2023 at 01:32:26AM +0200, Laurent Pinchart wrote:
> The I2C4 bus is exposed on the camera connector. Add and select the
> corresponding pinmux entries and set the default frequency. The device
> is left disabled, to be enabled from camera overlays.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Applied, thanks!
