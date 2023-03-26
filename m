Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 465966C95BE
	for <lists+devicetree@lfdr.de>; Sun, 26 Mar 2023 16:47:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231279AbjCZOrB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Mar 2023 10:47:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229640AbjCZOrA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Mar 2023 10:47:00 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82E0D46A3
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 07:46:59 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id ew6so25769905edb.7
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 07:46:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679842018;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HFfrjCvrpWX6CnF+HF1tJ28DSs/1vxlz9uEimUmt+gQ=;
        b=Ntvb7K1nveWCIADlOJbiB8IYh3RmF/JSbKaJlmFXBxW54uMgTPUKheiECZTWdE+nLv
         c4jWoOMHP4dNki94qSmlfEPmCdXfQNYBLGMArFXA/BtrPnwy6x1NOdQ5Yyh5JWfjzjct
         y7L42zXKiid6qLsMe1VgAR4oJ7hNRq+lwHZ9j2FWwSoHbcxoy+rk+jnffT2QhhPG1OsL
         3o1T9gwji6ZdIIxItLYzFZ1sD388Rxr/mTpifTHVyv/Hz7CORTc5x1jZP1Dx+Qs47BRd
         dowz2z9T2mb/x7eRNggOvGRvBVLdVf+l+qlTqXmetbotX19ftL4r1gc0fho3Sn7lQ85l
         kdZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679842018;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HFfrjCvrpWX6CnF+HF1tJ28DSs/1vxlz9uEimUmt+gQ=;
        b=fAU/D+dwBaKm/YQhfeKNMta4lrQ7JcNDo2EmjK7Dqdl7+EGEqfEVhCKimwj+Vk3iVD
         8oNbvksOZkT6VsMv/+YWNATj2rL7poxD1phst2Z4wUAMwTo9gknYFETAvaVlp79+cys3
         p6T4dF1miqPWU9avB/pQEcZAihMO+tJz2hMZb1AiJX//sdV94TwtEjsUIcEockzeKMP5
         ceizHhXJLfdxW3du59T8JMov2DLG687tbsZv8IX0RtAOJmuBFr/oollF+KH6i2UpviJn
         wJE1U/+9sBJB8apfbcdFgNUpbeZfTAf3/oT/io1T4oSdnZ4oliEK/DkmNyarQmwHFs8r
         9dDw==
X-Gm-Message-State: AAQBX9fxzoC9Y/Huu2XB6YFRB2olpmVR7iHkydFMgH67HP1hHegPB8nj
        RGywDitBY4VEkTCjoiW+E32iVQ==
X-Google-Smtp-Source: AKy350ZQ1GaV8yhLr5q+kh5hsJpJhRqSpymNZuY/9YV2yeQJgeVnFVWC6RmHZCX03m93Hnyu6YMN4g==
X-Received: by 2002:a17:906:6702:b0:878:72f7:bd99 with SMTP id a2-20020a170906670200b0087872f7bd99mr9000974ejp.6.1679842018063;
        Sun, 26 Mar 2023 07:46:58 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:eca3:3b8f:823b:2669? ([2a02:810d:15c0:828:eca3:3b8f:823b:2669])
        by smtp.gmail.com with ESMTPSA id n3-20020a170906088300b009327ed171f2sm12237730eje.129.2023.03.26.07.46.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Mar 2023 07:46:57 -0700 (PDT)
Message-ID: <324e710d-de76-23dc-de4b-d34e32e63aca@linaro.org>
Date:   Sun, 26 Mar 2023 16:46:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v3] ASoC: dt-bindings: alc5632: Convert to dtschema
To:     Saalim Quadri <danascape@gmail.com>
Cc:     alsa-devel@alsa-project.org, broonie@kernel.org,
        daniel.baluta@nxp.com, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, lgirdwood@gmail.com,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org
References: <20230323130511.16367-1-danascape@gmail.com>
 <20230326131039.19190-1-danascape@gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230326131039.19190-1-danascape@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/03/2023 15:10, Saalim Quadri wrote:
> Convert the ALC5632 audio codec bindings to DT schema.

You got comment about threading. Do not ignore it.

> 
> Signed-off-by: Saalim Quadri <danascape@gmail.com>
> ---

Where is the changelog? What happened here?

>  .../devicetree/bindings/sound/alc5632.txt     | 43 -------------


> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        alc5632: codec@1a {

No improvements here.

> +            compatible = "realtek,alc5632";
> +            reg = <0x1a>;
> +            gpio-controller;
> +            #gpio-cells = <2>;
> +        };
> +    };

Best regards,
Krzysztof

