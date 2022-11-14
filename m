Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 981F5627828
	for <lists+devicetree@lfdr.de>; Mon, 14 Nov 2022 09:52:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235636AbiKNIwh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 03:52:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235946AbiKNIwh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 03:52:37 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 271901C93E
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 00:52:35 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 7649860F33
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 08:52:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F974C433B5;
        Mon, 14 Nov 2022 08:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1668415954;
        bh=LQSh5XFPUVPh99Anhh3nKbvcMi1wckZSME6gcm6RrHc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=KuvFX8AODIi1lKFWgWS5wvt6tI6YOUR4iLQQISE9agW6bUQoLALtLOHqHa+/2g+lS
         I6bmSVxfnaDnGpNnMw95jB59BWXGXfdHU+YkeDD35Ou6xP3njWgvvJh9etEcA11b9K
         TsfHPoN2U6LPYtM7VA07TWU2/k6BZbgRXQoyH+7wBWqS9hY+aG4S3xlDlqSwgwgT48
         Q8Cqny2CAAg71koBXfbTXw/HzXIr5C1k6fnvFD69j6oaBr45uYfoz5GF37sVcps8wf
         MfrPpeZnkXapyhnrtsc/CE5wFifsbi5YmgMjQyfIwxgxtGfiRM2Ih6eI3Jf7bBIsZg
         PF8MSBl2b9p/A==
Date:   Mon, 14 Nov 2022 16:52:27 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Shenwei Wang <shenwei.wang@nxp.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        imx@lists.linux.dev
Subject: Re: [PATCH v5 0/3] gpio: add suspend/resume support for i.mx8x SoCs
Message-ID: <20221114085227.GV2649582@dragon>
References: <20221111155016.434591-1-shenwei.wang@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221111155016.434591-1-shenwei.wang@nxp.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 11, 2022 at 09:50:13AM -0600, Shenwei Wang wrote:
> On i.MX8QM/QXP/DXL SoCs, even a GPIO is selected as the wakeup source,
> the GPIO block will be powered off when system enters into suspend
> state. This can greatly reduce the power consumption of suspend state
> because the whole partition can be shutdown. This is called PAD wakeup
> feature on i.MX8x platform.
> 
> This series of patches enable this wakeup feature on i.MX8QM/QXP/DXL
> platforms.
> 
> Changes in v5:
>  - improve the commit log per Fabio's feedback.
>  - remove the two patches accepted by Linus Walleij
> 
> Changes in v4:
>  - fixed the format issues reported by Peng Fan.
>  - change the return type of mxc_gpio_generic_config, and limit the
>    suspend/resume behavior changes only on i.MX8QM/QXP/DXL platform.
> 
> Changes in v3:
>  - According to the feedback from Linus Walleij, the wakeup feature is
>    moved to pinctrl driver, and the array of gpio-pin mapping is moved
>    to gpio device node and initialized via gpio-ranges property.
> 
> Shenwei Wang (3):
>   arm64: dts: imx8dxl-ss-lsio: add gpio-ranges property
>   arm64: dts: imx8qm-ss-lsio: add gpio-ranges property
>   arm64: dts: imx8qxp-ss-lsio: add gpio-ranges property

Applied all, thanks!
