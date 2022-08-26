Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDAEC5A2DAF
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 19:41:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344798AbiHZRlM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 13:41:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344682AbiHZRlK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 13:41:10 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72CF16BD75
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 10:41:09 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id s6so2872828lfo.11
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 10:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=nUlx9ko8wwPIWaajdN+H4sVBBElh2+eZYyvp7hKDYR0=;
        b=BWXNrhThS6OFkl+q4j2ahLFw+oYkV5gbm2UT63gW70zIS56ctTW6eRPta91Erwwn4o
         7P/Lfa6XIO1j+uMwa5+MxXIciTcG/FIA4SyIyBpuv5cXW+7sEU/Per0jCUg58rwU4po5
         wjWuBFVvTFiNarwcIIxkQ0wtIfLF67a6uVIz2gibU/+zwuH/bH3wea4xhHS0nQa57AP3
         VzttVucMvEOkGLpjKqF7Ggkjck64pF2U2jA8gK5Bml2xPsBAus4qh54BZ9JDrCqghsno
         v6OBb8Qg5SB7e6etkZvHz5RllGTZ17kRXGtCJEzsDVMFWrobk49TIvlF0zxQTbcMRYHT
         aXuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=nUlx9ko8wwPIWaajdN+H4sVBBElh2+eZYyvp7hKDYR0=;
        b=R90KW4hMXCFDtN3n95thdGINSLU6pJFWbxeByCrgY1nRdAPGBVP8ontzIa045T09V+
         nEaiWG2g/AjNrky/bx7tmr3RoBby7rcy9BkmdWvLu82qzlPcB3AOhYJh5Js5SFyGoczF
         ITy+etBf0z8Rg/8aplg5gAFAUdMbirzi7Rq1TdmCI2mZb3UvjchXqfL9L1mn9SPKDr90
         OuGFTMMyRisecSVWZSGa3NQa2y0n6XLOfoFl03GNy28epvKT+p2JBwYR4P02Q76UeJaf
         cV8PAWrIyFjaY8kcUjxg9g2r7qqUxfUGfo3vxld1Gp0LaaE8vZIDUo6Gr4QtyVEkCD8h
         BkuQ==
X-Gm-Message-State: ACgBeo0k6afvh9k1pWCyaYiPwkaQF2bjE5hXalajjLSCbqx76KhV+OCF
        kp6crXmiN4lPOouQwWabSehUFw==
X-Google-Smtp-Source: AA6agR5moO6beTsi7x5rTAlv81zymG0N3o7VTs6or6Mmy9ttqgUCtxtTmpvU07eWCklNUKhtsBkNHQ==
X-Received: by 2002:a05:6512:ba8:b0:492:e5e5:b0ea with SMTP id b40-20020a0565120ba800b00492e5e5b0eamr3122546lfv.555.1661535667848;
        Fri, 26 Aug 2022 10:41:07 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id b16-20020a056512025000b0048a891e4d88sm431575lfo.193.2022.08.26.10.41.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Aug 2022 10:41:06 -0700 (PDT)
Message-ID: <8dd88179-66e5-2f08-4cb9-6677b154a2d7@linaro.org>
Date:   Fri, 26 Aug 2022 20:41:05 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 2/3] dt-bindings: net: sparx5: don't require a reset line
Content-Language: en-US
To:     Michael Walle <michael@walle.cc>,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lars Povlsen <lars.povlsen@microchip.com>,
        Steen Hegelund <Steen.Hegelund@microchip.com>,
        Horatiu Vultur <horatiu.vultur@microchip.com>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc:     UNGLinuxDriver@microchip.com, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20220826115607.1148489-1-michael@walle.cc>
 <20220826115607.1148489-3-michael@walle.cc>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220826115607.1148489-3-michael@walle.cc>
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

On 26/08/2022 14:56, Michael Walle wrote:
> Make the reset line optional. It turns out, there is no dedicated reset
> for the switch. Instead, the reset which was used up until now, was kind
> of a global reset. This is now handled elsewhere, thus don't require a
> reset.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
