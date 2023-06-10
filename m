Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D54C72AD66
	for <lists+devicetree@lfdr.de>; Sat, 10 Jun 2023 18:38:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230096AbjFJQiX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Jun 2023 12:38:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230022AbjFJQiV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Jun 2023 12:38:21 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9630E359C
        for <devicetree@vger.kernel.org>; Sat, 10 Jun 2023 09:38:18 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-9745baf7c13so416092366b.1
        for <devicetree@vger.kernel.org>; Sat, 10 Jun 2023 09:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686415097; x=1689007097;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0FYa9qOs26ReIayAA4rt+zd9rx/ezbf9Nt79iNJ6KJk=;
        b=mzHil76DrUesZXbQpE9y+Gdxx5ZAAW3eGk8u54VrM1lUBvoofXR0IyELD/IiS7HCAo
         x7xTMbO6EBQACXRY4KZi4KcSyf6eT+XwvVgScxtjXDuO/LjrSfeV6gPzu7iYhU8CqCt/
         EoSHux8D3qiFCazBhScu/KHEJqWM8dyVVEY/Ww2S4A8WBA+yyGDSzAasL9daZDZ/MP7o
         iIbCAthJfMW0eKXT7A5e9xScGdINgkhpeicQDqJvhduz+cf2dbTVin8N/0QsLIzMpjS4
         7d5yFFt2NOGrs/aY1j5hJroP69G9z6OoBSW0qEIhLhlzpvHMpDYJaG8tGtngsR1DGntA
         UfUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686415097; x=1689007097;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0FYa9qOs26ReIayAA4rt+zd9rx/ezbf9Nt79iNJ6KJk=;
        b=Sgj/kaW2mv7cdsz0ue8gXhx+aorpDjtjG49Aqz7sePrhX2FnG2mrZAP05Dz5+6xJeQ
         he/0zbMVyXVdEOZvRwzDFnC2XFObMj9r2wQWfDgHBnq3NawWVc2vY9p/6pMVIx4eyI18
         zUGSpG8vf8UXu31F1OT7T6DoXqv/L5ksSqxewfx5UTpjxKgQ2R46TDfxLnA0z4YABs0n
         oT690xQMB9nSoKjcPRvhqCrGQx6HRh1/PO/w9yBxjUf0agSuluqHDtxxZ65piEL/YHcT
         lmkZRdt9t7jnyh7vTMsQHieIaUsG6UvR6+S937YcJkCgeGVzfJ7FtmN/WphCCNn11bE7
         jayw==
X-Gm-Message-State: AC+VfDzMtC8TAApwhMoINHv46ta832ixzM4lvjfWJ0TShV31J3H6k/L2
        s2ahmyW4WbBZki/endQEngBGfw==
X-Google-Smtp-Source: ACHHUZ6ceMsU7bgNBufu53cXEXJfgiNSG08Ttd71Mh/KuCaXKtb7/l1oFgBD4K63EsrBCNktz0IZ3g==
X-Received: by 2002:a17:906:58d2:b0:96f:f19b:887a with SMTP id e18-20020a17090658d200b0096ff19b887amr5102173ejs.56.1686415097068;
        Sat, 10 Jun 2023 09:38:17 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id z8-20020a1709067e4800b00977ecf6942bsm2769460ejr.90.2023.06.10.09.38.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Jun 2023 09:38:16 -0700 (PDT)
Message-ID: <46f62582-5b88-2fb8-4ebb-74a2783b65ce@linaro.org>
Date:   Sat, 10 Jun 2023 18:38:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH 07/18] dt-bindings: clk: axg-clkc: expose all clock ids
Content-Language: en-US
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230607-topic-amlogic-upstream-clkid-public-migration-v1-0-9676afa6b22c@linaro.org>
 <20230607-topic-amlogic-upstream-clkid-public-migration-v1-7-9676afa6b22c@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230607-topic-amlogic-upstream-clkid-public-migration-v1-7-9676afa6b22c@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/06/2023 12:56, Neil Armstrong wrote:
> Due to a policy change in clock ID bindings handling, expose
> all the "private" clock IDs to the public clock dt-bindings
> to move out of the previous maintenance scheme.
> 
> This refers to a discussion at [1] & [2] with Krzysztof about
> the issue with the current maintenance.
> 
> It was decided to move every axg-clkc ID to the public clock
> dt-bindings headers to be merged in a single tree so we
> can safely add new clocks without having merge issues.
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

