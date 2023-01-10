Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A23A5663DF0
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 11:21:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231373AbjAJKU4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 05:20:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231149AbjAJKUZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 05:20:25 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DEDF5597
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 02:18:49 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id bk16so11164838wrb.11
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 02:18:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4lF+I3IZGlW6iQ6ahmwbsDzM8+tWLOBVyd6OiKcSFJc=;
        b=p3PParYA8KGG+kEGndNuuk53p2OotMq6umpPRQ7c/GtpxUk/GHFDH/K0b1+6876nn6
         eKL9dT/UJs5wg/EyX2ohFP2i/5le1ThOIQcsgdXMsXPWoH1lprlMSvvSEF9GJp0acL/r
         MJKihYYpwR6J1Ggl+5ukNiRDdCCB6+ReDIxfSBUAHC9FRjo4iKYYzYY1lunnj10Qo30I
         mDJWcUMVz3uy8EYeWID7sH5I5dK2T3FCc1U2bkqm4c9EThOTQ5b+U8Nwze/pkSYu13QK
         hoCfg1r4O6KagyZVMqPbtD4KQA7nfGQKjFlMPT1tLuipCauAgPeuy1u3Bc/QURpec8W+
         koFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4lF+I3IZGlW6iQ6ahmwbsDzM8+tWLOBVyd6OiKcSFJc=;
        b=yxkisShx8N+XQvwP1WzGyZwoC7Xkhwk1Dx/U5znjkc3WyNLiYnfEpXkEMJ1cxN0MNI
         QEzt8XOFmLg1l1voWVF76dCv8DVzrbyZxOFS8M3z/y/PQh9R1u31qc92m/oUppMQytZm
         9ISBLEjoFH7VLY0ZwkcKPM9FHNAvRAAFggipnaTe1V8dp9jeI8leeMa+2/3ic6OMmY7p
         eo/vUBf/63fphbD6G84MX5op+lkBILwsZpY1XpbUkKJf52ORjUbznjVZnbYnMqrlKAOF
         tDDN+aBRuur/zBddVlcj67QeBewnSq06aUFgXJIxvgYs33WWm/G5jHqp8D3qVKVMmffh
         Rj6Q==
X-Gm-Message-State: AFqh2kr7NyqSanJ2t0SXfIkfQWwc6+viN+N3UV7srzew+8byLToW+1aE
        uMuB3OB/AnFd1b9o06PiOnFfVw==
X-Google-Smtp-Source: AMrXdXsePNb6CJiFfvKx91mPGpm+s7CJpvoR6yOe0br86Uvjf8qBg99U0O0bjD8zr9GupHHCfFI1Kg==
X-Received: by 2002:adf:f746:0:b0:2b8:bcd8:1818 with SMTP id z6-20020adff746000000b002b8bcd81818mr9852381wrp.1.1673345928024;
        Tue, 10 Jan 2023 02:18:48 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id k2-20020a5d5182000000b00236545edc91sm10905950wrv.76.2023.01.10.02.18.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 02:18:47 -0800 (PST)
Message-ID: <6967cb78-b6b4-6801-cd7f-3d5abe503cbf@linaro.org>
Date:   Tue, 10 Jan 2023 11:18:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v3 1/2] dt-bindings: media: Add OmniVision OV8858
Content-Language: en-US
To:     Jacopo Mondi <jacopo@jmondi.org>,
        Nicholas Roth <nicholas@rothemail.net>,
        Robert Mader <robert.mader@collabora.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        linux-media@vger.kernel.org,
        Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
        devicetree@vger.kernel.org
References: <20230109120129.24519-1-jacopo@jmondi.org>
 <20230109120129.24519-2-jacopo@jmondi.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230109120129.24519-2-jacopo@jmondi.org>
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

On 09/01/2023 13:01, Jacopo Mondi wrote:
> From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> 
> Add binding schema for the OmniVision OV8858 8 Megapixels camera sensor.
> 
> Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

