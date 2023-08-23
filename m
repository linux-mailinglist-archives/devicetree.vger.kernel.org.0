Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B46137854BA
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 11:58:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231202AbjHWJ62 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 05:58:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236165AbjHWJz5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 05:55:57 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF17C30CA
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 02:53:59 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-99de884ad25so724755766b.3
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 02:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692784438; x=1693389238;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=snyW6QooaPXxRKq026Bpqwbivey9Dhp9wOAD4tTxaMM=;
        b=JhXVDWs3XswyJo84RMqihcUmZtWcGYewSOz3Ew/Leb8e0w/FeAsxS/y8N1HLPvHRLd
         gNnfUE9ZoiBmpfHTIWdqAlZpGoxIIp9D+XgrtFc865nMWes3h7XWvYDvBKvW82qdRGvo
         E0u6bt45VhUdzCe4nZ0gZbTxQkO5ScaE84EJP8V38xGOcqYEUgqqR2zm5h0zvkV8XcNi
         ly2HHZbHq2Y+Ae89nPuUnqu0gNRXVzHmJZaX6y/jfw4bLubPo9FN+th2jjddDI03ogzF
         572jIhTTpKB/dUQzBTY3Nd5M1TTI+Ceulg0tpSGTmY8uKwaOrF9AqnwjCLjMBfGFNfLA
         rr2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692784438; x=1693389238;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=snyW6QooaPXxRKq026Bpqwbivey9Dhp9wOAD4tTxaMM=;
        b=j8d1XkrTMlOhqlo4wO0VUlNZlZXKdr4asRQBJ/JZP08r4+OycaYyOhYt6jPEKniLWv
         Y6HMdWEr05vW8fgDKaTLIdCn4h21gJzg+9DftRyhhmcf2BdNvfCLoVJTWEHHiPjABasj
         dzzMdpYfGt63ij4Ay6vHFglC5KFF2jisE2PwHmqSACAvXq2rv/OvWlb28It+yQctDF+J
         GHr+Gvr/I5BrRbdWyVeNqAoK1k0vcin1W+lkNrvA5qLim5V4vTn/XrYoKYNAQWinChNh
         2EoYHvCblDTm7O/xrS3bMORTZhIu5z3HHBmFMVOEVeNuOEQW1ezfFG0DMc0iBZODIwk/
         qcPg==
X-Gm-Message-State: AOJu0YzsO6Cl1bo4tF+pBGYl/8bKzpXhhETMzIjfEjHfvjxImQA8+jW3
        uq17+ASWt/dFdppElEm1FVSOfg==
X-Google-Smtp-Source: AGHT+IFD76c4FCTBYsFBDjJ4/evxGKRAuH6eb0Ylbul3hf6RYEUkGvi2jH6NKTEN/9TGRqlQYHdctQ==
X-Received: by 2002:a17:906:2d0:b0:9a1:cb3c:ba5c with SMTP id 16-20020a17090602d000b009a1cb3cba5cmr2244200ejk.68.1692784438286;
        Wed, 23 Aug 2023 02:53:58 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id w20-20020a170906b19400b0098f33157e7dsm9562610ejy.82.2023.08.23.02.53.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Aug 2023 02:53:57 -0700 (PDT)
Message-ID: <32667691-ec7f-0dd3-b3ba-fdcd40f1fbca@linaro.org>
Date:   Wed, 23 Aug 2023 11:53:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v3 2/3] dt-bindings: display: novatek,nt35950: define
 ports
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        dri-devel@lists.freedesktop.org, David Airlie <airlied@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-kernel@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        Del Regno <angelogioacchino.delregno@somainline.org>,
        devicetree@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
        Jianhua Lu <lujianhua000@gmail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20230823081500.84005-1-krzysztof.kozlowski@linaro.org>
 <20230823081500.84005-2-krzysztof.kozlowski@linaro.org>
 <169278171739.1524810.6441506448861500441.robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <169278171739.1524810.6441506448861500441.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/08/2023 11:08, Rob Herring wrote:
> 
> On Wed, 23 Aug 2023 10:14:59 +0200, Krzysztof Kozlowski wrote:
>> The panel-common schema does not define what "ports" property is, so
>> bring the definition by referencing the panel-common-dual.yaml. Panels
>> can be single- or dual-link, thus require only one port@0.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>
>> ---
>>
>> Changes since v2:
>> 1. Use panel-common-dual
>>
>> Changes since v1:
>> 1. Rework to add ports to device schema, not to panel-common.
>> ---
>>  .../devicetree/bindings/display/panel/novatek,nt35950.yaml     | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:

Previous patch seems to be missing in Patchwork, thus this error.

https://patchwork.ozlabs.org/project/devicetree-bindings/list/?submitter=83726&archive=both&state=*

Best regards,
Krzysztof

