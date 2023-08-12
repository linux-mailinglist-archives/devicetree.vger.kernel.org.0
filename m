Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 795C4779C57
	for <lists+devicetree@lfdr.de>; Sat, 12 Aug 2023 03:43:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230096AbjHLBnu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Aug 2023 21:43:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236441AbjHLBnu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Aug 2023 21:43:50 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2580230F8
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 18:43:50 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A774D61036
        for <devicetree@vger.kernel.org>; Sat, 12 Aug 2023 01:43:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4744EC433C8;
        Sat, 12 Aug 2023 01:43:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691804629;
        bh=gt+G7/H8GsZ9NOYnXSKad4uyaUgGVgUdMHW6Rnp/WCA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=bx0Hag0rOLelC+eLgpRst5vBlrpik1kQW/gcdab8K1sEpx3ExD7TlmWKyR9XxOsf7
         pCXdG+rBrAGkcuks0j9a3YKMVxcrGq/lscLHwUdYvuSz/ZHncObEtvB9yV1HUss8cv
         R7zVQwVU2jvzL7pPNwjT2wKUR6KanJtdxq3dbpiufXRB8YqD/5ZH4ukfhd/U5R6i23
         p/kGgcA57ZyvffvVjxxmxRjoHjr87pLsSAuQfEly3i1oe8UZckc3uxFn2At3alerfr
         +pXPMXAEL5aohaU98redJsMvILSKx177WVSlyRIyNKdwEXxSRyB+fwMqklEb43xZqX
         O6UkNYmaSZB5Q==
Date:   Sat, 12 Aug 2023 09:43:37 +0800
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
Subject: Re: [PATCH 1/3] ARM: dts: imx6ul: mba6ulx: Fix stmpe811 node warnings
Message-ID: <20230812014337.GD151430@dragon>
References: <20230810095541.720489-1-alexander.stein@ew.tq-group.com>
 <20230810095541.720489-2-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230810095541.720489-2-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 10, 2023 at 11:55:39AM +0200, Alexander Stein wrote:
> interrupt-controller is only valid for gpio subnode, remove it.
> Rename touchscreen subnode according to bindings.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
