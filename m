Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2ED8D7134E8
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 15:09:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231186AbjE0NJh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 09:09:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230448AbjE0NJg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 09:09:36 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88C8810A
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 06:09:35 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 1DEEF60F57
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 13:09:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51AB1C433EF;
        Sat, 27 May 2023 13:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685192974;
        bh=WhyU3jLdGgqLFjTKCVoZC6zig3nA/RFD+kCyXm7evOc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=MTdEYwXehN+bCJi0TtwbnULekW32dubYdAOEdKA7tXmppH0czNTPFQbrr/CVDCks0
         tP1G6IMlZgW0IoQhPxAhDw8b6JaXlYRv0vsuKDAZRVdOAyijsAHk7rNrDabUdT32IV
         5OxsFCfC2N16NmHoC3UdPZKqdRZF7PS29ZFj3+ny6bgwHCpAndKKkI9WWigrI4JKu7
         BWsVjxAJ5wwuFteeHtwJ0nqmtmWj6GtYFTezguV4oL2lrDVglLOMUgxrQ629Q2Dwmf
         ZTBxemXSSG9Ew25B7gfZ2SSCt2hkXPsBovrv39sXwkMIrMHRd6DjT5anx0mtSHKGBf
         zuSryG2bDMA4A==
Date:   Sat, 27 May 2023 21:09:21 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        inux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] ARM dts: imx6ull-phytec-tauri: Remove invalid property
Message-ID: <20230527130921.GZ528183@dragon>
References: <20230524222611.388858-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230524222611.388858-1-festevam@gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 24, 2023 at 07:26:11PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The 'rs485-rts-active-high' property is not a valid property and is not
> documented anywhere.
> 
> Remove it to fix the following DT schema warning:
> 
> serial@21f0000: Unevaluated properties are not allowed ('rs485-rts-active-high' was unexpected)
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!
