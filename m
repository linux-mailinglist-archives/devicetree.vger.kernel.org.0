Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1482F6FCCBC
	for <lists+devicetree@lfdr.de>; Tue,  9 May 2023 19:27:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234387AbjEIR14 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 May 2023 13:27:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230345AbjEIR1z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 May 2023 13:27:55 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C38A43C0C
        for <devicetree@vger.kernel.org>; Tue,  9 May 2023 10:27:54 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-50bc075d6b2so11668122a12.0
        for <devicetree@vger.kernel.org>; Tue, 09 May 2023 10:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683653273; x=1686245273;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4A92c1vtjQm0dyCbqNgY2DMk3DzF3junHi3LSgNBl4I=;
        b=TXeeB171PkquAzTh2Cb0+GAqKxFrnr/28vWsBAAsiX1GmpHMKTH4WIpmo9CM5wQ6te
         uaP/FI9TPDHJU3c4bbCTwYfVPrZVVdpduFFE5kF4vYNAXIKSSX5KMCDJLJfxg5FxZ9ax
         msfG4HsvxkWhIkEftL4Gwco1z7wYG3df+pYlRngxYt175YoPuL6YzRLh7YuTDKyYoVmJ
         jwFbJzPAPCnnsLJOz3El5GPJnmIrszkfckhATeMdbA/XOIpiwwzORkntblZYRHsNeEg6
         z3ipJpbqE0gluja6FTwOTzx9LC3w8TrU46l4wEDXvCj7/kbhdr/dBADhg+dh48TCXSsb
         BoHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683653273; x=1686245273;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4A92c1vtjQm0dyCbqNgY2DMk3DzF3junHi3LSgNBl4I=;
        b=fo5RADK+LZrAZPTtyJ05Knzqdu/Kf7ICaqpJB7C6YV6rAO3v/ryUOo2Zpr9kt8/8R1
         tR0yE3t/cE8cSXah6uO+Ueon+1VeW2JWs1D896nqJhlec1sXR1iuAs4GRz941ujLn78b
         BXWPpcQjrT6NKvNJc9bpr3tQKMeKHCTHhUwxwicNYRYlP4YDe9JrdpH+NKGIP9EVoP6K
         V6cQmmAnfKNnbBxn3F4Emj9tR/2jzzATsSsj/+Nw09CLKwvKJSoeOb1Sk51FzAQpqxos
         p3otzAFigwSOJ+opjuS1GA/3+YjzyJffvyfv3Uq/0hL627r0cal0sbhd0EPOYrHdIV4q
         gBxQ==
X-Gm-Message-State: AC+VfDxhvtLuRqYcrgfzjNPiT74CWGL0QKK7kAmGqrt5kbhAD8WnfrFD
        F+wex2VCNKJofvMc4beFZEdT+Q==
X-Google-Smtp-Source: ACHHUZ4MwBHj1nlk8aNZla64nFIvcafvGf40YO9N3RH/cCJQ7uMOJbn+Er+XO4QfiBoAembA4xcT0A==
X-Received: by 2002:aa7:c747:0:b0:50b:fb49:c4a8 with SMTP id c7-20020aa7c747000000b0050bfb49c4a8mr11588323eds.27.1683653273247;
        Tue, 09 May 2023 10:27:53 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d0d5:7818:2f46:5e76? ([2a02:810d:15c0:828:d0d5:7818:2f46:5e76])
        by smtp.gmail.com with ESMTPSA id y2-20020a056402134200b00504ecc4fa96sm960737edw.95.2023.05.09.10.27.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 May 2023 10:27:52 -0700 (PDT)
Message-ID: <e17bd606-dd58-0eef-2835-7a35b629d82a@linaro.org>
Date:   Tue, 9 May 2023 19:27:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/3] dt-bindings: display: hdmi-connector: add hdmi-pwr
 supply
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        freedreno@lists.freedesktop.org
References: <20230507201218.2339014-1-dmitry.baryshkov@linaro.org>
 <20230507201218.2339014-2-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230507201218.2339014-2-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/05/2023 22:12, Dmitry Baryshkov wrote:
> Follow the dp-connector example and add hdmi-pwr supply to drive the 5V
> pin of the HDMI connector (together with some simple glue logic possibly
> attached to the connector).
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

