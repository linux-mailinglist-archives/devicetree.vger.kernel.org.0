Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D58D8771A82
	for <lists+devicetree@lfdr.de>; Mon,  7 Aug 2023 08:37:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230440AbjHGGhb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Aug 2023 02:37:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230199AbjHGGha (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Aug 2023 02:37:30 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF0F41711
        for <devicetree@vger.kernel.org>; Sun,  6 Aug 2023 23:37:28 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-51a52a7d859so11011240a12.0
        for <devicetree@vger.kernel.org>; Sun, 06 Aug 2023 23:37:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691390247; x=1691995047;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MJUsdl71xTfW5cw9jShWN7bQN13L2c8KVaQNeqdmBx8=;
        b=i9eW+WP4Zh8JYB3xwfirDvSBJK3fe3VP6fSkVESj6Bt3uGqATOcjr1hHNNWFMxUxK5
         uBPtAk2ziKVJQy8ntt1GhuYygmmV0WeN9aP8teiamo7jLhH2IL61baHOyRl1PTO4m6Gk
         VBHMuclvnp/6fM5CMuLExt36NwTiYjDva0YqBvJnPlBNmzowVjLOYHr87KiMFq/qLGf7
         9VH5mqxcDIzdT73dFcUt+aaZxmdlqyteB86HQN9sRQXZB7LXPXe0PT9GnsDcV5em7X0j
         hFuhQf6EgOu99xFY9f3NaS8Yi69fK6NA5L8GEx7N4drOFJ3WFkgfCZ+4YrG8allQKIvl
         AhXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691390247; x=1691995047;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MJUsdl71xTfW5cw9jShWN7bQN13L2c8KVaQNeqdmBx8=;
        b=bR6g3f1ET+I6sDA7W7XLa+W9l8Xqop+XNQpsP9GF8HdNfIQns8ZZwRW2B7PThI3WdH
         mO4R6q6Ho+oqVkLrTIxva/aDAJ971GYEN8TGiF0mPZlXNksxpd0kY1LJvKmwPGypt1TO
         1hns+adPIeE2Iat8XeDqo68WYKTL16AHoedSEAP9PxHbAiYloCV6bDwqomYMtoxCX+GB
         KRFMcYnPaiE4bFImKfnJhc8RCX3iUDGmD+2blFLz2KyvK6NQ8MVADBD3EUzzYD2vUpPm
         AzvEoH20l08CDXRL8DqzsSWa/840tbprKoHcN9Ty7hpQ87MeTnZlM2DMWRUAQllOzMY0
         Xkvg==
X-Gm-Message-State: AOJu0YyIiYqmPdMWpYsXt2o5iw3FRUDe+mOXQZjFyOvixeg91vNfVW7G
        h2PaZ16A8Vz2hSBMS3HTaWWIKQ==
X-Google-Smtp-Source: AGHT+IH48I2n+o3nJXIDM47/JPWmQGzO7ZatYG2/6OHX3B77CEGddulYk2xbALN4FJJ70iFF2ayNqw==
X-Received: by 2002:a17:906:9bf2:b0:988:b61e:4219 with SMTP id de50-20020a1709069bf200b00988b61e4219mr6910073ejc.29.1691390247416;
        Sun, 06 Aug 2023 23:37:27 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id z25-20020a170906271900b0099b4d86fbccsm4820054ejc.141.2023.08.06.23.37.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Aug 2023 23:37:27 -0700 (PDT)
Message-ID: <2b41d0a8-5222-de07-2796-329066a45079@linaro.org>
Date:   Mon, 7 Aug 2023 08:37:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v7 1/2] regulator: dt-bindings: rtq2208: Add Richtek
 RTQ2208 SubPMIC
Content-Language: en-US
To:     Alina Yu <alina_yu@richtek.com>, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <1691389687-31211-1-git-send-email-alina_yu@richtek.com>
 <1691389687-31211-2-git-send-email-alina_yu@richtek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1691389687-31211-2-git-send-email-alina_yu@richtek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/08/2023 08:28, Alina Yu wrote:
> Add bindings for Richtek RTQ2208 IC controlled SubPMIC
> 
> Signed-off-by: Alina Yu <alina_yu@richtek.com>
> ---
> v6


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

