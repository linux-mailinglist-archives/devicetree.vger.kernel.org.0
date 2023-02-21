Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF70269DEE1
	for <lists+devicetree@lfdr.de>; Tue, 21 Feb 2023 12:34:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233284AbjBULei (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Feb 2023 06:34:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232613AbjBULei (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Feb 2023 06:34:38 -0500
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B22F233E9
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 03:34:36 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id ec43so15366282edb.8
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 03:34:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gRhJ3F3EMXBCZsjf514m9mlmqgmDF0q/BU3nFTSvTME=;
        b=cws8YytRXYsU3GAB62vN5Nw/iLyHOmZRCNS8f2dd69tKffdun6npWzCuiK0PSlugoP
         v7jnr+R2KFBXNY4nVvGsq5lAplQAx77Vrgx9X9J+mPfc+vWTbJCHaBII4XfInhdRo3vZ
         MDTgixUgxmdRe2vy/VXsezeAP/4KfH7fqcGejDke9wvgNSChBDsVCvSgQbnJf7uqRaVm
         hCsGTReFtC8Q1DGvCANAp6jr7ObqyMahFEnKPBvr5akviq2AVKTiCOWca2PtaD52ixTT
         mwG/xshTWaeW7cgqbjo18l6DBmZCY+NXaCOLtLFxAw7pLNJFMk6GkveF5fRaq6yerb6Z
         4Ogg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gRhJ3F3EMXBCZsjf514m9mlmqgmDF0q/BU3nFTSvTME=;
        b=WbnEH3zsj99mpee9SydZJB5m3M4kZE5KSBpGUYworyD7JELOcqUrrYKoN9OV7EhLnu
         +JWbYd13PDrI56FID7BVSRXrtdmxal45a60mbJ6lgYvF85JE/TxVLPQyl+9tyuDxfgTa
         /j3093NbNqbHP7mLbTPuJ0lxYdjUTblSIbFfj9JcYCnpxj0gXJdg8KdmjmsKMW2S34GF
         NVOxdhgJfguPYLfRftgRlCPc5roHO16HVdLBlnps+Kj328QCu+0uYJ6jn7nbvze4W+fz
         WRfQlNIL1odjsboeosbeR1Fw/KQDFsZD/6WeFSt4vymoRwVqCqVXLY5rsujpoXZ+DvsX
         WrdA==
X-Gm-Message-State: AO0yUKXuhby2G8A5gYKo2gXCao32bFAc/gDpdwzd7/k93R+JqV8HogVz
        DBC5q9EYmeH9LmlS/eQqbNHZhA==
X-Google-Smtp-Source: AK7set+onev3LQzFX53s1LDkEuu+edxDeZQEjA8zAGtB/EMQLk0XSVGOEV3VzoJdK61Pz+Km02y6DA==
X-Received: by 2002:a17:906:fad4:b0:8b1:7fa:ba22 with SMTP id lu20-20020a170906fad400b008b107faba22mr12406319ejb.27.1676979274817;
        Tue, 21 Feb 2023 03:34:34 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id n4-20020a170906724400b008df97fae83dsm662852ejk.91.2023.02.21.03.34.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Feb 2023 03:34:34 -0800 (PST)
Message-ID: <081f1335-bbd2-4e61-f3c2-f43ad353fcf6@linaro.org>
Date:   Tue, 21 Feb 2023 12:34:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 1/4] dt-bindings: soc: imx8mp-media-blk-ctrl: Align
 block controller example name
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
References: <20230220035051.327847-1-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230220035051.327847-1-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/02/2023 04:50, Marek Vasut wrote:
> Align the block controller example node name with Linux imx8mp.dtsi .
> No functional change.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Paul Elder <paul.elder@ideasonboard.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Richard Cochran <richardcochran@gmail.com>
> Cc: Richard Zhu <hongxing.zhu@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> ---
> V2: Adjust the label too
> ---
>  .../devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml  | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> index dadb6108e3213..71deebe902d52 100644
> --- a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> +++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> @@ -94,7 +94,7 @@ examples:
>      #include <dt-bindings/clock/imx8mp-clock.h>
>      #include <dt-bindings/power/imx8mp-power.h>
>  
> -    media_blk_ctl: blk-ctl@32ec0000 {
> +    media_blk_ctrl: blk-ctrl@32ec0000 {

No, because the label is unused. Instead you can just drop it. Unused
labels should not be in DT binding examples, although we rarely comment
about it.

Best regards,
Krzysztof

