Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 25B4E512BFB
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 08:54:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244568AbiD1G5F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 02:57:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244566AbiD1G5D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 02:57:03 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 898A3986C9
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 23:53:49 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id dk23so7608470ejb.8
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 23:53:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=2VtYpl+AopG0sr9SMMb9GWmnfMrojG66n7RjufImm50=;
        b=lwaaQoJPHunxuYnucsJqsKlb/ZFMAcQ+0k8j6mvSEbAo+tDnwkfLRmrWMus5ro/udm
         FOHnvHIg+Od8zeBv9pcz/+cSrUdxgqQjP7LUfO5NpvqYDQmijdUhOcA1fi34Aq+v38MX
         LhJVz0OpmKIEFVZr1zh0LqshKffrL5kTQmEbOHNw8+fdZsutWv+daA9N/88TA6yG2Me+
         IP84bUWImyT7N4KoEfs6JcgGo0jE3XVl0Y+aXu9Uo8Eujf8kUR0SMvaMN82ptr0AJudN
         A4IHMQF5otBDYl5yva1nkfVg+FjDmhen4fiFXu/kXW6txMcdM5evUL/uXw7KbIfuXHKO
         /PVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=2VtYpl+AopG0sr9SMMb9GWmnfMrojG66n7RjufImm50=;
        b=orsfOuItirLsCMWgCGD6qeFEfBqVyrJk1cv1+VSGPC9sTVbvHcNKJJqIkljAdxqspQ
         xpXkJaC+vWaSPr/ezKd8Kk5IIlCLUfDDCHfMSbuu9T17kQkCEdPvLwYX67S+DA84T+gR
         9PR3KTBEA9Vx7Ox+XL1K4tbPuHt4Ke5wsx6MPPrAnPmkQw6kTBVKDcFpMnlVtDHjIZOg
         0JSiy8Uh4XczNPnu7Jlb/vRNRMfQ/DUSiNXNt6THVgtePxb9aLxHStVRvS7WKe58plth
         eUQyLqm6O9iwoW6o3rP+i1YckltBSmUEthQapJWcXJh1KacwUnM7HmQ9rEgNO6oialKd
         C6Cw==
X-Gm-Message-State: AOAM531ZnTAN9jnXHeLZOCTzGXX0rXPBtJXcixiblFEBYuTJYkkor5rJ
        NFhtVzP5PbGtNoTORd2OKqo5cA==
X-Google-Smtp-Source: ABdhPJzso+XpXZx+m3nRJuf0ndPiYOfzhdXdRErjmKATg8VtTt/Cvcsd1y1NHq262yirrd9t4vNvdQ==
X-Received: by 2002:a17:907:6090:b0:6f0:2a64:2ef7 with SMTP id ht16-20020a170907609000b006f02a642ef7mr29814689ejc.476.1651128828187;
        Wed, 27 Apr 2022 23:53:48 -0700 (PDT)
Received: from [192.168.0.160] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id o22-20020a170906289600b006e44a0c1105sm7920189ejd.46.2022.04.27.23.53.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Apr 2022 23:53:47 -0700 (PDT)
Message-ID: <7f435547-35f5-7885-3b1d-159199ca201a@linaro.org>
Date:   Thu, 28 Apr 2022 08:53:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] dt-bindings: pinctrl: aspeed: Drop referenced nodes in
 examples
Content-Language: en-US
To:     Joel Stanley <joel@jms.id.au>, Rob Herring <robh@kernel.org>
Cc:     Andrew Jeffery <andrew@aj.id.au>,
        Linus Walleij <linus.walleij@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        OpenBMC Maillist <openbmc@lists.ozlabs.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20220422192139.2592632-1-robh@kernel.org>
 <CACPK8XcQNJNyzqdjMQuCP+z-L-A9mcMqs-HJJrh9MscasV+D=A@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CACPK8XcQNJNyzqdjMQuCP+z-L-A9mcMqs-HJJrh9MscasV+D=A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/04/2022 10:40, Joel Stanley wrote:
> On Fri, 22 Apr 2022 at 19:21, Rob Herring <robh@kernel.org> wrote:
>>
>> The additional nodes in the example referenced from the pinctrl node
>> 'aspeed,external-nodes' properties are either incorrect (aspeed,ast2500-lpc)
>> or not documented with a schema (aspeed,ast2500-gfx). There's no need to
>> show these nodes as part of the pinctrl example, so just remove them.
>>
>> Signed-off-by: Rob Herring <robh@kernel.org>
> 
> Nak.
> 
> This removes the information on how to use the bindings. Surely we
> prefer to over document rather than under document?

There is no need to document consumers of generic providers, like
syscon, clock or pinctrl. These are already well documented. The
examples of consumers here do not bring any additional value.

Best regards,
Krzysztof
