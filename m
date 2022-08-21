Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 578BF59B16A
	for <lists+devicetree@lfdr.de>; Sun, 21 Aug 2022 05:33:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233430AbiHUDXr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Aug 2022 23:23:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229557AbiHUDXm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Aug 2022 23:23:42 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F34E7120A9
        for <devicetree@vger.kernel.org>; Sat, 20 Aug 2022 20:23:40 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 1583660C51
        for <devicetree@vger.kernel.org>; Sun, 21 Aug 2022 03:23:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED8F4C433C1;
        Sun, 21 Aug 2022 03:23:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1661052219;
        bh=NSMNHRlZx9naDvx73Z5+Ag5FLcDVLGJ718RKW33XDa8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=A/8LLHOw/HD88adCxzWCCcecVgmpynXIclYZD+iSlp3LEFawf+//0Tqpj2xnSWAol
         PTWj5mSOxyhNDGB3ehuLfqUj1Ku1lvNBGUBlvlDAw2X3KKkhFVI5woPGHJ36fDqTvf
         HHH11OS781Pk68zs2mzDINeZq6ndigUOaIs+5W/9GRGoROi39fVD6M1EpzQf0DvVs2
         a50K6CflEiyQNdeLcaB+9djfI7J7ZYGA+7+954YVIZhjo/jRcz3u4qXodUwsGIUBxw
         sUN5NFSU9NjiSO5Z+UzlDeenL7HEqAF0ks3A45uUJAv1aZiNR+8NRz3juD7EneljD3
         tb8uqU8uVwvzA==
Date:   Sun, 21 Aug 2022 11:23:34 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Lukasz Majewski <lukma@denx.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] ARM: dts: imx6q-mccmon6: Add
 fsl,err006687-workaround-present property
Message-ID: <20220821032334.GM149610@dragon>
References: <20220720064712.1414438-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220720064712.1414438-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 20, 2022 at 08:47:12AM +0200, Alexander Stein wrote:
> Add property for ERR006687 hardware workaround.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
