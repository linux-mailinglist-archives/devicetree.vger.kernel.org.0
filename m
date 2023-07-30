Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C428768550
	for <lists+devicetree@lfdr.de>; Sun, 30 Jul 2023 14:48:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229737AbjG3Mst (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Jul 2023 08:48:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbjG3Msr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Jul 2023 08:48:47 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13667A7
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 05:48:47 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 91F6660C19
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 12:48:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27F99C433C8;
        Sun, 30 Jul 2023 12:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690721325;
        bh=pynRTUKDgbZU1B4MT3zkRpAOouvngXIFQZGQFeKraY0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ScpANEWgcxB+HQOg+x2ufL2muO/JLlye4HR1fczRYG2ZVmh+mX3xqHfOI+ZY7mLDz
         vU/972Ke8Pc7prC/g5OOcRltCX3ZPddKZYnuM7GAHnnpRcc99FKZdbPxq+4WvfCoO0
         lLMTuSoZ8oiclK2zi9QXiFfwpfrfjmnEftAMXWtsnRIpb15HfdmoaCKJOdSwPP+LCb
         ZgPy6Wund3hF3MKcdCAS0+mPFTDZkCM4ycYFqwGtU1phPwT8bVsuDs/ejqiq80iOyT
         xBPO0oxjz2W9B8vSvZbPhwoIhRSJqvcSxM93mpOB6Db8Tq/z2G/9cmKzgGLPQmb1p9
         rK+MVN3XkluQA==
Date:   Sun, 30 Jul 2023 20:48:35 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] ARM: dts: imx6qdl-tqma6x: Add missing vs-supply for
 lm75
Message-ID: <20230730124835.GI151430@dragon>
References: <20230721082628.1189087-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230721082628.1189087-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 21, 2023 at 10:26:28AM +0200, Alexander Stein wrote:
> Fixes the warning:
> lm75 0-0048: supply vs not found, using dummy regulator
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
