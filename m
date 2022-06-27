Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F7C455DC2B
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:25:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233028AbiF0HjW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 03:39:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233042AbiF0HjV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 03:39:21 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5682A60ED
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 00:39:19 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 03990B80F9C
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 07:39:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B00BC3411D;
        Mon, 27 Jun 2022 07:39:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1656315556;
        bh=SASIoa/gFug+gq/KgZ3uTz5DPN/RbhTgNsUPa3e4Guo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=K7ALXIWGE72uWB4qeGjDEnE2FHVc4qm0Zen1QJf0Mzt1MOzNn50ot1mHfXTj4uaX/
         0Nhn41DMLtcIhao/p/x3ff3yOuFnMxzX6rS+kx6fo1mm+aKtgzeHVJhm6unbjQcc8w
         IKrKo58UR49ebbb3+/neU0EziBKoE+shERrD7UeiaqM6KRgPABsyRLxVjzGuv9gmhh
         dAPspuJ6b+0av5Mb2FeatXXbIMdkeWqHKfVrCGSfGZZ410/gxenM7SPSaJMNW651hz
         dSgiqn+p3nP51TQi6ic1DrjVsQDvABl5VLn5jfkjzcjt9HXke9PTuw4c7tG5gq165f
         V0MEiZgOOVWrg==
Date:   Mon, 27 Jun 2022 15:39:11 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Teresa Remmet <t.remmet@phytec.de>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>, upstream@phytec.de
Subject: Re: [PATCH v3 1/3] bindings: arm: fsl: Add PHYTEC i.MX8MM devicetree
 bindings
Message-ID: <20220627073911.GD819983@dragon>
References: <20220621071048.1876093-1-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220621071048.1876093-1-t.remmet@phytec.de>
X-Spam-Status: No, score=-7.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 21, 2022 at 09:10:46AM +0200, Teresa Remmet wrote:
> Add devicetree bindings for i.MX8MM based phyCORE-i.MX8MM
> and phyBOARD-Polis RDK.
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied all, thanks!
