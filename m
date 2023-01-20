Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8556674F48
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 09:19:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230146AbjATITp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Jan 2023 03:19:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229830AbjATITo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Jan 2023 03:19:44 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4909C8875A
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 00:19:41 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id d4-20020a05600c3ac400b003db1de2aef0so3060561wms.2
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 00:19:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DejPImVCu9b73ZFjXinX4PYBTQWTGZ6YeR5qwnqlpkA=;
        b=XNCCufWi9BAYtfFA8Pjg2oK8lDw5HB6O0FRIfDmYltO6z1FR9MtCFE6t11SEfHAGl7
         ghqwu6g0qeBrL419RftxQe51DQDXjuNqDvXS5kQj1dnWOZLpq9RqOCDkfqYCOOKMdZoc
         mbdox9RD80yt9TyDtCs1fR/WiPZ7VLRDcOu3Sgv/OaokS9eIMLM3qHgx0O4xotl8t7dS
         k/WPuaKTvoV8EBr0R8BNRFdEdRs3oEAqhdU+GuAqGnLXSVAAzobs0m52xj3/4tM4jNbH
         EPA+FkWfvWp1DfdOF+wDp4+BhQzKr83rXdmfAcB8j1jPY8OEpHXvzvSLodeJXJEY3nZy
         paUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DejPImVCu9b73ZFjXinX4PYBTQWTGZ6YeR5qwnqlpkA=;
        b=qD8VC/gM7jJrRG+4B98qkq5zgWcTEV8ZFw56/EKw5WfZxiypV5B1RLjb5S7GIsmSB/
         yIF8UwrsnPKtPQDK/XTdFDsEU5ALL9IDg8DS1utjWPrp8J4Dntji1NeJD452bAXKOIe5
         qd+PvGegyaGlXesiF6wFCDUtES0eymZaKKtKD7HSywbOZOfxPn2Sz1olePbDNOMX5yjP
         Y3pXvLxitwKi0r7ilO5+iFdX3g8EjYCasElUulDhBAf2+Sr0FnehZItkrwTbLFh7RU5d
         w8GxgnUWvSzbUsEqGIW16feBxkd/y/y8AShJd6gVh22mbxHsyeGlfAZ9v4KRMeDEq1rW
         y0Og==
X-Gm-Message-State: AFqh2kpk82I4lU1YHKFZxsqBoqxK71Vbr9k7XK1Arclz+2wpxioVUNsB
        S5IFxpo6br/sGuVN+iOH+tGhiLAU7iME+U/I
X-Google-Smtp-Source: AMrXdXu/pKC2rNh+xmqUB2tFhOUrv4J1pVmi08/ed1IaMUKcL9X57+Kp0ItOfHb2ZKCtPTfu5RfoEQ==
X-Received: by 2002:a05:600c:3296:b0:3cf:82b9:2fe6 with SMTP id t22-20020a05600c329600b003cf82b92fe6mr13905566wmp.8.1674202779766;
        Fri, 20 Jan 2023 00:19:39 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id w12-20020a05600c474c00b003db2b81660esm1547808wmo.21.2023.01.20.00.19.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jan 2023 00:19:39 -0800 (PST)
Message-ID: <73834163-b06e-1f1a-47bc-d93607ab80b4@linaro.org>
Date:   Fri, 20 Jan 2023 09:19:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 1/2] dt-bindings: panel: Add compatible for Anbernic
 RG353V-V2 panel
Content-Language: en-US
To:     Chris Morgan <macroalpha82@gmail.com>,
        dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
        sam@ravnborg.org, thierry.reding@gmail.com, megous@megous.com,
        kernel@puri.sm, agx@sigxcpu.org,
        Chris Morgan <macromorgan@hotmail.com>
References: <20230119230415.1283379-1-macroalpha82@gmail.com>
 <20230119230415.1283379-2-macroalpha82@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230119230415.1283379-2-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/01/2023 00:04, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The Anbernic RG353V-V2 panel is a 5 inch 640x480 MIPI-DSI LCD panel.
> It's based on the ST7703 LCD controller just like rocktech,jh057n00900.
> It's used in a 2nd revision of the Anbernic RG353V handheld gaming
> device. Like the first revision of the RG353V the control chip is known
> but the panel itself is unknown, so name it for the device.
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

