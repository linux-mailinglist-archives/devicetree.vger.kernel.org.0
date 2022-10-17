Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F419600649
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 07:29:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229564AbiJQF31 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 01:29:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229660AbiJQF30 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 01:29:26 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E671E52
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 22:29:24 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 2C91F60DF2
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 05:29:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 029EFC433D6;
        Mon, 17 Oct 2022 05:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1665984563;
        bh=3Xbl7YVRSwxkla8P8wg2DtU1jeZKfi5JhHpnez5Evmc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=BsniOT+5eMF9qsWx3u6iuceuOO2kzTZ0QbQPZWpT12rwSZ+s23bifECVS6V3dLLPR
         PKVKl1P67aJDhDqKAfKRKLTSYOfsbfSM1rpmZkLZ/fpKkqbepkLM8x0TvQpzU8uUNv
         MK+M8fU0JbqhGdATQk+M6j5eU4xyEH4C950C/6DYiNgHrqZo1lC9cZNKepW1IFg+mo
         HuqUoifarabj8m0lxX1O4g58Fy+Kekvffg29Supw6tQx3Fkha4OKHo/CF49NRt8YYC
         4HZvxbMPlLLGQR57gOY2BKMSUPnl6ygrxtUALEWmoNvbtXzXXHPC46bjg1PKBfqcjp
         6r3PiFwC2vp8g==
Date:   Mon, 17 Oct 2022 10:59:19 +0530
From:   Vinod Koul <vkoul@kernel.org>
To:     Matt Ranostay <mranostay@ti.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        vigneshr@ti.com, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 0/2] phy: ti: phy-j721e-wiz: add j784s4 support
Message-ID: <Y0zoLyLII4U8PQYn@matsya>
References: <20221015201123.195477-1-mranostay@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221015201123.195477-1-mranostay@ti.com>
X-Spam-Status: No, score=-7.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15-10-22, 13:11, Matt Ranostay wrote:
> WIZ modules for J784S4 platform have two input muxes which requires
> additional mux sections options.

Applied, thanks

-- 
~Vinod
