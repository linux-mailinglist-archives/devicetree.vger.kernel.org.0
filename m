Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11F5B7134A8
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 14:24:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229637AbjE0MYR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 08:24:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230282AbjE0MYQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 08:24:16 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 274EAF7
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 05:24:16 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id AFA4960C95
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 12:24:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51A89C433D2;
        Sat, 27 May 2023 12:24:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685190255;
        bh=/idkUh+kM/6qav9EXkkdpiiQFE9O/ROyR9KzVqmRudw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Aj7uUXHCbNLspF++oYvtxnJWYNY7aOv63FdcDhGtpPgHfCV16IIUnr0ooTTYd5eux
         fhpUsVVY4A2srJ6ADb+1GSyzM27vPYlMrukigRASJCpi+1QUDi9qFvAuwFlWP3hYtH
         zMq2T9+4TdHasRRyMpU4gvooGcgQoTtmZcdIXEhpTTIBK3rdDx9dmgtNWAhDiXuvMu
         rHiYsvto+wW4HrAcURwcCa1DWR514G1NjkWtEX5HwdmC3tkpWAX0aTsPIAm1Tp2+rs
         l3dfyTFp9VLBd8BfRbcXMHkmuuSPZ+ez4rtMjYb/r74wkvkTeuqXAhq6EVoklm+vcY
         lrpBWHVxohyhw==
Date:   Sat, 27 May 2023 20:24:03 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     haibo.chen@nxp.com
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] ARM: dts: imx6sll-evk: add eMMC node support
Message-ID: <20230527122403.GQ528183@dragon>
References: <20230519062731.504082-1-haibo.chen@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230519062731.504082-1-haibo.chen@nxp.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 19, 2023 at 02:27:30PM +0800, haibo.chen@nxp.com wrote:
> From: Haibo Chen <haibo.chen@nxp.com>
> 
> On imx6sll-evk board, eMMC is connect on the usdhc2.
> 
> Signed-off-by: Haibo Chen <haibo.chen@nxp.com>

Applied both, thanks!
