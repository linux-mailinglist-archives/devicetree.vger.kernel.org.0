Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5414E68A386
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 21:28:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231171AbjBCU2G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 15:28:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232835AbjBCU2F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 15:28:05 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 613B0B763
        for <devicetree@vger.kernel.org>; Fri,  3 Feb 2023 12:28:03 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id k8-20020a05600c1c8800b003dc57ea0dfeso6845008wms.0
        for <devicetree@vger.kernel.org>; Fri, 03 Feb 2023 12:28:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OcaR471TXAjGr31MjNbqXuBFmDxa1S6cNX7l4YGYmRI=;
        b=SezcXEcWF/dRKemlQQqQWL8NAYRbNZuSckOdAlUWdAlQWpoWXU5+usWAHMA82BZBLg
         CXMBSlZbEGaxjypt6Nfl0LkI9duN6m5fNPGEgGmIGAZOb5oCE5TO/Od8nQwCnEPL40N0
         zbUDICs8/GZ8i596nTr05XvUC7rjuRvdgdoAkptotziPI32OLe9w9GB3a75qEeMMne0x
         UeQMPNIIWo2T08GbT02VdVoXOskEeQOdTZohR5myokK1bR3slxoQ7DzJMiGISiAKXEuk
         5d6EiVdMUeAWT2NKr/JXCVXQ6bLsF6Hnct6TneOHGvketNvDbD5c9etecDSFFEnA+AJj
         EcOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OcaR471TXAjGr31MjNbqXuBFmDxa1S6cNX7l4YGYmRI=;
        b=UrytAmsB3Kyro4UTve9IgZjQ/HnJzvWEGXObbhGI6VqEIMMbaBh4UhjXD3gVZm3psy
         LxlxE+LfLZrZ9Pf3Bsf4MiKBQNW8qCAy8vd3XNTC2GwCt0ELKI3E/4dy9ab2EGe4Pbhn
         nbd6xbqhsjZFspSU3W+lJH8wKVRw4EkVB7zkWHTFRXHkk6+WWFZnyZNT9ONZiQQpvvLA
         ueSJnBs7OSoaHL9mgrejpGfxz4IvyuNAMkEAk3BJZ4hDyRi/fES8vLor5LNRu8OhEv93
         7hUHpgAOVhWQubqrrceZBVUx2j+p/JUYoniwJhDNLGVKS3ggwv0+YF/uwpDYqsgypryU
         QUNA==
X-Gm-Message-State: AO0yUKX8CvzywKDpCRBqY7jVhd3IKJ8bU6efjirohgJdPhMx+gelCOwn
        /khtasdBJwkpNg5W5iwZY6Dcng==
X-Google-Smtp-Source: AK7set96RpaTqpX9Bfu005sId7DrlnJXnLTXqwwUkaTAzF2cO0cHdxloiYdhXNMOBbDNxsyHPR3krw==
X-Received: by 2002:a05:600c:1c06:b0:3d9:fb89:4e3d with SMTP id j6-20020a05600c1c0600b003d9fb894e3dmr11971335wms.28.1675456081778;
        Fri, 03 Feb 2023 12:28:01 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id q9-20020a1ce909000000b003dc34edacf8sm8466662wmc.31.2023.02.03.12.28.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Feb 2023 12:28:01 -0800 (PST)
Message-ID: <79474344-0bf1-ba0e-6bae-0ccb4e3a3aee@linaro.org>
Date:   Fri, 3 Feb 2023 21:27:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 9/9] ASoC: dt-bindings: meson: convert axg sound card
 control to schema
Content-Language: en-US
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
Cc:     linux-amlogic@lists.infradead.org,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org
References: <20230202183653.486216-1-jbrunet@baylibre.com>
 <20230202183653.486216-10-jbrunet@baylibre.com>
 <f229e181-c56d-6ec7-2a1c-754690f70438@linaro.org>
 <1jfsbmn7ql.fsf@starbuckisacylon.baylibre.com>
 <fede7119-4a9b-76a1-ae1a-7af5dd8d1032@linaro.org>
 <1jbkmamtfg.fsf@starbuckisacylon.baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1jbkmamtfg.fsf@starbuckisacylon.baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/02/2023 20:34, Jerome Brunet wrote:
> 
> On Fri 03 Feb 2023 at 18:59, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
> 
>> On 03/02/2023 15:13, Jerome Brunet wrote:
>>>>> +          Multiplication factor between the frame rate and master clock
>>>>> +          rate
>>>>> +
>>>>> +      sound-dai:
>>>>> +        $ref: /schemas/types.yaml#/definitions/phandle-array
>>>>
>>>> Old binding was saying it is just phandle
>>>
>>> It is just a phandle but the bindings used to have problem with phandle
>>> that had cells.
>>>
>>> See:
>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/Documentation/devicetree/bindings/sound/amlogic,gx-sound-card.yaml?h=v6.2-rc6&id=d031d99b02eaf7363c33f5b27b38086cc8104082
>>>
>>> Was it wrong or did the situation change since then ?
>>
>> Then define it as having cells:
>>
>> https://elixir.bootlin.com/linux/v5.18-rc1/source/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml#L42

Eh, it is already defined, so my advice is incorrect. Drop the ref and
define maxItems.

Best regards,
Krzysztof

