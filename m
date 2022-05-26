Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E17CF534FAA
	for <lists+devicetree@lfdr.de>; Thu, 26 May 2022 14:55:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235578AbiEZMzX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 May 2022 08:55:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231775AbiEZMzX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 May 2022 08:55:23 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2D41C6E7C
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 05:55:21 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id ck4so2772058ejb.8
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 05:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Q24sEXXOlHbNwb2JNgFc94OvkMDGhXGTzSABCENwbRQ=;
        b=OXThtNLNIBn6bqIOPkWrBFUPCmgl2W83DORjDnLgq3KHw7gSI72C2UhrE1nme7MWIH
         A0QfkPoAA+pKiTi8kIVLlusyvYGsmeeht4+yTaXLw0zKXu+WwXoIJwr7Q+DlwNhdsLtk
         DMAcdNCNADZZbsnmek+A3k5wB7Lmt2GVUSLx9JKRS370gTCxg7WSMfKa3SUf7IuM3F1s
         qq/DdX4YPRq7u90/eyqFpPWRWmq8BHGUi238qx34/pzoM+yvVNK7ScKU4EvjMNDevF+y
         akJW+6oCQI3QUu18Pd4d9IQbMCrb3Z+5jAdaMy7Lhd8VZMGPymUxCdkbxN/1se/u432l
         gPoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Q24sEXXOlHbNwb2JNgFc94OvkMDGhXGTzSABCENwbRQ=;
        b=kKPxM38VN6gHA6GBWp70NOPlBiLXDzTel/ywkzURWp1e/DhMynDIL19W5EdmApzXEp
         IzUDnk2TxwCzcu7jr1ou6tY3J1heQ1NIV4wPotcjmf0f2dWg+I/uYmV/F/E1RxSJXyoK
         akka3VY90qYiGIF76Jy40/hrxgY8Tc9iPKaipHfK1c7uFeUc1eVO/3cDH9HAUyaZHt5g
         RxWwfzBaynAd+HC5P7l+W+5D/Bt8RahnvGRqUeT5Cdc/3t3BmGS0Dgd5evY9Voa++GAs
         53jr6MEqwlsMERHNa5rEfBk5ZEUh99HXES9JXoobyHj1cfdP8pT+Y4Y0T6k7x4qjANgE
         a0cg==
X-Gm-Message-State: AOAM5326R64OzalhllGCY68XFwHLfMK/H3uZPjiH/6LiAPVygXRUcJCE
        1NABKFBRKIG/lP4TRQjgpR5FQw==
X-Google-Smtp-Source: ABdhPJygxjL9fVe78CtWE/3ytXhy8QpDt01K9rkkV5khnoGcT0zyPwzllMINpqilDHnDXQy10Z+UAQ==
X-Received: by 2002:a17:906:ca4c:b0:6fe:a6eb:bd0e with SMTP id jx12-20020a170906ca4c00b006fea6ebbd0emr27378170ejb.530.1653569720446;
        Thu, 26 May 2022 05:55:20 -0700 (PDT)
Received: from [192.168.0.177] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id ja10-20020a170907988a00b006f3ef214e28sm503041ejc.142.2022.05.26.05.55.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 May 2022 05:55:20 -0700 (PDT)
Message-ID: <f4ec27f9-75cc-da00-c06d-cee891affd98@linaro.org>
Date:   Thu, 26 May 2022 14:55:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH V4 1/2] dt-bindings: rtc: zynqmp: Add clock information
Content-Language: en-US
To:     Srinivas Neeli <srinivas.neeli@xilinx.com>, a.zummo@towertech.it,
        alexandre.belloni@bootlin.com, robh+dt@kernel.org,
        michal.simek@xilinx.com, sgoud@xilinx.com, shubhraj@xilinx.com
Cc:     krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-rtc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, git@xilinx.com
References: <20220524122050.48553-1-srinivas.neeli@xilinx.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220524122050.48553-1-srinivas.neeli@xilinx.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/05/2022 14:20, Srinivas Neeli wrote:
> Added clock information and deprecated calibration support.
> 
> Signed-off-by: Srinivas Neeli <srinivas.neeli@xilinx.com>
> ---
> Changes in V4:
> - Deprecated calibrtion support
> Changes in V3:
> - New patch
> ---
>  .../devicetree/bindings/rtc/xlnx,zynqmp-rtc.yaml      | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/rtc/xlnx,zynqmp-rtc.yaml b/Documentation/devicetree/bindings/rtc/xlnx,zynqmp-rtc.yaml
> index bdb72d3ddf2a..de617707854e 100644
> --- a/Documentation/devicetree/bindings/rtc/xlnx,zynqmp-rtc.yaml
> +++ b/Documentation/devicetree/bindings/rtc/xlnx,zynqmp-rtc.yaml
> @@ -23,6 +23,14 @@ properties:
>    reg:
>      maxItems: 1
>  
> +  clocks:
> +    items:
> +      - description: rtc_clk is the operating frequency of crystal.
> +
> +  clock-names:
> +    items:
> +      - const: "rtc_clk"

No quotes, no "clk" suffix. Actually entire entry is not needed, so just
"clocks" is enough.

> +
>    interrupts:
>      minItems: 2
>  
> @@ -39,6 +47,7 @@ properties:
>      minimum: 0x1
>      maximum: 0x1FFFFF
>      default: 0x198233
> +    deprecated: true
>  
>  required:
>    - compatible
> @@ -61,5 +70,7 @@ examples:
>          interrupts = <0 26 4>, <0 27 4>;
>          interrupt-names = "alarm", "sec";
>          calibration = <0x198233>;
> +        clock-names = "rtc_clk";
> +        clocks = <&rtc_clk>;
>        };
>      };


Best regards,
Krzysztof
