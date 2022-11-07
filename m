Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E7CD62000E
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 22:01:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231887AbiKGVBO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 16:01:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232582AbiKGVBN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 16:01:13 -0500
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F600211
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 13:01:11 -0800 (PST)
Received: by mail-oi1-f181.google.com with SMTP id n186so13521598oih.7
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 13:01:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mQJDvR/aVT3/i6J9YEM4LGBFn16slEkUg/5PDIelLHs=;
        b=mL3T0mdrf5xWq4fIY28MlxYYqDThINkHiTs/vEu/+M92vucXfgk8pxIC6sO+pFHXWq
         nM55rCmEAVok2dH+dXvT6tLdTAN0DwVSmeX3k5G/WI6LsgVdvymiNuLHYGu602B9J/RN
         mWnPK1UmmMsUM01WnC84Of4OjYkHTvrO0/E2o4T1KTY/Slu9yv0ju/AdJeD0bDlUbPu0
         EIVGb9eKW7VoZK2PkVa083uHbTV+sEam8Ggxu69Kgj/GNP5jwGesb+l0y8GpDApWLFAh
         kCzutyiA4UbOFz64HGO0VGgDife/tfJJnRgs3G7VmOgkyJzALdfvmuYUuvyF3CeoGkDx
         5t1w==
X-Gm-Message-State: ANoB5pmIRza572E1/PlMN4BWJl0veZnazmvIbdnO6aBHNpT6sTYUNHvg
        mQBKG7CLtw7zTbiIipj1Lg==
X-Google-Smtp-Source: AA0mqf4rQ8f6FL3BJt9OJI6h0Li9h8V2atSK1dIzcawYtKV/YzRpOW7TpzCktUaODJr4XJJWkGZHRQ==
X-Received: by 2002:aca:240b:0:b0:35a:8b57:a081 with SMTP id n11-20020aca240b000000b0035a8b57a081mr3616118oic.206.1667854870292;
        Mon, 07 Nov 2022 13:01:10 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id p5-20020acabf05000000b00359b83e3df1sm2832628oif.9.2022.11.07.13.01.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 13:01:09 -0800 (PST)
Received: (nullmailer pid 1621911 invoked by uid 1000);
        Mon, 07 Nov 2022 21:01:11 -0000
Date:   Mon, 7 Nov 2022 15:01:11 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Xiubo Li <Xiubo.Lee@gmail.com>, Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Nicolin Chen <nicoleotsuka@gmail.com>,
        Shengjiu Wang <shengjiu.wang@gmail.com>,
        Takashi Iwai <tiwai@suse.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@gmail.com>, alsa-devel@alsa-project.org
Subject: Re: [PATCH 3/3] ASoC: dt-bindings: fsl-sai: Sort main section
 properties
Message-ID: <166785485834.1621531.34159853934723663.robh@kernel.org>
References: <20221104160315.213836-1-marex@denx.de>
 <20221104160315.213836-3-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221104160315.213836-3-marex@denx.de>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Fri, 04 Nov 2022 17:03:15 +0100, Marek Vasut wrote:
> Sort main section properties, no functional change.
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
>  .../devicetree/bindings/sound/fsl,sai.yaml    | 72 +++++++++----------
>  1 file changed, 36 insertions(+), 36 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
