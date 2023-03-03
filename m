Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8FDB96A9CD6
	for <lists+devicetree@lfdr.de>; Fri,  3 Mar 2023 18:11:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229974AbjCCRLb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Mar 2023 12:11:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229726AbjCCRLb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Mar 2023 12:11:31 -0500
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41C761E5F7
        for <devicetree@vger.kernel.org>; Fri,  3 Mar 2023 09:11:30 -0800 (PST)
Received: from booty (unknown [77.244.183.192])
        (Authenticated sender: luca.ceresoli@bootlin.com)
        by mail.gandi.net (Postfix) with ESMTPSA id 87E1B240004;
        Fri,  3 Mar 2023 17:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1677863489;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=7p+2qFxfA3hi2Sxi1T8gdqTb+o1wt0d5Nk82g+yVk70=;
        b=hSxyHkCzEVv32MNMx//slQvkiKBObSEMHbUiRMbQZoaarxFf8sltMYT4imbOz8Dk6g14ID
        nNSxLyUCkO/eI1Qpe3dX5nC8Hd/cZ/GE43AD/K9BItsNQa3nFL7Uf5KQKSfQlgRa6cDrbU
        /OtUCRzHNiJX5CILVH4Q2b0x9NxkGUwQidnjeAla+mRC+PlQ8W7fHQZTvQSNzxDDfjveyz
        c0xxjn8yDUIx89TqJfVeKk0pGRVykMeOQ0iZLx4yQivffWE/Hh2SMDwEXCBkm5MmcTkWEy
        G/ZBQXUtwnnQ8PWcTlilmrToyTE32pSc7dCkTpd7PFaN8+BQLb4wJB49fhcuHA==
Date:   Fri, 3 Mar 2023 18:11:25 +0100
From:   Luca Ceresoli <luca.ceresoli@bootlin.com>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        patchwork-lst@pengutronix.de, Inki Dae <inki.dae@samsung.com>,
        Seung-Woo Kim <sw0312.kim@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Sandor Yu <Sandor.yu@nxp.com>
Subject: Re: [PATCH v2 2/2] phy: freescale: add Samsung HDMI PHY
Message-ID: <20230303181125.4b0a40c0@booty>
In-Reply-To: <20221215201100.2897501-2-l.stach@pengutronix.de>
References: <20221215201100.2897501-1-l.stach@pengutronix.de>
        <20221215201100.2897501-2-l.stach@pengutronix.de>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 15 Dec 2022 21:11:00 +0100
Lucas Stach <l.stach@pengutronix.de> wrote:

> This adds the driver for the Samsung HDMI PHY found on the
> i.MX8MP SoC. Based on downstream implementation from
> Sandor Yu <Sandor.yu@nxp.com>.
> 
> Co-developed-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
