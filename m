Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E2626D7DD3
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 15:37:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238257AbjDENhR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Apr 2023 09:37:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237308AbjDENhQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Apr 2023 09:37:16 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5935D49F9
        for <devicetree@vger.kernel.org>; Wed,  5 Apr 2023 06:37:15 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id EB1EC63D1D
        for <devicetree@vger.kernel.org>; Wed,  5 Apr 2023 13:37:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55270C433EF;
        Wed,  5 Apr 2023 13:37:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1680701834;
        bh=ItiG3pXnulE0I1TomQ3JEnm69zz4Q3qOI17/1E9KFTc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=rVVuelub+AqtMDxqeGLsWBAFEcoop2utfXun12mURwG2deOOlmvbyKbsJqNWEczHq
         DgEbu1kNMS6WVmIX5gjZXEcEcxeBLdDIxzUuOf3W6QGWot4hjd4gfY7hTEIDVp7DUU
         vQ7O/CAyFTctHdsTpeEmkNMgaT24Fso43C7nFnoU4I1OnZG61s09GfPvdTtb1jrv55
         SPi7Lhuts35iZH8druQDsQ3rjdYO9EZ0+ac9n2PjgI38f2SRZE7WRVtZfuLwfgcIAQ
         YSBHHkbL+QhKKYlBbQjuMN1q6NUWcxE6r4nPHx2GdRrIfa53N3WNL3YLYqipV+sxC7
         RfSSh45+hyMqA==
Date:   Wed, 5 Apr 2023 21:37:05 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: imx8mp: Add GPT blocks
Message-ID: <20230405133117.GD11367@dragon>
References: <20230327173526.851734-1-u.kleine-koenig@pengutronix.de>
 <20230327173526.851734-3-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230327173526.851734-3-u.kleine-koenig@pengutronix.de>
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 27, 2023 at 07:35:26PM +0200, Uwe Kleine-König wrote:
> The i.MX8MP includes the same GPT blocks as the i.MX6DL. Add all 6
> instances.
> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>

Applied, thanks!
