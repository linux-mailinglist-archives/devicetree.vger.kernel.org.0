Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 51D2A694053
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 10:05:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229602AbjBMJFb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 04:05:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229489AbjBMJFa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 04:05:30 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79E9CDBF8
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 01:05:29 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id bu23so11329868wrb.8
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 01:05:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j9Nci8wBFuhi99Gc1NwVUN8p67Yll1xfOyVZyIiXTmM=;
        b=c6jCqyzIeeTqnOpkUl+DuqL8AIBElkbteR89Jakel9KRbmrx/Wg3h2tqF/Romqh+Wm
         2a2CLe26B9v7Ap1i4yQMjhcojGvapdrxysZDgJebigu9vKgm9kaDiNJu0lVS5ucNuuaV
         Rw6BQAMw+l6/TyIiD+Hi/TMSOTaJrvI4UZRqOdBWGf6/JKe3vV2LdZ8rJkJLTZbGGk42
         zT4aFyuQscahRdEO/Vf1saI7IasrdzVPZfP4CyW7/MhinfUWRoO84AIsShBt4DSyqNti
         yVs4LsiPmHywxkWTL6n6i9rzRxf01rGMNxDd1TxQiffM1M0B6CuIyDVQTOdd0HnoaXt1
         rF3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j9Nci8wBFuhi99Gc1NwVUN8p67Yll1xfOyVZyIiXTmM=;
        b=Ps+xUrOOAN7P/t5e36g7+c00wuWJdEvreandxqMOed3Oxc0nPHdZNWUhJvaxstWyeQ
         HpGO3c07ZSCNnctoR8aXJYUq9yyV9F7IGl1mgBEdarfHg0qyICJg+mngzuOQpX6Quvu/
         IpxWb9TqyBvNlab1QjbCtFyQnSgbdLT4k3w/dGeuCS3Dq4jgjmGBUftQDCr/0K2+f6vj
         ST11mf5bDrMPhIcMQ1vkbR7cyDi3XW7EzOwfqHIn6oXbCimj0Bv8uu/TacxcOAE+w29k
         IOnu56psPQ2yE0H4INc3j5Y8CO0g9U1ptpzLHdg3Y/ShaZoyUls0G00Igpj5McA62So5
         Us/g==
X-Gm-Message-State: AO0yUKU3CJ9iBAMCgkZxsUgOI2JX4yWnix5tgHLJq3OxglLbDUpjlQG8
        /vlSxFeZnkfxdiS/ptGeHtD5VQ==
X-Google-Smtp-Source: AK7set9J9oNwgtLShE6pSOoR54tX2fUdxaQjkklbsWgwbrEAwlSQDJi3IUpdUgLO35vSWsdrTZpfRg==
X-Received: by 2002:a5d:4c8d:0:b0:2c5:4cd0:4b86 with SMTP id z13-20020a5d4c8d000000b002c54cd04b86mr6778261wrs.68.1676279128064;
        Mon, 13 Feb 2023 01:05:28 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id k16-20020adfe8d0000000b002c54536c662sm8637366wrn.34.2023.02.13.01.05.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 01:05:27 -0800 (PST)
Message-ID: <929a30fc-35f3-ab21-3a16-936ed69d5505@linaro.org>
Date:   Mon, 13 Feb 2023 10:05:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [RFC PATCH] dt-bindings: Add AST2600 i3c controller binding
Content-Language: en-US
To:     Jeremy Kerr <jk@codeconstruct.com.au>, devicetree@vger.kernel.org
Cc:     linux-aspeed@lists.ozlabs.org, linux-i3c@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dylan Hung <dylan_hung@aspeedtech.com>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
References: <5c047dd91390b9ee4cd8bca3ff107db37a7be4ac.1676273912.git.jk@codeconstruct.com.au>
 <7c6741e1-ae41-ba20-b859-736214c680e8@linaro.org>
 <91e9e815bed8c2eff19dbe6b3ed36d10c6edcbfd.camel@codeconstruct.com.au>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <91e9e815bed8c2eff19dbe6b3ed36d10c6edcbfd.camel@codeconstruct.com.au>
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

On 13/02/2023 09:55, Jeremy Kerr wrote:
>> 4. Where is the driver? Where is the DTS? Why do we want unused
>> binding in the kernel?
> 
> The driver is coming next, but I wanted to sort out the structure of the
> binding before committing to how the driver consumes the DT data - hence
> the RFC.

You should clearly communicate that driver is coming... Anyway binding
comes with the driver, otherwise how can we check that you actually
implemented it? Please send patches, not RFC. RFC means you are
uncertain this is even correct and you ask for generic discussion. So
generic discussion comment - implement how other recent i3c bindings are
implemented. This is basic device, there is nothing special here.

Since you did not respond to rest of comments, I assume you are going to
implement them fully - including dropping the questioned properties.

Best regards,
Krzysztof

