Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D72A9620001
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 21:59:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233051AbiKGU7K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 15:59:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233113AbiKGU7D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 15:59:03 -0500
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E84BE254
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 12:59:00 -0800 (PST)
Received: by mail-oi1-f171.google.com with SMTP id n205so2428179oib.1
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 12:59:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9mVNrung5eCU1qzEWaHk9EuxUpbcR8g5igR2oSV8CxQ=;
        b=qgglF5QYusp9BfpDBCKev9KdX16pK6PvFccxk9IvFq8nqj6AQeJGta6qfHfSxg8SeC
         AJNQWE2udPuxWutae0rYbSunBLXjqSL8IataasbT/obHtPW0oVghUevbtH21m+hxiNTk
         LU2kWCgIMTT4r4TJbeoFcbtWQKa2q81qYsUQAAv2dj/k3wjlTt/KTsae2gk9Iyk8FEIS
         262t4a4Ypo4jxo6IViBtkcX114gRRBHnA0jcLX+qyDhiOHtzI+aUV7yUgA17x4ZT61pp
         eyERBNPgbTGAeqg3Z3Gai1ndJX1TlFL3whpdvuBO7tzG0IYMwWEKM487IUBxW8DG9qtG
         b9jQ==
X-Gm-Message-State: ACrzQf1yahQVWrDUhbKHF2nzNX41OA0d3GZPPwvkml4bRPQ+ZF1tYWlS
        WZcoxl3sA610BYXOZT0ojA==
X-Google-Smtp-Source: AMsMyM6C6shHRGICMuvhGQCJXqcxBXca0M5mUt85+eWtDAZr79ZQPVSIYadW/siNSLjiBSuudEhi1g==
X-Received: by 2002:aca:2214:0:b0:35a:2a69:3372 with SMTP id b20-20020aca2214000000b0035a2a693372mr566297oic.49.1667854740134;
        Mon, 07 Nov 2022 12:59:00 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id x66-20020a9d20c8000000b00661a05691fasm3299485ota.79.2022.11.07.12.58.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 12:58:59 -0800 (PST)
Received: (nullmailer pid 1619291 invoked by uid 1000);
        Mon, 07 Nov 2022 20:59:01 -0000
Date:   Mon, 7 Nov 2022 14:59:01 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Mark Brown <broonie@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Shengjiu Wang <shengjiu.wang@gmail.com>,
        Xiubo Li <Xiubo.Lee@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
        Takashi Iwai <tiwai@suse.com>,
        Nicolin Chen <nicoleotsuka@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] ASoC: dt-bindings: fsl-sai: Fix mx6ul and mx7d
 compatible strings
Message-ID: <166785473882.1619202.3198282596257102094.robh@kernel.org>
References: <20221104160315.213836-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221104160315.213836-1-marex@denx.de>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Fri, 04 Nov 2022 17:03:13 +0100, Marek Vasut wrote:
> Describe existing used combinations of compatible strings on MX6UL
> and MX7D, which are backward compatible with MX6SX. Add the missing
> imx7d-sai compatible string which is used on i.MX7 .
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
>  .../devicetree/bindings/sound/fsl,sai.yaml    | 24 ++++++++++++-------
>  1 file changed, 15 insertions(+), 9 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
