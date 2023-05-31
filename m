Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28478718A1B
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 21:27:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229740AbjEaT1I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 15:27:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229514AbjEaT1H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 15:27:07 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5936125
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 12:27:06 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-973f8dbcc02so727845766b.3
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 12:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685561225; x=1688153225;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lrftfarF8lrxLQHV/dhPCAOO9/QVWmUkVudnThFh7ps=;
        b=yYAMQ4i3zjwAlalP6o00lfhTK/eIpq+zAsEdl5GseT4+AwSsa6A2O1FUO1xlhREnyY
         1bJHpStFR0yeP6moTYGYqQQ+ogQ/OQ7tKzStRXuDer0EXw/w2We4jLBmvOrj1RWlMg5/
         VrWpvmG/NxJKKZLYlf3Vl2BbNwgv9P3xxj7CmXU0QouZf5KNkPXUzZc2OukUmpcdMCPE
         u/gAaat/Os4NDr103mc+DHGP4LBfk3sylPwpbzX6nRzrkLzI1tH9fEGUJBK6bczBY4HL
         Uz87Vi93lo1opRnPXMvEywyWZ6VSeyuVkZHlvR1pjEJ5sahuYVro3/LvBWb3bU3jkuLn
         yEwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685561225; x=1688153225;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lrftfarF8lrxLQHV/dhPCAOO9/QVWmUkVudnThFh7ps=;
        b=YySNoNLIJADsw01hcUQnh1Utg2INisLxkB+6pzA0PYSL0dJ/5Dz1HJ5oiPGJyFuFew
         HSrv+FekGbr9yKusI0puO3vsew/JNuq4i2Eaqumhl4kCRhFsrqJ3TTud6Q9c1UiibPgE
         xRw2QGQgZuAiJUm+IkCmgyxrhWxi6ocvICjJ0G7H4rc7pnBQ1kP1AaboV26Mpop1B8D7
         gmLy7aPNVA0E9YPHMEnoCfeS15BGtOf6H15sFPzXB7lUH6b+nZw0tNGTVf/WOOnaDLjy
         W1z7wUs0oYON0KUbNp6N/9VsX59zUXck4zkY8NsF3zkdqDvy0HJOJ1yb9Cxh7feFZYJs
         Al8A==
X-Gm-Message-State: AC+VfDxqk9DJ9yISqjz269wJud1cPdV+6nCepqp8Z7yXgAxhyTrNvA6N
        jUJedeiYw5pFDkwts70RdEHc0A==
X-Google-Smtp-Source: ACHHUZ45U3aEkoMvTvHr80BYZ2eTk3AFFN1dV8cQQGJaC2zAjiAWj0UixgAOh/feZBNlO+olpVAMTw==
X-Received: by 2002:a17:907:a414:b0:96f:5f44:ea02 with SMTP id sg20-20020a170907a41400b0096f5f44ea02mr6329304ejc.8.1685561225150;
        Wed, 31 May 2023 12:27:05 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id w5-20020aa7dcc5000000b0050d83a39e6fsm6201203edu.4.2023.05.31.12.27.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 May 2023 12:27:04 -0700 (PDT)
Message-ID: <c6d886d9-8f74-7af3-5478-030f5d6e4b1c@linaro.org>
Date:   Wed, 31 May 2023 21:27:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: Add nvmem-clock
Content-Language: en-US
To:     Mike Looijmans <mike.looijmans@topic.nl>,
        devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Cc:     Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org
References: <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.2167d5ad-7e99-4eb9-a313-030fc7a7d546@emailsignatures365.codetwo.com>
 <20230526143807.10164-1-mike.looijmans@topic.nl>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230526143807.10164-1-mike.looijmans@topic.nl>
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

On 26/05/2023 16:38, Mike Looijmans wrote:
> Add bindings for a fixed-rate clock that retrieves its rate from an
> NVMEM provider. This allows to store clock settings in EEPROM or EFUSE
> or similar device.
> 
> Component shortages lead to boards being shipped with different clock
> crystals, based on what was available at the time. The clock frequency
> was written to EEPROM at production time. Systems can adapt to a wide
> range of input frequencies using the clock framework, but this required
> us to patch the devicetree at runtime or use some custom driver. This
> provides a more generic solution.

This does not look like real hardware. I mean, the clock does not fetch
its rate from nvmem, right? It's the Linux which does it, so basically
you described here driver, not hardware.

Extend existing fixed-clock bindings to allow reading frequency via
nvmem cells.



Best regards,
Krzysztof

