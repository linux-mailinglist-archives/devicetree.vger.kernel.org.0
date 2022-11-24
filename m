Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 03C4A6377A1
	for <lists+devicetree@lfdr.de>; Thu, 24 Nov 2022 12:27:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229810AbiKXL1f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Nov 2022 06:27:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229970AbiKXL1e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Nov 2022 06:27:34 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8F7E62F4
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 03:27:31 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id b3so2123282lfv.2
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 03:27:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g/RcUCBSrTzcNlLdWw7otlBZrxfGPBbiRBBDWc0XP4A=;
        b=HbCrXU+SzUJguUIe4zXMLiPiGN8Oa9EjS1Wu35u/YBnJoq5/8xUuNLz2b3USLgdr+2
         fskMhE4MJ5Ruiu3AdZOwN6d8Byd1ObVR5Rlhj0nwTcgG8u3GntM0xJd3R7pzRoRqqb2H
         9bttEo22Xwo5MJnldX0IRdQdv89MyyXoeCVvrlNBAhvYphYA1EqOXMQlmGmqs5NZAJqu
         e4kIOQQFuQPDzfgxyKRcvc+gWwu5aJ85pec7iG/JWtLwPcF08OuND1ggAaemojQmVVxJ
         cvB9J2HFyOoinRUqGRvrmhqpfStr3Xm/fui8TxtpCJgusJpG8VN3Jx/y5Fhm02Uc9fJG
         O5bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g/RcUCBSrTzcNlLdWw7otlBZrxfGPBbiRBBDWc0XP4A=;
        b=i0H1ZvIVAhzirDdhbAK3cBfMdTOvQM4taDmzLb5aH4OPN3AFs4ElCH1QoNywfobIyw
         U/LYt1Rwd8OeHGHZpBY+Gqmvr5gLljzNwFVw1ShWmWeSKzAgwICgf9gcXVokw2ENnmmJ
         2DGPclRu0kU8Ch4YkP4ohAl3lx4U8Vh6F62lWIsB4McUSgaEnk1uH9Bnf81ykUjpBzWi
         ka6MrdAk2YWlAkt+/Ahz3qZt2eixWaHvryFNZpQzNEeDIpz1Dyc3vmINcBwMgrZ00nff
         DIeJZD31kuCliTUecy7qmx0vGTYE12cCS0yqaH3k1ynSlGuigx6GyUCx89vIsKbruBEg
         6FJA==
X-Gm-Message-State: ANoB5pkDDF1CZV1/3eozravpWsxH8BthrE1hg0iq3O7mnvSmNND8MCJJ
        zDfPWVKAJzq5CdgLTVxeX1CH0A==
X-Google-Smtp-Source: AA0mqf6XG2yxSA16v4PWoQHaCgxxnQd1h0fWdr0Q6o7i6UnADvTLM9Oqi2ogidxtB+hSXcoYiodb9w==
X-Received: by 2002:a05:6512:3416:b0:498:f589:c1b3 with SMTP id i22-20020a056512341600b00498f589c1b3mr5473600lfr.406.1669289250094;
        Thu, 24 Nov 2022 03:27:30 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id bg25-20020a05651c0b9900b0027708462fe5sm77157ljb.120.2022.11.24.03.27.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Nov 2022 03:27:29 -0800 (PST)
Message-ID: <b54cd0a4-7ee8-e8c0-ceda-18b29588d535@linaro.org>
Date:   Thu, 24 Nov 2022 12:27:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: qcom: Add zombie
Content-Language: en-US
To:     =?UTF-8?B?5qWK5a6X57+w?= <ecs.taipeikernel@gmail.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Bob Moragues <moragues@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>, Harvey <hunge@google.com>,
        Douglas Anderson <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Gavin.Lee@ecs.com.tw,
        Darren.Chen@ecs.com.tw, Abner.Yen@ecs.com.tw, Vicy.Lee@ecs.com.tw,
        Jason.Huang@ecs.com.tw
References: <20221124115712.v4.1.Idfcba5344b7995b44b7fa2e20f1aa4351defeca6@changeid>
 <CAPao8GK93KMrtaXw7mNWOCE60zk=uCENLfBXhNRVxJXEnnaGFg@mail.gmail.com>
 <f58866c8-0164-2e59-4ff3-f9a4f9334e49@linaro.org>
 <CAPao8GKbdK79Z7w91x0T6JW9v6VFoeYSaXGGAuzB_=ukR9g0_w@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAPao8GKbdK79Z7w91x0T6JW9v6VFoeYSaXGGAuzB_=ukR9g0_w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/11/2022 12:20, 楊宗翰 wrote:
> Hi Krzysztof, Matthias,
> 
> How to use "get_maintainers.pl"?
> 
> I find this script in path "<MyCodebase>/kernel/v5.15/script", and output

This looks like v5.15 kernel which is heavily outdated. Please never
work on such kernels when interacting with upstream. The rule is you
work on either last mainline kernel (v6.1-rc6), maintainers for-next
branch (you should know who is the maintainer of subsystem you submit
to, get_maintainers.pl gives this information) or on moderately recent
linux-next. For bigger patchsets there might be exceptions for these
rules, but it's not the case here.

Best regards,
Krzysztof

