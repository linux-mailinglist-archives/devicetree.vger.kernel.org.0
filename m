Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2337D69415B
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 10:36:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230125AbjBMJgw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 04:36:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229677AbjBMJg1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 04:36:27 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F3D516308
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 01:35:21 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id c4-20020a1c3504000000b003d9e2f72093so10796906wma.1
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 01:35:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Gmgucw7ArcE1rVHBJg9HjFw2E1lAyLd9N9iv88RjGQE=;
        b=ClAtuvBeysiK4DiEo6LMV3dTn1HCCdUhBXbF5Ye+aVaPFpxD9yHzuKfl1cOzH1Dbu+
         DeUNqql54iNavpEAhMFhIQEUhW785AX9d3ge/8WbagLLx4/zs6eSWZFYOGjLPErFQCoJ
         AQNJIOlNEqi+KerCvb/Hz15ePbUcm4ZpUpwB/QIkheyJ0uYQBfoaYdObvaXQM5Zmsu7B
         H6ur1q3icdwV2C2qt9qtlQL5zAsXwFjnfWkRt/Gv99w7POcqPZMeLU7F59zHUivodIfs
         +uBaMZUyd0EmdS7DEC6YC2735WGR+iRt6AhhdqOWpHXTFfu0eab4f97qwOArJyMDJYHl
         ekvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Gmgucw7ArcE1rVHBJg9HjFw2E1lAyLd9N9iv88RjGQE=;
        b=6/Elo2Xj6IhZEfElcCQhUUf6A39qGcRLEQrLz7Sv/R9Mk65I4XvLpjjF8GiPApM3Vj
         myAxXS8cOiUpmgNu0dAONNpnEVfMRB9MN+GPykMAu3SaILpwnf3Rw8spMt74O/MfFepZ
         MpABlmuBI6APiwUjwzZJSQzeo/GvZtEHtJ/eDOYJU75RMDi7wLl9ycekU2NnH9QTbzRj
         9E+TfYIZsaBNvc7c2wqrsbTR3wz1oIm4nHlkUqHERwWIlkZsFy8MiokuMe6y15c6hJZU
         00dRQisIgnCTMsAo49hlJrt/l6yu4b3Vo5D2aDuKDvynYQQcBiLq0eZd3orTrQPObe8Y
         mEBw==
X-Gm-Message-State: AO0yUKUDbvGq+fKTqDzSZIb4a4u/w+LCwGCVIww/E8rFBo+tVHy7Oyrw
        hpif126OlkVIz9qE6GC1zu8TGQ==
X-Google-Smtp-Source: AK7set8t1hWdwz4+lb2JgagXmy8pG7Dx7iXEOWfMIit4rR4uri5IsmUt3xVOuYZuZ7mMxX4PXm7AsQ==
X-Received: by 2002:a05:600c:3b92:b0:3df:eedf:df1c with SMTP id n18-20020a05600c3b9200b003dfeedfdf1cmr22437691wms.38.1676280919784;
        Mon, 13 Feb 2023 01:35:19 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id w19-20020a05600c475300b003e11f280b8bsm11265977wmo.44.2023.02.13.01.35.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 01:35:19 -0800 (PST)
Message-ID: <71aeb3da-13a1-1c79-9fe6-f5c23d398394@linaro.org>
Date:   Mon, 13 Feb 2023 10:35:17 +0100
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
 <929a30fc-35f3-ab21-3a16-936ed69d5505@linaro.org>
 <80fa21969d9e0e7a123bd525199dbb40e79d47e3.camel@codeconstruct.com.au>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <80fa21969d9e0e7a123bd525199dbb40e79d47e3.camel@codeconstruct.com.au>
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

On 13/02/2023 10:21, Jeremy Kerr wrote:
> Hi Krzysztof,
> 
>> You should clearly communicate that driver is coming...
> 
> OK.
> 
>> Anyway binding comes with the driver, otherwise how can we check that
>> you actually implemented it?
> 
> I'll include this with the driver once we're past the RFC reviews.
> 
>> Please send patches, not RFC. RFC means you are uncertain this is even
>> correct and you ask for generic discussion.
> 
> Yes, that's essentially what I'm looking for with this change -
> particularly with the pullup config, which (as you say) could arguably
> be a pinctrl config instead.

Depends, there was just a short sentence. If this is external resistor
on the board, why this device needs such property (and none of other
devices need...)? If this is internal pull up of I3C (and there is no
other pin configuration possible, no other pins), it looks reasonable to
me to have it here. But I am all guessing it...


Best regards,
Krzysztof

