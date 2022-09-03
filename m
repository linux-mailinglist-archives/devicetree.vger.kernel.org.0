Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B24B65ABCA0
	for <lists+devicetree@lfdr.de>; Sat,  3 Sep 2022 05:51:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231703AbiICDur (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Sep 2022 23:50:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229538AbiICDun (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Sep 2022 23:50:43 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9C8C40E1F
        for <devicetree@vger.kernel.org>; Fri,  2 Sep 2022 20:50:42 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 849A7B82D74
        for <devicetree@vger.kernel.org>; Sat,  3 Sep 2022 03:50:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23BD8C433D6;
        Sat,  3 Sep 2022 03:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1662177040;
        bh=JB9YpMz5YBZcialIAiLWTZrES7D6mhtVCEhVWGHJW2E=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=eTMxprlUG9c0FIMy+jnSRkm4UQOuptPjlt5k7uqo+0AyWbwZmjsouSurYd9TCJ/nZ
         E2lCp9NZfO/7VxPLzMMIOeprJc547CN1J1x/vaYFmd0SybvTAkR7jKVfW4IxdmDZ40
         bhmrNdc201QYZZNgj7/4xqnmfdXqV1XcC69tqoSDUeaHNeCANdgVpluAQheYI6C6h7
         8x535I0BbLLcGEhULq/HZBERTAe/8057smQYCjlCfCppTm9wTIvgfUULqiZyY+03GL
         f7GtkKJcomeZmPXK5cF032Q7EDw7hq1mLEulSZlg2AOVMOy1K/+6n6Kh7b1Sc2LtxT
         xe8BcyzID7ufg==
Date:   Sat, 3 Sep 2022 11:50:34 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Jagan Teki <jagan@amarulasolutions.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amarula@amarulasolutions.com
Subject: Re: [PATCH v2] arm64: dts: imx8mm: Fix typo in license text for
 Engicam boards
Message-ID: <20220903035034.GG1728671@dragon>
References: <20220823125325.1232046-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220823125325.1232046-1-jagan@amarulasolutions.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 23, 2022 at 06:23:25PM +0530, Jagan Teki wrote:
> Fix the Amarula Solutions typo mistake in license text for Engicam
> i.MX8M boards add in below commits.
> 
> commit <60ac35268f85b> ("arm64: dts: imx8mm: Add Engicam i.Core MX8M
> Mini SoM")
> commit <aec8ad34f7f24> ("arm64: dts: imx8mp: Add Engicam i.Core MX8M
> Plus EDIMM2.2 Starter Kit")
> commit <eefe06b295087> ("arm64: dts: imx8mp: Add Engicam i.Core MX8M
> Plus SoM")
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Applied, thanks!
