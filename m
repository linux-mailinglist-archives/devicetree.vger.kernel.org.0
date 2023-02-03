Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA17468A10F
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 18:59:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231755AbjBCR7g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 12:59:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233013AbjBCR7g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 12:59:36 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 634A96C10B
        for <devicetree@vger.kernel.org>; Fri,  3 Feb 2023 09:59:31 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id y1so5382899wru.2
        for <devicetree@vger.kernel.org>; Fri, 03 Feb 2023 09:59:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UnkV8eglfBQ3m7iE71cgfuq2SGzc7qznHVEMOlIyJ5k=;
        b=txMUNSAB2UzgNJC5K8ThvnqZcmDr9Xbfbuga4hMfATueyFe2FumlAI/I6oBTc9hSia
         baW6RsfPnETMBqGXWrZ/Lkqo5ZBLO77S6wFuMUn06uUTlmnQdaRUzUOjDqm+vv6rG1Ra
         b3BIPdH5JqeKuhOq8r3MqVDKUCda0NJ2GQbrmZ1IU4WgtC5UxTZxv80pruA73eaDRnF7
         sTi0S6ckGPDrfkNLw3Yz8+uY8OKf152X8h0z+h3tBgVnIoRo8x1m6CUquIXukViwnCQw
         I7PXau1BdzrMMgTjbZOVvam9wswmA9AMH4CUTxrk3IbSqJOqqnlB4A/YPyUK11O6k2jW
         Ebgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UnkV8eglfBQ3m7iE71cgfuq2SGzc7qznHVEMOlIyJ5k=;
        b=SiQ7zR3/Kqti+4I/ZskN+D4+xfVD1HBbpxrlL6Zb4pryxI0KfK7RdMMFP4MtmEZzS0
         x4yow9n7jfHCMtBqD7ypaHmw5WnvFhJHNk92gPZiI+w/M9I+ko0iHJ2CleZluVG1XyC2
         O6A+A5ajOW5vU57Dl4/dMnrAyM2d8azU6wYZ5fi/Y4acejtrW51fZHlSPIsimiEKuMcX
         qSITRunS05KtUCwo48Rrc8B6rz95ptvws8dZcIGjCq144LGTVPbXn1xcJKzbIYYi1RpX
         cwcggkO2JTUW80Ni5Rzm9Ug2rR1I1/ViAkl2I+RQ8wUPblhMsXS5GmjmRzRKwr2rrSn+
         aAuA==
X-Gm-Message-State: AO0yUKVFVkGHIJwLNjef4EUpeFGIy58eAQOV5/IS/K9HRr5eYT9h5AhF
        BhXVqM1u+9NXCCWgu6zrRXsMzw==
X-Google-Smtp-Source: AK7set+Tfe3BDkZewBOqFV5KXz7+EuxIJvkv67VKmNkAgrrkoHAC1MxgyKcfMByhaN7MOoO8d5gHWg==
X-Received: by 2002:a5d:5982:0:b0:2bf:eec5:3912 with SMTP id n2-20020a5d5982000000b002bfeec53912mr10791579wri.34.1675447169866;
        Fri, 03 Feb 2023 09:59:29 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id h12-20020adff4cc000000b002c3d814cc63sm1758281wrp.76.2023.02.03.09.59.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Feb 2023 09:59:29 -0800 (PST)
Message-ID: <fede7119-4a9b-76a1-ae1a-7af5dd8d1032@linaro.org>
Date:   Fri, 3 Feb 2023 18:59:27 +0100
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
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1jfsbmn7ql.fsf@starbuckisacylon.baylibre.com>
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

On 03/02/2023 15:13, Jerome Brunet wrote:
>>> +          Multiplication factor between the frame rate and master clock
>>> +          rate
>>> +
>>> +      sound-dai:
>>> +        $ref: /schemas/types.yaml#/definitions/phandle-array
>>
>> Old binding was saying it is just phandle
> 
> It is just a phandle but the bindings used to have problem with phandle
> that had cells.
> 
> See:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/Documentation/devicetree/bindings/sound/amlogic,gx-sound-card.yaml?h=v6.2-rc6&id=d031d99b02eaf7363c33f5b27b38086cc8104082
> 
> Was it wrong or did the situation change since then ?

Then define it as having cells:

https://elixir.bootlin.com/linux/v5.18-rc1/source/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml#L42


Best regards,
Krzysztof

