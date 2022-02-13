Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C54004B38EE
	for <lists+devicetree@lfdr.de>; Sun, 13 Feb 2022 03:31:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232906AbiBMCbu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Feb 2022 21:31:50 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:39812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230061AbiBMCbt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 12 Feb 2022 21:31:49 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A3A55FF27
        for <devicetree@vger.kernel.org>; Sat, 12 Feb 2022 18:31:45 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id CC11960EF5
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 02:31:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8982CC340E7;
        Sun, 13 Feb 2022 02:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1644719504;
        bh=0PRTX9pzIk/r3WLp+67jw3nYIN+D0oLuJ16qzPn3C8Q=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=BfVDP/RBSnIzQteUEZzfGQ6TOBi2NSdIkySIlzuiQIJlAWP02fd5CX2vsTi3hN1aD
         XxmvlvEZlmnd6jiyt9uRmuKYg2XCCMcUHq5Az6heB+bnGlxxvkAx1zmgjMTUpxQ9X2
         N5lNkQnTUB6MW+zudCUXqkiAqPMPOShJx/56ozDv4hu4MiI1NPp25LOV3TxkXpqzs5
         FgaPHC2M1IHW9jSDjpo3uMCvyLT5BfPLp+XCpDAys8tTOaZJH9vDPwnR2iQr9HN85T
         LcjCPgkW7eGXefEb1ZBmWUSoj5+AbDIfLu2RCLacwGAanTHFgQvpCAwTlVXQIsziV2
         2lSyx6nQAttVA==
Date:   Sun, 13 Feb 2022 10:31:36 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Matthias Schiffer <matthias.schiffer@tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/5] ARM: dts: imx6qdl-mba6: Move rtc alias to common
 location
Message-ID: <20220213023136.GI4909@dragon>
References: <20220208123248.821826-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220208123248.821826-1-alexander.stein@ew.tq-group.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 08, 2022 at 01:32:44PM +0100, Alexander Stein wrote:
> The rtc alias is identical for both mba6a and mba6b.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied all, thanks!
