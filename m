Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D13A758B40
	for <lists+devicetree@lfdr.de>; Wed, 19 Jul 2023 04:16:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229611AbjGSCQF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jul 2023 22:16:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229560AbjGSCQE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jul 2023 22:16:04 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 330B312F
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 19:16:04 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id BCA0F615C7
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 02:16:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 976C1C433C8;
        Wed, 19 Jul 2023 02:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689732962;
        bh=/ZAIQW83u/eDT7MWTdiZ1DMc95frP+V5OU2pezWFEts=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=YQ4izRIy/V97I6kl9sYm78TfBCmVZQzAXPvIh5G/0ifA2ytCiphhrWvRuIyCYB2F8
         6cG0aDxJVKDj7RdOyshCA7G08Rn8xBEU/7xIavSyT2hb7suwzAfSAl2DXJSgHnY2/+
         oDVlL83ArdFMTV9/2z/4MnWJa4/brUl1Kh9MOUKKQHmYYUFUZLB5s7wCQSiJCZtXw7
         Nfpx65TFYmAXQBvWh+geErX4HC2aPHL2k/HqESsVkrZgydVYOAZGTW/a3YdlpwhU6a
         u5hDJgaIWjRoeDikSWk/67cVYjGlaHrgTcW5WjQ+eSZwxQlhHKXBsrV2tL0StlLGBy
         oDK2ii2YjVH/Q==
Date:   Wed, 19 Jul 2023 10:15:51 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] ARM: dts: nxp/imx: limit sk-imx53 supported
 frequencies
Message-ID: <20230719021551.GU9559@dragon>
References: <20230709203019.291823-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230709203019.291823-1-dmitry.baryshkov@linaro.org>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jul 09, 2023 at 11:30:19PM +0300, Dmitry Baryshkov wrote:
> The SK-IMX53 board, bearing i.MX536A CPU, is not stable when running at
> 1.2 GHz (default iMX53 maximum). The SoC is only rated up to 800 MHz.
> Disable 1.2 GHz and 1 GHz frequencies.
> 
> Fixes: 0b8576d8440a ("ARM: dts: imx: Add support for SK-iMX53 board")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Applied, thanks!
