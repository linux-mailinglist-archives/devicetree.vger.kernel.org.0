Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92CFC69A77E
	for <lists+devicetree@lfdr.de>; Fri, 17 Feb 2023 09:53:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229475AbjBQIxM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Feb 2023 03:53:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229806AbjBQIxL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Feb 2023 03:53:11 -0500
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 385965DE18
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 00:53:09 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id er25so1370295edb.6
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 00:53:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S6GeWOoQx0Ky1cbIHE0Bup9UWifLV+o2sILn8ayeKnY=;
        b=QxgaQoGzeoZY1F/VZ+Q0W3AjajUVQ+Kt+ZqDiacaMWmzgZVR4LVWDHLoMplo9I4K35
         Q0ISgIwgomqIfzL5XRKZ47bKjNkZVq6Y4y9wPokVYPVNt3TKgA4DyJMQ8aUwAqR3tYHf
         hVYuFrCdyGMHMAuIy9hlj3v7kP47Q6AueRLLAISClPoxun2xQhq70sicmmJmVx6xrJZQ
         kB4hj++qoHKJo4Q5jvJVR5aShCE0ieacmlJsFI3fBKz3NND4ySvBn9xkWu33Vzr2wrD8
         1t+xvi5oKiFLWtAkEdqN5MjMsA+e7Yn3zAPogTTjCgOs15XKUsFWNqiZDa1I1Xu0pbhc
         202Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S6GeWOoQx0Ky1cbIHE0Bup9UWifLV+o2sILn8ayeKnY=;
        b=XPmtom8/FeTHI0P2JVcRfO/dUulhbhV7O9sSkHN75yhxUtslesPQenm49GLCT0QJDe
         OB7x0R2QgnspuEZS8YVMtnS+I7GvXMM/Kr92lXI68EJ89ESB/kk9Z+X6jFwhSc/61Cg5
         SYBEqFbqwx/nTN1G3++ax8DOPA3rKVrBLEliGHfZNpZK1zWOMyEETnbF7jsPkdbXK4D7
         Hfb31gYiyjlYVDiot4/vBqyr62z9hxfaONsghSlpeUQnM5dnBg+wZEWj8SVK2Kh9UpH8
         Ye181z8ETf+swgx8N7gAthO2vd93rMayBEK19qD+kMPRApk2buKvDjmlK4UgiiaeF7O7
         4CHw==
X-Gm-Message-State: AO0yUKU7cMd58RGm+9Tog2ejAWBy0yPyXUUz7K4roXUM1mL9J+lIBA/y
        CgjIQWwLZ7eWjacr9rEgTF8xiXXThsFVz8OX
X-Google-Smtp-Source: AK7set+WAhbJBtRMafW8xY2b4naQQYCG0tcxib1fv6WQdl95gotbpMtuSiWUCqdYZf8aL7y6wyIAYQ==
X-Received: by 2002:a17:906:4d0f:b0:86f:d0c9:4bdd with SMTP id r15-20020a1709064d0f00b0086fd0c94bddmr8628080eju.27.1676623987631;
        Fri, 17 Feb 2023 00:53:07 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id g9-20020a170906348900b008b11ba87bf4sm738070ejb.209.2023.02.17.00.53.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Feb 2023 00:53:07 -0800 (PST)
Message-ID: <f2245eb3-f7f6-2591-d3e9-d26f6e153ba7@linaro.org>
Date:   Fri, 17 Feb 2023 09:53:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3 1/2][next] dt-bindings: power: supply: Revise Richtek
 RT9467 compatible name
Content-Language: en-US
To:     ChiaEn Wu <chiaen_wu@richtek.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, sre@kernel.org
Cc:     cy_huang@richtek.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        peterwu.pub@gmail.com
References: <cover.1676648773.git.chiaen_wu@richtek.com>
 <d099179cb531a7bee0ade1e8431feb9b967a4de3.1676648773.git.chiaen_wu@richtek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <d099179cb531a7bee0ade1e8431feb9b967a4de3.1676648773.git.chiaen_wu@richtek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/02/2023 09:06, ChiaEn Wu wrote:
> Revise RT9467 compatible name from "richtek,rt9467-charger" to
> "richtek,rt9467" because it has to match the "compatible name" in
> the source code.
> 
> Fixes: e1b4620fb503 ("dt-bindings: power: supply: Add Richtek RT9467 battery charger")
> Reported-by: Rob Herring <robh@kernel.org>
> Signed-off-by: ChiaEn Wu <chiaen_wu@richtek.com>
> ---
> v3:
> - Roll back the file name.
> 
> v2:
> - Add more description about this change in the commit message.
> - Rename "richtek,rt9467-charger.yaml" to "richtek,rt9467.yaml".
> - Rename "$id" as above.
> ---
>  .../devicetree/bindings/power/supply/richtek,rt9467-charger.yaml    | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/power/supply/richtek,rt9467-charger.yaml b/Documentation/devicetree/bindings/power/supply/richtek,rt9467-charger.yaml
> index 92c5706..3723717 100644
> --- a/Documentation/devicetree/bindings/power/supply/richtek,rt9467-charger.yaml
> +++ b/Documentation/devicetree/bindings/power/supply/richtek,rt9467-charger.yaml

Missing rename... I don't understand this patchset.

Best regards,
Krzysztof

