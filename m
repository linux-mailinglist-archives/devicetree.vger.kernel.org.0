Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4ACE66D9EB9
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 19:27:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240008AbjDFR1S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 13:27:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240031AbjDFR1P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 13:27:15 -0400
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67F03902B
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 10:26:56 -0700 (PDT)
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-93434918b67so111411166b.0
        for <devicetree@vger.kernel.org>; Thu, 06 Apr 2023 10:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680801708;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=145yGzODgxY+rJbwAEpe0vSJYcWx7FkVo4x57vw/2Ds=;
        b=J3QonWmOAxHMqJ1EOSUj4Rs4updaQcuUihcgcTFNhvmsCy6vBtmalIIUSokDtx0F3o
         6nHdCIpzrLSH+VxgApjJ8P2UKckkNOkxX/fwqeuvB1cGopdBPEPwOnwC0KJ3GsZyHB2W
         lszpadIv4hDgi03TskBGJpV3t+bDZsTEL0pGZgx1pl2e+DHeJwKaUvIFHVjPHSxHNkqP
         jZtZPk3HiuFjSs3/9EMd2Q1h/dPqJqn3uopp1XusIxh+cfVVyR84rP6A1HeFr3Huklb5
         JjnpiK3qXY8wlTF4ziKCllgSkJV7EMH3nOtGeRVKFnwORSESnC2LfbhneG+9pO1Bz2WS
         sPmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680801708;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=145yGzODgxY+rJbwAEpe0vSJYcWx7FkVo4x57vw/2Ds=;
        b=GJgsUSkUQFqYH20wv35tZ6DDjtQQCGcRzPVUaE0Ghkzjrv6dsk1DmM0zOsTFosO1+j
         e8nGNntvRVZ2T+QPWVSy7L8AkBR0WGsppEJlncTfDzi82FyPfG37Fr3/lUBOPUm4RdrU
         XiwZUVt1EgQ0VU8Im1suqMxeYc8pAvdwbEzXBJT1AYdVuCqBKQclA2jJug72L+q6UxTl
         lr1Iuo1g5gnhwrxm6hPUnRD5GY9TA+dTr/2kJe/n+R6VF/O2bC7ChZOnZ8PGHuPqeziB
         1etsea0zunVaTGXrbzRo0nLDNWX7evHlF/05dCStG2ubj9qr1fO9xxLb6jbkNgkJp3NX
         Z73w==
X-Gm-Message-State: AAQBX9eFrs3JydyY6mosbgUToXIV2vOQYY/9yaJvE5zTjuYiZc+XfIJw
        8aaIvbrHC4mh3RtTcmt1NlaTNw==
X-Google-Smtp-Source: AKy350YRBx7KoZyPvNoeZ4w8rpaupgS8OEN5BdZpbF0ZP0CslF/6SZi49GUb5ys+HM8ofDMXceerJw==
X-Received: by 2002:a05:6402:344:b0:502:246e:6739 with SMTP id r4-20020a056402034400b00502246e6739mr235993edw.27.1680801707878;
        Thu, 06 Apr 2023 10:21:47 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed? ([2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed])
        by smtp.gmail.com with ESMTPSA id jr3-20020a170906a98300b00933356c681esm1046545ejb.150.2023.04.06.10.21.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Apr 2023 10:21:47 -0700 (PDT)
Message-ID: <c79ca1c4-d7d7-50f5-ee2c-1c1ff459c429@linaro.org>
Date:   Thu, 6 Apr 2023 19:21:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/5] dt-bindings: Add Blaize vendor prefix
Content-Language: en-US
To:     Niko Pasaloukos <nikolaos.pasaloukos@blaize.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Cc:     "soc@kernel.org" <soc@kernel.org>,
        "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "olof@lixom.net" <olof@lixom.net>,
        "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
        "sboyd@kernel.org" <sboyd@kernel.org>,
        James Cowgill <james.cowgill@blaize.com>,
        Matt Redfearn <matthew.redfearn@blaize.com>,
        Neil Jones <neil.jones@blaize.com>
References: <20230406102149.729726-1-nikolaos.pasaloukos@blaize.com>
 <20230406102149.729726-2-nikolaos.pasaloukos@blaize.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230406102149.729726-2-nikolaos.pasaloukos@blaize.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/04/2023 12:22, Niko Pasaloukos wrote:
> Blaize, Inc. (www.blaize.com) is a SoC manufacturer with integrated
> programmable Graph-Streaming-Processors for AI and ML.
> 
> Co-developed-by: James Cowgill <james.cowgill@blaize.com>
> Signed-off-by: James Cowgill <james.cowgill@blaize.com>
> Co-developed-by: Matt Redfearn <matt.redfearn@blaize.com>
> Signed-off-by: Matt Redfearn <matt.redfearn@blaize.com>
> Co-developed-by: Neil Jones <neil.jones@blaize.com>
> Signed-off-by: Neil Jones <neil.jones@blaize.com>
> Signed-off-by: Nikolaos Pasaloukos <nikolaos.pasaloukos@blaize.com>

Four people were working on one pattern in vendor prefixes? I have
doubts, because this is very trivial patch.



Best regards,
Krzysztof

