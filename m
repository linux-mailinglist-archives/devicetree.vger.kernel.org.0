Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C904729834
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 13:30:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229715AbjFIL3x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 07:29:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237624AbjFIL3f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 07:29:35 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74382270F
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 04:29:34 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-5169f614977so2965021a12.3
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 04:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686310173; x=1688902173;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kxiN7myur7/0GPCT/YlFEtOdpW5toTcI/Nywric3aLQ=;
        b=YlzRxBhuCSK70VDV0dZW+ujKcjhx4HbC1rs8EytAHb8rqlU6SU8hxNRMjHUD+QMhcn
         UCrjeGZXEMM8+CmUHgSFl6Tc+O25dEAVREpYDzcAitOG2vNHg8/NTeuZo7z2WQ3+JfzY
         EpDOvc/Z0L0VRXpe2f7gWbJvqhB84RZMSGPinvLDm+mTj4pHERZCtgyg1PQ6FU9Yi2DA
         V5A5Lu49VgLiRma5ieva3qSSZYRU5/U8YENcGSaYIBRiXcDKxVTntV2O1HuqVZF/XXAH
         hBfaDwo/jtGJ4V1aJeOplkASpUJ0UwbrjD8GZfdp/b5ZOJvBOyw+izn11YznXHe4umJO
         hHDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686310173; x=1688902173;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kxiN7myur7/0GPCT/YlFEtOdpW5toTcI/Nywric3aLQ=;
        b=iGkuMQBdG2zUg9nFK0bCjciW5ueo/lLZt4USJkjQZKuXizdnlL5cXFIzAkExbHGfG/
         FldxiM48VN/GON+uLD8XqnYztwKW9+4Igj8aYPoqOLH12IgNxv6TUM+1y/bYmIaz2NcW
         WxQLoptdweodpmSvjVTwdRHuPkvPD0Sp+KCUTlfM3K0beBdGI9se42d1KFDFhY8Se+Ok
         z6hqXpV9DR0U59YEL6BzORCXdUmHdANHSJoQbRyejs1VrGOOBqsRS4H6dPp6o6AsGz/V
         o3H8spxpizqNJylqD7XSzBCPhZEX8SGZPxvyFpDq+YwT7uLaV4yTWq354bD9V6AkYXo5
         IMlQ==
X-Gm-Message-State: AC+VfDywBU0HK0tGxYerwkvFAaVGcYcCJoL3iaF4tXPAZo7tGQUkA3hE
        8NrP2Gbuq+tDkxSehZT4sRmgBw==
X-Google-Smtp-Source: ACHHUZ4N8nCzxGEzlpoKN727/QlEt/dtap2HexlEjZXf6BjLVyzoQAOu7/kxf1+AaNNnWVFwP7S9rw==
X-Received: by 2002:a05:6402:14d6:b0:50b:5dbe:e0f6 with SMTP id f22-20020a05640214d600b0050b5dbee0f6mr1096342edx.25.1686310172919;
        Fri, 09 Jun 2023 04:29:32 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id e22-20020a056402149600b00501d73cfc86sm1661497edv.9.2023.06.09.04.29.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jun 2023 04:29:32 -0700 (PDT)
Message-ID: <bff5ff40-fec2-123e-9896-6f5445289792@linaro.org>
Date:   Fri, 9 Jun 2023 13:29:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v5 2/2] ARM: dts: aspeed: Adding Inventec Starscream BMC
Content-Language: en-US
To:     =?UTF-8?B?Q2hlbi5QSiDpmbPmn4/ku7sgVEFP?= <Chen.PJ@inventec.com>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        "soc@kernel.org" <soc@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>
Cc:     =?UTF-8?B?WWUuVmljIOiRieWuh+a4hSBUQU8=?= <ye.vic@inventec.com>,
        =?UTF-8?B?SHVhbmcuQWxhbmcg6buD6Iux6YOOIFRBTw==?= 
        <Huang.Alang@inventec.com>
References: <b039b1b2673644af84db8f803bc7d156@inventec.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <b039b1b2673644af84db8f803bc7d156@inventec.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/06/2023 07:59, Chen.PJ 陳柏任 TAO wrote:
> Initial introduction of Inventec Starscream x86 family
> equipped with AST2600 BMC SoC.
> 
> Signed-off-by: Chen PJ <Chen.pj@inventec.com>
> 
> ---
>  V4 -> V5:
>   - Remove devices not defined in dt-binding yet.
>  V3 -> V4:
>   - Reply with devicetree binding
>     https://lore.kernel.org/all/28f0ce0a82464083ae24f9ef2f598425@inventec.com/

I received only this patch 2/2 and first patch is missing.

Best regards,
Krzysztof

