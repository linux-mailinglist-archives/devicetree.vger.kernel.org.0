Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 769F152502F
	for <lists+devicetree@lfdr.de>; Thu, 12 May 2022 16:35:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343817AbiELOe7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 10:34:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355365AbiELOe4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 10:34:56 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AF4C261969
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 07:34:55 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id k2so7566907wrd.5
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 07:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=LuprtpJ06dq5t/dfZsOwpuZXBtU4EbDymnv83y3Wy+s=;
        b=o/mDg4TjUzNPpNIW/8i9F6/aeJmH/CBJyZI9jwvp5rzSJMy4IPk3YDlBdnMQfS21yy
         LqVhrTq4dmpHvq/zPNXeEUbZnyVUGaOfPo9da8zFwvgVHQwgXBZUXSKAJknTlk1LcIo8
         +SrmkV6kbr6may6Jfa24nTw90FF4PlUVBhD+zcV2hrRJ0zhGgMVub235ZtUkO4BdWj2q
         N7DFl/wV8Vr9ESOeBDmVY8140P55Y7w+pjTB41mpgH03af/4BOTqKxgqbpzJhkCV9DUJ
         XeXD29JtimX8PzskSPpGszgLM0rFXcJ+q2Uz0+Vdk079By9MrnHAbxna1B0K3X+wC6v3
         7J0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=LuprtpJ06dq5t/dfZsOwpuZXBtU4EbDymnv83y3Wy+s=;
        b=ZMN9FgCUYKTAzfQVSPKmO293NI29BIDgE2ucrUGwXXYg1+qZfB/sYO82yC1buC3OG6
         O4kOXsGyApay5dOkshONJ2/wcwEk2gbUCPw2EULitM4O4OlTjJ3kNmhzkVaxdvQ3kA1+
         yzaIwg8ZXvgHgqaFu/GwRRpX/aN0Qh1m0B9Mn1H7HnuQmtX+CFI5NEI8SkgI+Wc2Xsgb
         jIwRfsujh5PlSc/tWNs+A+eLrSxb0LkhVtu/fa72fLWBDFdgLFzFSS8OaofwRkoD9P//
         Ou8u4nYWUzOu27iRbNsSs4nA+OCp2iSGlMDbuuuVqvReTN6uX9G+UoySLLUtV7F8Yzsy
         RzaA==
X-Gm-Message-State: AOAM533hKJQyBeSz823pg+EOxkhnYJgpDG5P+7Wn6mUQNShlnfb9GNzK
        hOMadd4Y4sfmteMOzrPMA7Vc3Q==
X-Google-Smtp-Source: ABdhPJz0TUjYL2u5t8YGvfqFdxtaBsYJSXvqDpz+JJ8NWZWCyrdVUzmQm59FGzp+9PHG1T652Q7LeQ==
X-Received: by 2002:adf:fd4a:0:b0:20a:cee3:5abf with SMTP id h10-20020adffd4a000000b0020acee35abfmr28103117wrs.522.1652366094139;
        Thu, 12 May 2022 07:34:54 -0700 (PDT)
Received: from [192.168.0.161] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id o12-20020a05600c4fcc00b003942a244ec8sm3137387wmq.13.2022.05.12.07.34.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 May 2022 07:34:53 -0700 (PDT)
Message-ID: <894e5093-4ad8-dffd-c6b6-6b0a5f90814f@linaro.org>
Date:   Thu, 12 May 2022 16:34:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v4 2/2] dt-bindings: trivial-devices: Add xdp152
Content-Language: en-US
To:     Greg.Schwendimann@infineon.com, linux@roeck-us.net,
        linux-hwmon@vger.kernel.org
Cc:     robh+dt@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org
References: <052c9885e92243fb99ada46e6a263c09@infineon.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <052c9885e92243fb99ada46e6a263c09@infineon.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/05/2022 15:26, Greg.Schwendimann@infineon.com wrote:
> 
> Add Infineon Digital Multi-phase xdp152 family controllers.
> 
> Signed-off-by: Greg Schwendimann <Greg.Schwendimann@infineon.com>
> ---
>  Documentation/devicetree/bindings/trivial-devices.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
> index 550a2e5c9e05..fc2164c4d108 100644
> --- a/Documentation/devicetree/bindings/trivial-devices.yaml
> +++ b/Documentation/devicetree/bindings/trivial-devices.yaml
> @@ -143,6 +143,10 @@ properties:
>            - infineon,xdpe12254
>              # Infineon Multi-phase Digital VR Controller xdpe12284
>            - infineon,xdpe12284
> +            # Infineon Multi-phase Digital VR Controller xdpe152c4
> +          - infineon,xdpe152c4
> +            # Infineon Multi-phase Digital VR Controller xdpe15284
> +          - infineon,xdpe15284

I guess the order is rather '8' before 'c'.


Best regards,
Krzysztof
