Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A21E5ECC62
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 20:49:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229572AbiI0Sta (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 14:49:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229489AbiI0St2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 14:49:28 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74D6A1C5CA4
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 11:49:27 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 06D0384CB6;
        Tue, 27 Sep 2022 20:49:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1664304565;
        bh=feV92BuNRkVJBQm83sLkw5d/7kr7kGFYTiH7Oi2pDks=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=tfPEDsIsPOv1bKYAG6lIsrjcm9wpiNTc9OvK+ygc7a2u/i/q+N1MDzL8XnxSkeZIf
         OnD078kEzoh8ud5t9JFsCi5XcmOlqQJdrX9gJoo24cQoj7RqlIdn+ZLWl5MEeZ270T
         aHzEjzlCLTS+MzOGP+IubHUmPSgkGKtiS+mkS7hZGfJCS4gTC6gMexta3jW/WyHOG/
         nK64QIqfYUdRon4YJvWPOj7V3CQYyC7Hr6QxB8NXjzJ6o8U5PgjT01Oy/Hm3aqPNse
         IPgh8WPfWkzLnIV9LNXCYdzlPVV/Z68mS0wetLg1QkBGQKWmtzeuVH2h3/4FcH3z2Q
         8zso7jON3vXrg==
Message-ID: <32359086-c1c5-6e61-8b80-2742def2d632@denx.de>
Date:   Tue, 27 Sep 2022 20:49:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH] ASoC: dt-bindings: Document audio OF graph
 dai-tdm-slot-num dai-tdm-slot-width props
Content-Language: en-US
To:     linux-arm-kernel@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org
References: <20220927005436.690904-1-marex@denx.de>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20220927005436.690904-1-marex@denx.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-6.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 9/27/22 02:54, Marek Vasut wrote:
> Document dai-tdm-slot-num and dai-tdm-slot-width props as those are
> parsed by simple graph card and may therefore appear in audio OF graph
> node.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Cc: Liam Girdwood <lgirdwood@gmail.com>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: alsa-devel@alsa-project.org
> To: linux-arm-kernel@lists.infradead.org
> ---
>   Documentation/devicetree/bindings/sound/audio-graph-port.yaml | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> index bc46a95ed8400..c282b81632d8f 100644
> --- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> +++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> @@ -74,6 +74,10 @@ patternProperties:
>         convert-sample-format:
>           $ref: "/schemas/sound/dai-params.yaml#/$defs/dai-sample-format"
>   
> +      dai-tdm-slot-num:
> +        $ref: "#/definitions/dai-tdm-slot-num"
> +      dai-tdm-slot-width:
> +        $ref: "#/definitions/dai-tdm-slot-width"
>         dai-tdm-slot-width-map:
>           description: Mapping of sample widths to slot widths. For hardware
>             that cannot support a fixed slot width or a slot width always

V2 is coming, please drop this patch.
