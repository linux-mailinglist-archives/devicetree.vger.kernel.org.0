Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2A88704767
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 10:08:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230510AbjEPIIp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 04:08:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230522AbjEPIIo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 04:08:44 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E92B1448D
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 01:08:41 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-9659f452148so2523350966b.1
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 01:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684224520; x=1686816520;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9XW4XZAnemNwxZmDnCKO7GuXOkgFIvhJMeXABYP2D9k=;
        b=uB9hFvEGL38+U9DWhxt7On6x2Ke+O1i2LdhWkl64bS4R4gDJNy/h//Uhn8RFxDUbY7
         Xzia57KugNQPS9u0Do/hn0fORZYHQ4zqL7Hp+TpcfJkXEMdAvdHR9rlvn07I785pPvIo
         fZMUGH/mg4KR9qL3QdQkI9Sxggg4M6MBZcWTFCik+BOYqK7GYJUOJMtK6pI9dc5glb2/
         g/DJ/+rbOx4FywAmxoD/rug8gn42/9K54WdI2qZH72nqAmoy3uVcslvCod70ZDzAlNTz
         bpMmExj7594E0Z41yC+UhEWp0AHL4X+5qmNd+nMiMCvjkPsdyrkqRvYyz5n8f6qyrX59
         V/Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684224520; x=1686816520;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9XW4XZAnemNwxZmDnCKO7GuXOkgFIvhJMeXABYP2D9k=;
        b=FD/80YYV9NSHf7wxC4tuwfyrqJmKiew6/1IU0stV24YBCA2ECN3UBCrdFViTkSzfPz
         EPRgl8pdtwKL1k6tfFgv7NppBFRbvTG+twgNimw8R7x4wpM/R5Ufe7K2EuDOxIjKdfrq
         Rs6EZw26Y5iu1fMNtzS5bug5OBsOFCxLQcN7Pv7yqQc6FvW1KYf1BpIyVjvqTlPEpsC9
         xYxy1OzaIa0Mi1Q1rNxBi/RobF+HvWFmuoGny9i4kywEs2yjIxq5973SLtjhypL+R0Gz
         +JATA55zpTdiHxoInRRQWtsVB+CiklsNYQCs1ij67/rrF5ONZt866qQzGzLJkoVLPw6S
         MSmA==
X-Gm-Message-State: AC+VfDwSSL3IjLVhtwyj89aOpdgL97yoVO+yBK8hhr/0CjjT3SCvRJBL
        /+9jvZHRm/A3CPOL/+ejApX/vA==
X-Google-Smtp-Source: ACHHUZ72d+H/5xaxXybFu5FAabyCtks0yuSgACMr71nuX82KUfSm4g+hd2pSdXEoSCNE9OHTlUOfEA==
X-Received: by 2002:a17:907:6287:b0:94f:29f0:edc0 with SMTP id nd7-20020a170907628700b0094f29f0edc0mr35474416ejc.44.1684224520325;
        Tue, 16 May 2023 01:08:40 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:4d4a:9b97:62e:1439? ([2a02:810d:15c0:828:4d4a:9b97:62e:1439])
        by smtp.gmail.com with ESMTPSA id lv4-20020a170906bc8400b00966293c06e9sm10448443ejb.126.2023.05.16.01.08.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 May 2023 01:08:39 -0700 (PDT)
Message-ID: <eb0e4ce0-f754-8381-49e5-97dcc4a980a7@linaro.org>
Date:   Tue, 16 May 2023 10:08:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] dt-bindings: display: bridge: tc358867: Document
 TC358867/TC9595 compatible
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org
Cc:     Andrey Gusakov <andrey.gusakov@cogentembedded.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Robert Foss <rfoss@kernel.org>, dri-devel@lists.freedesktop.org
References: <20230515162033.66986-1-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230515162033.66986-1-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/05/2023 18:20, Marek Vasut wrote:
> The TC358867/TC9595 devices are compatible with the predecessor TC358767.
> Document compatible strings for the new devices, so they can be discerned
> in board DTs. Update the title to match description in the process.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

