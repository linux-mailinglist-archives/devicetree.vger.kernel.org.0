Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4FE8268D2C9
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 10:28:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231143AbjBGJ2I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 04:28:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229805AbjBGJ2G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 04:28:06 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5A7410C8
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 01:28:05 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id hn2-20020a05600ca38200b003dc5cb96d46so12660296wmb.4
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 01:28:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=fcYMfFwrBDTiSgS1D5DQQyLqrqb91363x879A7vfPTI=;
        b=4wSdJscR7Zrk8CAATrkQ6roeRKQbEaEYZEEjsnESE9d7B7zDy6RoXwXDby6Q47+TKt
         +nX68CtmYqeCyNvEk26+QggvPF/niThLCzBwilyca0CQEEYXSgdRTTuuJnE8XXOFFJUD
         B7jH1Em2tmXHTkDoNcV44i3msTPv5oA+kwk+JCS9Ttxuc8rF7SD+0qVgnG1KAI6GBKUv
         hYR9eWe4LgEp/lqIJvrXaBFsPQV6/x3Ks9pM1jSxgr9yRjnVlWLwOQuBu3hnXnMzdo+x
         qhW4n/+a6Ms8E6Ts1CM6ziW9V3o8rc9zYj0uSfFv5awl7Gh8xEAIAfk/PCdaOZ5CeRjS
         cEdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fcYMfFwrBDTiSgS1D5DQQyLqrqb91363x879A7vfPTI=;
        b=ijMUTrbcwHvhsEKdrgQtuHhlIf5k8eHWIF/1wP4SfNeZhHVzTaBreswrgeWKVetG3i
         l6IaFzgqfBdbl3Jg+ZVDuoPkrj0fEnj5aUYzNXyOVrKNNWm4mvOmHOeXM36dBOJzL65P
         sO4Fj3KqFj+OCOlLsjDX0ZJwZAYeSg+ygjeJJDWZ9qdRWLfcRARqQgkJkNtCw91Uw5CF
         pDRQRkwnu/kKSdj/8TdypoVOW3PeSdsF0WQaDdeMSBlel9HG1yW7rVynLQ315q528uVO
         TH3r5xk5MyGGVFEhdN1ECmAcjyWJ+jGOurZ7NZLWwjno6TkL8qh99RX7Sp/b39xF32WM
         eZ8A==
X-Gm-Message-State: AO0yUKVvBxtcRgQWFNMYSxchHjmq2y5ga0i+11oKdd43+ieKJO+eqHme
        fyf5O42CU7k7xK3dLW/0yTl7QQ==
X-Google-Smtp-Source: AK7set9zNVx+57hEOZgnPtvD4Q05Tfog3tybMA2WkK7+QAyedz8hiD09lLmb812r+ufxAVP4VvrZwA==
X-Received: by 2002:a05:600c:1894:b0:3de:1d31:1048 with SMTP id x20-20020a05600c189400b003de1d311048mr2489815wmp.29.1675762084495;
        Tue, 07 Feb 2023 01:28:04 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id fc13-20020a05600c524d00b003db01178b62sm20449772wmb.40.2023.02.07.01.28.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 01:28:04 -0800 (PST)
References: <20230206153449.596326-1-jbrunet@baylibre.com>
 <20230206153449.596326-8-jbrunet@baylibre.com>
 <a711905e-dbfb-4258-62be-250a9549a9c4@linaro.org>
User-agent: mu4e 1.8.10; emacs 28.2
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
Cc:     linux-amlogic@lists.infradead.org,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 7/7] ASoC: dt-bindings: meson: convert axg sound card
 control to schema
Date:   Tue, 07 Feb 2023 10:25:53 +0100
In-reply-to: <a711905e-dbfb-4258-62be-250a9549a9c4@linaro.org>
Message-ID: <1jbkm53jvg.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Mon 06 Feb 2023 at 20:21, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

>> +
>> +  audio-routing:
>> +    $ref: /schemas/types.yaml#/definitions/non-unique-string-array
>> +    description: |
>
> You still have everywhere | which should be removed. Here and in almost
> every other description when no special formatting is needed.

I'm sorry if I misunderstood your comment. I thought the problem was
with the '-' of '|-', which I removed here.

Should I use '>' for the YAML multiline format instead ?

>
>
>
> Best regards,
> Krzysztof

