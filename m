Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CEBF45181DA
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 11:59:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233912AbiECKCw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 06:02:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233924AbiECKCv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 06:02:51 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3994A36145
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 02:59:19 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id l18so32401982ejc.7
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 02:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=qpFJaPWpFDHxmhrocm4uecjAQ8uknTCbyGyStEa6VQk=;
        b=bJ2S//NJhRqYLwJ52bzEedbJpQJs9QPJu7Z0W1w54L9mICPPfetmRyZfCTLL7ACTwR
         3l9nuNZ4OtKckBYmnwjgio1eFGLDCRb72iznr7dFYpSTvUZj9siR/NSSSXUIAyLEYZO9
         /45+JQIjxkOR2bbxSprIwQqT5CcpSKaso362kNQRZCg+KxriFuHBZx30Lp4EpPhINvPT
         lb5ni2xIH9+avRdUxLy8sOo0Luv5myv7f/IprlRjCmMshj2yoSNy3cxFhf2NtYFmuW8S
         2asAc3vVz1nD8BzQEqBvSk4+hNLzOXDyhYrabmcUXPvyTc7xiOFdL2Q5rjAc0Qpet4Qm
         dRyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=qpFJaPWpFDHxmhrocm4uecjAQ8uknTCbyGyStEa6VQk=;
        b=uAEI9kho3zqxnyD0GyRtrqArJ9OfDaUSHfKcor8Q5sky1XySjEoIFNNcGSuwh5dAY+
         aOh0U7bgwid/oOTl5L8FnwthJME9vExQqgE+2ZhPDVJ950RtGAQdHKi5/3kPAJlF40wj
         yrB6h8/5YGeqGzAtx7O3G94yOw8P8mUud5N3Xlmlj9HrBZjNssPVO2WEkhgyq7iRZ7Kj
         +w8+Spcs8v5ZT6JIX1Aeim4PYQF1gJATkY5Mh5BesSKqkC9vAUU56A5jFHcN3NSSQz/r
         kFuyoOfo7cMeoeTnEk+4tBcoiD6hYbTf7gv3xy/NNQHTbxPYlqghypSarSutExen4+K7
         lXqA==
X-Gm-Message-State: AOAM5313ksgOqHfC1exoHJP8qHAkOWDGNVv2Q9zWsBARnBsk7NNONXpR
        E6j/JyR6uE9A+vHtfCU5vVrHBw==
X-Google-Smtp-Source: ABdhPJzojsz8XdujZwo49RYLtzX9FGHjg3dqesUZUvwuYaZZ1jAXOZiC3PnY8jawYhyx2hxotHE5fQ==
X-Received: by 2002:a17:906:3082:b0:6e0:111f:8986 with SMTP id 2-20020a170906308200b006e0111f8986mr14565590ejv.677.1651571957681;
        Tue, 03 May 2022 02:59:17 -0700 (PDT)
Received: from [192.168.0.201] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id u21-20020aa7d0d5000000b0042617ba63aasm7688564edo.52.2022.05.03.02.59.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 May 2022 02:59:17 -0700 (PDT)
Message-ID: <813bf68d-2b53-a1b2-8740-fa070cec5ccb@linaro.org>
Date:   Tue, 3 May 2022 11:59:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v6 6/8] dt-bindings: arm: hpe: add GXP Support
Content-Language: en-US
To:     nick.hawkins@hpe.com, verdun@hpe.com, nick@hpe.com, joel@jms.id.au,
        arnd@arndb.de, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
References: <20220502204050.88316-1-nick.hawkins@hpe.com>
 <20220502204050.88316-6-nick.hawkins@hpe.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220502204050.88316-6-nick.hawkins@hpe.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/05/2022 22:40, nick.hawkins@hpe.com wrote:
> From: Nick Hawkins <nick.hawkins@hpe.com>
> 
> Add support for HPE GXP. The GXP is based on the cortex a9 processor and
> supports arm7.
> 
> Signed-off-by: Nick Hawkins <nick.hawkins@hpe.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
