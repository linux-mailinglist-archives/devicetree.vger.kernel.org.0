Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 957534B575D
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 17:46:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345866AbiBNQqY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 11:46:24 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:50482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356741AbiBNQpw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 11:45:52 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0A0B65140
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 08:45:44 -0800 (PST)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 767623F33A
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 16:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644857142;
        bh=tJAqFxG57f51iV+zIdkcN4fACREExxQK2T3qjt956q4=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=eGgu7fwUDmotOJKIJHgTnID3WTiT6hfTYCnDsVERIVknHn8mE9wWk5uY9s7qpPWMV
         J3w21Pa7F69BKIrZCkKQzbsZ2r3Z3cC8o3lztOv57gZRCjSpbvXEmP2SpQg/hM4zQ3
         Jhv0iUeVpWJuis4VtV5WsPV8BTAf2LVXvZVD7RMidhePGw8mw0J4LXZ0qIYD2o0/r7
         sLnEgQFRDHdIN3hF8joDi8UyZ50TyeHLm6W+ORqHukSU3LHeg+ROoYvaQZ42ozT4ir
         L38wR0iFeWQPDQHWOY0t8vDnykUxydeWRQGC0LdQF1IU4CTMI2Gt150FC4S9LzIjsA
         dC128GarEm18w==
Received: by mail-ed1-f72.google.com with SMTP id k5-20020a508ac5000000b00408dec8390aso10511300edk.13
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 08:45:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=tJAqFxG57f51iV+zIdkcN4fACREExxQK2T3qjt956q4=;
        b=Yx9iEQ7DcK27l4VE5x6UcnwOpeo612OCVg0m0f2ekEoPQ6+Kf9wC71L8klg1pEbEjz
         xxr+YGtRa2lXq0w0+x1Y/9yLHsCz3y4ukSw3EYJxFepivO48/9m8XAUZk/aDB2uFVUWa
         7MUkuEWDSeIlkr1ZBfutH3xZz0lNP4nDpSyBFOFWcOjseDTXF4FaCgGVXpEH1hlhngPo
         vD8nkdS6wYbxftffDUQIk0GWiOUIER1QU4ggFKu6mwSdgrfEyzniIkMgzBQnJpykK0Ri
         HtB2lVHB3RTV3o2oGvvFzPWgj3wY4TCRd6Mwb7TU2RGnJfu4I5rJL1yfP7PVtrh7/A+P
         gHMA==
X-Gm-Message-State: AOAM533mnBr/oimyK5PtX+opEcPrG/6AOd4QhE6fE/5isBHqdDhuNnaa
        yq8h6xPRf2vlebC8DV2BRZvRs4MxgsbVoec8modxfSJ5Lxp8Tk0gemnConPfRsHKfYQhM5u3hJs
        iCYkwbzCZuNVy8vYkp9lGbhkC3wmqtlqlD7FSmBw=
X-Received: by 2002:a17:906:c154:: with SMTP id dp20mr389429ejc.184.1644857142234;
        Mon, 14 Feb 2022 08:45:42 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwc2+VExzAVY/W5vInmueb+5alFIdvPQ/yNYAlAMwX6l6zMLtEWTUGsPjknL77MCoUNePY9yg==
X-Received: by 2002:a17:906:c154:: with SMTP id dp20mr389418ejc.184.1644857142074;
        Mon, 14 Feb 2022 08:45:42 -0800 (PST)
Received: from [192.168.0.106] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id i1sm7437488ejy.138.2022.02.14.08.45.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Feb 2022 08:45:41 -0800 (PST)
Message-ID: <12c66ced-c4a4-3a4e-f84b-83edb9e3fc58@canonical.com>
Date:   Mon, 14 Feb 2022 17:45:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 3/4] regulator: dt-bindings: maxim,max77693: convert to
 dtschema
Content-Language: en-US
To:     Mark Brown <broonie@kernel.org>
Cc:     Chanwoo Choi <cw00.choi@samsung.com>, Pavel Machek <pavel@ucw.cz>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Sebastian Reichel <sre@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-pm@vger.kernel.org
References: <20220111175017.223966-1-krzysztof.kozlowski@canonical.com>
 <20220111175017.223966-4-krzysztof.kozlowski@canonical.com>
 <YgqGT999nsjUGp9Z@sirena.org.uk>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <YgqGT999nsjUGp9Z@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/02/2022 17:41, Mark Brown wrote:
> On Tue, Jan 11, 2022 at 06:50:16PM +0100, Krzysztof Kozlowski wrote:
> 
>> +    properties:
>> +      regulator-name: true
>> +      regulator-always-on: true
>> +      regulator-boot-on: true
> 
> Why are these specific generic regulator properties enumerated?  

additionalProperties=false is used, so all properties, also ones from
regulator.yaml, have to be mentioned.

Why this approach was used? Because the hardware here is very limited,
so no other properties are expected. No other features are supported.


Best regards,
Krzysztof
