Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97EB164F569
	for <lists+devicetree@lfdr.de>; Sat, 17 Dec 2022 00:58:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229851AbiLPX6X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 18:58:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230264AbiLPX6K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 18:58:10 -0500
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7666A73B30
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 15:58:00 -0800 (PST)
Received: by mail-oo1-f53.google.com with SMTP id e12-20020a4ab98c000000b004a081e811beso621969oop.2
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 15:58:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Tcdg0k7Cdg8VA/ZRDqBYYjvgYwpOlv75s0RkGKt+5o0=;
        b=o4oHKUcynzL+BKkLY73H5WmqlJ3nA9P+dtJ5wytHSXHC2awAL3l2n4bREbfEYDQ0m6
         Qk+XyDWq/1g3KkZsIxdWvW2jZWMksBQkvEI6iyucoPJ3juN1cBXZo9D3RC4LdZUvZyXW
         F4NQBzySiXuBx4ACdabiq1N7pA//Q4hLEjv9tv93VVyshOREzZ3bTfFGoBJPW9nmXT3y
         XCwrPZIoqyKerya+Rmg4L2eperjPYFmDkg7eaqWFwmKJKJO/Djs05IGGfIyk6UhqWtYm
         TjFwjAjNgJjMeDLnr1p8bsQA3ydCgd090maVobNIDJye3TIOuB5c1xuB0Q8lSOj31bpj
         p04w==
X-Gm-Message-State: AFqh2koqp0knJPZ9p6ztNe9IXwVg5qOs+8FMWPSM42+fIWOIr2jWT/NY
        wHkIfVkRmBZvjC9Wbg3tzw==
X-Google-Smtp-Source: AMrXdXuUo5wmkw7Vf1pNBI7XZd73zpyRDnv75rfYLCy7fG+J7xPYe7FpvV+HszIxkXo8ZdUyYPhOAA==
X-Received: by 2002:a4a:e79a:0:b0:4a0:72aa:4ca8 with SMTP id x26-20020a4ae79a000000b004a072aa4ca8mr214132oov.7.1671235079655;
        Fri, 16 Dec 2022 15:57:59 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id j23-20020a4adf57000000b004a3543fbfbbsm1442686oou.14.2022.12.16.15.57.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Dec 2022 15:57:59 -0800 (PST)
Received: (nullmailer pid 108564 invoked by uid 1000);
        Fri, 16 Dec 2022 23:57:58 -0000
Date:   Fri, 16 Dec 2022 17:57:58 -0600
From:   Rob Herring <robh@kernel.org>
To:     Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 0/2] drm/imx/lcdc: Implement DRM driver for imx21
Message-ID: <20221216235758.GA88372-robh@kernel.org>
References: <20221216175006.456831-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221216175006.456831-1-u.kleine-koenig@pengutronix.de>
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 16, 2022 at 06:50:04PM +0100, Uwe Kleine-König wrote:
> Hello,
> 
> Changes since v2:
> 
>  - added allOf as Krzysztof requested
>  - reworked driver based on Philipp's comments
>    (improved error handling, different selects, moved driver to a subdirectory,
>    header sorting, drm_err instead of DRM_ERROR, inlined
>    imx_lcdc_check_mode_change, make use of dev_err_probe())
>  
> Krzysztof also pointed out that we're now having two compatibles for a
> single hardware. Admittedly this is unusual, but this is the chance that
> the (bad) compatible identifier imx21-fb gets deprecated. The hardware
> is called LCDC and only the linux (framebuffer) driver is called imxfb.

The problem is you can't have firmware (with the DTB) that supports 
both. Well, you can if you want to have some firmware setting that 
selects which one. Otherwise, it's really an OS problem to decide what 
to use. 

Rob
