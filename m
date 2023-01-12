Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6CFCD667D8F
	for <lists+devicetree@lfdr.de>; Thu, 12 Jan 2023 19:12:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240232AbjALSMR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Jan 2023 13:12:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240030AbjALSLx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Jan 2023 13:11:53 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA1D37A202
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 09:39:18 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 56685B81F08
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 17:39:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DA4EC433EF;
        Thu, 12 Jan 2023 17:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1673545155;
        bh=LZYuTZSSPTCVVSKRkpW2/c8JVDxXZJdj7wXB1kN2alo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=qzG3CxDpSr5Z2+G60lQ4y1EPmDe/i8bUrbPgDF2CubZojWl6tOKzOCqyE8PMyfxTV
         Gj+LD4i3/HlfazJY9b7m9t54EHF+s9Wx8aKt5cirNzybguPK1/2olsNeH3AGesxnvm
         MYJWtHvMJvgt1lArN+T0GQgmaxN5Ctht1Y92asA6cob3Q/muouNaA2TaVp02/ivfrY
         0NWlNr+BmoJT7BZOosGkD1c3icSjvjSVqiFQJAaOdJx0/gqOdQkk7csh5DwF+PCagm
         FxpMhzcx2R456hMFw058Q50StS47E3xxIlV7pW/T9AiJnzbBLQKFGikX18KZl2TgJW
         x92APt4JTL+fg==
Date:   Thu, 12 Jan 2023 23:09:12 +0530
From:   Vinod Koul <vkoul@kernel.org>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Icenowy Zheng <uwu@icenowy.me>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v5 0/3] phy: sun4i-usb: add support for the USB PHY on
 F1C100s SoC
Message-ID: <Y8BFwPZ0DRGImo5O@matsya>
References: <20230109012223.4079299-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230109012223.4079299-1-andre.przywara@arm.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09-01-23, 01:22, Andre Przywara wrote:
> Hi,
> 
> this is a rebased version of v4[1], with no actual changes. I haven't
> received any feedback on the last version, but technically this looks
> mostly approved to me anyway, we just need to get around to merge it
> now, I guess?
> 
> This is a spin-off of v3 of the suniv F1C100s USB support series[2], just
> carrying the USB PHY bits. It's now based on top of v6.2-rc2.
> The actual binding and driver changes in the first two patches are
> straightforward. Since it came up in reviews, I reworked the quirk
> handling in the phy-sun4i-usb.c driver, to become more maintainable and
> readable, in patch 3/3. For a changelog, see below.

Applied, thanks

-- 
~Vinod
