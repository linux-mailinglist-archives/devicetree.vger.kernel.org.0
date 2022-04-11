Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D27B4FB180
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 03:51:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240375AbiDKBx1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Apr 2022 21:53:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244316AbiDKBx0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Apr 2022 21:53:26 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BA07271C
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 18:51:14 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 2B1BFB80E62
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 01:51:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A1D5C385A4;
        Mon, 11 Apr 2022 01:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1649641871;
        bh=f4X6QfzuFY6I3+0CTvOqyx61kC2Sg5Y6sesaa0R4yUI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=LkO2LpN39RQ2/guO3FGeOCa8QqYxcmrLN5Hfpm4X2R67GMI1RrHIBMr0f2LgfflqV
         gtOwMNTR/wwbwGX+B+V2SrSGnGx72I96g0iGWdyHA9XvekIMyy4Cx2Fgws5/k1JmXt
         B4SebQmrp0fyh2DDwnU7+VStjY1hSwwH2Lte9SmR4yDFPF7rsJfEjObEg6qknuCXdd
         ir0cPeqLG67iTM4/rUldRwni2Q26NLlCDzE06Z6sn+o6t7pKjwQR2W5Nc0t5fE38jq
         3d1lyHtZAuITid8gT064vIZaiAVPn674+4nZtual7ohSKmRy1mwS+yX/J0M5w5IURF
         BreTBiiKYkenw==
Date:   Mon, 11 Apr 2022 09:51:06 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>, Peng Fan <peng.fan@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: arm: Add i.MX53 based Menlo board comment
Message-ID: <20220411015106.GF129381@dragon>
References: <20220407192141.179845-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220407192141.179845-1-marex@denx.de>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 07, 2022 at 09:21:41PM +0200, Marek Vasut wrote:
> Add comment regarding the i.MX53 based Menlo board.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Fabio Estevam <festevam@denx.de>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: devicetree@vger.kernel.org
> To: linux-arm-kernel@lists.infradead.org

Applied, thanks!
