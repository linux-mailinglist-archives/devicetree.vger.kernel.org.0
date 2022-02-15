Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE8CD4B7832
	for <lists+devicetree@lfdr.de>; Tue, 15 Feb 2022 21:51:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242429AbiBOTup (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Feb 2022 14:50:45 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:38286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236289AbiBOTuo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Feb 2022 14:50:44 -0500
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BFC166C84
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 11:50:33 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: dmitry.osipenko)
        with ESMTPSA id 52A861F44D43
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1644954632;
        bh=WaWP9B+un5FNgYWQUCXJJ7L6AqvP7oAE4hm3PmmoYiw=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=mIO/s3MoJtz1pHhjjGx2jxDwW8VPPhtT7dhTTqvxj8RdEjinbeHun6FDsSVL3U7pf
         Co32UM1N5zev3UtXgOnrOF8K9M7lCkqbJMmp5kooHK3/lebl3xAeyH77wIt1+b8tCN
         PGFpkJ5YWHsZyK8A9lsjynyYxH2oT8Xeu9nKRi5/G9DAZhCuwnv2tCihL4a+DbshyB
         jCkPnrPecjfVBn53/XRi18UVxDTF0zR2k2y4+jJNDv78mkEDVMtKJj7R8wEOyYJDW6
         wAKLD8ukNwunAaCQ8iixgNq8CNd5N9wLkybnpPo2kvp5cYR84NFGCMI2WUom6Q8SFt
         qmVUk6KPPwFNw==
Message-ID: <81997cce-bd63-7c95-0f5c-9b4c9bb7699a@collabora.com>
Date:   Tue, 15 Feb 2022 22:50:28 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v5 10/23] drm/rockchip: dw_hdmi: Add support for hclk
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
 <20220209095350.2104049-11-s.hauer@pengutronix.de>
From:   Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220209095350.2104049-11-s.hauer@pengutronix.de>
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
> +	hdmi->hclk_clk = devm_clk_get(hdmi->dev, "hclk");
> +	if (PTR_ERR(hdmi->hclk_clk) == -ENOENT) {
> +		hdmi->hclk_clk = NULL;

devm_clk_get_optional()
