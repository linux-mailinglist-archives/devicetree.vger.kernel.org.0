Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D06A6FCCB7
	for <lists+devicetree@lfdr.de>; Tue,  9 May 2023 19:27:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230025AbjEIR1f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 May 2023 13:27:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234635AbjEIR1f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 May 2023 13:27:35 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD8A21BE6
        for <devicetree@vger.kernel.org>; Tue,  9 May 2023 10:27:33 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-50bc5197d33so11635126a12.1
        for <devicetree@vger.kernel.org>; Tue, 09 May 2023 10:27:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683653252; x=1686245252;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J+U7jnsW2/1Szwj7XNnMB+Dl1Vt5i2Y6UVGTsdY2yRE=;
        b=y6WgmsHadAoYTbdHt4d9/+ltM/rkVmQJYqIp3wrtivu8aCZM6JyEwJqB9wOw6XS1Ql
         LBCcM+55a9TyM5Ph9j1PQ4MnjISAsm5XPOcyDvW/clLUs1Ug05S8byRNr8Y+PBZS9jys
         18z2phD2//wqm1Sme/nGHNJLoVEkxG+sUvKThqZfQM1TNTjYjdw5In0aTC3XnxClI5NH
         A/dNWFlPlwqTZTtbzqjYAY0tfe2ZZr7GIh6eqwLwK/yRBVmT3QadLp2fSyqErs4ceIdU
         lVzn3hEM7sPHgw3qs2qGUBPOx8tpgI+iRifImN8h4wMCepIKs9+PnN8jB7XrAWLDzBRW
         8isg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683653252; x=1686245252;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J+U7jnsW2/1Szwj7XNnMB+Dl1Vt5i2Y6UVGTsdY2yRE=;
        b=IyDhb4Ipc26k+o23OqVEdO9QrlhcTwzVtHZxUn4Yzv2hmMSV0O+vxwwNGaodl4sluW
         +RIHawjyKfx2vqHdclalGz4APr8pBwL4Ov/GvaCEdUKB1VR8GYpMAGbxal7WPmEM3pcp
         9i0ePsvvThENMWpLifkZHWU+qAJhePMLJewU4seUrTdN3zaRD224qBXPeS9+hIyQUBiL
         NNMVuNMtBRcERNXdIzc4qsaaanftiJPZNTOGDsVXO5KrhDeLv/5yVofE5Mb7WzkP8ZJX
         j31pO5trCnYNcmhFLIp8KjOi2xbkq2f/gqB5LA9/UdGspg9Z2xlL1Ba5XikB6B8mzQDJ
         JiLQ==
X-Gm-Message-State: AC+VfDwtK0kiMX0FrFvl7KcgxlM2hpqfSxdhMjIM+AYMBPb9o3/V53qw
        Ux96pskXvT+qjLsRMpudUAzNiA==
X-Google-Smtp-Source: ACHHUZ5G7QdEL3IgRrvlwboHSIWNmO4QxuaUfdbM5PU4g1EYtGYyKUbDrt72B1UTpqVoCV4n5PY9OA==
X-Received: by 2002:a05:6402:1490:b0:50b:d462:7e0 with SMTP id e16-20020a056402149000b0050bd46207e0mr11779678edv.28.1683653252345;
        Tue, 09 May 2023 10:27:32 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d0d5:7818:2f46:5e76? ([2a02:810d:15c0:828:d0d5:7818:2f46:5e76])
        by smtp.gmail.com with ESMTPSA id bf18-20020a0564021a5200b004bd6e3ed196sm969314edb.86.2023.05.09.10.27.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 May 2023 10:27:31 -0700 (PDT)
Message-ID: <d64eaa1f-1dd5-2037-8494-95ae456d92a4@linaro.org>
Date:   Tue, 9 May 2023 19:27:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/3] dt-bindings: display: hdmi-connector: add hdmi-pwr
 supply
Content-Language: en-US
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh@kernel.org>
Cc:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        David Airlie <airlied@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Jonas Karlman <jonas@kwiboo.se>, devicetree@vger.kernel.org,
        freedreno@lists.freedesktop.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        dri-devel@lists.freedesktop.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>
References: <20230507201218.2339014-1-dmitry.baryshkov@linaro.org>
 <20230507201218.2339014-2-dmitry.baryshkov@linaro.org>
 <168349474255.3488452.11372136807020227216.robh@kernel.org>
 <20230508025623.GS23514@pendragon.ideasonboard.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230508025623.GS23514@pendragon.ideasonboard.com>
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

On 08/05/2023 04:56, Laurent Pinchart wrote:
> Hi Rob,
> 
> On Sun, May 07, 2023 at 04:25:44PM -0500, Rob Herring wrote:
>> On Sun, 07 May 2023 23:12:16 +0300, Dmitry Baryshkov wrote:
>>> Follow the dp-connector example and add hdmi-pwr supply to drive the 5V
>>> pin of the HDMI connector (together with some simple glue logic possibly
>>> attached to the connector).
>>>
>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>> ---
>>>  .../devicetree/bindings/display/connector/hdmi-connector.yaml  | 3 +++
>>>  1 file changed, 3 insertions(+)
>>>
>>
>> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
>> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> The issues below don't seem to be related to Dmitry's patch, are they ?

No, can be ignored.

Best regards,
Krzysztof

