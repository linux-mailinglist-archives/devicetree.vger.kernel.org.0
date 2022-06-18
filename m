Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A726550194
	for <lists+devicetree@lfdr.de>; Sat, 18 Jun 2022 03:10:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236308AbiFRBKq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Jun 2022 21:10:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230093AbiFRBKp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Jun 2022 21:10:45 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F9E26AA60
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 18:10:45 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id f16so4184376pjj.1
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 18:10:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=dQuvC5DXoLIzOG6p5c0AiJy8toyCxgiZmg25yb2lqqA=;
        b=Dggm8Dm7zBvjoHbHSd6HDHMHUF6LdYHyPmcWxireNz1uw7Hs4z7s1iE4Jd7VfaPkBp
         2pf6RFwnr2j8jmyW8wBroPSztuXf2qoYdrt2K4ug4kKs5y+RRivqfsSo4abxzb9Bi4PU
         qfJZZc3bFXT/rv3TL3Wciem4qUvbVmTwo/mSFKpzybjompzrGFnm786lz3eu/KG8jj9p
         RZRhzkK7eGPZpUkOgxgD9XGZvIKqFiZFUiKPWlQAxAbiacG5Uo5hkIKWhIp9BhDbXWxH
         49hkWN/IXhTobkVdQny+UmzbRxXejdUB/PKTGq2Gh4Wg6gosXssn7JoVsPukmT09N1MK
         th3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=dQuvC5DXoLIzOG6p5c0AiJy8toyCxgiZmg25yb2lqqA=;
        b=3hDkFkyXBG0R9/WcibJPnC662C1ho72FsG85UlWoo9p/UdRkoAnko+QgcideA56I//
         RGrG3vqQ97GIbp6BBOZ90t3MVTbmGK6M2BL4lRAG5DMIcLne3jMQHU/WrHdOkfjmokUr
         X9Ni0oR6yZdT2Tzeq/1cBdJj7oixhmrcpYYCQOD7WD1b3//pfjV+aooNG5k0Gs77us8d
         NFPY55Hd9IdHfnJc5617v1da76C479LjjphIN5JPKFyYI1PzlWVYqEH31VvQm3mA7etK
         pZR2cpZ/l58ACrDMpvvY/t8Ej3cYx8q2WiuboeGHROGjKRVr7FX+mAgWymB/WZF7SVhJ
         BJuA==
X-Gm-Message-State: AJIora8FSbk6vxOLmvrnI1fXUlR7F1j4n2RdPz9N6cciT85Eb+idJoNv
        LwmaBWu2GN1xceHzOGv8qkJ3+A==
X-Google-Smtp-Source: AGRyM1u9LqjXDmgwiW6Uhh/oehvTHpB1YJaHyxWM3b7bhDx1EWI5GnduFNsMOaM9cY2RQJ/LBNTjAw==
X-Received: by 2002:a17:902:d583:b0:167:6e70:7953 with SMTP id k3-20020a170902d58300b001676e707953mr12392759plh.168.1655514644605;
        Fri, 17 Jun 2022 18:10:44 -0700 (PDT)
Received: from [172.31.235.92] ([216.9.110.6])
        by smtp.gmail.com with ESMTPSA id i3-20020a63a843000000b003fd7e217686sm4411610pgp.57.2022.06.17.18.10.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jun 2022 18:10:44 -0700 (PDT)
Message-ID: <a8d009b1-7535-c506-0c92-c917ed5d42c6@linaro.org>
Date:   Fri, 17 Jun 2022 18:10:40 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [RESEND PATCH v2 1/9] dt-bindings: thermal: Define trips node in
 $defs
Content-Language: en-US
To:     Francesco Dolcini <francesco.dolcini@toradex.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Marco Felsch <m.felsch@pengutronix.de>,
        Anson Huang <Anson.Huang@nxp.com>
Cc:     Amit Kucheria <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-arm-kernel@lists.infradead.org
References: <20220617071411.187542-1-francesco.dolcini@toradex.com>
 <20220617071411.187542-2-francesco.dolcini@toradex.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220617071411.187542-2-francesco.dolcini@toradex.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/06/2022 00:14, Francesco Dolcini wrote:
> Move `trips` definition to `#/$defs/trips-base` and just reference it
> from the trips node. This allows to easily re-use this binding from
> another binding file.
> 
> No functional changes expected.
> 
> Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
> ---
> v2: no changes
> ---
>  .../bindings/thermal/thermal-zones.yaml       | 130 +++++++++---------
>  1 file changed, 67 insertions(+), 63 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/thermal/thermal-zones.yaml b/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
> index 2d34f3ccb257..ba84233d20b7 100644
> --- a/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
> +++ b/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
> @@ -10,6 +10,72 @@ title: Thermal zone binding
>  maintainers:
>    - Amit Kucheria <amitk@kernel.org>
>  
> +$defs:

Commented on the original v2.

Best regards,
Krzysztof
