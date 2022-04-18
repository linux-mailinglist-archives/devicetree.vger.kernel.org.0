Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA956504FC3
	for <lists+devicetree@lfdr.de>; Mon, 18 Apr 2022 14:12:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237456AbiDRMOU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Apr 2022 08:14:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238043AbiDRMOR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Apr 2022 08:14:17 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 697E41A828
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 05:11:38 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id ks6so26542357ejb.1
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 05:11:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=+Nbh/Prc/5H/cORCat6vWbX6y9/y12F3+R8EiMn4z8U=;
        b=Dm4XMjPYCtdWA3+pMzuuvBgBW44TWQH3InrfQd1a0hq7Ob49UlvwiCHAN4ZWvJ2y2q
         +yzvclbmmfLi8ARs9lokw+4HyAR4OfObvE+VJm1/QHMoG8/6c73qAkgTz3aC8v29MHz7
         qVaiWh5oclYzdnwqFl/v0Kdtyjc33wAKTtZBwPgH+dP75Zei0myGjOASKfxImNlyCHXi
         x6yFw94J3CaPW2OBnqLltUmOjDHvVj9PyIdhil2JglCu/pso0MDmodEaDLL0QCVnq2AB
         NZMS5jHhb5h4lNtVobaLz4MrJm3uiX64/3mkg2BeGQG7KiQC50PvFPOt3j1FcgFhI71w
         ur7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=+Nbh/Prc/5H/cORCat6vWbX6y9/y12F3+R8EiMn4z8U=;
        b=ESXxo8j1ju1eYtIjyDv6wHhD5Dwkke42VMXz0Ohi2fh+ZBw+d3l5mVtkBm+R1Z7aLB
         vw2zRcFpB9jYWm78jIQAamlqyXblE7ueqwyhKQxEDpyUj1WrjagkxjwRWC2y3mVoH7/c
         lGxDuudE/udD86nOtUywlu6FlKlS+Eaprip+Ko4fi/7zIZCEyPlrdn7GChc7hY8xPj83
         GEIEaGDfOKlZAizC35iNrxAOj3/pxEipQxOrDN7/Iz6yeiEdgREwCyr+2uqJRVd/4DmA
         9kP6xGCU/D+J/JFtR7pXj3Ho+mc4PmjBGhLjcjNGBzMILrrafz4D/p26rgldvbM+8IJR
         mx0Q==
X-Gm-Message-State: AOAM533TaKRLaPFGM2XnnaAySa63YwDcGIFAmm++9C0XxNgQvoE6JgpO
        VysJWZYZu5caslV03qMIFT04Dg==
X-Google-Smtp-Source: ABdhPJxwyW9e6YDW1vaDtAloi25ghlPcrr65ZHDnvPjhycYnJSWeOGX1Kex17Bi6It3cYwT7mCnGZA==
X-Received: by 2002:a17:907:60c9:b0:6e8:ae9e:d052 with SMTP id hv9-20020a17090760c900b006e8ae9ed052mr8666429ejc.628.1650283896988;
        Mon, 18 Apr 2022 05:11:36 -0700 (PDT)
Received: from [192.168.0.217] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id h9-20020aa7c949000000b0041b4d8ae50csm6861903edt.34.2022.04.18.05.11.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Apr 2022 05:11:36 -0700 (PDT)
Message-ID: <fd9316a6-7df6-e1fa-50dc-ff50934afb5c@linaro.org>
Date:   Mon, 18 Apr 2022 14:11:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v3 5/5] dt-bindings: arm: Add initial bindings for Nuvoton
 Platform
Content-Language: en-US
To:     Jacky Huang <ychuang3@nuvoton.com>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, ychuang570808@gmail.com
Cc:     robh+dt@kernel.org, sboyd@kernel.org, krzk+dt@kernel.org,
        arnd@arndb.de, olof@lixom.net, will@kernel.org, soc@kernel.org,
        cfli0@nuvoton.com
References: <20220418082738.11301-1-ychuang3@nuvoton.com>
 <20220418082738.11301-6-ychuang3@nuvoton.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220418082738.11301-6-ychuang3@nuvoton.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/04/2022 10:27, Jacky Huang wrote:
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    items:
> +      - enum:
> +          - nuvoton,ma35d1
> +          - nuvoton,ma35d1-evb
> +          - nuvoton,ma35d1-iot
> +          - nuvoton,ma35d1-som512
> +          - nuvoton,ma35d1-som1g

This does not match your DTS and does not look reasonable (SoC
compatible should not be part of this enum). Check some other board
bindings for examples.


Best regards,
Krzysztof
