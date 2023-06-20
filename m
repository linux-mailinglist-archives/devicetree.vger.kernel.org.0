Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 657317364E2
	for <lists+devicetree@lfdr.de>; Tue, 20 Jun 2023 09:38:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231437AbjFTHio (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Jun 2023 03:38:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231347AbjFTHiP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Jun 2023 03:38:15 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1B6C2103
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 00:37:17 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-98746d7f35dso542706166b.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 00:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687246600; x=1689838600;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iZI7OnXgmRov3B/rfcu20P8T8XSGe7PYJlAKKXlux4Q=;
        b=Sroa2wN361vfzcjkqvyBWHq0VXchgC/2z/iXAXwaPXZtIdW7yHjowNi7kT+Lm0sLFe
         qg8yi7HLiO8J9wrPzK1zxqtjnkXve9g5zQnbf5jCYmFdw6YKrBu6+2PUDaPACZJjdoXg
         J+ZgnmAjsROoDQ6P5mmJM//3pk96KcYTpo0nuYF2zcVGGyTxdP6Hdr2ucA83BAGvaaFH
         ovXwRpcEsiXpLNoeNbEd59fYs1s6GfQw93a21uUbDdXOKn9d7KXcsys3RPI8oVbu/Hqd
         Uj482yvgUccNAvEYUuvJXELitxGblmPlJSGtW3fsgS8jQd/Z+PlAYuTKSK6SSqpq/sJQ
         cq3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687246600; x=1689838600;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iZI7OnXgmRov3B/rfcu20P8T8XSGe7PYJlAKKXlux4Q=;
        b=Dwa3FcdaQovv+BNLxVhZMfH9JAvWvkeEmpUnInRXhgFSMNkY7p6oDAOYfPBPI+ydm/
         fwffmG+i+uoOLpU1NSDDdJKQYc4/rLCsp4dqzOxP4ppWZY0eUZ4EtOGVsnmXMbKs2FEW
         3loLc8RYJ/TVRMgTaxVNF6gmbBT7QrEWhkD9wxlq77cWB28UjkFOdlQzXPDkQQKHegav
         wM+j68LMGG37qiTxIfnx7nelQdhm2fSgkUbRfUyFfBND9pKG1WKuHegNuogL9cKK2eWH
         OakzSfN1iVnQdBrLPTGW+3M+ZW8ze1HymYd8Cj3TrH47LIsbj90Bx0lioADkwel0XkU0
         uxlg==
X-Gm-Message-State: AC+VfDysmmQYEomrrYmXuivW1xVlH1fNzvKT2IttNS5tW4KT2aTKoCIu
        SoPqgX8by4DtGv4Dt6pjAOsIwg==
X-Google-Smtp-Source: ACHHUZ4bE7uxC6DfKv3DJ+TojD1ucypF9vayabg+FgW35ZjeYM2/tm/RLx2cU7O/3vFG2sQVo4IdrA==
X-Received: by 2002:a17:907:1c8b:b0:988:a876:53ca with SMTP id nb11-20020a1709071c8b00b00988a87653camr5352645ejc.65.1687246600386;
        Tue, 20 Jun 2023 00:36:40 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id u23-20020a170906125700b0098733a40bb7sm854669eja.155.2023.06.20.00.36.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jun 2023 00:36:40 -0700 (PDT)
Message-ID: <a895bdba-a48e-17e9-043e-9b950bbc1a85@linaro.org>
Date:   Tue, 20 Jun 2023 09:36:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2] dt-bindings: interrupt-controller: Convert Amlogic
 Meson GPIO interrupt controller binding
Content-Language: en-US
To:     neil.armstrong@linaro.org, Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <marc.zyngier@arm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Heiner Kallweit <hkallweit1@gmail.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <e06e9f26-cf55-5596-c799-d698e9d7b409@gmail.com>
 <777cf5df-6358-fa46-66cd-153d29763f77@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <777cf5df-6358-fa46-66cd-153d29763f77@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/06/2023 09:33, Neil Armstrong wrote:
> Hi,
> 
> On 12/03/2023 22:29, Heiner Kallweit wrote:
>> Convert Amlogic Meson GPIO interrupt controller binding to yaml.
>>
>> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
>> Reviewed-by: Rob Herring <robh@kernel.org>
>> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
>> ---
>> - consider that more than one compatible may be set
>> - remove bus part from example
>> - remove minItem/maxItem properties for compatible
>> - reduce compatible fallback complexity
>> - add that 8 or 12 GIC interrupts can be used
>> - fix typo
>> ---
>>   .../amlogic,meson-gpio-intc.txt               | 38 ----------
>>   .../amlogic,meson-gpio-intc.yaml              | 72 +++++++++++++++++++
>>   2 files changed, 72 insertions(+), 38 deletions(-)
>>   delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.txt
>>   create mode 100644 Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.yaml
> 
> Gentle ping, this patch is fully reviewed and is lying on the list for the last 3 months.

Maybe just take it through your Amlogic SoC tree in such case? It's less
preferred than subsystem, but still what matters is to get this merged.

Best regards,
Krzysztof

