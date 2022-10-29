Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 04A09611F6B
	for <lists+devicetree@lfdr.de>; Sat, 29 Oct 2022 04:50:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229450AbiJ2Cux (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 22:50:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229379AbiJ2Cuw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 22:50:52 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 448B91DCCE6
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 19:50:52 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D4F5162B4B
        for <devicetree@vger.kernel.org>; Sat, 29 Oct 2022 02:50:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A88DCC433C1;
        Sat, 29 Oct 2022 02:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1667011851;
        bh=Go2NAFfKH+IszxXHlhSkZ4Sh77SiywS/Y9CIxay8nh0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=C7ptrbGJd9p9ngvL2l5noos2Z64pqhJ60ABk9sfob5k0uOHHApQBmM5BKmeyJspeQ
         Ab8ILRcS2S5gnfIiMBSlvl1nBu6Ytb3cm066mhE2+513Rpz64fqgYrBZ325U3zIIpf
         ikRvwkvkm6AnoIc5+daXQmTkRfwXrjjIOjdue1Lig86HDuS2e9SIp4WNBLSKWH2Ba2
         Bqzk+HFFijlNR94m0/jPHr9l/nqvd6stbheXih0XJhT4RNCg+fsFHDDhvnYk/F47Jw
         8sr9OkQUmdDDsyG2DyBnje5tGjidobsTT0kOwXYqkrz457nc/UGDWDZ0BTNLPpuqm6
         UFQhY2t4M+/4g==
Date:   Sat, 29 Oct 2022 10:50:43 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Shenwei Wang <shenwei.wang@nxp.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Viorel Suman <viorel.suman@nxp.com>,
        Abel Vesa <abelvesa@kernel.org>, Ming Qian <ming.qian@nxp.com>,
        Peng Fan <peng.fan@nxp.com>, devicetree@vger.kernel.org,
        imx@lists.linux.dev
Subject: Re: [PATCH 1/2] arm64: dts: freescale: imx8dxl: add scu_gpio node
Message-ID: <20221029025043.GJ125525@dragon>
References: <20221011194715.647439-1-shenwei.wang@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221011194715.647439-1-shenwei.wang@nxp.com>
X-Spam-Status: No, score=-7.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Oct 11, 2022 at 02:47:14PM -0500, Shenwei Wang wrote:
> add scu_gpio node in system-controller.
> 
> Signed-off-by: Shenwei Wang <shenwei.wang@nxp.com>

Applied both, thanks!
