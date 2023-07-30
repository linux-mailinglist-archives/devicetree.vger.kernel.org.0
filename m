Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8194A768403
	for <lists+devicetree@lfdr.de>; Sun, 30 Jul 2023 08:28:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229445AbjG3G2K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Jul 2023 02:28:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229379AbjG3G2J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Jul 2023 02:28:09 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 976E3198E
        for <devicetree@vger.kernel.org>; Sat, 29 Jul 2023 23:28:08 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 2AFD160B58
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 06:28:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CBD9C433C8;
        Sun, 30 Jul 2023 06:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690698487;
        bh=B341pruwsTKESJ8nXzQrWbzUXtDmxEJLz8Jbi1QDXZE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=kyBDWU1iRLfymJTkxm8+oSDoi0Oka93KIlX9qcb0+FZwrzd6ysqVdtUs7nCN6lYLl
         0kVF2XD0bcrTX1yW1XsJiR9nyPHF1QvSdbjoSCB76ikSV6MfBk2H9IfgBTB1ymDrDi
         NK8xPCdv4UBX2OxeMXWds810LWGfaVvVQFsUBeI7yCMZX1SVaoJyyJ7q7ovGfg8abw
         L9GGynSNuJcB9wOINlOLtj2Lu41MW3sDRgdnYqj5/PnOSY143NZbjN68DcXzqKH9x5
         jaMHdIQkBerf1XVfWF+v8k/45MqPUj7QMqlwV590+92OgCiFbuQTa+WkiSRP/9W4vE
         OTrcO7j2M3kpA==
Date:   Sun, 30 Jul 2023 14:27:56 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Frank Li <Frank.Li@nxp.com>
Subject: Re: [PATCH v2 1/1] arm64: dts: imx8mq: Add coresight trace components
Message-ID: <20230730062756.GX151430@dragon>
References: <20230719090616.1954001-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230719090616.1954001-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 19, 2023 at 11:06:16AM +0200, Alexander Stein wrote:
> Add coresight trace components (ETM, ETF, ETB and Funnel).
> 
> ┌───────┐  ┌───────┐  ┌───────┐
> │ CPU0  ├─►│ ETM0  ├─►│       │
> └───────┘  └───────┘  │       │
>                       │       │
> ┌───────┐  ┌───────┐  │  ATP  │
> │ CPU1  ├─►│ ETM1  ├─►│       │
> └───────┘  └───────┘  │       │
>                       │ FUNNEL│
> ┌───────┐  ┌───────┐  │       │
> │ CPU2  ├─►│ ETM2  ├─►│       │
> └───────┘  └───────┘  │       │   ┌─────┐
>                       │       │   │     │
> ┌───────┐  ┌───────┐  │       │   │ M4  │
> │ CPU3  ├─►│ ETM3  ├─►│       │   │     │
> └───────┘  └───────┘  └───┬───┘   └──┬──┘                        AXI
>                           │          │                            ▲
>                           ▼          ▼                            │
>                       ┌───────────────────────────┐   ┌─────┐   ┌─┴──┐
>                       │          ATP FUNNEL       ├──►│ ETF ├─► │ETR │
>                       └───────────────────────────┘   └─────┘   └────┘
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
