Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EBC55568074
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 09:51:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230453AbiGFHu7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 03:50:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230226AbiGFHu6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 03:50:58 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE9E522BCA
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 00:50:57 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id f14so1776149lfl.11
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 00:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=FlbkSQMuL6DPopX9Jhy9aRGujf7+Ghnha+4ZI42JhKU=;
        b=WNxpvWiCli1fRyqRMAOZzjflPEJ0tGPc1ystkDWhs+qsREsRWmzGCaGIMD1L88/aEN
         /eD1C5nA7Ble7aPcAcMVFmIWle/MsPdcsRjidqogMy5AIkWKJzX5w/6ZlGA+HZbWhUqH
         C+aPSiE4xygcBjDkr4fy8Bli7LA5wB+INObBcGWj2cGx0EVUqNtS4LP2VNZi8owm0t9a
         tC6muyIS4IxXFW3Jh6BY3lV8W0UNIoc0CksEl3+4vU7qJOjG48EUMiEGAy5pE+MMQ5Jw
         ompZcU711sHwBdcvaXLNODh7Qa3zxEpNiCQBzpI5RfnVAiF9ny62Gt66UZTBnceVgx15
         cL/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=FlbkSQMuL6DPopX9Jhy9aRGujf7+Ghnha+4ZI42JhKU=;
        b=VxGKRjJwwJ9LLoJbtssrWUAFldHAe785wiVwFI8obLPzmpjc6G31usr3+gs10rJc7F
         V8SeTkFe9mJxFiINBXJYmePYFK0IQpjp7kJVteDGUf2ya8TKu2Mtgga3PMr7ut7gF4iS
         yHm0JEW4OZdFl+p+MT+onEvsAC5FmV7v2BsEsZit8Ssy1NQ5knS4qmTKbe1HIPAQP3Hc
         mL08jIV6lAcykR06pSRrc1LrY8l/Lw1DK9R+aTgKOvidDkuVVcmzWV4VkNZEBm33dn97
         cvzPxicwlsQzggzwfjkTOt3RXm74XDrC05xuG3UlXWpTzfqc4ky8iEkFuYmbn3Nfz6Dw
         y21A==
X-Gm-Message-State: AJIora+Q6WfL6HH4OTm7PPqQaLzaXY+3llE03RxyN5KlEKBfAQYbEpFq
        Skmq8XuIzS4C1uKptrxMxDYdKA==
X-Google-Smtp-Source: AGRyM1u0kgzOnSifC1dR3yyTO02hojSssvCg6Op3JAouGsR15Dka0UvjOzpdL38x/YLB691Lm56A4A==
X-Received: by 2002:a05:6512:68a:b0:480:45d6:c0bb with SMTP id t10-20020a056512068a00b0048045d6c0bbmr22929850lfe.260.1657093854563;
        Wed, 06 Jul 2022 00:50:54 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id d27-20020ac2545b000000b00482feedb568sm990126lfn.182.2022.07.06.00.50.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jul 2022 00:50:53 -0700 (PDT)
Message-ID: <7f4101ff-7b91-7f22-9de9-06a650143df4@linaro.org>
Date:   Wed, 6 Jul 2022 09:50:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v10 1/3] dt-bindings: marvell: Document the AC5/AC5X
 compatibles
Content-Language: en-US
To:     Vadym Kochan <vadym.kochan@plvision.eu>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Chris Packham <chris.packham@alliedtelesis.co.nz>,
        Gregory CLEMENT <gregory.clement@bootlin.com>,
        Konstantin Porotchkin <kostap@marvell.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Robert Marko <robert.marko@sartura.hr>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Elad Nachman <enachman@marvell.com>
References: <20220705190934.6168-1-vadym.kochan@plvision.eu>
 <20220705190934.6168-2-vadym.kochan@plvision.eu>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705190934.6168-2-vadym.kochan@plvision.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/07/2022 21:09, Vadym Kochan wrote:
> From: Chris Packham <chris.packham@alliedtelesis.co.nz>
> 
> Describe the compatible properties for the Marvell Alleycat5/5X switches
> with integrated CPUs.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
