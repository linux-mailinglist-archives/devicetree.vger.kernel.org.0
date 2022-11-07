Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 39E29620003
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 21:59:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232066AbiKGU7i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 15:59:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233084AbiKGU7h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 15:59:37 -0500
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D400A26FB
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 12:59:34 -0800 (PST)
Received: by mail-oi1-f177.google.com with SMTP id c129so13560882oia.0
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 12:59:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xSsrB01My6g9QYcmfs7/ZhIGfEUKhxSboHf5LKdUgrg=;
        b=2od7aaYSR1HyW0DIlITj891QNoK/zULEpP9K5x50YUDFTvFg/txqiHKjxSS/WA1zbR
         753DMFIw7D7aO9NYHs5Lbz7/tfZM1cQaZxg+NmEipqFqkrQ84PX69wyeEUgJvvshS6kc
         Yv4v1X1EHH7Sbn9iPLvGHb9vWQpuY17xkNI+FkZ1cTYBaSWHQb3S+/OQ+o+1US6dbJ+w
         pLP1TSEfxMKvK7zR/OwVgIIWTEVvHOppMA3ehBUx4D9jv0qx8t2yVXQOfuOvqlHylrq6
         UKMFU4Ws68f7IexIQYDzttz25pG2OP9t0T1JHt0xMOU4hp3qEDrp0gIxfkpBE2W2h5qq
         veSA==
X-Gm-Message-State: ACrzQf2CVF6vVZl1quYeTtK2UUhRUG/9mh3JAUbSLUuoNZgkRrUkvaby
        LIwFqL1lKM/PxevE8GoQ1w==
X-Google-Smtp-Source: AMsMyM7l6/XnPZTppIxfhsHSoIMGr1DNsD1lZS9v+kiX6YEj73zXqqDi/miZIkEEn9QxflIXa/5+wg==
X-Received: by 2002:a05:6808:ec5:b0:35a:640b:8e68 with SMTP id q5-20020a0568080ec500b0035a640b8e68mr9998568oiv.138.1667854774140;
        Mon, 07 Nov 2022 12:59:34 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id d23-20020a056830045700b0066b9a6bf3bcsm3333939otc.12.2022.11.07.12.59.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 12:59:33 -0800 (PST)
Received: (nullmailer pid 1620012 invoked by uid 1000);
        Mon, 07 Nov 2022 20:59:35 -0000
Date:   Mon, 7 Nov 2022 14:59:35 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Fabio Estevam <festevam@gmail.com>, Xiubo Li <Xiubo.Lee@gmail.com>,
        alsa-devel@alsa-project.org, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Shengjiu Wang <shengjiu.wang@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        devicetree@vger.kernel.org, Mark Brown <broonie@kernel.org>,
        Nicolin Chen <nicoleotsuka@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 2/3] ASoC: dt-bindings: fsl-sai: Use minItems 5 for
 i.MX8MN clock and similar
Message-ID: <166785477284.1619920.12812851380647033618.robh@kernel.org>
References: <20221104160315.213836-1-marex@denx.de>
 <20221104160315.213836-2-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221104160315.213836-2-marex@denx.de>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Fri, 04 Nov 2022 17:03:14 +0100, Marek Vasut wrote:
> The i.MX8MN currently uses "bus", "mclk0", "mclk1", "mclk2", "mclk3"
> clock, which adds up to 5 clock total. Use minItems 5 for this setup.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Jaroslav Kysela <perex@perex.cz>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Liam Girdwood <lgirdwood@gmail.com>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Nicolin Chen <nicoleotsuka@gmail.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shengjiu Wang <shengjiu.wang@gmail.com>
> Cc: Takashi Iwai <tiwai@suse.com>
> Cc: Xiubo Li <Xiubo.Lee@gmail.com>
> Cc: alsa-devel@alsa-project.org
> To: devicetree@vger.kernel.org
> ---
>  Documentation/devicetree/bindings/sound/fsl,sai.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
