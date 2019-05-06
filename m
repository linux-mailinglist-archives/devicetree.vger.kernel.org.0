Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6025714665
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2019 10:32:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726147AbfEFIcL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 May 2019 04:32:11 -0400
Received: from smtp-out.xnet.cz ([178.217.244.18]:15208 "EHLO smtp-out.xnet.cz"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725846AbfEFIcL (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 6 May 2019 04:32:11 -0400
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
        (Authenticated sender: petr@true.cz)
        by smtp-out.xnet.cz (Postfix) with ESMTPSA id 9448033DC;
        Mon,  6 May 2019 10:32:08 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
        by meh.true.cz (OpenSMTPD) with ESMTPA id dad557b0;
        Mon, 6 May 2019 10:32:07 +0200 (CEST)
Date:   Mon, 6 May 2019 10:32:07 +0200
From:   Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To:     David Miller <davem@davemloft.net>
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        matthias.bgg@gmail.com, andrew@lunn.ch, f.fainelli@gmail.com,
        hkallweit1@gmail.com, frowand.list@gmail.com,
        srinivas.kandagatla@linaro.org, maxime.ripard@bootlin.com,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v4 00/10] of_net: Add NVMEM support to of_get_mac_address
Message-ID: <20190506083207.GG81826@meh.true.cz>
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
References: <1556893635-18549-1-git-send-email-ynezz@true.cz>
 <20190505.214727.1839442238121977055.davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190505.214727.1839442238121977055.davem@davemloft.net>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

David Miller <davem@davemloft.net> [2019-05-05 21:47:27]:

Hi David,

> Series applied, thank you.

I did probably something terribly wrong, but patch "[PATCH v4 05/10] net:
ethernet: support of_get_mac_address new ERR_PTR error" has not reached the
patchwork, but I'm sure, that it was sent out as Hauke Mehrtens (maintainer
for ethernet/lantiq_xrx200.c) has confirmed to me on IRC, that he has received
it.

I've as well noticed, that you've not considered "[PATCH v5] staging:
octeon-ethernet: support of_get_mac_address new ERR_PTR error"[1] which
contained a fix for possible NULL value of mac variable:

        const u8 *mac = NULL;

        if (priv->of_node)
                mac = of_get_mac_address(priv->of_node);

        if (!IS_ERR(mac))

I'll send those two patches again against net-next in a few moments. Sorry for
this mess.

1. https://patchwork.ozlabs.org/patch/1094942/

-- ynezz
