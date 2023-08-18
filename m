Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 55BE3780C43
	for <lists+devicetree@lfdr.de>; Fri, 18 Aug 2023 15:08:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377001AbjHRNHv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Aug 2023 09:07:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377006AbjHRNHd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Aug 2023 09:07:33 -0400
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17EDC3A9A
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 06:07:30 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 5621E240008;
        Fri, 18 Aug 2023 13:07:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1692364049;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=SgWmG66tweyk6BVD1n2nSVGkr9i51MiHVZ8BvH7oGeQ=;
        b=ctVB/zN3MLCt65XMQ1SShOaH7O8BrJJFpyH64L4qOmGN9bkMzUCZiGmJKqcQkPEIHVqzq8
        1LQlgJCL8rqspAKNq/lhAm2+6kfyVwIOknoNTYT3d9FnQTlf74+eCiaw41xtlKo4lBkIGQ
        c47RiU+hOadZM1C5PBAf5oG/Pq0Zjy84i4A1aIBiy9j/YaZ7TUeUiSi9E/G0p2iq1K08Q/
        hpti8crmBS9Fe/mZlsfXT4azN4dw0HQmBowOZhDEmzvFp2uvbe7h8dGe5MfZ0MZVm3NOJ7
        XycOx5fSKHukjsnmXr1bzTkBmkDDuP45SGtwzIYe99/bpBqmKkqZ4OFjfKRozw==
Date:   Fri, 18 Aug 2023 15:07:25 +0200
From:   Luca Ceresoli <luca.ceresoli@bootlin.com>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marek Vasut <marex@denx.de>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        devicetree@vger.kernel.org, Liu Ying <victor.liu@nxp.com>,
        dri-devel@lists.freedesktop.org,
        Robert Foss <robert.foss@linaro.org>,
        patchwork-lst@pengutronix.de, NXP Linux Team <linux-imx@nxp.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v2 2/4] drm/bridge: imx: add bridge wrapper driver for
 i.MX8MP DWC HDMI
Message-ID: <20230818150725.64d8d54b@booty>
In-Reply-To: <20221216210742.3233382-2-l.stach@pengutronix.de>
References: <20221216210742.3233382-1-l.stach@pengutronix.de>
        <20221216210742.3233382-2-l.stach@pengutronix.de>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-GND-Sasl: luca.ceresoli@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lucas,

On Fri, 16 Dec 2022 22:07:40 +0100
Lucas Stach <l.stach@pengutronix.de> wrote:

> Add a simple wrapper driver for the DWC HDMI bridge driver that
> implements the few bits that are necessary to abstract the i.MX8MP
> SoC integration.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Tested-by: Marek Vasut <marex@denx.de>

I realized I had sent my Tested-by to v1 when v2 was already out. So,
in case you still need some encouragement for keeping on with this
series:

[Tested on a custom board using modetest on v6.5-rc6]
Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
