Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3518A579597
	for <lists+devicetree@lfdr.de>; Tue, 19 Jul 2022 10:51:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237115AbiGSIvw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jul 2022 04:51:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237118AbiGSIvu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jul 2022 04:51:50 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2378A6422
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 01:51:47 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id u15so16547202lji.10
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 01:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=uqcRTuP1/PnGezTwWXCroNTFnUr7WJ9h67m5Xsh5Hxw=;
        b=l/faQxKkdi5hUB6G5DNbfbqIGHVvSpAbQT9Rg4zT/ryIJkTpV+jOApo+PlhpBTrx0n
         X3z3CSyQSLW7SY8amqf6ovDcc6CJdVVnQTUCv1PN/YktasNAQHCUma6JukHuNUhxH3gt
         ATfDpo/rwF/oKlBFqwuIzQT3r9liX9JlNKA77Auu+69QErkJ2IYigq62nyW1qUHvLN8u
         l8DgN1akuPl3IwRiMwKJTP/DwSPe43D+IEtQGFdXWg5iLbd7zbHy88qmeuslKS+yjaND
         jSWM5/oW9BBPyT/dMLV4DWtwEXKD5ox1dRB6G5gXq7b1qRRLPRQJ+XKdakR6isD6owOj
         Kb+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=uqcRTuP1/PnGezTwWXCroNTFnUr7WJ9h67m5Xsh5Hxw=;
        b=q5yo/gzEaUvJpiCKZ34s+gRnO9IlP9tkIM/zcFEd5hBMnxWKgO0+ZirDHVD0ZuP+Cf
         LeVu0Xgr8MqHX7PkCJwFK559mGV0igLcKoGVQCfve6hTeCi/BVpRepgbDjI+FCLNRVY/
         vHYXNiq+IbBvpCIZe9lcgin2ymvZge9GR+57aHyYztoJFWED9nAJDu7DGdLR1FfQ+VIc
         EQlUf/R5Z2azMLA0wJ+trSyitZOBxyeatvq4SMBTIHosUkK5iKn9ZlMfpctdCBuMk7mn
         akINFm63Cq5Qp3y+4KDqawBCMXKNHqc92XTMMz72B5AgNUWBJJGQAgurzZFWKTWgx1Q5
         qt1A==
X-Gm-Message-State: AJIora9oelKxSzqA1b4+Aiw5JisNhd8xVelDi3kOTEDZgW2Jq9VI9Web
        kNzF8eXpdzEsV/X0yqmDrO6Vrw==
X-Google-Smtp-Source: AGRyM1svSYUmExybb+FbIdf157mpyQkfESF1g+5aJMvkWEtloGT+FhH9OSX0U3lMBgz2JcWCf01LkA==
X-Received: by 2002:a2e:b015:0:b0:25d:8fc7:9ed9 with SMTP id y21-20020a2eb015000000b0025d8fc79ed9mr13990159ljk.483.1658220705485;
        Tue, 19 Jul 2022 01:51:45 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id a1-20020ac25e61000000b0048a2995772asm2238006lfr.73.2022.07.19.01.51.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 01:51:44 -0700 (PDT)
Message-ID: <87da11a0-65e3-4b89-8209-fa470b09c67a@linaro.org>
Date:   Tue, 19 Jul 2022 10:51:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 1/3] dt-bindings: timer: renesas,cmt: Add r8a779f0 and
 generic Gen4 CMT support
Content-Language: en-US
To:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Wolfram Sang <wsa+renesas@sang-engineering.com>,
        linux-renesas-soc@vger.kernel.org
Cc:     Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20220713100603.3391-1-wsa+renesas@sang-engineering.com>
 <20220713100603.3391-2-wsa+renesas@sang-engineering.com>
 <62b1f1bd-c15d-662c-027e-1cdeff5eb580@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <62b1f1bd-c15d-662c-027e-1cdeff5eb580@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/07/2022 00:35, Daniel Lezcano wrote:
> On 13/07/2022 12:06, Wolfram Sang wrote:
>> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> 
> Krzysztof ?

You got now Rob's. :)


Best regards,
Krzysztof
