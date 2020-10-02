Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A58B7280E63
	for <lists+devicetree@lfdr.de>; Fri,  2 Oct 2020 09:59:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726010AbgJBH7w convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Fri, 2 Oct 2020 03:59:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725968AbgJBH7w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Oct 2020 03:59:52 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76C29C0613D0
        for <devicetree@vger.kernel.org>; Fri,  2 Oct 2020 00:59:52 -0700 (PDT)
Received: from lupine.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1kOFyg-0006uu-9r; Fri, 02 Oct 2020 09:59:42 +0200
Received: from pza by lupine with local (Exim 4.92)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1kOFyX-0002aC-Sz; Fri, 02 Oct 2020 09:59:33 +0200
Message-ID: <3e6248770b881181353a00cf2a7087485d1ae0c1.camel@pengutronix.de>
Subject: Re: [PATCH 2/5] ASoC: mediatek: mt8192: add platform driver
From:   Philipp Zabel <p.zabel@pengutronix.de>
To:     Jiaxin Yu <jiaxin.yu@mediatek.com>, broonie@kernel.org,
        tiwai@suse.com, matthias.bgg@gmail.com, robh+dt@kernel.org,
        tzungbi@google.com, alsa-devel@alsa-project.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
Cc:     shane.chien@mediatek.com, kuninori.morimoto.gx@renesas.com,
        maowenan@huawei.com
Date:   Fri, 02 Oct 2020 09:59:33 +0200
In-Reply-To: <1601624142-18991-3-git-send-email-jiaxin.yu@mediatek.com>
References: <1601624142-18991-1-git-send-email-jiaxin.yu@mediatek.com>
         <1601624142-18991-3-git-send-email-jiaxin.yu@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jiaxin,

On Fri, 2020-10-02 at 15:35 +0800, Jiaxin Yu wrote:
> +static int mt8192_afe_pcm_dev_probe(struct platform_device *pdev)
> +{
[...]
> +       /* reset controller to reset audio regs before regmap cache */
> +       rstc = devm_reset_control_get(dev, "audiosys");

Please use devm_reset_control_get_exclusive() instead.

regards
Philipp
