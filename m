Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B888751E863
	for <lists+devicetree@lfdr.de>; Sat,  7 May 2022 18:02:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1386072AbiEGQGJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 7 May 2022 12:06:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1359786AbiEGQGI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 7 May 2022 12:06:08 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6404CE027
        for <devicetree@vger.kernel.org>; Sat,  7 May 2022 09:02:21 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id kq17so19493478ejb.4
        for <devicetree@vger.kernel.org>; Sat, 07 May 2022 09:02:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ZGe2WKTSwlYRLM8mEcooO0HHCmXLiPGKlmbzaSTlMLY=;
        b=Y7CCk9RztVEPm+vsTbcOLJTJtiVj2ZZJjSyaqRNaAkr8Nw8k7Y7ieul8PwDE80gQET
         6ghxH3wYw/sZgP5FJ4rVQhMSDxO7RJ2x7cEjyIV+VrGketdGNconKGkBLICLp9HVogzo
         uswvg9behkN+JUFyLCM+cMze1p30wnzMTXHKDzAS6Q8BrdzMJMPJDdCTHCnmkPoFhAwT
         MmfjPLtn1pWF9Ua9v7RhGlN+mbWMxYvZ2F2TmNGEQNqChh8lN9weHDoCxj9MSCYB5lcT
         XxsJ/YzVnwIbv9NGUxFV0ope1g4lsOjAmUqLscBnSiC5cAD4/K1guJ5RwgBeAESBVfXJ
         spDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ZGe2WKTSwlYRLM8mEcooO0HHCmXLiPGKlmbzaSTlMLY=;
        b=oomX0p5NWStDm2NGkOXUFgheBCwSIB/jZ8BpWzBbQ+oDP2ik/S83M5qwNZtlyPhP1w
         MqJ3bjSGel+J3pKOOnRYtUCk7mx7y5xusptt6WoMIEWK0zuuE06zQm0+7zKhscCy0IZi
         GXrIJ8lKgfj4dmelf/FckrqGlUPwv0pYRoHkb0g2DwA+9+LAoNa7FFFNe6R8xKaUhm0J
         5ewt7uaYBJDCHK1ngVcsbHHwbIRPgJRl2NSXleOm9uIgIdJMe4xCZsthGfWkf62hpOQX
         li1eDnRXiZB866RDstFLNPgCkJYF115eA+sxClabTQI4xT9mpRXWYt/QS6dNfSr7GpYj
         rlMA==
X-Gm-Message-State: AOAM530fIsvfg8WZQ1ViQ4ljFQ3BZWyZ8U6DQeZplTWCWeYkNZ9rW0zI
        u/d59osXmwgUOtYtacXNJVoX3g==
X-Google-Smtp-Source: ABdhPJzSP4Dy5K1PH+U5uRNNx39K/egsLJrR1KNAavRKOW5qU1KGhssurkrAq+UlSXAI3qM/T90iAw==
X-Received: by 2002:a17:906:2652:b0:6f3:a042:6b51 with SMTP id i18-20020a170906265200b006f3a0426b51mr7764866ejc.565.1651939340028;
        Sat, 07 May 2022 09:02:20 -0700 (PDT)
Received: from [192.168.0.232] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id ee38-20020a056402292600b0042617ba63a2sm3692833edb.44.2022.05.07.09.02.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 May 2022 09:02:19 -0700 (PDT)
Message-ID: <5dca492f-3afd-9da2-913c-00601dece441@linaro.org>
Date:   Sat, 7 May 2022 18:02:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v7 7/8] ARM: dts: Introduce HPE GXP Device tree
Content-Language: en-US
To:     nick.hawkins@hpe.com, verdun@hpe.com, joel@jms.id.au,
        arnd@arndb.de, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     Olof Johansson <olof@lixom.net>, soc@kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
References: <20220506191339.78617-1-nick.hawkins@hpe.com>
 <20220506191339.78617-7-nick.hawkins@hpe.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220506191339.78617-7-nick.hawkins@hpe.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/05/2022 21:13, nick.hawkins@hpe.com wrote:
> From: Nick Hawkins <nick.hawkins@hpe.com>
> 
> The HPE SoC is new to linux. A basic device tree layout with minimum
> required for linux to boot including a timer and watchdog support has
> been created.
> 
> The dts file is empty at this point but will be updated in subsequent
> updates as board specific features are enabled.
> 
> Signed-off-by: Nick Hawkins <nick.hawkins@hpe.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
