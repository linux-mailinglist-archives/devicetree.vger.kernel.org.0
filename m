Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 517094FB138
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 02:59:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239600AbiDKBBj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Apr 2022 21:01:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244222AbiDKBBg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Apr 2022 21:01:36 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 823CF266A
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 17:59:22 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 1D1A560EF4
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 00:59:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2092C385A1;
        Mon, 11 Apr 2022 00:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1649638761;
        bh=ckZxhYbS2U1aeGfxuFT6leURVMO5rxTcdRlAyOqvgF4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=H9FcoGeNHXeR9vCCYyzsJ75Dv6XaGLqovNcWc35MgtQsUUstbIJlqCQq5kmAYvqtK
         yowgdGFwyFBNdfkw0xZli64It8M9TESgfxkBUj/s3tXaoK76V7dOGMkkH8EdbNEg2p
         lLx895Ycsvw3aNBGVmiCSIF0b/EsrGf/wjgvHYYPlAJXEHEaZh0t/kc08O3Tp76yZq
         UK0SL/0+qV4hgYcQh+LDvF9wI+vNwq9yP2jPqzj/3N1rYoOxaQxFkCCVlPPEnMcH6i
         Ys6gyjU1j7wxPaOvNPHxoGWofD28xsf1fhLlCIjKS6ohx9wSXujjytvwZto3xEFDr+
         yg1UvdlQAnfCw==
Date:   Mon, 11 Apr 2022 08:59:15 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: imx8mq-tqma8mq: change the spi-nor tx
Message-ID: <20220411005915.GW129381@dragon>
References: <20220331130206.80349-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220331130206.80349-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 31, 2022 at 03:02:06PM +0200, Alexander Stein wrote:
> This fixes the qspi read command by importing the changes from commit
> 04aa946d57b2 ("arm64: dts: imx8: change the spi-nor tx").
> 
> Fixes: b186b8b6e770 ("arm64: dts: freescale: add initial device tree for TQMa8Mx with i.MX8M")
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
