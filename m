Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC4C758D80E
	for <lists+devicetree@lfdr.de>; Tue,  9 Aug 2022 13:31:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232749AbiHILbg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Aug 2022 07:31:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241874AbiHILbc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Aug 2022 07:31:32 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3AB411A37
        for <devicetree@vger.kernel.org>; Tue,  9 Aug 2022 04:31:30 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id l21so1200074ljj.2
        for <devicetree@vger.kernel.org>; Tue, 09 Aug 2022 04:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Xb312PhkB7YHxkGgBMD9Hd3iz4ffA4SEHUAo6HB/S+U=;
        b=dIq5ojBaaimvdme0pZvsU8xPrCKLNL0+SW3jmtRxipsdVvPR5tNbP3tJnqK5opmM9S
         6piOkZ5syV68RtIQlm1MgDu4GT33R4rEu15XjzD+XTI7M8LgI08gFgU6uvirdfUSvYkG
         0nibekfBzqTCU65K96/U1Hbgz0yPkB8VLqvp8RLnKN6NJ6XGLuvniIXLxrv5DC9L+amH
         USMgw8X3h0179ir2scyKCTvPiuqZTzUZ+Lzn+iWHpWNYf9yooLb/yDq+L8Zc2YG5rRz+
         vi917ZEL5c3B/EurcAgj6Q/BxAgM56ANSllJ0kVhQ4TPLD4+S7jIcpVXi3v8YkohCxsa
         A3wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Xb312PhkB7YHxkGgBMD9Hd3iz4ffA4SEHUAo6HB/S+U=;
        b=2WK+eb03yLAxUvpsTgsfVY1Vc8HRomod+/sm9yzRJgMObLzDT61zD/WiOb7mcPu8vt
         isRcYI4nRsYD4dvyDtSqNOAspHZUjmXLdHBIKkYknlct2yfLwfYub+rWWUx1nsaGW04s
         hldmTKanIeusosX6qB5AhC4Oxp/IARWaqzPb/giadV4A7SMmohEXhWaTiNShkyPBsTP8
         rhqZmapEROaPZqGoM//yEjN625bHKUuFDKtNENmgxWO5NvAnLMlp/4GNBLZhrbG12Rgx
         YAa1tFRhFCAjpIDWTBQrct4pAi/WnEH02jrzGKKEI+jd91NMMb9bYcTc8aNpSE/Hd9q2
         Gx+A==
X-Gm-Message-State: ACgBeo3UPye6rGyk+JQIzBtLXY1jfaAO8ZsF7bQanRxXCIcH/qwzuNwb
        JrtAmL7z6cG4pbDS666UOo7ulQ==
X-Google-Smtp-Source: AA6agR5gwuiC/4kIkC3bJMYhMSbSSdvyfE+myCW+6MmOnCCX1bW7ArSs7UKo3B+1+qDdKjhdMj5KBA==
X-Received: by 2002:a2e:bf01:0:b0:25f:df1a:f39d with SMTP id c1-20020a2ebf01000000b0025fdf1af39dmr2845463ljr.365.1660044689140;
        Tue, 09 Aug 2022 04:31:29 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id f3-20020a05651232c300b0048af464559esm1724043lfg.293.2022.08.09.04.31.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Aug 2022 04:31:28 -0700 (PDT)
Message-ID: <1585ea75-9454-acdc-6232-25c951563107@linaro.org>
Date:   Tue, 9 Aug 2022 14:31:27 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 1/2] dt-bindings: hwmon: sparx5: use correct clock
Content-Language: en-US
To:     Robert Marko <robert.marko@sartura.hr>, jdelvare@suse.com,
        linux@roeck-us.net, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, lars.povlsen@microchip.com,
        Steen.Hegelund@microchip.com, UNGLinuxDriver@microchip.com,
        linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     luka.perkov@sartura.hr
References: <20220809112209.241045-1-robert.marko@sartura.hr>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220809112209.241045-1-robert.marko@sartura.hr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/08/2022 14:22, Robert Marko wrote:
> SparX-5 temperature sensor uses system reference clock and not the AHB bus
> clock as indicated by the register information [1].
> 
> So, correct the clock description as well the included example.
> 
> [1] https://microchip-ung.github.io/sparx-5_reginfo/reginfo_sparx-5.html?select=hsiowrap,temp_sensor,temp_sensor_cfg,clk_cycles_1us
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
