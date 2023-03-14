Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 47A9B6B87D0
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 02:46:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229573AbjCNBpL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 21:45:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229612AbjCNBpK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 21:45:10 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37C79C17B
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 18:44:45 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A3F6361591
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 01:43:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B097BC433EF;
        Tue, 14 Mar 2023 01:43:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1678758208;
        bh=0xdMNfGeSLrZQQCeqX3nm1wDrmYK8kB7mRCg6legEGk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ass73fIp/tXhavTorQODxDPivd38rNWPBjciajto6LHfHANUMNUNeErGb/+mBRL/B
         sPY1o1OAVlnXfCUKMy3dv3+fiJMBT1idCJPXLjGT7m6t6ulE27Fi/mPSjRhv/9CYEg
         n/E5hFFtDIPZO1UdKcZucQXGsfcpLzfFrJTOLaMCPTxmJGatUmT+jXKCWL2fmhALDz
         ibTrEYRv2dMqS9ksa9LDMWT4eLAc+6SMQ658ik+qGzBRX604NoWo5DL9UCSi1AGOZ+
         ElS6zQMCZD17Jbmn/58mK3Ppnes5t427cQ/2qPZn3fOk/pcH1bwut0gaqY2Lav67MX
         GSZ2S8a1xm3zA==
Date:   Tue, 14 Mar 2023 09:43:21 +0800
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
Subject: Re: [PATCH] arm64: dts: imx8mp: Update GPIO M to CLKOUT1 on DH
 electronics i.MX8M Plus DHCOM and PDK2
Message-ID: <20230314014321.GE143566@dragon>
References: <20230217192545.61714-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230217192545.61714-1-marex@denx.de>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 17, 2023 at 08:25:45PM +0100, Marek Vasut wrote:
> The GPIO M SoM pin is connected to CLKOUT1, while CLKOUT2 is used as a supply
> for TC9595 bridge chip clock. Update the comment. No functional change.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied, thanks!
