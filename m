Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5826859B2D0
	for <lists+devicetree@lfdr.de>; Sun, 21 Aug 2022 10:42:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229633AbiHUImy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Aug 2022 04:42:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229436AbiHUImx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Aug 2022 04:42:53 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AB26220CE
        for <devicetree@vger.kernel.org>; Sun, 21 Aug 2022 01:42:52 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 35ADC60DD8
        for <devicetree@vger.kernel.org>; Sun, 21 Aug 2022 08:42:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A1EFC433C1;
        Sun, 21 Aug 2022 08:42:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1661071371;
        bh=EvXcZjJzZZfpcTfv/3jw0zIiBZ7uO2UR8jve/Rz9JHs=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=QgK0iX1sM3mOVpz5RNBPnK/7j83/VUHOaQ0RkXCBzIhaoNPxoGDpfZVRNBQJ9JDm2
         GK2zCA4beogUt633AA4Rqp1G6AwBxRNTt/1Fx1JV/1NTTNT1NbRu9Gy38wxS1BTrNR
         lLj+5E+hmf4IPgBM/tXEFDk7N18T9q2RFubj//8cto3MTS193gisgpouqpe3dZhNgJ
         JTt6yC1Ih7k9uKW3sSHulewYE9vYe8eQwFPtuRNMQFumuf7UJUleym1QArPeyJDkkT
         SIfeePRln8gjMMjITeR7oqZSUkP3o8vAOY8DCNTGP9Lbb/YIZbCMF/Oa2jdzP6bddg
         J2GY+/YIXPcog==
Date:   Sun, 21 Aug 2022 16:42:46 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: imx8mq-tqma8mq: Remove superfluous
 interrupt-names
Message-ID: <20220821084246.GW149610@dragon>
References: <20220725141739.186234-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220725141739.186234-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 25, 2022 at 04:17:39PM +0200, Alexander Stein wrote:
> This property was never needed, remove it. This also silences
> dtbs_check warnings.
> 
> Fixes: b186b8b6e770 ("arm64: dts: freescale: add initial device tree for TQMa8Mx with i.MX8M")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
