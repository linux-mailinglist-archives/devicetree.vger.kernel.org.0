Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 45E7E583A38
	for <lists+devicetree@lfdr.de>; Thu, 28 Jul 2022 10:19:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235092AbiG1ITD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Jul 2022 04:19:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234950AbiG1ITC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Jul 2022 04:19:02 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A89F761DA9
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 01:19:00 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id r14so1177796ljp.2
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 01:19:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=aXKmRuqkXHotqonWYfs2L/PCZMNtvl3EGlRN1rI7LFg=;
        b=JGxCq7NhD4NYoy3DxtrOst0byfsqR0WKi2g+wM2gQZRVGsSYjp5iMY8xZ7xxRG1LvB
         f/ulN2lxbQKXrHzaf8XUkhN8bX0Hkso9s/LNea2EjuVt9hQXOu0PDn5SMBA53DgVKme2
         wd/G0u4ykd+PfcOBWcW+JGOmS3mePdncdfzdnGJAbcZw7cnw5wNcHqVEDmzLX8uzxYVO
         yKbj9LLdMDVjf4bNS/PBW/u4WFYss4ZVImQF5rXS8aNDwfGb1gdnd6xufxTJZJbbeKoA
         hA/+r8Hck/uzp/Cd3gj6bWvhMIJN8KgC/Nfp2HOAG+G5k8k4sf7ZRYy5cWff2ljiMa79
         WpkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=aXKmRuqkXHotqonWYfs2L/PCZMNtvl3EGlRN1rI7LFg=;
        b=lEbsH3Q5F/4LVk8oAryrfdzzEabFh56GLDvK/BMs5r6OWo2o7TV7UDYB+6oU1zFyR6
         ErKCgECAbv2acuvRGiKvN7Ja9RXsNALEUG1+CwZBfwtMW1yIwGQz2vfqTHrsY7rOSRIY
         j50J8zOAv8Au1Abn+AH0qfaeSxctewRP4klM4/H1L13cwWoOgwcY0y+KSHJ+3LtzKr1x
         F+24L3BEY5CZoA9rNNipk3UJvb/q39go0mPRyb+dNRpAhUdK07Iq209H6PeDrnzGOGVm
         jIHF37E2q8UTLiS6as/pQNxIZ7v9XKNivdsdw2IZGhxfhZXgQLeoe0dnCBjWTjLa2zvg
         104w==
X-Gm-Message-State: AJIora8BP9faz0tZ0nE88LMfMk2OZzQW7/XFJnsT6BsXTM++LZRfuNWZ
        aEqTLR5TQwisHD7vDxsQOjelUQ==
X-Google-Smtp-Source: AGRyM1uVhea3xWcNM6QdeZ88fAnaalwXRMSzB9MOZg98RCK281xh8cHY9k0H/dlQwdFkTSnHqGo3Gg==
X-Received: by 2002:a05:651c:38e:b0:25d:87b1:b50a with SMTP id e14-20020a05651c038e00b0025d87b1b50amr9478648ljp.168.1658996338685;
        Thu, 28 Jul 2022 01:18:58 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id g29-20020a0565123b9d00b00489cc0dd59esm86551lfv.90.2022.07.28.01.18.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jul 2022 01:18:58 -0700 (PDT)
Message-ID: <2df77e10-a052-74fd-1f30-620a51fb88cd@linaro.org>
Date:   Thu, 28 Jul 2022 10:18:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 3/6] dt-bindings: clock: exynosautov9: add schema for
 cmu_fsys0/1
Content-Language: en-US
To:     Chanho Park <chanho61.park@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Sam Protsenko <semen.protsenko@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220727060146.9228-1-chanho61.park@samsung.com>
 <CGME20220727060612epcas2p4b844ea92fe11c302337a320b222947d3@epcas2p4.samsung.com>
 <20220727060146.9228-4-chanho61.park@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220727060146.9228-4-chanho61.park@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/07/2022 08:01, Chanho Park wrote:
> Add "samsung,exynosautov9-cmu-fsys0/1" compatibles to illustrate
> cmu_fsys0 and fsys1 for Exynos Auto v9 SoC.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
