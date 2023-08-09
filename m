Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF29C77618F
	for <lists+devicetree@lfdr.de>; Wed,  9 Aug 2023 15:47:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232400AbjHINrY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Aug 2023 09:47:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232398AbjHINrY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Aug 2023 09:47:24 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5A05DA
        for <devicetree@vger.kernel.org>; Wed,  9 Aug 2023 06:47:22 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-31763b2c5a4so5745830f8f.3
        for <devicetree@vger.kernel.org>; Wed, 09 Aug 2023 06:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1691588841; x=1692193641;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=PE5cJzvntX1qIl6Z53C3/b2JXH5RY4FZGtDgaWloFqA=;
        b=fkx/JwZPfS0BAH2aVLs/mI7AhmfMoMPWUzRIZWS1Uri7+pwvP8BjWK7CEkOU/1ggKe
         9N3uGSMwEPgkSsc4hOkYDgoiDvocZGt0KHArjCjknDPTd1+1Lu7nJWVuw6cvko/gCqQ8
         xGn2deiABWf7HUPR+q1Rl77LtFJK1RONdiQfp6NBOCwyx2KVp8DGVBKZ5Ma/juCBAR7K
         RKGYMcnjpyFGO8TRZxiw6tQxELTj8PPW0XUgEcsoZqszU841/7sOpjiVHTvnUH+GyLLO
         C8B1p91Ohp62Hy27Rv1Kt95MMupD6kcpjX/MTKd8/rr9H4B/ENOokWfZeEdBcDGlYBYj
         QoEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691588841; x=1692193641;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PE5cJzvntX1qIl6Z53C3/b2JXH5RY4FZGtDgaWloFqA=;
        b=CGjr9vwMlE404Vw9HT09rWD4zZ2D3R/bFzx1/rT1LszP0/n2IE5kFM0WE+XZRN8vGI
         Q9GLOvi721ABwf8awlHzXhKOGYL2oX6iMjH0NX6V/GdAOakd1oK87jaIHDjq9vQGViUV
         om9OU3pMNPE+v67In06LZD7x7mpGQiwdD9llZI+l2bhdkMj/IzfPyeyipGs67PzoUGgO
         nH6YN/v6fdyl0sKOlG4FilpJ0QmOZT1/XcWi7d5pYam1rnxk9YR1q7+XBN/y4xpnT2Cu
         Y4St41FOjDSI2Cm/wU3kEyZgKQCXVnhG60LX5jL0VuE2vnj+8OYFaO3oy+20l/IKs0zc
         1S9A==
X-Gm-Message-State: AOJu0YyQAXWCPTl3ejlci9vE46oYSPV+UIFy5sd2QS5qSQ8bqGsXLzhF
        hNeYG2wUqZPxDjBIjxzdkirp7Q==
X-Google-Smtp-Source: AGHT+IGDoLFaQy+WmBagoOTGH8xLuZ2hKnQLCQUA91JqHrtZq4wtyGXz7CjCYNJSikZpVukGoMVVqw==
X-Received: by 2002:adf:f8cb:0:b0:317:9537:d741 with SMTP id f11-20020adff8cb000000b003179537d741mr1900502wrq.54.1691588841370;
        Wed, 09 Aug 2023 06:47:21 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:2a0f:2daa:ffb5:cc02])
        by smtp.gmail.com with ESMTPSA id i12-20020a5d55cc000000b00314427091a2sm16850870wrw.98.2023.08.09.06.47.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Aug 2023 06:47:20 -0700 (PDT)
References: <20230808194811.113087-1-alexander.stein@mailbox.org>
 <f4c57e4b-674b-f870-b215-8b2f80a7c9eb@linaro.org>
 <1j5y5obt0u.fsf@starbuckisacylon.baylibre.com>
 <a48b1a97-2286-d2f9-742e-d718adcf1eed@linaro.org>
User-agent: mu4e 1.8.13; emacs 28.2
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Alexander Stein <alexander.stein@mailbox.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Rokosov <ddrokosov@sberdevices.ru>
Cc:     linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/1] dt-bindings: clock: meson: Convert axg-audio-clkc
 to YAML format
Date:   Wed, 09 Aug 2023 15:46:33 +0200
In-reply-to: <a48b1a97-2286-d2f9-742e-d718adcf1eed@linaro.org>
Message-ID: <1j1qgcba54.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Wed 09 Aug 2023 at 15:02, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> On 09/08/2023 08:58, Jerome Brunet wrote:
>>>> +      required:
>>>> +        - '#reset-cells'
>>>
>>> else:
>>>   properties:
>>>     '#reset-cells': false
>>> ???
>>>
>>>
>>> You need to constrain the clocks per variant. Probably names are also
>>> specific to each one, so the list of names can be moved here and you
>>> keep just min/maxItems in the top level property.
>>>
>> 
>> input clock names and constraints are the same for all 3 variants.
>
> Then why do you have this huge, apparently unnecessary, oneOf? If it's
> the same, then drop the oneOf and make number of clocks fixed.
>

As I pointed out, this section is wrong.

>
> Best regards,
> Krzysztof

