Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2788C63EDAB
	for <lists+devicetree@lfdr.de>; Thu,  1 Dec 2022 11:26:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229990AbiLAK0l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 05:26:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229565AbiLAK0T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 05:26:19 -0500
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0930B9FAAD
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 02:26:10 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id z24so1364986ljn.4
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 02:26:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MYT2nq0QXSxRz64AN42vH74ETqWDNSsFMko9zkH39vk=;
        b=A2j26QK6XZeEZRd1pVoVNtq3AvjNoVgfwfmhzFjUMB5j+Zdnccpi3N8UGw2F9b7gu7
         LgWmZdSJ3SVsAtjqXbiL+GjUX1vLBxxBV95su/i3xNZBf0NZV2lHSs3FbWLclDmnzXIE
         9WBGBhY1KveAhn71WSIBt98bDmYZ7iIRDoiYFNftcD9yQVWcHPMrbEe1cLNjaCTgNU7U
         3ulcTG5mxZdipYHysym39htN68RXaanTR3fQyZa3Lnv4rcUm8dx7yQMmzNzRexFHM3p5
         qowj7BH9Xh3fJPPyCmmTwpmEJj9y0DocDG3MLBTmQ8h78yKK3+EF+g61O6nWGdY+/gg2
         HleA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MYT2nq0QXSxRz64AN42vH74ETqWDNSsFMko9zkH39vk=;
        b=vzJkE+oIdUvShE4umNv9tTazEQN5GgUTVLOy5P6n5a6wS4k8AUZ18j7dyn5Wk0NVSh
         +6X9B1UAt7UL3ExtE6yIu/pgv9B+C1GA0MqArhH+yIF2kZyLG7MnwcY3TpuEctCTP5cK
         PlSbHMFg3YCVTeC9mrk5SbIK3v20VBjlxSbOfp+zBW0k360ghqWJqXAVAQBg6q9KAxj8
         eUIeZBF40UqyB2QRI+YrJ5ROK57Jy7VbR9H4C+cAhW00pqdXyDns2bK376TRmVWkqp5F
         kxuEQRiS0MYzhKdP9aN37LsmaF4R0hmsGernLSxYW0IWuGFnEUuy4ks4SMukuVcp/MBr
         LsAg==
X-Gm-Message-State: ANoB5pmNzvATIrAS/6k3Y36bnvIpW+QLBSPhtekIoQyPp2Cvni4vTBIf
        P6eua+BeCtBZuCskFDdlq/Y3Rg==
X-Google-Smtp-Source: AA0mqf5Qinw7ldn269i13qHU7N4BlOct4Q02ZBOfbWmzYzZyjReCeMq8uWrycdBhL3R5L2q85NNOrg==
X-Received: by 2002:a2e:a5c4:0:b0:277:c03:a7ed with SMTP id n4-20020a2ea5c4000000b002770c03a7edmr20474278ljp.283.1669890368405;
        Thu, 01 Dec 2022 02:26:08 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id c2-20020a056512324200b004b5478d8222sm74420lfr.184.2022.12.01.02.26.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Dec 2022 02:26:06 -0800 (PST)
Message-ID: <bc86121f-3cc2-1e55-4c6a-02cb1644a8bd@linaro.org>
Date:   Thu, 1 Dec 2022 11:26:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v2 2/4] dt-bindings: hwmon/pmbus: Add mps,mpq7932
 power-management IC
Content-Language: en-US
To:     Saravanan Sekar <saravanan@linumiz.com>, jdelvare@suse.com,
        linux@roeck-us.net, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, marten.lindahl@axis.com
Cc:     linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221201044643.1150870-1-saravanan@linumiz.com>
 <20221201044643.1150870-3-saravanan@linumiz.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221201044643.1150870-3-saravanan@linumiz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/12/2022 05:46, Saravanan Sekar wrote:
> Document mpq7932 power-management IC
> 
> Signed-off-by: Saravanan Sekar <saravanan@linumiz.com>
> ---

This is a friendly reminder during the review process.

It seems my previous comments were not fully addressed. Maybe my
feedback got lost between the quotes, maybe you just forgot to apply it.
Please go back to the previous discussion and either implement all
requested changes or keep discussing them.

Thank you.

Best regards,
Krzysztof

