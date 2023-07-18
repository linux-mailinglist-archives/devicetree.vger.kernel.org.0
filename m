Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A361075717A
	for <lists+devicetree@lfdr.de>; Tue, 18 Jul 2023 03:47:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230092AbjGRBrE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jul 2023 21:47:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229470AbjGRBrD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jul 2023 21:47:03 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7138FE47
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 18:47:00 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 04AC26134B
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 01:47:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B9A2C433C7;
        Tue, 18 Jul 2023 01:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689644819;
        bh=x+4Px5s0/7c/kcYknu2hEtJNoz94JfZLCEkKuEbYY9E=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=YWRKu4YL+9QdrWgjzDj0J1zaeMqVotbhrSQU8uOOWBD0zVpOnCQ2OL74edH1lNuTU
         nHZzW21c4kyMg++8JYxgkq6QsyjLb1/F/uop+tHuaZRP/pyzTPew9b+k9wS0915XsK
         RfuoDtIiK2AOx78MV4JUc58dFJTKSgyHaxqpYNx74GZ3eFkQjzVu4SL2JpvsKdJHBI
         JrNE/l86okFuyftXjVy58XYlmTOEYYiehPnTUnvRGJBBTBYvZqajleVoJJmTUaBvqQ
         b4RXBjugfQRNsPBK8NDCyJwnkXYLU8UR4hXzElOIP2QhCIa5pHvu82SarChSR6+zbv
         dprGx560zyZ5A==
Date:   Tue, 18 Jul 2023 09:46:49 +0800
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
Subject: Re: [PATCH 1/1] arm64: dts: imx8mq: Add coresight trace components
Message-ID: <20230718014649.GT9559@dragon>
References: <20230616075914.2315189-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230616075914.2315189-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 16, 2023 at 09:59:14AM +0200, Alexander Stein wrote:
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
> ---
> This is a 1:1 copy from commit 71c2ac9a2a3da ("arm64: dts: imx8mp: Add
> coresight trace components") with the following changes:
> * Adjust clock names
> * Replace (Cortex-)M7 with M4 in comment
> * Remove Audio DSP funnel port
> 
> This is untested, but the base addresses for the components are
> identical in the reference manuals.

I prefer to have it tested in some way before we apply it.

Shawn
