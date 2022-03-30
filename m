Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1EE1E4EBBFA
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 09:43:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238409AbiC3Ho7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 03:44:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243947AbiC3Hom (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 03:44:42 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55F534EA21
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 00:42:29 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id bh17so248928ejb.8
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 00:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=/nvEY4o23ZAd6h7Bqvn06Y87JESTCsqHFnOMDqkQTcY=;
        b=NvMIiROYJ2bGGcDv/6sMKVJgsaDK4ZAg2xpeKg1rILLMDMuy+MHK93+cKc2gu2q3Vc
         VWq0DXywrIFzyj9tf/RFFRpNMvSlOtvUo+5/ZRpZr/28Bvaz2FCB+HhmLiiEs+FrsoUH
         e3e6VFwu2axP+aT0GSqK93X7SvYcABhMUY5/eLvX/fLeQtXtoQqzd68YrQt5/DUXk2WE
         GDV7nAkyjyLuNu+G4RYv11a/TSUgrGQSZQL7PR/+OXnHvaypD04LtK19M3LALR9WBPFh
         /fXs5CSY9M8CqiKCvgTJLos69u5K+4F+yM561jukONwYBbC0YKH2n0NK7LHZp1YWpmBO
         ESeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=/nvEY4o23ZAd6h7Bqvn06Y87JESTCsqHFnOMDqkQTcY=;
        b=2czNZyHvnx57GRcmK/ZbDdZtQexOqSDfQWuYZDCjtkepVXjCTJryOdRZCG/jXVmbPa
         aflp5mMFPOM4/alkIbUAcMy3UNNcXvCYsKQIX5ALt1Os5qMLoy8JvYFRFKCzD+E+FNHf
         wTo393KS1Z65YovZY23rYlm/ALhaLvdb3rDSMNphHJPTmh+bC40nloceFB3sHBausszY
         A3gduzOfv089GpHnCejHt0ktS2n6daElu4Fho4nPWfKfkKYorwgMeh4ymll9sKTL3VXw
         6LQdnqeUzayQGewpxARoScVvjdwddJEzSqmjnX9ucpaAgBIB6FInktMEgbHiwQVSx6kl
         J7cg==
X-Gm-Message-State: AOAM531GTqaG4x4o09JvUE+X9A1hs1Tvp89qfKAxT1l6V9yQgjA4pM+P
        7Wxsc71KRYQdmy/7B+1jAeWMLg==
X-Google-Smtp-Source: ABdhPJx3GywgVGFWIcAlvTSSgfyyaeFaHXDoy/jgiD9q5cvU7vNfT/5hLcpWToyDKR0imyn42qnkXQ==
X-Received: by 2002:a17:906:3918:b0:6e0:5bbd:bf33 with SMTP id f24-20020a170906391800b006e05bbdbf33mr37918017eje.764.1648626147710;
        Wed, 30 Mar 2022 00:42:27 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id d24-20020a1709067a1800b006e021f4c1c3sm7911223ejo.166.2022.03.30.00.42.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Mar 2022 00:42:27 -0700 (PDT)
Message-ID: <d9d01623-d90c-fa3c-3759-56b7a80e3a40@linaro.org>
Date:   Wed, 30 Mar 2022 09:42:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v3 2/2] dw9807-vcm: Add "dongwoon,dw9807" compatible
 string
Content-Language: en-US
To:     Sakari Ailus <sakari.ailus@linux.intel.com>,
        linux-media@vger.kernel.org
Cc:     devicetree@vger.kernel.org, robh@kernel.org
References: <20220330073341.588550-1-sakari.ailus@linux.intel.com>
 <20220330073341.588550-3-sakari.ailus@linux.intel.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220330073341.588550-3-sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/03/2022 09:33, Sakari Ailus wrote:
> There is firmware out there that uses "dongwoon,dw9807" compatible string
> that never made it to upstream as-is. Add it to the driver to make it load
> on such systems.
> 
> The chip also has an EEPROM part which is AT24 compatible (for reading
> purposes) on a separate I²C address. Adding possible support for this in
> the future is not affected by this change.
> 
> Signed-off-by: Sakari Ailus <sakari.ailus@linux.intel.com>
> ---
>  drivers/media/i2c/dw9807-vcm.c | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof
