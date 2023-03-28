Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D7B276CB94C
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 10:24:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231913AbjC1IYO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 04:24:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231279AbjC1IYM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 04:24:12 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D71DD3C3B
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 01:24:04 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id h8so46216486ede.8
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 01:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679991843;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ywfDEh4j3TIad7B4v5GyW5cEwUOW1bLBQ19ZKpGmXtQ=;
        b=lIe36//we0gyKnYLvwkSXARqX6I5K/VdhR/nFiiQBaNRlzn67lPotVDQIdLxAmT7+x
         xZgE0zThDvODSfroz/rsBcTkls5kY5cxdfEHEJ69cNZW8g8nI8YkwZFyl11H/K8DR427
         whs5mIXjWQ+PO2oV1vmmu9HF8GMp5wyTBmz+QGUpk8k2IjvpvCgJgVOLmH0hxAz+Tx3S
         ksG8jepCM76ZZoXTe9i0033BosNhQxbYXUOn/kecUyiu6c0UZo//YeTFDjgwI2x4kpik
         Ove0VK+/zhXZYNLffbAWHLUZiDrOQZkqh7Plhpc0sT/3ert6WxSaz0HoVvjd1pje5EXB
         4RDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679991843;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ywfDEh4j3TIad7B4v5GyW5cEwUOW1bLBQ19ZKpGmXtQ=;
        b=UjQdvBZC8868KvYU6VAf3Y5zgWXVjRHNFrA2lCvMFbN31eUkDMaOL75kovUI2kbzXH
         MG/kfdbXtZk9xYcEAhUEdEAKKS6naeHbm/I3TrTXwvgRjet2J36SBWiJz7SHkJJ5H8zR
         Jek46KXy6rR71PUUJ3tb5SBZ6VMt4EX4f4W8+ZqKbhOvKfJ4xV75/X6fxLtZRUm0ZJph
         ukw9RmNwzRC9BgPwxjmI6CB/AsOVrBR3IooiN0ntqh2RWr6aiY0VfiWj91NsPWnWGUTP
         10s7MlULdsMxOmxNnbhPYRB7EUs3AR0WocjunVrjUieIe2kwyC3ABFZtMx0Vr5WMFRcx
         fm5g==
X-Gm-Message-State: AAQBX9eh5L+7WjuBva15CSm/XMLIiuO+uMXhu9+DGTVCCdXa6KMilzNb
        D83vYUI3JaFH2hxzs3jsnfk0OZyAN8AGM4p/zO8=
X-Google-Smtp-Source: AKy350YPZFDeXBQ1t0a9hoZeT7QNScxDyGG1LAp0JRVDNEdIQKa/fTHx35lWl5jX5FSZFuH7mh5Eqw==
X-Received: by 2002:a17:906:fcc9:b0:92c:138e:ff1f with SMTP id qx9-20020a170906fcc900b0092c138eff1fmr14321837ejb.18.1679991843377;
        Tue, 28 Mar 2023 01:24:03 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9e92:dca6:241d:71b6? ([2a02:810d:15c0:828:9e92:dca6:241d:71b6])
        by smtp.gmail.com with ESMTPSA id n22-20020a17090695d600b009222a7192b4sm14964442ejy.30.2023.03.28.01.24.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Mar 2023 01:24:03 -0700 (PDT)
Message-ID: <9490b5ef-3068-fcbb-0105-baf3839c21df@linaro.org>
Date:   Tue, 28 Mar 2023 10:24:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v4] ASoC: dt-bindings: alc5632: Convert to dtschema
Content-Language: en-US
To:     Saalim Quadri <danascape@gmail.com>, daniel.baluta@nxp.com,
        krzysztof.kozlowski+dt@linaro.org, lgirdwood@gmail.com,
        robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, broonie@kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230327211629.28643-1-danascape@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230327211629.28643-1-danascape@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/03/2023 23:16, Saalim Quadri wrote:
> Convert the ALC5632 audio codec bindings to DT schema.
> 
> Signed-off-by: Saalim Quadri <danascape@gmail.com>
> ---


I wanted to review it but for some reason you keep ignoring my comment.
So one more time:

Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC.  It might happen, that command when run on an older
kernel, gives you outdated entries.  Therefore please be sure you base
your patches on recent Linux kernel.

Is there something not clear about my request above?

Best regards,
Krzysztof

