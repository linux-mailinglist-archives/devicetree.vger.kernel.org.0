Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B101C5FDBBA
	for <lists+devicetree@lfdr.de>; Thu, 13 Oct 2022 15:55:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229894AbiJMNzp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Oct 2022 09:55:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229963AbiJMNy1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Oct 2022 09:54:27 -0400
Received: from mail-qt1-x82a.google.com (mail-qt1-x82a.google.com [IPv6:2607:f8b0:4864:20::82a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A72218113A
        for <devicetree@vger.kernel.org>; Thu, 13 Oct 2022 06:53:04 -0700 (PDT)
Received: by mail-qt1-x82a.google.com with SMTP id c23so1089092qtw.8
        for <devicetree@vger.kernel.org>; Thu, 13 Oct 2022 06:53:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JdJqo35BTY2tsVinmF5Y/RU3zAl6mP6wF+2gmvJf8Jg=;
        b=om9qDJ49DKA6JJ+RVy/8bJXEAYIt3k/6AU/dv5GoZmOCtocOvLS65zo9Mhq6do+5OJ
         tZED2LOkuzj4AOz4jzTLyL4LJ1rWr4pyVR0nzKq/5J0tHpYhVYBelUzkLVDmIZek8jhx
         yYBfqdQODTZoMC40xRQBX6r7vzsNNELsN7TjewgG7VnXZQIxgwJIhZHU+f26ubKbkjzo
         aKPdqxYxkJmYh+/SD+EczgnkYkku3vV9I6ICTr1Ks5LZIOA7OhrCZ+/TuEyhGixC+qsF
         i/bAWtH89WZWgatYiF82+PYYqx4/ddWpOcS2Vqpc2MFgZGtXC6FuElnMk1u+/oIyMwki
         LgtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JdJqo35BTY2tsVinmF5Y/RU3zAl6mP6wF+2gmvJf8Jg=;
        b=xZkEER7S5s5ZKGcV/n/ueIHdaaugPaZsOB30v9JyGTtTlEpaRbcMWXAVI2tbZo33CI
         AN/7179ulu59hRRYP2y6eJ0btg2QFbNMLRm1gnNWsseKnDjoWzxX1Mvnm7cSXzYaF3Wc
         ExFgep5FEeKZG7ACEbedwJQsYbYr/F5uSJmBhUQhSZbhFQWmYRoOxWCCb4UjH4LcWZ5Y
         80MlMA3ZS0FMJP5AyYMrZx1EjqduiZ3882KG9QJA8P2FQIqIINM0ohM3wJd05NZjPNIA
         7SBg/CxdtgUjnhwQAU+y4sY5wMVIwkBfXtthzuekrLGbnWryz12xdF3qmdL/uT3LT9YY
         GY3Q==
X-Gm-Message-State: ACrzQf1K52XNzuFjTS7UJMCGaAYePQt6ft/UMfPQ2IyMQTrwBlCy9ixM
        r9oxJi3Uqs7Okw6Q0FKKhPk7XA==
X-Google-Smtp-Source: AMsMyM7XzZxu88jktEQ5XtdSihBc183iXIJ+ebQ5D44pDQVupBHv+bD+2fnpI2GsNQhLpFR9a3B28g==
X-Received: by 2002:a05:622a:1342:b0:39c:b6d0:44d8 with SMTP id w2-20020a05622a134200b0039cb6d044d8mr9833201qtk.51.1665669065414;
        Thu, 13 Oct 2022 06:51:05 -0700 (PDT)
Received: from [192.168.1.57] (cpe-72-225-192-120.nyc.res.rr.com. [72.225.192.120])
        by smtp.gmail.com with ESMTPSA id f11-20020a05620a280b00b006ce515196a7sm18748783qkp.8.2022.10.13.06.51.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Oct 2022 06:51:04 -0700 (PDT)
Message-ID: <b385c210-3e31-32c9-4cbd-387bb889168a@linaro.org>
Date:   Thu, 13 Oct 2022 09:48:54 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH 2/5] dt-bindings: clock: Add ipp_di0 and ipp_di1 clocks to
 i.MX6Q bindings
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Anson Huang <Anson.Huang@nxp.com>, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20221013131839.1365394-1-alexander.stein@ew.tq-group.com>
 <20221013131839.1365394-3-alexander.stein@ew.tq-group.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221013131839.1365394-3-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/10/2022 09:18, Alexander Stein wrote:
> These are alternative input clocks for IPU available as external inputs.

You made them required, not alternative. Please describe in commit why
they are required (what was broken).

> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  Documentation/devicetree/bindings/clock/imx6q-clock.yaml | 4 ++++
>  1 file changed, 4 insertions(+)

Best regards,
Krzysztof

