Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B33474B752D
	for <lists+devicetree@lfdr.de>; Tue, 15 Feb 2022 21:47:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233270AbiBOTrb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Feb 2022 14:47:31 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:60570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232560AbiBOTr2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Feb 2022 14:47:28 -0500
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29B1FDEAD
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 11:47:17 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: dmitry.osipenko)
        with ESMTPSA id EFACD1F449B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1644954435;
        bh=+YgXqeJrHqFTrBc7nNza8mpO7pm7+pfwAsDkpv4pNz4=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=SJT/cT3z6Oe736iCsABTRHAx3R4tCsz4+nHv/JuPm2Tyam52yfDfimh7Fkbkq35o1
         gRzGvnKshiDDh/pKdrvLN65+axpJpsmLgSW5f23ssBu5fijvipN0az1xRnCPP6hebK
         WAnVn8hkJ6kHt593SC2RwsQd1U+YhkQuBxjjt2GnCkHugOQMD+viIhSwBAUR/oeb0W
         jw77yFZZCXl5DxHGa10V83rGNUb/hi9fh0/iuIMfY8C+LUDsqsrDqQpVTSz9HdXmNl
         geWqU/3Y49qoQslpA+JLGD588bIf77WSzLGRnfK9Ke6CCjFIkDPzXk70TS0vnGScF3
         QDnTJvZdpFFRA==
Message-ID: <60b8830b-4c26-3b21-9ec4-ae8998f3ccb7@collabora.com>
Date:   Tue, 15 Feb 2022 22:47:12 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v5 22/23] drm: rockchip: Add VOP2 driver
Content-Language: en-US
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org
References: <20220209095350.2104049-1-s.hauer@pengutronix.de>
 <20220209095350.2104049-23-s.hauer@pengutronix.de>
From:   Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220209095350.2104049-23-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,UNPARSEABLE_RELAY autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


09.02.2022 12:53, Sascha Hauer пишет:
> +		np = of_graph_get_remote_node(dev->of_node, i, -1);
> +		if (!np) {
> +			printk("%s: No remote for vp%d\n", __func__, i);

drm_dbg
