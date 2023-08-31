Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5338978E656
	for <lists+devicetree@lfdr.de>; Thu, 31 Aug 2023 08:21:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243909AbjHaGVy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Aug 2023 02:21:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343841AbjHaGVg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Aug 2023 02:21:36 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A985CFF
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 23:21:18 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-52683da3f5cso479365a12.3
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 23:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693462876; x=1694067676; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MN3/KIBcA6h9wGDVjzSLq0W+eq4AFp91etA4VWB8MhQ=;
        b=VOTyx1pHCamS9PAJ1sfYY3JTjeOkUWJfvvQV4YrAWSLkQGw02f8YA4oLDE7eah5tIU
         w7edH7FXNd8pShX8SqTCIp33xfvcVfJCVaYw2nejy9QGkbd40/zGT7FiUGldYQRCEkj3
         H9fNF1t4v3sQPVmRINecM1Zubs8fkj4aI6uBXceOv1ao71EmlcjT4y4k+2832Ohkh6W7
         3mo9QheGvUgW1vWDXcx7sjU/dH1OgMEvxUFnKanii+SluOX2u4SSmxIn1RHqPfq1dYt+
         UAMOu9AwnkGHmNEPFWHcQxvnEW9IxDZoyl31rrEqADRJ7I1esdqo1NVd3IQe6QnwM7Pk
         WsGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693462876; x=1694067676;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MN3/KIBcA6h9wGDVjzSLq0W+eq4AFp91etA4VWB8MhQ=;
        b=LYfOAI0aJnuqLUEOWiqtDk1RbyjGHsWl0i7f4N48Vc3IWovApQQveDxhR0QCdBe5yc
         UQLBNUN+j+sPGV9aPA1xlpkCMgUuroh/0v7f/sPqHkl6Rdj6o4EO4bpK4Jhq8P4GRa0d
         EJFGrsTOb0TmXnkdmQDGUQ48TMl+Aur/akfpAU9LqxWC/gpAGrldU4JXTeyRdgcXgDQt
         drpTBl76zZ+H9hi+vc+ktaNtG8/zbWwKew3wi43gUNip06RXnKOZhZ/X63qXNOxlHwSl
         sQRhbTlExZGCz+tk+w3I6eXOSmDUgCzfwrqqFcqV0e4Qpwm6dkUJ/ycf8m4Zw2mJ5tb+
         TUlA==
X-Gm-Message-State: AOJu0YydBFNQStNqCyT20jmEOlgWI9BDN3mdNCdahO5U0JrkuXyIYIoR
        teDzqzP3vWdOYmGJZ44sJh9rLA==
X-Google-Smtp-Source: AGHT+IFB8UbQE1K/uA5hBzss6Ee3Nu+tw1dskpb+vfsEvF2olxJ5G/EiW5Bu7rju/ULP+GRYIIUK+w==
X-Received: by 2002:a17:906:4e:b0:9a1:c659:7c56 with SMTP id 14-20020a170906004e00b009a1c6597c56mr3059069ejg.22.1693462876358;
        Wed, 30 Aug 2023 23:21:16 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id j6-20020a170906278600b00992b50fbbe9sm382001ejc.90.2023.08.30.23.21.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Aug 2023 23:21:15 -0700 (PDT)
Message-ID: <3eaa444b-baca-1ae0-039e-94f7811d216e@linaro.org>
Date:   Thu, 31 Aug 2023 08:21:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v5 2/2] dt-bindings: arm: aspeed: add Meta Minerva board
Content-Language: en-US
To:     Peter Yin <peteryin.openbmc@gmail.com>, patrick@stwcx.xyz,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        soc@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Cc:     cosmo.chou@quantatw.com, potin.lai@quantatw.com,
        daniel-hsu@quantatw.com
References: <20230831055030.3958798-1-peteryin.openbmc@gmail.com>
 <20230831055030.3958798-3-peteryin.openbmc@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230831055030.3958798-3-peteryin.openbmc@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/08/2023 07:50, Peter Yin wrote:
> Document the new compatibles used on Meta Minerva.
> 
> Signed-off-by: Peter Yin <peteryin.openbmc@gmail.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

