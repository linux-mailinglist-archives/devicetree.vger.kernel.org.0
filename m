Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8A0F579819
	for <lists+devicetree@lfdr.de>; Tue, 19 Jul 2022 13:04:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235970AbiGSLEB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jul 2022 07:04:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234347AbiGSLD7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jul 2022 07:03:59 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAFF626AF6
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 04:03:58 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id n18so24163996lfq.1
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 04:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=F+YPwJ3OalhF2uEWkjDZQjPsGGtm1z0ZYbOsdNSmeBk=;
        b=F5hG1ciIO8BTpnanp2tu67fMURJ1JoFRQAsbWNKS+Qy3/N5k6mavM+zpyEWnGsIdWo
         RuWXixPtQoYxXTpoEJEe4UmuQsWuNyrbXP3aDttJRQ1sVDbH3Wz/oxyWpwpMCmb/r4PZ
         nd3hgz4cjIwihxH3xKIxaZ8hN2H0Be8q6COFpq8YhvYFXfSx7X+d5xBilNwzVM0bOyAL
         CxyPr+gXDfqFvXtkwLPNFm2YVc14Z3kTlgbq7/iPHhyaGoGYZAGEreuNGxOzPLvttrrT
         vLL/krA71tiQdyfBRhDgwlSWNAj42JQDyJtqEOPpM+nIdA7QU8DMmGC8MWhzrlzlyFue
         YXPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=F+YPwJ3OalhF2uEWkjDZQjPsGGtm1z0ZYbOsdNSmeBk=;
        b=Leac2Y/lOSPWmu8NeAC8317aRH829hugC2VzJ3ahgTdgxDvsctVRb0KHPeUel6wN4K
         Y9lVh2rIaQC2oUtdZ1LbwLMVtvdSGl8JNDUnb/tlfag8DnbBp10eKNqI2jlPhGL533j3
         /T3QglWzT1nuvVtM0D3e0N9+iYstB9cCd0OPB+pwPrfZGV7xe/7DapS1IN4AUqUK9Qm2
         p6GQ1mtCdrZC3M4zWqgygvbKTlVzSlxI9awXiNktnvzEvtHu/bHTIRFcrb+COnKPIYxj
         6RNAcjSxHohtztNPZTLtWtry6p3t3/Vb0UqcyxC4WBiSwiLAyI5uyZD6wpq6uycgGGIm
         IS+w==
X-Gm-Message-State: AJIora9O/a6RM3pbSmevFVvAMS/nUe5MMqu5ZgxdV4yVjbs547aiMmgk
        2xaimIJ4l52G8fBsqAvF7C8WyA==
X-Google-Smtp-Source: AGRyM1ttFWfCdMSUUs3sHQIw2bbRarjjsjCbfQfhB4v3yEDUBVXvq/IImwKAuowuawz9yl8kOULpcg==
X-Received: by 2002:a05:6512:3b9f:b0:489:e009:ae0c with SMTP id g31-20020a0565123b9f00b00489e009ae0cmr18648844lfv.213.1658228637111;
        Tue, 19 Jul 2022 04:03:57 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id 11-20020ac25f0b000000b0047862287498sm3153889lfq.208.2022.07.19.04.03.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 04:03:56 -0700 (PDT)
Message-ID: <ba62b5a9-cf95-8ad2-3bd1-e2f2de5ab6d1@linaro.org>
Date:   Tue, 19 Jul 2022 13:03:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v3 1/2] ASoC: dt-bindings: atmel-classd: Convert to
 json-schema
Content-Language: en-US
To:     Ryan.Wanner@microchip.com, lgirdwood@gmail.com, broonie@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
        claudiu.beznea@microchip.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220715162922.660859-1-Ryan.Wanner@microchip.com>
 <20220715162922.660859-2-Ryan.Wanner@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220715162922.660859-2-Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/07/2022 18:29, Ryan.Wanner@microchip.com wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Convert atmel CLASSD devicetree binding to json-schema.
> Change file name to match json-scheme naming.
> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
