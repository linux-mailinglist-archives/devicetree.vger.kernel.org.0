Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 073CC656829
	for <lists+devicetree@lfdr.de>; Tue, 27 Dec 2022 09:07:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230497AbiL0IHL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Dec 2022 03:07:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230286AbiL0IHE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Dec 2022 03:07:04 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A097310D7
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 00:07:01 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id j17so9143480lfr.3
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 00:07:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OJ/7FKaYQPbSQfr8IKqXAW5Ibx9zEMr06Yb1xIgzRps=;
        b=JXlN4p1JR20ckkY81K15D3vNl6qOqL5zutcruCZy/SHUKJcdfVQRNhDvv10crJZRR8
         XGquJa2AFr4KLIdLCfjeBsib8JLQRtt/LakZITiEDuKKtZFHiw+f2cAY3MVMTCM2h7/j
         DzL27PwrkjGANH3vRRg4yh/OraSPbD2SGc8MT3JOpDtbb9jWxoA5K3CQN2iVSPI5qOXd
         ISo4sB6EnTdF6qPtxtUj+aA4lrWhrBD/oJRElE1ErtRPezc3WtysT6ridQpdSdHPA2Xw
         M/NG0LiQRbTzqkfGmaC6NV4h/GpL6nl7F15PsEGVx+9XWAcsPN8kZUnTrFy2eMQiXikD
         /H0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OJ/7FKaYQPbSQfr8IKqXAW5Ibx9zEMr06Yb1xIgzRps=;
        b=hzolaunBbPvoH5g0zwM87ty2Lqz6xEzuVYuuxF7brn3RxSeFAfoDEglHCBd5S9hWx9
         2y3DCV6w6v2v+rbFtKGx+leqH/bl4uDmPmeuGGIY/zCf/Oofb+eXqI0twQz1hKOnd+ab
         ErHUmw9Sueary42wr8DzYmX7wQ7XQImVluVXOr8Xn69BlEWwq/FeYA5IS4kFqlWgjJrM
         esNXoUtkttJaqLt95c8uqLYlt+HdM3JVtek9jIAmhEvP1h7sqdTFP1jh7SmTYKPJCzzI
         Co9VLjO4btJ2xKB/YEa93VGlsEjISrcoJ4Y2e4kiCIO8BzKv4Xy6IxSYzSIVd2y0mt7C
         7SUQ==
X-Gm-Message-State: AFqh2koUY2LalKM3mvcZm9mUPOGibgrCkV7I+wPtpIz9tFSj8anYFLrJ
        HXe1DZ51Kz4BPN0iTUjyi6CfWw==
X-Google-Smtp-Source: AMrXdXuOPt5JMrtcl95yqiO17abJPoW67fI3p5WipJORLY/dTnnw7KGxlUmcQDy458TGWtVsrYHb1g==
X-Received: by 2002:a05:6512:3c82:b0:4b5:adae:b6be with SMTP id h2-20020a0565123c8200b004b5adaeb6bemr10160824lfv.42.1672128420011;
        Tue, 27 Dec 2022 00:07:00 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id b11-20020a056512024b00b004b57277474esm2147571lfo.106.2022.12.27.00.06.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Dec 2022 00:06:59 -0800 (PST)
Message-ID: <9a2ae843-1cc8-b3c7-1d63-da56547f81c8@linaro.org>
Date:   Tue, 27 Dec 2022 09:06:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [net PATCH 1/2] dt-bindings: net: marvell,orion-mdio: Fix error
Content-Language: en-US
To:     =?UTF-8?Q?Micha=c5=82_Grzelak?= <mig@semihalf.com>,
        devicetree@vger.kernel.org
Cc:     davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, andrew@lunn.ch,
        chris.packham@alliedtelesis.co.nz, netdev@vger.kernel.org,
        upstream@semihalf.com, linux-kernel@vger.kernel.org
References: <20221227010523.59328-1-mig@semihalf.com>
 <20221227010523.59328-2-mig@semihalf.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221227010523.59328-2-mig@semihalf.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/12/2022 02:05, Michał Grzelak wrote:
> Fix 'unevaluated properties error' during 'make dtbs_check' appearing on
> arm device trees by defining generic 'ethernet-phy' subnode in
> marvell,orion-mdio.yaml.

Instead of long test just paste a bit of warning message. Much easier to
read.

> 
> Fixes: 0781434af811f ("dt-bindings: net: orion-mdio: Convert to JSON
> schema")

Don't wrap tags.

> Signed-off-by: Michał Grzelak <mig@semihalf.com>
> ---
>  Documentation/devicetree/bindings/net/marvell,orion-mdio.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/marvell,orion-mdio.yaml b/Documentation/devicetree/bindings/net/marvell,orion-mdio.yaml
> index d2906b4a0f59..2b2b3f8709fc 100644
> --- a/Documentation/devicetree/bindings/net/marvell,orion-mdio.yaml
> +++ b/Documentation/devicetree/bindings/net/marvell,orion-mdio.yaml
> @@ -35,6 +35,10 @@ properties:
>      minItems: 1
>      maxItems: 4
>  
> +patternProperties:
> +  '^ethernet-phy':

ethernet-phy@ is already accepted via mdio, so this looks wrong. You
need to rather fix the DTS.


Best regards,
Krzysztof

