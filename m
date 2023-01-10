Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C8AB1663D46
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 10:51:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231807AbjAJJvO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 04:51:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238301AbjAJJvG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 04:51:06 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2738AA188
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 01:51:04 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id m8-20020a05600c3b0800b003d96f801c48so11343526wms.0
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 01:51:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WrQzOa9EiO3FMfIzNKHzQ3EJooWDcByw4FpVYo3LxlU=;
        b=Pp4SFUbS129IGAbhEsVjQoc5E5ovtTjU+hsh6jYN+BKENx/6Xoeqzx3afnbfz451fL
         6L6ab9gLkQb2muLgNIxbPrpeOjIbKXQJaIJOlef9FFG8PE3ObK7GkrBbo+h2dOZnRr+J
         KkDeWrnnCFgWb30BB6JBLG1TFRG36JfGVocEMQ16qDgC94jRBHRZ2sexLDVZSMOMOsMw
         28bygG4Kv2CWUu9mvlnjPN4Tz8CMxPQ0q81BH39BYb6ifOjSjHqW2UCugtHF4tO17wEw
         hTCtVBHthIJ2OYitMOgt8xSSlSPbg5gkDNl34C8TnF6z7OyRShUccMeJhhA2SQtv/MYJ
         SCiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WrQzOa9EiO3FMfIzNKHzQ3EJooWDcByw4FpVYo3LxlU=;
        b=OeNlho/ifIvpNnySGG7Zba3qA2jIWTeYtI5yprj3EuFLeGQQC64IWF1H0+bn+xdh0h
         Ij8ePOyPAskj+aJj07/5gBoV79+60w4bDvTS9Z4/NXzqCaX75HP3Ic4jd00CWLWucP9r
         ZNL2z3y0jWbU9P3eUPgz5jUQtKEwnkpGCfiC70xvg+mxnB5tuh1i4kFG4vlxiarH4jaP
         gzCaSdnOuZDl87P3q2runOeuxuBjdaMjCMVKben03YduQF6YvnhCVdidcFuwWYLma4G/
         yM2NjFq3y0oz1yDO5v/QD7T5iOCKwCgtaw2yJVLf60t3RzD4pN/p+iCTVahsPJAgBDiE
         EFEA==
X-Gm-Message-State: AFqh2kqzEKC9KbRsi7w0uBlnmI+9CFSV543LACKig5hx/wMnYPNO3LTd
        dflW1U8RMWk6A8QaHS4mwzsy0w==
X-Google-Smtp-Source: AMrXdXtMklGbOTYDwKJIdQhxGy8wSTO8g3hNPyeO13I2MacEos0LoZRtrvbAlFBRnPJOdOR79a3eHA==
X-Received: by 2002:a05:600c:1c21:b0:3cf:9844:7b11 with SMTP id j33-20020a05600c1c2100b003cf98447b11mr58927717wms.23.1673344262653;
        Tue, 10 Jan 2023 01:51:02 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id j30-20020a05600c1c1e00b003cfa80443a0sm16128859wms.35.2023.01.10.01.51.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 01:51:02 -0800 (PST)
Message-ID: <83e7b2b0-1840-bc8b-e657-ab94975b955d@linaro.org>
Date:   Tue, 10 Jan 2023 10:51:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 5/5] MAINTAINERS: Add maintainer of GXP SROM support
Content-Language: en-US
To:     clayc@hpe.com, linux-kernel@vger.kernel.org, soc@kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        verdun@hpe.com, nick.hawkins@hpe.com, arnd@arndb.de,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux@armlinux.org.uk, olof@lixom.net
References: <20230110042533.12894-1-clayc@hpe.com>
 <20230110042533.12894-6-clayc@hpe.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230110042533.12894-6-clayc@hpe.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/01/2023 05:25, clayc@hpe.com wrote:
> From: Clay Chang <clayc@hpe.com>
> 
> Add Clay Chang as the maintainer of GXP SROM support.

Your commit is not doing it. Nope. Either make proper entry matching
this commit msg or make commit msg reflecting truth.
> 
> Signed-off-by: Clay Chang <clayc@hpe.com>
> ---
>  MAINTAINERS | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index ea941dc469fa..164571ac1cc5 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -2279,14 +2279,22 @@ F:	arch/arm/mach-sa1100/jornada720.c
>  ARM/HPE GXP ARCHITECTURE
>  M:	Jean-Marie Verdun <verdun@hpe.com>
>  M:	Nick Hawkins <nick.hawkins@hpe.com>
> +M:	Clay Chang <clayc@hpe.com>


Best regards,
Krzysztof

