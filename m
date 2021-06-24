Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 46D7F3B2A5F
	for <lists+devicetree@lfdr.de>; Thu, 24 Jun 2021 10:30:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231936AbhFXIdP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 04:33:15 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:57473 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231835AbhFXIdP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Jun 2021 04:33:15 -0400
Received: from mail-ej1-f70.google.com ([209.85.218.70])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lwKlD-0005IZ-DT
        for devicetree@vger.kernel.org; Thu, 24 Jun 2021 08:30:55 +0000
Received: by mail-ej1-f70.google.com with SMTP id w13-20020a170906384db02903d9ad6b26d8so1743372ejc.0
        for <devicetree@vger.kernel.org>; Thu, 24 Jun 2021 01:30:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=FWf1/8cps0f2orI5AbiDd3FTEBu65FvivubU0HnKemc=;
        b=SSzC2HchDBEQixh9QZReACnJ1eebAh3v2P9IrQ5FxLH59uyeU6RpIBn0hSGOmOPIu2
         NWrTCYpGHLMLxxpMokklUXx3vg4OJYnRU7pNZ2HxzjOuZuZyjRBWtupe64LX0mnt1b5e
         81UTV9yV53N+qiZcXdGNCpep/OknvG2GTnHJvo+TA30wH3XAD4VmXwj4pK/h0pxIzNYB
         y3RZf2fVJFbnE13KagjeJKDrOecG/LIK0TdMf0Y8Ls/mLEy/7gM3LpstvAw+IGA+TaSu
         xucZoK1t+6sFbAkJYuGI5M2+YcmIH4ZbO/9mopobrIWoDR7R1dCHrZVgsF2fyFN/tBw+
         rVyQ==
X-Gm-Message-State: AOAM530oyiDCgeD/u/inv7w6Cto9KGmq6MGbHqrrIuUODz4O7+o9EMul
        XTOLM5pubRC6MMStFPHGOv00eoVl+dr6LIykcp3hvuUS8RDdGzscAPq6iY3q+MBXaTIspQLa6rU
        zrGUdfI0TIV88P9/HO+dWN0+xy7NslLio4Q91E6E=
X-Received: by 2002:a17:906:dbd5:: with SMTP id yc21mr4064950ejb.233.1624523455172;
        Thu, 24 Jun 2021 01:30:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyE9NG70Q0R7WlldJgiju8y4R6tNhr+XdnWHXcuF262S4ipiZ1rkQiFP2aNPfY2SEkDu6zFjg==
X-Received: by 2002:a17:906:dbd5:: with SMTP id yc21mr4064931ejb.233.1624523455018;
        Thu, 24 Jun 2021 01:30:55 -0700 (PDT)
Received: from [192.168.1.115] (xdsl-188-155-177-222.adslplus.ch. [188.155.177.222])
        by smtp.gmail.com with ESMTPSA id a3sm1417424edu.61.2021.06.24.01.30.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Jun 2021 01:30:54 -0700 (PDT)
Subject: Re: [RFC PATCH 2/9] drm: bridge: Add Samsung SEC MIPI DSIM bridge
 driver
To:     Fabio Estevam <festevam@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Michael Tretter <m.tretter@pengutronix.de>
Cc:     Jagan Teki <jagan@amarulasolutions.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Peng Fan <peng.fan@nxp.com>,
        Francis Laniel <francis.laniel@amarulasolutions.com>,
        Matteo Lisi <matteo.lisi@engicam.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Tomasz Figa <t.figa@samsung.com>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Robert Foss <robert.foss@linaro.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        DRI mailing list <dri-devel@lists.freedesktop.org>,
        Milco Pratesi <milco.pratesi@engicam.com>,
        Anthony Brandon <anthony@amarulasolutions.com>,
        linux-phy@lists.infradead.org, Fancy Fang <chen.fang@nxp.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        NXP Linux Team <linux-imx@nxp.com>
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
 <20210621072424.111733-3-jagan@amarulasolutions.com>
 <YNO0LHNVSWjrh1ZS@pendragon.ideasonboard.com>
 <CAOMZO5Ahbu4mohtMDOQOv_y5B_TDesbdYEUZTF1RL7_y-bS+RA@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <2decfea3-3659-2a3b-7706-326c97f57f8e@canonical.com>
Date:   Thu, 24 Jun 2021 10:30:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CAOMZO5Ahbu4mohtMDOQOv_y5B_TDesbdYEUZTF1RL7_y-bS+RA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/06/2021 04:48, Fabio Estevam wrote:
> Hi Jagan/Laurent,
> 
> On Wed, Jun 23, 2021 at 7:23 PM Laurent Pinchart
> <laurent.pinchart@ideasonboard.com> wrote:
> 
>> Looking at the register set, it seems to match the Exynos 5433,
>> supported by drivers/gpu/drm/exynos/exynos_drm_dsi.c. Can we leverage
>> that driver instead of adding a new one for the same IP core ?
> 
> Yes. there was an attempt from Michael in this direction:
> https://patchwork.kernel.org/project/dri-devel/cover/20200911135413.3654800-1-m.tretter@pengutronix.de/

That's the proper direction (maybe as Marek suggested - sharing common
code like for Analogix DP), not duplicating a driver.


Best regards,
Krzysztof
