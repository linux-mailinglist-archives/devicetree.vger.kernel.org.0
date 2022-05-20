Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9C9E52E9B2
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 12:13:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348093AbiETKNR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 06:13:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348013AbiETKNJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 06:13:09 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2E8B149159
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 03:13:07 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id 27so4172403ljw.0
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 03:13:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=a1Pt1oNUpz1qy2vFe0HtIg+Vg5UvzR9QRRsq54eG9w0=;
        b=XSPRsRk2h9GbVTDwDr17sWuvEcUFUJ6pSTUXaKnegM9Wkn19YyRY5tJzx8GZHix18N
         dtcE33jnvPFtESNJmqWGGLrmpE5qiu6v6P6PhM1olwnZpuvPp8cqc3bAadzDPU6/oiWm
         cZZ/JtYBeQ8mtrTGEPhR6lrUI67fbKTL3uCdTjBrSQj4y114to0cUWNd0Jo++YUlRy51
         jXsIDCKHRnLAeq79+5mllTsM/InqhOSmgXhbbJxZ9/eYvwDBxvhJXLwZfhZGReZRgwb5
         B4tX+l/k7tw7bcLigfICpfWPkoZvnstzf9HC/TckOefINxZLQHlkdqXX8Ixf9ulT9z8F
         lliA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=a1Pt1oNUpz1qy2vFe0HtIg+Vg5UvzR9QRRsq54eG9w0=;
        b=arCukwndNe+ykZlgkvY+K3/7zW5PBvz3ADWQC/eIRsUpnNOS8K/TqBSmhZTQEb9OOk
         A+gXlCOR1OaBtJuy8mviDFpoUy38Xfbj99DPbG4ivOpWFxVnlvAxDkr85tOAAgH3PrJr
         JczBIcX1rHyr+qoGmEpU5T757aN4jzdkYvf3//RTwBx5/afgWvpaFTqm127YVzArNTDQ
         o/I+L1dtp6LLUjQlwSInsLxachqSVBWT456Bf0iVs1a4XIQF48CBCt/ubp2vv5GHBocK
         dTayMYkvnvsT5t2XhLS2Wf4V4aJJgwyMkQKJSaDQxZtKmQ1mOMeEF0R0dDFzB3+MtcfK
         Ic5Q==
X-Gm-Message-State: AOAM531HMuLVyN3vIvlSqPDsGxR7xPn2+9LFI5cyo6YDIYmSSBChEZ8H
        3DHJHPR0z8Qt1IFMNxzN5Y1K8Q==
X-Google-Smtp-Source: ABdhPJwIH0V0rOcvqo6PAAtUYuqdpR/iNUpQ3JJtKfHPuCqYBx5WLqSQEZgyUfw8Q12okqCpus0+vA==
X-Received: by 2002:a2e:b88d:0:b0:250:5b0b:f95e with SMTP id r13-20020a2eb88d000000b002505b0bf95emr5144469ljp.59.1653041585950;
        Fri, 20 May 2022 03:13:05 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id a1-20020a2e88c1000000b0024f3d1daeadsm260631ljk.53.2022.05.20.03.13.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 May 2022 03:13:05 -0700 (PDT)
Message-ID: <3ea92486-0cf9-ce3d-d1b6-7a76f1d5a129@linaro.org>
Date:   Fri, 20 May 2022 12:13:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 3/8] dt-bindings: hwmon: Allow specifying channels for
 lm90
Content-Language: en-US
To:     Slawomir Stepien <sst@poczta.fm>, linux-hwmon@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     jdelvare@suse.com, linux@roeck-us.net, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, przemyslaw.cencner@nokia.com,
        krzysztof.adamski@nokia.com, alexander.sverdlin@nokia.com,
        Slawomir Stepien <slawomir.stepien@nokia.com>
References: <20220520093243.2523749-1-sst@poczta.fm>
 <20220520093243.2523749-4-sst@poczta.fm>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220520093243.2523749-4-sst@poczta.fm>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/05/2022 11:32, Slawomir Stepien wrote:
> From: Slawomir Stepien <slawomir.stepien@nokia.com>
> 
> Add binding description for temperature channels. Currently, support for
> label and offset is implemented.
> 
> Signed-off-by: Slawomir Stepien <slawomir.stepien@nokia.com>
> ---
>  .../bindings/hwmon/national,lm90.yaml         | 39 +++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/hwmon/national,lm90.yaml b/Documentation/devicetree/bindings/hwmon/national,lm90.yaml
> index 066c02541fcf..9a5aa78d4db1 100644
> --- a/Documentation/devicetree/bindings/hwmon/national,lm90.yaml
> +++ b/Documentation/devicetree/bindings/hwmon/national,lm90.yaml
> @@ -62,6 +62,37 @@ required:
>  
>  additionalProperties: false
>  
> +patternProperties:

Which models use this?

> +  "^channel@([0-2])$":
> +    type: object
> +    description: |

No need for |

> +      Represents channels of the device and their specific configuration.
> +
> +    properties:
> +      reg:
> +        description: |

The same.

> +          The channel number. 0 is local channel, 1-2 are remote channels.
> +        items:
> +          minimum: 0
> +          maximum: 2
> +
> +      label:
> +        description: |

The same.

> +          A descriptive name for this channel, like "ambient" or "psu".
> +
> +      offset:
> +        description: |

This does not look like standard property, so you need vendor and unit
suffix.

> +          The value (millidegree Celsius) to be programmed in the channel specific offset register
> +          (if supported by device).

You described programming model which should not be put in the bindings.
Please describe the hardware.

> +          For remote channels only.
> +        $ref: /schemas/types.yaml#/definitions/int32
> +        default: 0
> +
> +    required:
> +      - reg
> +
> +    additionalProperties: false
> +
>  examples:
>    - |
>      #include <dt-bindings/interrupt-controller/irq.h>
> @@ -76,5 +107,13 @@ examples:
>              vcc-supply = <&palmas_ldo6_reg>;
>              interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
>              #thermal-sensor-cells = <1>;
> +            #address-cells = <1>;
> +            #size-cells = <0>;
I assume you tested the bindings with dt_bindings_check?

I have some doubts, as this should fail.

> +
> +            channel@0 {
> +                reg = <0x0>;
> +                label = "internal";
> +                offset = <1000>;
> +            };
>          };
>      };


Best regards,
Krzysztof
