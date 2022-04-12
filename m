Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3534C4FDBA2
	for <lists+devicetree@lfdr.de>; Tue, 12 Apr 2022 12:58:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238597AbiDLKFm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 06:05:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352278AbiDLJmd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 05:42:33 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54FA813EAD
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 01:52:58 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id bg10so35953466ejb.4
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 01:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=dj68v7iu4Zt3Rzs0Pr5P8M0h7tKrLiKnCdRAOyQi4b8=;
        b=HQ55l30vbFVJvqpeXp1l8IXzSOjWY485eG2FfD+kUxM4bjNgoBmffODquo7YfAji4k
         v7opRaTpvu1EhneX/zxbWhlxQSotXi6u+ZBKyJ/MXh5r8hHzVoh9/cOhfEeX5hPz8QxV
         hgZBRlJExPbcUnCZAmVe9po7PtDUnmEK68QKMvsh/rP5T+ZuxPkcfhEF8kU5MNEAe+F5
         FWG7zYI7ix4Aaco6FL433jpU9vAb46I91/unZHoiE/2n8isXKF1YBB3OQtAN//JsKQvA
         qPneSOsT/dj1m2vLzNqQY7eNrVo8dk8AqFz/nzuR81MM8JMYZQvJ8gahf9jVcB6axKWS
         h99A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=dj68v7iu4Zt3Rzs0Pr5P8M0h7tKrLiKnCdRAOyQi4b8=;
        b=fSViDdxVaQ4pYnXX6Y1xidrgZ8LSkpgb9ndJ7MDgJ+M3N3Z6PXYy4pZFkB9qcjj/m8
         SillOe+oOrsklhdN2XS64xxvCv1rzrpBr4KZcpsczPLM/V7ZjhJQ3iTCJD9FKbFC30/l
         2yJrTRrpCN94XCw08MN3G3GYPqwXtXrYefe/O8MdaEjrYuwvqRJMlvS/7C6Me2QuA+Ed
         N4JXvDYqdyXNcoj0kqUA4TBgFFpmaBYGiXUkPP+DyuyyxIWOqnf8mZe5ynDpfsnEeSfs
         LszeULfkeHbEc3HuPHfM4705z0QtzZr4OOT1M4VyAVdrvPEYGDZy1nEctjWThvW4ZoEl
         praQ==
X-Gm-Message-State: AOAM532MGF0u/3Eg+zr6hz1+RALLyKlCfnLdokKp/ovY8Eo/qBkRJKAn
        Tuu6aR1qFj4eCvZC4z2cP30B2A==
X-Google-Smtp-Source: ABdhPJwn2W0cfR+I7hVcqq37Lr+K8WL4A4Qnbv5VSlQnKDOTGwkfVuSezqX9jlnGL2F05n3DFIAdig==
X-Received: by 2002:a17:907:94cd:b0:6e0:b001:aeb6 with SMTP id dn13-20020a17090794cd00b006e0b001aeb6mr33427745ejc.283.1649753576934;
        Tue, 12 Apr 2022 01:52:56 -0700 (PDT)
Received: from [192.168.0.194] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id s4-20020a170906bc4400b006e893908c4csm2156922ejv.60.2022.04.12.01.52.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Apr 2022 01:52:56 -0700 (PDT)
Message-ID: <0c87a45c-3d77-1941-f095-4547b8f46390@linaro.org>
Date:   Tue, 12 Apr 2022 10:52:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 2/2] dt-bindings: timer: Add compatible for am6 for TI
 timer-dm
Content-Language: en-US
To:     Tony Lindgren <tony@atomide.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-omap@vger.kernel.org,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Keerthy <j-keerthy@ti.com>, Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>
References: <20220411111858.16814-1-tony@atomide.com>
 <20220411111858.16814-2-tony@atomide.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220411111858.16814-2-tony@atomide.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/04/2022 13:18, Tony Lindgren wrote:
> Let's add compatible for ti,am654-timer for TI am64, am65 and j72 SoCs.
> As the timer hardware is the same between am64, am65 and j72 we use the
> compatible name for the earliest SoC with this timer.
> 
> The timer interrupts are not routable for the operating system for some
> timers on am6. Let's make sure the interrupts are configured for the
> timers on all other SoCs.
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
