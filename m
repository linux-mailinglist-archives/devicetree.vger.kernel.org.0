Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0BF596B882E
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 03:14:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229826AbjCNCOL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 22:14:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229621AbjCNCN4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 22:13:56 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BCC674DF3
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 19:13:55 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 9AC62B816DA
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 02:13:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20AC9C4339B;
        Tue, 14 Mar 2023 02:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1678760032;
        bh=ms9m9k6pHqfGZKGZCcl5XZy2QUfJThIdYq5v21kYFvs=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=jBG88Dca1UaIh23Ymckioe7a5UCG0XwdQ0Cy+O4M1ED9c55FkbSue9k4EIsfESyYQ
         yiar/UwLlVJbQUk1ZIcIUwiTMubv1xHaVRMeHY4jNH9ctHfSfs/ZipTUrqLkPtHo0Q
         lZbOu9eFymAsaLKW7KttqLOYBf4z1LpubJjhGb3J1SYPh9VKZ0Nna5FTmjAq0k9Dox
         klPxzNd105jzHnVto3FaKllBHIYKfdlVdIBzJc3r5HgRKlHHFZnVY1Fgjqbq0c+6qs
         6JS8acTlxU/zpRU2t6189um6fT0sYHdQY9mtHFtigpLMOmF8S40Akl9RaIcgNbUJDx
         OTst77aiSSKMw==
Date:   Tue, 14 Mar 2023 10:13:45 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        devicetree@vger.kernel.org, kernel@dh-electronics.com
Subject: Re: [PATCH 1/5] arm64: dts: imx8mp: Do not delete PHY nodes on
 i.MX8MP DHCOM PDK2
Message-ID: <20230314021345.GF143566@dragon>
References: <20230217192647.61733-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230217192647.61733-1-marex@denx.de>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 17, 2023 at 08:26:43PM +0100, Marek Vasut wrote:
> The PHY nodes may be activated via DTO in case another SoM variant
> is populated into the development kit. Do not delete the nodes.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied all, thanks!
