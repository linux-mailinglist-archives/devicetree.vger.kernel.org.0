Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EDDF468940C
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 10:41:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233032AbjBCJlG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 04:41:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233038AbjBCJkq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 04:40:46 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95C299B6FF
        for <devicetree@vger.kernel.org>; Fri,  3 Feb 2023 01:40:32 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id q8so3387953wmo.5
        for <devicetree@vger.kernel.org>; Fri, 03 Feb 2023 01:40:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=BcOFFh4ezLvd92fNkjmz7wpV7RsvIbDnXNZc1TtGyfE=;
        b=eXU3zeOvIS/sTiVvmDUhiTLRt6DYkGsjsFI1AX0qQb+Lg0yPfNg7WquyWULEMsAqc2
         ZIZeFSJ5CAoW5nL5Ft/UIgrcUry9QB797rFehtOyLalYzeVP4IEAGrV4/J62yuAiaH0O
         YK9kygwBhv/t9PBzbSUkC/vyoBgGtrNmJGhUVLspgxAy4lvs0EYULgVMcZsSXLDzLmfz
         J5R5FAIleJ+jEyDEWvgt5njPch6JHQNk+xmyerW3JV7jPlHeiMiiyCGXtY7My8Nz96YP
         3t3OZy2zPAyn0fO7zC8NAl4yePwNNZt5O8RcWhyeDaSYHqMHtlM+fg4jynGcBI+oflZa
         K2Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BcOFFh4ezLvd92fNkjmz7wpV7RsvIbDnXNZc1TtGyfE=;
        b=FMWBll3c+L+JyQnMVcrqP8BnsHkr52K8dst29yYQcL9PFtkoI0EYFIm2BKr+d4OyTp
         pKgjhnVcxzkLsAQlCAiqX+LWDnGupag541l+k/0N8nTAheFXK/2/HHgDWeUo7NkPmRTG
         KUhJYGlzxRHcWN99WH65dHf1M7lGZAiRi4Vqk2IOzGwXGAkSAC6pXQ0Wvoyv9rViLgAO
         1D3G5JWIR9Zh2wGQEhfyXxiMzerPJKeUn2ZvlJc3yVyrhOnBWuzfLZ/1O0wwJuZw9LT5
         Lm6kBVI/knfpjTwvB4gb6Ea0zcxuWDraDcJ07PmzcrhRmLf9R7ylTZhZJF0Z1I9yNHH4
         TvIw==
X-Gm-Message-State: AO0yUKXPmtKDxUPh5evEHre1bmDQPhxauLnCrX0vrOSDT1VIot2IoRc+
        6WrYnQ/514oPN3qqBgJyMXHsfg==
X-Google-Smtp-Source: AK7set9EIfUGCgZ5uGTG32ryzvXSU83lqMxBe2h4wXPjYKidwJ8U3BQjmte0UPJpZ9LnkSIAYZKdnA==
X-Received: by 2002:a7b:cb07:0:b0:3d9:719a:8f7d with SMTP id u7-20020a7bcb07000000b003d9719a8f7dmr8813045wmj.35.1675417231027;
        Fri, 03 Feb 2023 01:40:31 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id q14-20020a7bce8e000000b003dc49e0132asm7027471wmj.1.2023.02.03.01.40.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Feb 2023 01:40:30 -0800 (PST)
References: <20230202183653.486216-1-jbrunet@baylibre.com>
 <20230202183653.486216-6-jbrunet@baylibre.com>
 <512edf50-a74d-815d-1278-39fdeb1c2d35@linaro.org>
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
Subject: Re: [PATCH 5/9] ASoC: dt-bindings: meson: convert axg pdm to schema
Date:   Fri, 03 Feb 2023 10:37:51 +0100
In-reply-to: <512edf50-a74d-815d-1278-39fdeb1c2d35@linaro.org>
Message-ID: <1jtu03m6ia.fsf@starbuckisacylon.baylibre.com>
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


On Fri 03 Feb 2023 at 09:01, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> On 02/02/2023 19:36, Jerome Brunet wrote:

[...]

>> +required:
>> +  - compatible
>> +  - reg
>> +  - "#sound-dai-cells"
>> +  - clocks
>> +  - clock-names
>> +
>> +if:
>
> Keep in allOf here (need to move ref from top to here)
>

I'm not sure I get it. As it is, it seems to have the effect I had in
mind while trying with dt_bindings_check.

What does it do when putting the conditional under the AllOf section ?

>> +  properties:
>> +    compatible:
>> +      contains:
>> +        enum:
>> +          - amlogic,g12a-pdm
>> +          - amlogic,sm1-pdm
>> +then:
>> +  properties:
>> +    resets:
>> +      items:
>> +        - description: Dedicated device reset line
>
> Define properties in top level properties.
>
>> +
>> +  required:
>> +    - resets
>> +
>> +unevaluatedProperties: false
>
>
> Best regards,
> Krzysztof

