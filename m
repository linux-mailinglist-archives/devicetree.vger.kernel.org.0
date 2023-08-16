Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F20777DA6D
	for <lists+devicetree@lfdr.de>; Wed, 16 Aug 2023 08:24:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236392AbjHPGXm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Aug 2023 02:23:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242109AbjHPGX2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Aug 2023 02:23:28 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E31F123
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 23:23:27 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-5234f2c6c1dso8352573a12.1
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 23:23:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692167005; x=1692771805;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=asPixu7Asy3yEcOq1kgfbXQGxzgiqvQoWFwOpe/xVX4=;
        b=Zbjw5Ym2Zzxhx/vAi/Yhum6EWbvFAhTRfR1OrP58zBVy0rq6HxAeo54a7BdOkInLhg
         W6hFM2pB9Ad62x6V8u4U63Oui/vdZUqZDGTw7GgBdiEPv2WCekqomiqsQHBXH844TPO9
         zcc4137D47lJHDG89iX4dQ+C0yE+/LTB0104i4XXmO5bSymvnXUOd39IihgdmZqLkSK/
         KSEmJYLEHrac0m+wUqhjP0Y+6LXeeDwkHKsqWhwzxz2mgpnltd30JyJW5zbR1GfHdH9/
         RVLTcM4neQd7uRo2SPunE2y694EKwN/Wo4pmFO7AQ6I4+37uey0lRWLr4y3gAM5BpEzk
         uMnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692167005; x=1692771805;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=asPixu7Asy3yEcOq1kgfbXQGxzgiqvQoWFwOpe/xVX4=;
        b=bncGHgPe/OhEZ9OIR0IEvyamttKKJFem2RsOz2hxT/MfM8FTtPu1C0zbT8Uh6J8jOw
         FDT93l9oB8nnYCOEnOXwSbEIkXpa/LsX/a808l/C6nO/ifk4AlgsUeUsRL3wf8+h9bC1
         w6Ay1D8YwSJWAWf5AIyJqdcIc4DNg3ezUL/g3CBQ/MjzFJFRng6PeNjTUoKd7GXLAxVL
         BCd7sbF94HHDnUKT2j5CNzN2R6Mw6jfWRkCdYBTzODBs50CpG239a8h5rOgZ8rlk86cu
         tItRzkrJOCUSgIbj/Vn2sH1OmbJK/Gewg6FEQtjO98C7QCvggMXcVER5PHqMCpZp5uLM
         /Ecg==
X-Gm-Message-State: AOJu0Yy7cu/rVHwUl+nBeE+YCjR9Gn7/n4XIpzW4+4hDhUvjw90C6B1/
        SS7vjv+DKZXH5pkUkqzzad83bw==
X-Google-Smtp-Source: AGHT+IGCFVseg7x6hLpLt+CyrQNMXOCgTcmGxx6RMcrNO8He7YhGyN937RnMKYEYbtNVG5KU//M0sw==
X-Received: by 2002:aa7:d8d8:0:b0:525:6e04:bcb3 with SMTP id k24-20020aa7d8d8000000b005256e04bcb3mr817133eds.40.1692167005623;
        Tue, 15 Aug 2023 23:23:25 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id x4-20020aa7d384000000b005233f2635fbsm7790697edq.21.2023.08.15.23.23.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Aug 2023 23:23:25 -0700 (PDT)
Message-ID: <3f437e5b-2bae-384a-0a08-216a4ec55bde@linaro.org>
Date:   Wed, 16 Aug 2023 08:23:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 1/2] arm64: dts: meson-g12: Fix clock order for
 amlogic,axg-tdm-iface devices
Content-Language: en-US
To:     Kevin Hilman <khilman@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
References: <20230808161755.31594-1-alexander.stein@mailbox.org>
 <7ha5uyes3f.fsf@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <7ha5uyes3f.fsf@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/08/2023 19:15, Kevin Hilman wrote:
> DT maintainers,
> 
> Alexander Stein <alexander.stein@mailbox.org> writes:
> 
>> Binding specify order of clocks as:
>> 1. "sclk"
>> 2. "lrclk"
>> 3. "mclk"
>> Adjust clocks accordingly. Fixes warnings:
> 
> I understand this patch is to fix DT warnings (and thank you Alexander
> for fixing warnings!) ... *but* the underlying requirement being
> enforced by the schema here seems completely wrong to me, and a step
> backwards.
> 
> Sorry if this is a FAQ someplace, but I couldn't find an explanation for
> this.  One of the main goals of introducing names in the first place was
> to get rid of ordering requirements.

Not entirely. The names was just a helper for cases when order is not
fixed, but even with the names for every regular case the order was
always strict. We always expect these to be ordered.

> Now the DT schema is enforcing
> ordering requirements, but the drivers don't need ordering, so what is
> the point of enforcing ordering requirements?

Because names are not everything. One OS implementation might still take
by indices, even if names are provided, so you cannot change the order.

Few bindings allow relaxed approach here, but these are written that way
to allow mixing order.

For few other bindings (e.g. newer Qualcomm clock controllers) we just
dropped the names entirely, because they bring little value and also
code for lookup by name is slower than by index.

Best regards,
Krzysztof

