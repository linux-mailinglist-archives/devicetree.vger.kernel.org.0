Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0767F68911F
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 08:43:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229785AbjBCHnE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 02:43:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231593AbjBCHnD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 02:43:03 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0E1F6580
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 23:43:00 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id d14so3826385wrr.9
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 23:43:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5b+vj5d7mAcnPJNRiH9TynU/xKQ/CpSAEs4T/HSo6WM=;
        b=OVW5q3e2AWBaEpv9pU1V5tHYMvWGjFz38LsAYxF3RZ1R1cJM/8rvHD2DO7yNCseQRC
         ACuGazwu75CVNmUtL7LI0ziZK7bxVPotpYyjs47CeDSWxymaNaO14TNmsnPqRga/mS1+
         srh64uY8bCmkVt5YxIsaaAFHtjbSMUq23s5n1EJras2wUyYp3tL7IyuvskGPFHwLLWkK
         z0TI1/jBvPvYJeIczmEZJwUx6nYFxQzO7wHbmZYfPewuJqTd8PzBljQrxdH8uO+Yfm1w
         WSwgQ2Ed5aOSGvXe1jsMpnOElovWta7yUvuNnFnrCsf2Uba6APuU3jAGHfpCBcRVt6Iv
         2dXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5b+vj5d7mAcnPJNRiH9TynU/xKQ/CpSAEs4T/HSo6WM=;
        b=UyZ0BJy8BNxP+NbZk5e0HVaiTvWhmgmcFDhU1Iz4JfVXlje6dAlOALYxPS66c4cEHw
         1WjQcywS59+lzzQU3Ov3Nwu3Ec4CpteYHcXDuoc4UkDfGV2KVpcYMSWKMJ9qTjV/6hoE
         AOquW9rPFOJbCzPEofGkHP3wCXgXEZFGCDjupLI7wtJ78GFOB8F3Rripb27pAKTYj+oe
         r/m4BWrdJCkaHxMJnQ0fmKNhvy/67SjlloUlsRILI+PqDxvMQMWD+oIYNOuWjRK1Ceez
         RZeG3SFVecOauMDrck3sPjLW8AnSJ/EL7CuWI/0jvZl53zqwxK1OrQM4ExGnzVTEaWWu
         zRXg==
X-Gm-Message-State: AO0yUKWnR+mVBUUiL/O5b8v5Af6VKNetsPP21xyajIAmDAwRDYpsWqtg
        xRMI8bHqNDEhy43hdgSHbmKq5w==
X-Google-Smtp-Source: AK7set/Nnmyc06o1/eWZDo8c5sq7iLgNIWGrOpe8J8PK7wCX78+RHVK3sEOmbgp+Qq0mXKw22iV1SA==
X-Received: by 2002:a5d:6707:0:b0:2bd:e1fd:2536 with SMTP id o7-20020a5d6707000000b002bde1fd2536mr7402011wru.9.1675410179537;
        Thu, 02 Feb 2023 23:42:59 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id ba9-20020a0560001c0900b002c3c725bdb5sm1275864wrb.117.2023.02.02.23.42.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Feb 2023 23:42:59 -0800 (PST)
Message-ID: <cb02ef03-b3b9-2169-1df6-b82221128909@linaro.org>
Date:   Fri, 3 Feb 2023 08:42:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 3/9] ASoC: dt-bindings: meson: convert axg tdm interface
 to schema
Content-Language: en-US
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
Cc:     linux-amlogic@lists.infradead.org,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org
References: <20230202183653.486216-1-jbrunet@baylibre.com>
 <20230202183653.486216-4-jbrunet@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230202183653.486216-4-jbrunet@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/02/2023 19:36, Jerome Brunet wrote:
> Convert the DT binding documentation for the Amlogic tdm interface to
> schema.
> 
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>


> +title: Amlogic Audio TDM Interfaces
> +
> +maintainers:
> +  - Jerome Brunet <jbrunet@baylibre.com>
> +
> +allOf:
> +  - $ref: dai-common.yaml#
> +
> +properties:
> +  $nodename:
> +    pattern: "^audio-controller-.*"

Such pattern is also not correct (see your patch #2), but so far we do
not require node naming from individual schemas, so I propose just to
drop it.

> +
> +  compatible:
> +    items:

Drop items

> +      - const: 'amlogic,axg-tdm-iface'

Drop quotes

> +
> +  "#sound-dai-cells":
> +    const: 0
> +
> +  clocks:
> +    minItems: 2
> +    items:
> +      - description: Bit clock
> +      - description: Sample clock
> +      - description: Master clock #optional
> +
> +  clock-names:
> +    minItems: 2
> +    items:
> +      - const: sclk
> +      - const: lrclk
> +      - const: mclk
> +
> +required:
> +  - compatible
> +  - "#sound-dai-cells"
> +  - clocks
> +  - clock-names
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/axg-audio-clkc.h>
> +
> +    tdmif_a: audio-controller-0 {

audio-controller (and drop the label)

> +        compatible = "amlogic,axg-tdm-iface";
> +        #sound-dai-cells = <0>;
> +        clocks = <&clkc_audio AUD_CLKID_MST_A_SCLK>,
> +                 <&clkc_audio AUD_CLKID_MST_A_LRCLK>,
> +                 <&clkc_audio AUD_CLKID_MST_A_MCLK>;
> +        clock-names = "sclk", "lrclk", "mclk";
> +    };

Best regards,
Krzysztof

