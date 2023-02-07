Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D45668DE2E
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 17:48:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229585AbjBGQsS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 11:48:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231674AbjBGQsS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 11:48:18 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1067A39BA9
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 08:48:17 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id j25so10648599wrc.4
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 08:48:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ky7HAXJkS1X4hEgrcJjQQo7al6D+HHtf9urEyCKlGps=;
        b=ZVmVyDjSx6EgkFT8iA42dx4e6NkiFFvRjgyVg3vEwOo0sTodqpf/6xC7Kg8zvu5zOi
         +i12SLbbl4EZG+LN97qWe6I+1nf7msNnuZujHBy1cutT62jCNnRsC29vzSbwShTGLJk1
         qZYaDyl5UTtWP6oEC2vJLZfbjaQlWRcfn9s1g62TU2LJurA6KpeBdnISuwk0MQw6cNY5
         892USyFUbQ90GHznIUqrP6DW2lUZ+wf44TCj8WwXad3JpTV4x64SRgkhtbuXHVcqTGJK
         MFbAe8tiuizvuNYAJkNKmLvFSSDg+Gxjp6mXLkKvCTbo5ygU/iFBvdk1NlblLIO98PDs
         M9iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ky7HAXJkS1X4hEgrcJjQQo7al6D+HHtf9urEyCKlGps=;
        b=JdDQOATZC6iNj1u2YPra2YgcRlc5gpLQ0P/SJr59PPoKFzccO8uPCnLRgbRldWKdL8
         hgcfJbcHnqiI5Da7GalW16sKQyJ/dLI0optV2wRMsOLXW7hKKw9PgfGaWkHDtrDvP0PS
         WDZzVOAbd9fXo/jNxddZBq74M9ZY96ALRceIquyjhjmNnPV67V5CG+cnTI8X1qtGGUbw
         b2TFxQ9q3s4MFUSwGwIoWGZUc1ZS8nR5tYN07hueqWdtZE+2Uw8lTD69LJRj3gV93xiT
         VilhNJUdLy773X0KwcNnCojbeC/uZe0GHpQHvI1KuR6dOny3EWyVTTpWNgOoqPCtOeMI
         JiMg==
X-Gm-Message-State: AO0yUKXQXm8RpNu36U+2uZSYR7Fft4v+yLgQRfEqWK5GkdESmMXMB7g1
        /Q93ljLEMWXyHquMKDasgdGgaA==
X-Google-Smtp-Source: AK7set8TXIFkWABojtv5YPhyN5r9CAIvfLXqNjua96/e+MfEknoAwWnL/akisqL1H78whXRbC2TL6A==
X-Received: by 2002:a5d:4bc2:0:b0:2c1:28e7:5081 with SMTP id l2-20020a5d4bc2000000b002c128e75081mr3490785wrt.68.1675788495656;
        Tue, 07 Feb 2023 08:48:15 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id i6-20020adffc06000000b002c3e28d0343sm7732034wrr.85.2023.02.07.08.48.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Feb 2023 08:48:15 -0800 (PST)
Message-ID: <1dad040e-fb18-8291-5e11-31ab35a8e4a2@linaro.org>
Date:   Tue, 7 Feb 2023 17:48:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 4/5] ASoC: cs35l41: Document CS35l41 external boost
 without VSPK
Content-Language: en-US
To:     Lucas Tanure <lucas.tanure@collabora.com>,
        David Rhodes <david.rhodes@cirrus.com>,
        Charles Keepax <ckeepax@opensource.cirrus.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        patches@opensource.cirrus.com, linux-kernel@vger.kernel.org,
        kernel@collabora.com
References: <20230207162526.1024286-1-lucas.tanure@collabora.com>
 <20230207162526.1024286-5-lucas.tanure@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230207162526.1024286-5-lucas.tanure@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/02/2023 17:25, Lucas Tanure wrote:
> External Boost without GPIO1 as VSPK switch
> is no longer supported, but there is laptop
> models using this feature.


No, because:

1. We did not finish discussion
2. Subject prefix is still not correct.
3. Please wrap commit message according to Linux coding style /
submission process (neither too early nor over the limit):
https://elixir.bootlin.com/linux/v5.18-rc4/source/Documentation/process/submitting-patches.rst#L586


Best regards,
Krzysztof

