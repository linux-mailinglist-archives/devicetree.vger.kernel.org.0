Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2CA4E5B1BDD
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 13:49:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231493AbiIHLto (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 07:49:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231497AbiIHLtl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 07:49:41 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66D7621801
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 04:49:38 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id m15so7603421lfl.9
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 04:49:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=srioTK6KsCPJy0yU+c6+tCB1HEEi/KQ9lo+WsB/Dyi4=;
        b=pe7ujTnMRAtFZJxkWsN5z/obj9g6VXrSDkMirgfCrTziYv9bw0qHLSdPjKnOaBZMu2
         gFJHxrTrCEmPkpDpAoKuRyCfBfxIyeyONErIBJBGmNEtLdN1GrlbWPUHvZzUtw5CmJvO
         CobR7oIhLc4ioRiIOpMh6Gf6ZVRwlpDxyn16h8IddatEBjNJsbEfifqrjI7tLDKNaksv
         mmxNKAYOMD8xwq+7fIaDoF5ZejgFoHy9vmRUnZDu4sE6yk5aYm7ePzKx1oXcd4SsFI1A
         +9IhMt7OczyNJ75DwKHYVHqgL9qNwbGI2NvA3czQldQWgNYoviTpLAlJBZN3mX/wEKQm
         awoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=srioTK6KsCPJy0yU+c6+tCB1HEEi/KQ9lo+WsB/Dyi4=;
        b=vS1fHg29dt4DymDeXP9r/IX7FaIQY+fut1uNMR4MgMr/4+/Uc3IKfSFYlTyIX+l2uT
         tWq2E9anHwy9ajmfC+2MzPgvpI/BMl4fXWl96mdAjvQlYj4e5bqsI5q6oJgWCT0Q3WA8
         hY9g3we9AeT9HEoqbV22hUvWmTKq/dITyDm8/F0OQ675EQeRDBTWQObFCWl7eIUzS/za
         A33h83p19hk9oJc5cOOhr15dKjV5Jd1XtWssaaa6aSXMqIKvO/Ji8dGGSaJNasLTRcI/
         47yG+WqM7dciXriLWkJpw/WS+ADAVTNjFsfAGVJCkSX7zcJpEL+m9kwInRhVDtTICaJp
         Iz1Q==
X-Gm-Message-State: ACgBeo24so3hpBybtcsuio5K3T3s0JEiOrgHgFikSAHPDdQFSeMo+pKv
        bDojPgytTQwBCy0PpRkzrH5W7w==
X-Google-Smtp-Source: AA6agR4oUsEtw6uTpZlyCNzA5SlmDM2bsf9JfE82EcGp2pWiO/h1kTgoyWh83rCQTlx51j+HQcNLnw==
X-Received: by 2002:a05:6512:1520:b0:492:daab:8382 with SMTP id bq32-20020a056512152000b00492daab8382mr2830583lfb.151.1662637776115;
        Thu, 08 Sep 2022 04:49:36 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id o9-20020a05651205c900b004947e89ae4bsm202530lfo.294.2022.09.08.04.49.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 04:49:35 -0700 (PDT)
Message-ID: <aeabc681-9416-d25d-693a-30ba99f1796d@linaro.org>
Date:   Thu, 8 Sep 2022 13:49:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 2/8] ASoC: rockchip: rk3308: add audio card bindings
Content-Language: en-US
To:     luca.ceresoli@bootlin.com, alsa-devel@alsa-project.org,
        linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Johan Jonker <jbx6244@gmail.com>,
        Chris Morgan <macromorgan@hotmail.com>
References: <20220907142124.2532620-1-luca.ceresoli@bootlin.com>
 <20220907142124.2532620-3-luca.ceresoli@bootlin.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220907142124.2532620-3-luca.ceresoli@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/09/2022 16:21, luca.ceresoli@bootlin.com wrote:
> From: Luca Ceresoli <luca.ceresoli@bootlin.com>
> 
> Add device tree bindings document for the audio card based on the internal
> I2S of the Rockchip RK3308 SoC.

Use subject prefixes matching the subsystem (git log --oneline -- ...).

> 
> Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> ---
>  .../rockchip,rk3308-audio-graph-card.yaml     | 50 +++++++++++++++++++
>  MAINTAINERS                                   |  5 ++
>  2 files changed, 55 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/rockchip,rk3308-audio-graph-card.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/rockchip,rk3308-audio-graph-card.yaml b/Documentation/devicetree/bindings/sound/rockchip,rk3308-audio-graph-card.yaml
> new file mode 100644
> index 000000000000..8445a69dcdbb
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/rockchip,rk3308-audio-graph-card.yaml
> @@ -0,0 +1,50 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/rockchip,rk3308-audio-graph-card.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip RK3308 Audio card based on internal I2S
> +
> +maintainers:
> +  - Luca Ceresoli <luca.ceresoli@bootlin.com>
> +
> +allOf:
> +  - $ref: /schemas/sound/audio-graph.yaml#
> +
> +properties:
> +  compatible:
> +    const: rockchip,rk3308-audio-graph-card

Is "graph" part of device name or you just put it there because of other
schema? The compatible should reflect the device name, not some other
pieces in Linux or in bindings.

> +
> +required:
> +  - compatible
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    sound {
> +        compatible = "rockchip,rk3308-audio-graph-card";
> +        dais = <&i2s_8ch_2_port>;
> +    };
> +
> +    i2s_8ch_2 {

No underscores in node names. Generic node names. This does not look
like related example...

> +        i2s_8ch_2_port: port {
> +            i2s_8ch_2_endpoint: endpoint {
> +                remote-endpoint = <&acodec_endpoint>;
> +                dai-format = "i2s";
> +
> +                /* The RK3308 acodec has no clock dividers, use the CPU */
> +                bitclock-master = <&i2s_8ch_2_endpoint>;
> +                frame-master = <&i2s_8ch_2_endpoint>;
> +            };
> +        };
> +    };
> +
> +    acodec {

codec or audio-codec

> +        port {
> +            acodec_endpoint: endpoint {
> +                remote-endpoint = <&i2s_8ch_2_endpoint>;
> +            };
> +        };
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index d53a8e74cb1e..079bdd95dc49 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -17594,6 +17594,11 @@ S:	Maintained
>  F:	Documentation/devicetree/bindings/sound/rockchip,rk3308-codec.yaml
>  F:	include/dt-bindings/sound/rockchip,rk3308-codec.h
>  
> +ROCKCHIP RK3308 SOUND CARD DRIVER
> +M:	Luca Ceresoli <luca.ceresoli@bootlin.com>
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/sound/rockchip,rk3308-audio-graph-card.yaml
> +
>  ROCKCHIP VIDEO DECODER DRIVER
>  M:	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
>  L:	linux-media@vger.kernel.org


Best regards,
Krzysztof
