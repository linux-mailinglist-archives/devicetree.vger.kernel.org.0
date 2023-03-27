Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C03796C9979
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 04:06:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229850AbjC0CG4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Mar 2023 22:06:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229475AbjC0CGz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Mar 2023 22:06:55 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39F8C4C38
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 19:06:54 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id DC7BFB80D0D
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 02:06:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADCEFC433EF;
        Mon, 27 Mar 2023 02:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1679882811;
        bh=5LAXwF+2/mJR7rD2wQMaq13N5GfFeOP64R2w9EIiXss=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=qpPLTvK/7v5qY8IiUmg0feeFCsfDaWqQ6vD01F9nZIPz+k/xK0seT7gJXWBXHVaFA
         WYa/0en29Wkqi7eRhzwZ8LmbjFzUPP8pqT58g3r4+jMHVyWSGUI4UNvqHHi5AuGeGY
         JXK6g7M2TbI2CXVD58asrkSRoUYPqGnThswi9+yC+mnw2BcQB2PrcZPpYQT+8RNwfX
         FMwVUeSIS3AfFn3pYqtDeVAUiA4Ag2acFfEgVZVW/1qTldUkT/smQIr+2k6PeNBDt1
         EMoYG/PcjTY/xZm/8cycZ6r3yB3IuwYd58HsrNnmr3bB2sCQ5aIV1+m3VTbgu+ITUZ
         5v2dMhZG8MgpQ==
Date:   Mon, 27 Mar 2023 10:06:44 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/1] arm64: dts: imx8mp: fix address length for LCDIF2
Message-ID: <20230327020644.GC3364759@dragon>
References: <20230314074817.382496-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230314074817.382496-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 14, 2023 at 08:48:17AM +0100, Alexander Stein wrote:
> 0x238 is the offset for PANIC0_THRES, so the length needs to be greater
> than that. Use the size from memory map from reference manual.
> 
> Fixes: 94e6197dadc9 ("arm64: dts: imx8mp: Add LCDIF2 & LDB nodes")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
