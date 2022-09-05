Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BC2F5AC91F
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 05:31:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235951AbiIEDbH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Sep 2022 23:31:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234561AbiIEDbG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Sep 2022 23:31:06 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8388215A06
        for <devicetree@vger.kernel.org>; Sun,  4 Sep 2022 20:31:04 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id B4449B80E96
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 03:31:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D73BFC433D7;
        Mon,  5 Sep 2022 03:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1662348661;
        bh=YwA8gzIswBET7FoBoZ4NeS2hEn9DDFVTbBqHNckzjSo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Sw9+QasE9PpAAA6Zy5VsFLElwAXfsn1VSejIt85x3NhKJ+fI19ZsgS9fgOJK7SGuG
         lXbMbNvgKjzYv419mKHc7tSgKTs9afEbHgmrTYpLppngjnCxRvuH8gOqJPSm4TX5av
         YneT0cHYGXBnobgCe82bsHVMuLNi91stLTarwo3Ii+Qa8xpHzBL9NtkXOTO/arxLBd
         0+JmNYMMPZmDlrSqHDZcUnduG3Ix8H6dr3HmVA9bL5zvvFnriiRP4N21mMDg8eROrQ
         dx7jmeSrSPz43sEvRi5l3iFDCzpQWNzazO31U+H0sz5Ur62M5TNNzA0uQ9ZF7Jwa5d
         lREl799S/ODPg==
Date:   Mon, 5 Sep 2022 11:30:55 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: tqma8mpxl-ba8mpxl: Fix button GPIOs
Message-ID: <20220905033055.GI1728671@dragon>
References: <20220902082015.4149853-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220902082015.4149853-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 02, 2022 at 10:20:15AM +0200, Alexander Stein wrote:
> They were in wrong order, so fix it by switching them.
> 
> Fixes: 418d1d840e42 ("arm64: dts: freescale: add initial device tree for TQMa8MPQL with i.MX8MP")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
