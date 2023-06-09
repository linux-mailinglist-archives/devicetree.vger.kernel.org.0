Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD0E3729C3B
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 16:07:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240414AbjFIOHO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 10:07:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240149AbjFIOHK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 10:07:10 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 083433596
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 07:07:08 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 82A3961C5B
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 14:07:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B0A7C433D2;
        Fri,  9 Jun 2023 14:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1686319626;
        bh=cd/+yvmTGU5FUo6KSqKt0h+DsyR60Ofu+JAp3fjoRaY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=saRzg/OorxNWWBxfOq5F5Zf3rbP0wNIDVWc7/2nhWsYE4sfoHdhucOvVqKtTfg/2z
         +TWjcs11usXZD6EcPm5JpN/xjzIVVl8+54ZKRGUWkr7B1hcefAJyGNVLA1BvbV458Z
         j86vKGyDotqTQIoUn3NciPAckHGqKZiSIGycLlHRPPgUBJNcWnBXaGYkbXOGtBPgO3
         TdHoApd9FXrjmHh3Jj/wnO4Tn/M85aw+px65/GfZ8RLlcOra7acIwK14xhvR0zvCuX
         l3pnLqph1oQbjsk/AHPdcoUlBKNpXwQDtT8iFLHz39WUhFSA1FRwDBJN+ft1E05nGr
         HE7Q6HArAFQWg==
Date:   Fri, 9 Jun 2023 22:06:54 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Xu Yang <xu.yang_2@nxp.com>
Cc:     will@kernel.org, mark.rutland@arm.com, frank.li@nxp.com,
        festevam@gmail.com, robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
Subject: Re: [PATCH v2 3/3] arm64: dts: imx93: add ddr performance monitor
 node
Message-ID: <20230609140654.GV4199@dragon>
References: <20230418102910.2065651-1-xu.yang_2@nxp.com>
 <20230418102910.2065651-3-xu.yang_2@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230418102910.2065651-3-xu.yang_2@nxp.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 18, 2023 at 06:29:10PM +0800, Xu Yang wrote:
> Add performance monitor.
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>

Applied, thanks!
