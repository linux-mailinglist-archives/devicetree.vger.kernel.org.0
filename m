Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D20C6C592D
	for <lists+devicetree@lfdr.de>; Wed, 22 Mar 2023 22:58:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229780AbjCVV6f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Mar 2023 17:58:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229508AbjCVV6e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Mar 2023 17:58:34 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D959FE1A9
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 14:58:32 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id h8so78809357ede.8
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 14:58:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679522311;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9PZ8LbgL1GCJ0WhsAnJBQpBWwgIIWREQb1ysFBtLIlU=;
        b=NdzjacQVjFpDskaHW+X0rKQ4vy5A/Puc1twYGKSURN1B2J1KXe9htTqg1n+Qp30ZuN
         ovVmb+K02bM3JmPQGUY8jhSfhQTv0+MEQ4Q+HoZWij79QEgzGXaRgajZR8HVphqVid0k
         1rosoaOwraP4Ewa1O6HZ04aj7kE9WFr4n2aq6K3gDX28h1m4LuJet7s5q6ydHpSf2KMl
         pZK/tlj9fObsgQUQyJm4IvtHcnepzb1Vn0bFkjBcTrlG0lFnkJK0cV7EsH5omIY6arz+
         jXToux6DQHVe4w+i4iWNIiPXbrS7XPAzBmJpa7Mz/Wl5/lWAb5Ya7ClWSBerkZ2Ggru/
         JpsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679522311;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9PZ8LbgL1GCJ0WhsAnJBQpBWwgIIWREQb1ysFBtLIlU=;
        b=fAbAXRBYcbgWiobJxRuHWDysXsdpHUafCcInQFNxGzAT+KDVeCVd9DGTpbJeHnHi9Y
         2ZTLiDoDc54ek+FqgtYTdKlQ2rvyaSrvYV7B8uW5ND9/Q6BPC2M/4cUZPHnjUUj/H5NW
         RMWZ5Ke8chUXa6ZThIuB5/CIOeiJ7jYC/LVqr8/viCMQuuJD85I9JIX8Qi3cb4otWQ+L
         mCmIW+cKHzn2lwweB4PdZPJWOLET0yJr6a06xFhJG9j72X6fV4DOcTTDE4WBpBN+Bir0
         BLArd+MafKNjs3wlzBTlNjSXvJFQ4FgpTfMpWLRyz/DFmWQwg9Q5wiVO4O1p3dVTatKc
         Hg9w==
X-Gm-Message-State: AO0yUKVPZKvrSP1NzZumhmS1Kx5GUwHWiZntiR73KtVqvnKFzBj0Ilm4
        vprTf9vwcND5br6sI8hyiIpXVQ==
X-Google-Smtp-Source: AK7set+RseUwiWB+MKVgsLyR6FutTCCqGtCKJU4uhZNWiOPF68JkPidPhc5yI9YDTudaQPR1yB0JrA==
X-Received: by 2002:a17:906:23e9:b0:926:9c33:ea4 with SMTP id j9-20020a17090623e900b009269c330ea4mr7317722ejg.27.1679522310723;
        Wed, 22 Mar 2023 14:58:30 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:626d:5729:6e71:4c22? ([2a02:810d:15c0:828:626d:5729:6e71:4c22])
        by smtp.gmail.com with ESMTPSA id g26-20020a1709064e5a00b00930525d89e2sm7690989ejw.89.2023.03.22.14.58.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Mar 2023 14:58:30 -0700 (PDT)
Message-ID: <2aa37662-c111-0388-9002-387b9340f1a2@linaro.org>
Date:   Wed, 22 Mar 2023 22:58:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v3 1/6] dt-bindings: mfd: Add the Lantiq PEF2256 E1/T1/J1
 framer
Content-Language: en-US
To:     Herve Codina <herve.codina@bootlin.com>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org,
        Christophe Leroy <christophe.leroy@csgroup.eu>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20230322134654.219957-1-herve.codina@bootlin.com>
 <20230322134654.219957-2-herve.codina@bootlin.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230322134654.219957-2-herve.codina@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/03/2023 14:46, Herve Codina wrote:
> The Lantiq PEF2256 is a framer and line interface component designed to
> fulfill all required interfacing between an analog E1/T1/J1 line and the
> digital PCM system highway/H.100 bus.
> 


> +  lantiq,channel-phase:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [0, 1, 2, 3, 4, 5, 6, 7]
> +    default: 0
> +    description:
> +      The pef2256 delivers a full frame (32 8bit time-slots in E1 and 24 8bit
> +      time-slots 8 8bit signaling in E1/J1) every 125us. This lead to a data
> +      rate of 2048000 bit/s. When lantiq,data-rate-bps is more than 2048000
> +      bit/s, the data (all 32 8bit) present in the frame are interleave with
> +      unused time-slots. The lantiq,channel-phase property allows to set the
> +      correct alignment of the interleave mechanism.
> +      For instance, suppose lantiq,data-rate-bps = 8192000 (ie 4*2048000), and
> +      lantiq,channel-phase = 2, the interleave schema with unused time-slots
> +      (nu) and used time-slots (XX) for TSi is
> +        nu nu XX nu nu nu XX nu nu nu XX nu
> +        <-- TSi --> <- TSi+1 -> <- TSi+2 ->
> +      With lantiq,data-rate-bps = 8192000, and lantiq,channel-phase = 1, the
> +      interleave schema is
> +        nu XX nu nu nu XX nu nu nu XX nu nu
> +        <-- TSi --> <- TSi+1 -> <- TSi+2 ->
> +      With lantiq,data-rate-bps = 4096000 (ie 2*2048000), and
> +      lantiq,channel-phase = 1, the interleave schema is
> +        nu    XX    nu    XX    nu    XX
> +        <-- TSi --> <- TSi+1 -> <- TSi+2 ->
> +
> +  lantiq,subordinate:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      If present, the pef2256 works in subordinate mode. In this mode it
> +      synchronizes on line interface clock signals. Otherwise, it synchronizes
> +      on internal clocks.
> +
> +patternProperties:
> +  '^codec([0-9]|[1-2][0-9]|3[0-1])?$':
> +    $ref: /schemas/sound/lantiq,pef2256-codec.yaml

Does not look bisectable. I also could not find in commit msg or in
cover letter description of patch merging requirements.
> +
> +allOf:

allOf goes usually after required, just like in example-schema.
Best regards,
Krzysztof

