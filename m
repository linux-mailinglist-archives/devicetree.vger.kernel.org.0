Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C09E5B57DC
	for <lists+devicetree@lfdr.de>; Mon, 12 Sep 2022 12:07:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229589AbiILKHO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Sep 2022 06:07:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229677AbiILKHN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Sep 2022 06:07:13 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88A191A834
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 03:07:12 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 30B5460A1A
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 10:07:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A064C433D6;
        Mon, 12 Sep 2022 10:07:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1662977231;
        bh=nsEF6IjT0wHdr6Ok39n4J0o5bpTc9Q86nkmXRNJJ6to=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=DKoaoQ8KQOsG7HkskBJ5BHXsvcWAm170z8GVTUxWNoVPcRZR5SuFWS0ff5NQcE04w
         yfZonFi6wW+ANh2Udw98vBYSDwvjEDlnuNza3bonMwW0EuE2byqQzHCKh41F/vdUS5
         mR21biQvM365Xz8oucp31lVWmd3RQ5/bKf04f9Nm5z+3gqREqydKzG/2it1rOXvKm7
         RgAZCJB8oinxb3s4giPhC/AvVXdr9JCHeJqQ6OrcbRb1fpyjlFfTCGIIFTs/pC8OPp
         WyYVeDccUUFUaZLwnQ2B/6xCchCsqYO1FbYs30MOm+5ZnvCHX6RL9KOif60Pt5GYIh
         h2JLizWCmu1CA==
Date:   Mon, 12 Sep 2022 18:07:06 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/1] arm64: dts: imx8mp-tqma8mpql-mba8mpxl: add
 missing pinctrl for RTC alarm
Message-ID: <20220912100706.GZ1728671@dragon>
References: <20220906063606.574709-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220906063606.574709-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 06, 2022 at 08:36:06AM +0200, Alexander Stein wrote:
> Although the RTC is on the module, the RTC_EVENT# signal is connected
> on the mainboard. Already set by bootloader, but make it explicit in Linux
> as well.
> 
> Fixes: 418d1d840e42 ("arm64: dts: freescale: add initial device tree for TQMa8MPQL with i.MX8MP")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks!
