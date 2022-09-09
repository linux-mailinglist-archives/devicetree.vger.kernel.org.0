Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E34645B2BBA
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 03:38:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229546AbiIIBiP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 21:38:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43622 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229577AbiIIBiO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 21:38:14 -0400
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55E5911E6E3
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 18:37:57 -0700 (PDT)
Received: by mail-ot1-f53.google.com with SMTP id br15-20020a056830390f00b0061c9d73b8bdso210491otb.6
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 18:37:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=9P7SbJHsQcB09ZNCROJ+/JJl6FCz/X01hfKdSqlhUDs=;
        b=0WK+E+9iDQxv9w/ztusGkBWpIT7+oT9+WaM+KkDFTCqEij4RT0Oa633s4cGcjQY2ux
         YMiRvAAZteHSXIZKJMV6ATtVfDkZ1OPRoZnJJUjVt15UydJ512n8JdMe6pURPX8+e8UM
         /4lt0gIhfkKWa8d1/krq2o3Mg8kvqr+RppeiJF82lE2l5q9IMscgsnOdWM5URVFikA5O
         ZIimuWSuFg7MDqBNQE37dItSGRMwjqxgABkDuqFmrSTMFZzBC8y7eb12b90RyJU6j45k
         vyZm+eFaDGAFMb18Lww2FMQrbakpqWGaS1exKeeh2WMQT0a1m9Zv+wdAv06mKY7wwLug
         4SkA==
X-Gm-Message-State: ACgBeo1Ij/t79uvd6bbDQ7Mmz/677zLM6WPnvZ/vrJd2Zgl5HgFgOxFc
        vnC0uGuOKcR0ijeHaWGaWQ==
X-Google-Smtp-Source: AA6agR7FHZV8qpLG/7i/J5AK8MbPTh7kdIjK0mzVUG37dxSM2DfWv7GpTEqDN7btr436lYC9Nmd1cg==
X-Received: by 2002:a9d:17a2:0:b0:63b:1f99:86ef with SMTP id j31-20020a9d17a2000000b0063b1f9986efmr4227212otj.213.1662687476611;
        Thu, 08 Sep 2022 18:37:56 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id y3-20020a0568302a0300b0063696cbb6bdsm322175otu.62.2022.09.08.18.37.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Sep 2022 18:37:56 -0700 (PDT)
Received: (nullmailer pid 3736918 invoked by uid 1000);
        Fri, 09 Sep 2022 01:37:55 -0000
Date:   Thu, 8 Sep 2022 20:37:55 -0500
From:   Rob Herring <robh@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     pgwipeout@gmail.com, vkoul@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>, airlied@linux.ie,
        cl@rock-chips.com, robh+dt@kernel.org,
        linux-phy@lists.infradead.org, kishon@ti.com,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        hjc@rock-chips.com, heiko@sntech.de, daniel@ffwll.ch,
        s.hauer@pengutronix.de, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/5] dt-bindings: display: rockchip-dsi: add rk3568
 compatible
Message-ID: <20220909013755.GA3736867-robh@kernel.org>
References: <20220906174823.28561-1-macroalpha82@gmail.com>
 <20220906174823.28561-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220906174823.28561-2-macroalpha82@gmail.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 06 Sep 2022 12:48:19 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The rk3568 uses the same dw-mipi-dsi controller as previous Rockchip
> SOCs, so add a compatible string for it.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../bindings/display/rockchip/dw_mipi_dsi_rockchip.txt           | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
