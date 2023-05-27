Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E21C171342A
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 13:02:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229512AbjE0LCM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 07:02:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231995AbjE0LCL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 07:02:11 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3564AD8
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 04:02:10 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id B8F2960FA5
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 11:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2021C433D2;
        Sat, 27 May 2023 11:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685185329;
        bh=WNAGop2QJNSvjXZDBOJdyUlkyRG4trGAn7qQXJs+y1E=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=fGCq3RYYrJGhLzzMxRC3suFfLUticKtwgYOxLkp65AWJKWY0+d4Jfoa7yhV31r/XC
         k+ZW8dBnw6thoeYf84m6erCMN3dJd2lUJgd8KAw5tFo3ELJgtoA+/ivfPnHtA6qDpL
         12JWrcFVXSg/TqvNdelCd4XcQ6wfjUsJjEpEPul6wcPN9IwT84Ni/C8ODH5LtV+sBd
         AMWNQSCHv2u3wbh9VdoOhSydnH+gfpJTB3tcIDVZF1fjyvGpeeWeiHkBrmE883Nw7G
         7kXabngXBhxukGIgiaekiPrjBK7tfGAIS2qA6jD3tkG/GlFxil0uSDgXhYpx7/wWUc
         1HyGoNG+FStBg==
Date:   Sat, 27 May 2023 19:01:57 +0800
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
Subject: Re: [PATCH v2 1/1] ARM: dts: imx6qdl: Add HDMI to TQMa6x/MBa6
Message-ID: <20230527110157.GN528183@dragon>
References: <20230517101107.1682625-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230517101107.1682625-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 17, 2023 at 12:11:07PM +0200, Alexander Stein wrote:
> This adds support for a COTS monitor connected to X17.
> 4k monitors can be used, but are limited to 1080p.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
> Changes in v2:
> * Fix typo for pinctrl-* property

Applied this version instead.

Shawn
