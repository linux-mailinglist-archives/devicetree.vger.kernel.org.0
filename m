Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A8EC5ADD33
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 04:16:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232796AbiIFCQB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 22:16:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230116AbiIFCQA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 22:16:00 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4586F40BEE
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 19:15:59 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id E26EBB815C9
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 02:15:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB740C433C1;
        Tue,  6 Sep 2022 02:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1662430556;
        bh=Z0WjJze/6qJEWAeBtQEZP+JPpyO9/cronhLVLLntnzE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=YU7W5GWz7ejF7oGBY1fJFE1mdkiAfKZZVq1/GTs7GxACpklSa7ryE6p56E9151W3k
         9q+C4t4TUoXKDUz+1+seQQYpq087U/RFv4eCrzJJIQiQQUUKci7sbUXElH6dqwoFZs
         dXksk27+oV2dzgkRny42/locZ95YiT+C35jJvdxXxnFOxk2CKv0Nr6iAtCX7Kx8rTo
         bVukq/hgdiDlJ8eJxFRYz52jLR2j+hhIgh6plyP0yrk9FKoA1Pkee8c1bHrZE1G3Ts
         aSD2rESEJvuhFyL7Rf5ZquIwuPpsffjwNKqnVluYgpXkwk/AGYk2TVDj2jo9p+xchx
         n0+bVZqM3G6qw==
Date:   Tue, 6 Sep 2022 10:15:50 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Tim Harvey <tharvey@gateworks.com>, Jun Li <jun.li@nxp.com>
Subject: Re: [PATCH v3 1/1] arm64: dts: tqma8mpql: add USB DR support
Message-ID: <20220906021550.GN1728671@dragon>
References: <20220905073730.199462-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220905073730.199462-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 05, 2022 at 09:37:30AM +0200, Alexander Stein wrote:
> Add support for USB DR on USB1 interface. Host/Device detection is done
> using the usb-role-switch connector.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
