Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0767E4D6428
	for <lists+devicetree@lfdr.de>; Fri, 11 Mar 2022 15:55:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236132AbiCKO4k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Mar 2022 09:56:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243244AbiCKO4j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Mar 2022 09:56:39 -0500
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27D3C1B3735
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 06:55:33 -0800 (PST)
Received: by mail-oo1-f47.google.com with SMTP id y27-20020a4a9c1b000000b0032129651bb0so10788971ooj.2
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 06:55:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=4vC10SOLI9xOKTVYszTXMZKBktQmr7QFcn56lUlHPqY=;
        b=r+A+OHmNhcL74usUgKTJBNrxaHN5p0L7FhDM7MPSfaMlcEOI9lbhCSO2ePQ+e/ToX8
         aav4Wr+KxksK04x3zxPUbkAKg35xt/z4fAUCzrqf/ZcDhFywJ3p9yphulr9WMfkqgq5/
         y4t5W2ncLvX+Xgn+Mhh5IckY2tmONyUIMxb77retIiPFcg8NHLeC5PpUCkBmsaQhDbpE
         BBHcR0J/HqKstQQ81oEizpdKBZk4gJizDJi5CnBKgvUmNgq0NBTXDs5CDpI2z2tOuOwz
         wlOjM2yL8t3UnUWwniu2EX/MRjS+LHoy6oVU4dgtvqGwpj+7DVLKa7N/sUVlCKQzaaRJ
         b9vA==
X-Gm-Message-State: AOAM533gCacFPtW2wfZg68nQVgSRP5mczfpGVkeG1zhBA/sPgkjCgAyl
        0OIjVfr4wE8REidJSLv7CA==
X-Google-Smtp-Source: ABdhPJyE+yG0Kmj8j3sIuXoUp3Io81NMMrA2r6Q0cA7nkN1tKUpiAx9HKkuSbr2kBPy0PNmsE3WMOw==
X-Received: by 2002:a05:6870:3929:b0:d9:a13b:2454 with SMTP id b41-20020a056870392900b000d9a13b2454mr11082044oap.162.1647010532202;
        Fri, 11 Mar 2022 06:55:32 -0800 (PST)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id n23-20020a056870559700b000d47e9dabf0sm3791327oao.0.2022.03.11.06.55.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Mar 2022 06:55:31 -0800 (PST)
Received: (nullmailer pid 3777813 invoked by uid 1000);
        Fri, 11 Mar 2022 14:55:30 -0000
Date:   Fri, 11 Mar 2022 08:55:30 -0600
From:   Rob Herring <robh@kernel.org>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Andy Yan <andy.yan@rock-chips.com>,
        Peter Geis <pgwipeout@gmail.com>,
        linux-rockchip@lists.infradead.org,
        Sandy Huang <hjc@rock-chips.com>, kernel@pengutronix.de,
        Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCH v8 10/24] dt-bindings: display: rockchip: dw-hdmi: Add
 additional clock
Message-ID: <Yiti4n0prhDLdYC+@robh.at.kernel.org>
References: <20220311083323.887372-1-s.hauer@pengutronix.de>
 <20220311083323.887372-11-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220311083323.887372-11-s.hauer@pengutronix.de>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 11 Mar 2022 09:33:09 +0100, Sascha Hauer wrote:
> The rk3568 HDMI has an additional clock that needs to be enabled for the
> HDMI controller to work. It is not needed for the HDMI controller
> itself, but to make the SoC internal busses work.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v7:
>     - rename hclk to niu
> 
>  .../bindings/display/rockchip/rockchip,dw-hdmi.yaml        | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
