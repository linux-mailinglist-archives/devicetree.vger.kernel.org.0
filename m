Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8073B6C99BA
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 04:51:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231740AbjC0CvT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Mar 2023 22:51:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231659AbjC0CvT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Mar 2023 22:51:19 -0400
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5966D44B1
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 19:51:18 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id B5CCDCE0FC8
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 02:51:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13435C433D2;
        Mon, 27 Mar 2023 02:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1679885475;
        bh=ScLJ1rbhXFx0uP2dWy7Z9pp/CJdK4gxv7Vphn+1tzwk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=dRV+wbWT+GmwaCVM3PuvTSqUaCT+CKX+x5aRhEOvU2MdPZkeK8E1z5Ui3exPhkTwF
         CbNAfwYXWNGKl1iS4UcGp+QwjYNFJMUI1fLxGXcxwMkOstAGx0obOUEUFFZWmux0cT
         AIPISu3Tbd0wTi++oHF7ocWPbZwuY7YVwi92HYvqIYkgiyGP9GjQtebXUp8SUidK6V
         zZD2ACBOaXfqpzZ/IHS+tUHzpIjsG2FO0wDFZjoiaYQObwElN1vZatV/lC16CWH+Fs
         b37JAEZihs+wlR/JAvHP/2ID4wDbxPOACujYsfR5WTI9TIZBH/nLcjptDepn9BshID
         TlUmNsNlrtlUg==
Date:   Mon, 27 Mar 2023 10:51:07 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     devicetree@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: soc: imx8m-blk-ctrl: Rename blk_ctrl to
 blk-ctrl in examples
Message-ID: <20230327025107.GI3364759@dragon>
References: <20230317095827.49100-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230317095827.49100-1-marex@denx.de>
X-Spam-Status: No, score=-5.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,SPF_HELO_NONE,
        SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 17, 2023 at 10:58:26AM +0100, Marek Vasut wrote:
> Rename blk_ctrl@ to blk-ctrl (with dash instead of underscore) in examples
> so that they would match the imx8m[mn].dtsi in current Linux kernel.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied, thanks!
