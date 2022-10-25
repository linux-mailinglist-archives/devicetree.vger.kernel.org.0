Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F23A60C0A6
	for <lists+devicetree@lfdr.de>; Tue, 25 Oct 2022 03:12:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231392AbiJYBMh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Oct 2022 21:12:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231394AbiJYBMR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Oct 2022 21:12:17 -0400
Received: from mail-qv1-xf29.google.com (mail-qv1-xf29.google.com [IPv6:2607:f8b0:4864:20::f29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4712D6387A
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 17:23:03 -0700 (PDT)
Received: by mail-qv1-xf29.google.com with SMTP id j6so3126141qvn.12
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 17:23:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n2ZK0pIwvnKz9btbqVhS6qb6VUA1xVkqcBxceuT21jg=;
        b=ManPbIKyZv/+T1JkITSAJucu8qY5zP7Y0+l3/bsuPHPtnmYrHLwtBfNAtTJT1/MMM/
         5Ld8aEYMyK9seMLN4gQFZkmhjKsx9ymyaOI6nM9k1WDjdSGoX32FEjd4HrJoHbt34jwq
         /+GHL1zzaLykPsnWBzOv8ZeThMcIoyy7CkiPj7Tgw2r1gsde7Ajk//w/UE64qp8A1LMN
         X9OsvIQGul5t96Hrpx7WamK+NCg10YlnvSNa1PeDQe/ZjDxrq/XmT1WZXx1sdLT1NNaL
         EDeb2zqfF58VDuMoHONDqaRWVjv6kMz+eiJOxZkWVG12QbFZxNgB6BNC+05q8omVcugn
         0ZPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n2ZK0pIwvnKz9btbqVhS6qb6VUA1xVkqcBxceuT21jg=;
        b=7de/pQgeyGP29MSLXpp+rs3krpEDaJ68OoCVX5UZnGZYVhWneyV5mUnr186RL3hNiI
         ws+fBVk/cJJZ81p1j2g97pDl9aMYhPzFOOU3Kt/dmF2vbLXIfYfbeHn4uPtRbOQkIiNg
         w++C915dQDtRMHC87uhIihDYVA2qzeD0eM2I3r85VBYstDVs3/FAtfEVm9G+Y3wDC70Q
         3g8c77v4fyvfqAzyyAWlGNoQOFfxbcBbRtT0JuPQk4YD6UaaGHjAhv5Osg3D9edFcDNo
         ceHdIYZKqe/8MUJJakwcMsTpmClbM18F8Cr7c4w2XiBORtIgUKoyO7pRkgZfLKluRw9r
         fM8Q==
X-Gm-Message-State: ACrzQf1HoiKxx0ATWVUkIsAPal7V5jJJY5z5s5B4XGWpinmF4YUbmjgJ
        5eAFe5EO5b3gG2rWj2vZ2fbxxA==
X-Google-Smtp-Source: AMsMyM5krORH3TMYiw4uI9MuckR6IhPi4NL+ctXiPYzQE+B8oQ8bNhyISAIestAdJL5l/Z/8jdzx1g==
X-Received: by 2002:a05:6214:62e:b0:4bb:7f43:1fd5 with SMTP id a14-20020a056214062e00b004bb7f431fd5mr4001806qvx.112.1666657382417;
        Mon, 24 Oct 2022 17:23:02 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id y9-20020a37f609000000b006b8e8c657ccsm888544qkj.117.2022.10.24.17.23.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 17:23:01 -0700 (PDT)
Message-ID: <1995a21d-1458-8c80-4a24-641f4b5dcf81@linaro.org>
Date:   Mon, 24 Oct 2022 20:23:00 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 1/2] dt-bindings: usb: usb-nop-xceiv: add wakeup-source
 property
Content-Language: en-US
To:     Li Jun <jun.li@nxp.com>, gregkh@linuxfoundation.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     balbi@kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, xu.yang_2@nxp.com
References: <1666588648-1047-1-git-send-email-jun.li@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1666588648-1047-1-git-send-email-jun.li@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/10/2022 01:17, Li Jun wrote:
> usb phy may be part of wakeup source, so add wakeup source property

s/usb/USB/

"part of wakeup source" is actually not descriptive. What do you want to
say here?

> to keep its resource(e.g power domain) active to make usb remote

space before (
s/e.g/e.g./
s/usb/USB/

> wakeup work.
> 
> Signed-off-by: Li Jun <jun.li@nxp.com>
> ---
>  Documentation/devicetree/bindings/usb/usb-nop-xceiv.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/usb-nop-xceiv.yaml b/Documentation/devicetree/bindings/usb/usb-nop-xceiv.yaml
> index 2824c17285ee..7b71e32d1df0 100644
> --- a/Documentation/devicetree/bindings/usb/usb-nop-xceiv.yaml
> +++ b/Documentation/devicetree/bindings/usb/usb-nop-xceiv.yaml
> @@ -39,6 +39,11 @@ properties:
>        the VBus line.
>      $ref: /schemas/types.yaml#/definitions/phandle
>  
> +  wakeup-source:
> +    $ref: /schemas/types.yaml#/definitions/flag

This shouldn't be needed, as it is a standard property.

> +    description:
> +      Specify if it's USB remote wakeup capable.

Now you have to explain in the bindings what is "USB remote wakeup".

Best regards,
Krzysztof

