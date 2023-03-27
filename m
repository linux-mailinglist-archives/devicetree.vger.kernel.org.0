Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4637B6CAA37
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 18:16:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233068AbjC0QQR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 12:16:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229804AbjC0QQM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 12:16:12 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98EA35B91
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 09:15:52 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id w9so38501111edc.3
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 09:15:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679933751;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lcnz9uD6kVVYcsrNu5BKDBQufDi73RMrxZYxEDLPtoQ=;
        b=aMAGTZ171GD6z2MDT0itJEaqxVe25urwcNMTgIVaHZYAvIl/04fU3fVpvZ7GLuBNPP
         O1NTz8Zp/6PcwyCaijn8fDucXHFaHbOLzZZfD/cAoqy0hP7Z55wjEwU9d+/minaKni+Q
         Jpe6gyeUlhu9Z1uAWpIvjJlse7dK/YhH7tbWLVWFx/fiE5IxO1IXFNrCotkJp7mD+4tX
         gHOi8FKmD61etk+oP64GrZBXibUenetUh0WoVhUgBIWkeJqv1dWqdrm1+lv6LbjEQEaq
         qo/mYE2XbUs2++UdNGZNicf/KI1KU2xxkDCSjC782Ftj6VZuvRGIvu6XkMRIVSJpQ6aL
         ZWNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679933751;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lcnz9uD6kVVYcsrNu5BKDBQufDi73RMrxZYxEDLPtoQ=;
        b=kCKdapAWF5R5vFMmZ4ZRmhROFaDM6iaWmttJZOJtIU8hBoakXoos1Qe9AVvgtQabbg
         rsJocnAlcUYfhR2E5g13/ZjQpaDB3qF7/6DEt3UQEHjFkqkDYB93fWGcTYGVaFIaFE6l
         lIswVccqvRay8vdsQI4sH6F2sQXYJ0f6Gvfp7y3GHwzr3Y/fP4sny/XpyENzAa1xhWkl
         uHi8bzCRdKogiCNUs7S0kQD7Nc71dg4NY7H4m2tXbouIRFMpnFN2xOf8UOEYQzxOmAnR
         7Zxml3uZyRgwoBqjgaynP0rRxQowsOyEvir12rxIiETaZNP7VmzQLWoOt9XU3/+Owqw1
         gFGw==
X-Gm-Message-State: AAQBX9ci1iBPbIi6AcGCtEfwVkIV8WxwsCEV88JIAKwpgnILYOxWx9zK
        JLVUJ54rAtmEJwigLEPYKT19zQ==
X-Google-Smtp-Source: AKy350aywImtc66UcCGfYA1bloroePfqv/MskbtRkXyCkarTePh/XoTk0a1nmDA4xqwUdjFPfDqkoA==
X-Received: by 2002:a17:907:6d1b:b0:93d:e450:f53b with SMTP id sa27-20020a1709076d1b00b0093de450f53bmr15891040ejc.72.1679933751062;
        Mon, 27 Mar 2023 09:15:51 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:581e:789c:7616:5ee? ([2a02:810d:15c0:828:581e:789c:7616:5ee])
        by smtp.gmail.com with ESMTPSA id lm15-20020a170906980f00b008c76facbbf7sm14340794ejb.171.2023.03.27.09.15.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 09:15:50 -0700 (PDT)
Message-ID: <b42c69d9-d91a-dc7c-165d-09bf689370c2@linaro.org>
Date:   Mon, 27 Mar 2023 18:15:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] arm64: dts: rockchip: Add clk_rtc_32k to Anbernic xx3
 Devices
Content-Language: en-US
To:     Chris Morgan <macroalpha82@gmail.com>,
        linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, jonas@kwiboo.se,
        maccraft123mc@gmail.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
References: <20230327153547.821822-1-macroalpha82@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230327153547.821822-1-macroalpha82@gmail.com>
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

On 27/03/2023 17:35, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> For the Anbernic devices to display properly, we need to specify the
> clock frequency of the PLL_VPLL. Adding the parent clock in the
> rk356x.dtsi requires us to update our clock definitions to accomplish
> this.
> 
> Fixes: 64b69474edf3 ("arm64: dts: rockchip: assign rate to clk_rtc_32k on rk356x")
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

No line breaks between tags.

Best regards,
Krzysztof

