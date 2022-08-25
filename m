Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4617A5A095A
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 09:01:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235442AbiHYG65 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 02:58:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236625AbiHYG6x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 02:58:53 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 210DDA1D2C
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 23:58:51 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id n15so5921485lfe.3
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 23:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=ru9SpbqH38i+/HCULGGRRkwAB5xZGhAPPEBe8VIbuVY=;
        b=grbaP9d3L824VTVSPhpmGWtTulHg7jns+IAx4lpJsJOqyLymPeeFFU5dqLxIPNJwhJ
         024mT8CasogSt2BX33fxd3nik+37FvmstNMi02rolF4bz0tZJOVC4H0naYVwkieoN+o1
         A+oa31wiAe5yHC8o359JEwwkrxK9fvgtKNmb0cffoJXJJOWqpBhsJe4oST+eNSaaWbkB
         YOD3n4iLS21QNiA0DYteZp1Bc/y0yr9RuTbMG9S1j7CEPVagcsx0XCpQgLiTXCzpkCKN
         iT3tqDO/r/cxJ+e73ACO1brs02Rl/m4vRIgrkeg954zY71o8LAaTiO3Edu9+XcRTnGGy
         lqCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=ru9SpbqH38i+/HCULGGRRkwAB5xZGhAPPEBe8VIbuVY=;
        b=0+u0F9ckSTZPjXeREuY5LxXZ5LQrLP6Tn6M5Y7PN7MGKErI3XgFGRQWWoo9wvvyh/C
         aUC8U2m8OmAIFGEn1HZn5L99ENgg73P4T6toFll7/GJT6OcqoYYf9eseuvQ8OjkmfqrM
         ksFmLTB9Y2iO2Siguhkxi700yxwd5oEjprJwlkqmakHW1Td58QCpxfa+NLaaOfemWi3J
         LDrVajTkxzNi32CWuNSZ7o1HrbXwnz8DE9vt9Rhx2ZpJGd3ke6ClCyOSpWdyunAwU63t
         wKsi5/ql19lhqalA146gOUZnxd8nYvDcYZ5oEg9NXLJZ9/e02Ca3OcNtLuAYX+2eg5dV
         MPlA==
X-Gm-Message-State: ACgBeo1gAU/eXOYkxjuHcyLsBcXxAkdlpbLl8r+QuB7XnyIMwsIFSXa1
        D9KmBmg6KpHcbLZbeRaHE6xjcQ==
X-Google-Smtp-Source: AA6agR7EbTEOcaW559NfuYrmueSa1EcTuokes0+mBX/MzT3e/12MgVlIf1TsZJXwfRkZjD4TJC2VHw==
X-Received: by 2002:ac2:5d2c:0:b0:493:221:f011 with SMTP id i12-20020ac25d2c000000b004930221f011mr674330lfb.349.1661410729501;
        Wed, 24 Aug 2022 23:58:49 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id g5-20020a056512118500b00492f1755d8bsm327259lfr.243.2022.08.24.23.58.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Aug 2022 23:58:49 -0700 (PDT)
Message-ID: <bd3f90cd-865a-3119-c416-9654db0805da@linaro.org>
Date:   Thu, 25 Aug 2022 09:58:48 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH] dt-bindings: serial: samsung: Add 'power-domains'
 property
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>,
        linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220823145649.3118479-1-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220823145649.3118479-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/08/2022 17:56, Rob Herring wrote:
> Some Samsung UARTs are in a power domain, so allow 'power-domains'
> property.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof
