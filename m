Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 383B9661FB0
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 09:08:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230504AbjAIIIr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 03:08:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233085AbjAIIIi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 03:08:38 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18A5FB7C
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 00:08:38 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A850F60F3F
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 08:08:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 398F7C433EF;
        Mon,  9 Jan 2023 08:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1673251717;
        bh=pkIE5WS8+yyP6GLLfGMnegGJsQ6GYyXyRj0mTXj2LoM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=tPqTt22PnuxWDWTSV7uyzme/un2hbIx6HvZ9og0OrZfeblYHMJe6Fd82Y+QJ2s9/q
         0OY4PScbki1qSdGlAvdYsf0GHWTGY0TeITaB37tgXNiHO7QdtVHbS/oVh3qIxru3zh
         zSiiO7i0PD1VN8uuMoVFvJI2hoQnlTEw4KVJ19dwyWjWDjcmdFopHtKtCrprlncJV5
         To0dZBsI8CI+0WGrAIJP2FN+y+0U2/iyWkmaWE1vA/aCWzNwWoBSMbOFcAViObspS0
         mTnkk2yONTPoECD4qTRZWuF+3Q0KawnGOWt3C91bgUItFNe/ZmFDEmpMhGBDbAtfYo
         EoWsUK2co5hJA==
Date:   Mon, 9 Jan 2023 16:08:30 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux@ew.tq-group.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 1/2] arm64: dts: tqma8m*: Fix temperature sensor
 compatible
Message-ID: <20230109080829.GF18301@T480>
References: <20230103074318.3146070-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230103074318.3146070-1-alexander.stein@ew.tq-group.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 03, 2023 at 08:43:17AM +0100, Alexander Stein wrote:
> Use the correct compatible 'nxp,se97b' as it is an SE97BTP chip.
> While at it, fix the node name according to device tree spec
> recommendations. The EEPROM is a separate node anyway.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied both, thanks!
