Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 04AA67133E9
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 12:04:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231802AbjE0KEN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 06:04:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229930AbjE0KEN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 06:04:13 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 649B210A
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 03:04:12 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id ECC9660B9D
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 10:04:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD38EC433D2;
        Sat, 27 May 2023 10:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685181851;
        bh=WIEN+zOo5K9vlU9Icw7l+1fJBIuAuWmjr4FY6gnioR0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=U6oItj+EB2V61ffkX/tpWhg5hqoRcTWdPlc0jVzGJjGwgfGvGMWJyCQfcKbYlR5Og
         JvUSaxehkZf+zVfj3BKn3OAEY1M4HWE+FnU14+uDPwlKrOKTFEiDE8BQGlK7fdZLpr
         p9nqYDFIGfatYbp30tz+Gg+E4NE2nxR7gacdzRimhCT3AvkZxBnZxe2DBAlFcEVClg
         SDKWskP/1mo7Hwv8fQH/1WmanYFUXIxKKbkHXqtBMkc9muybPBXMyAdxBhOlhQfONy
         xLuRcrp+5FU6shuiugiCfQbyavNEiLVbKcgJStv2FxpSQoIIigG/YKooRthqSSm4vs
         DhVT9D01q2q1g==
Date:   Sat, 27 May 2023 18:03:57 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>, linux@ew.tq-group.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] ARM: dts: imx6qdl: Add HDMI to TQMa6x/MBa6
Message-ID: <20230527100357.GJ528183@dragon>
References: <20230516151319.991608-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230516151319.991608-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 16, 2023 at 05:13:19PM +0200, Alexander Stein wrote:
> This adds support for a COTS monitor connected to X17.
> 4k monitors can be used, but are limited to 1080p.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
