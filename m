Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 30CD76D2F75
	for <lists+devicetree@lfdr.de>; Sat,  1 Apr 2023 11:45:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229647AbjDAJpN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 1 Apr 2023 05:45:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229598AbjDAJpM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 1 Apr 2023 05:45:12 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12FEBDBC0
        for <devicetree@vger.kernel.org>; Sat,  1 Apr 2023 02:45:11 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id t4so19482403wra.7
        for <devicetree@vger.kernel.org>; Sat, 01 Apr 2023 02:45:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680342309;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=enLSXvC9cOIGUaRnMgYw4KnAx/zsnnPatWKBKRZeUhs=;
        b=DB4GBhIICc4dXx4AUyVmnX90Z5uhn16tnAF6/gW4OPxZ2Qh97CQpD2rmfa5kKZIfTa
         EwIleDu1NJTSBMjTbKSsSe4M0pQ8p9aBmZq/c0wLa5kkSR13wWYC2lj2LjsoPXnZKlwY
         +IhMIPdZV321uCwG8WERPBl5WTy5Fw6UeGb6OC3zsaYNVL3j6ruY75uBxQAk0qUZJhEj
         iMLGa/i9gXeZFbWtIYPD7o9mPTa/p6zjYmsRbZ165W4EFjkKOGP9xQM3ei1vySrfkZsS
         15P/YeZzn3+Jvcz+UuaMPr6CzyhilvbjmKDhRldVXoB8b21RxTWrdDspWcS/jOALG7vf
         jZcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680342309;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=enLSXvC9cOIGUaRnMgYw4KnAx/zsnnPatWKBKRZeUhs=;
        b=L5x+p195N4yRMegYKCKTPLqcThe6DvFvs9ybIIyoevtMwY0vSya82AQjI0b/huNgHk
         nOZZaSBaQuaSPM6D9xVLRMfgVeeOz28/fThgHlLV/GhN0+tU+DTCMFH1CCrCuzFhf1YE
         ozZ8OFDaYwJsHIfMw/Nh6KxmyO8oBQucKZr8RFdc+/uMOe6ZyZ4rVY+4Xo7o5UjL48Wb
         1wBgwqPOIc2uKsIK8lqB1YcCvAy+B+Cib96+Z2UsJQhfg94mKY4uTG+DWMw+Pq9zykzV
         n4Za1/iwYylhj5JpItr7xFnqj4dmrMq3Ee7UVwJHSJbu29TsF77Dcv39Bq+wEymM9+D7
         Hajw==
X-Gm-Message-State: AAQBX9ekxsnjmrbNgOuu+RJ1b4suYNqOfC+WI7WaekDCovl3QQ1pWh2B
        mEnzFYtT0lOWHT5Gg4CYWrLCXw==
X-Google-Smtp-Source: AKy350bdhrPXteAy14H6wTreJILApVyTmS/XDg66OMR/3heapL9ZmGdi17szArp0VJxBbQMcJI/m9A==
X-Received: by 2002:adf:e644:0:b0:2c5:4c9f:cf3b with SMTP id b4-20020adfe644000000b002c54c9fcf3bmr9084520wrn.7.1680342309583;
        Sat, 01 Apr 2023 02:45:09 -0700 (PDT)
Received: from [172.50.14.32] (5-226-109-132.static.ip.netia.com.pl. [5.226.109.132])
        by smtp.gmail.com with ESMTPSA id s11-20020a5d424b000000b002e5f6f8fc4fsm3877194wrr.100.2023.04.01.02.45.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Apr 2023 02:45:09 -0700 (PDT)
Message-ID: <1d08d7a7-0682-cd05-f2a1-2b458a2eb25d@linaro.org>
Date:   Sat, 1 Apr 2023 11:45:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2] ASoC: dt-bindings: maxim,max98371: DT schema
 improvement
Content-Language: en-US
To:     =?UTF-8?Q?Andr=c3=a9_Morishita?= <andremorishita@gmail.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        anish kumar <yesanishhere@gmail.com>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     mairacanal@riseup.net, dri-devel@lists.freedesktop.org,
        daniel.baluta@nxp.com
References: <20230331020527.482991-1-andremorishita@gmail.com>
 <20230401035756.856752-1-andremorishita@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230401035756.856752-1-andremorishita@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/04/2023 05:57, André Morishita wrote:
> Improve Maxim Integrated MAX98371 audio codec bindings DT schema conversion

Your patch changed much more than your commit log is saying. I don't
understand why. Previous subject was better than this, I only commented
on missing prefix.

Commit msg now is unspecific and misses full stop. I don't understand/

Do not attach (thread) your patchsets to some other threads (unrelated
or older versions). This buries them deep in the mailbox and might
interfere with applying entire sets.

> 
> Signed-off-by: André Morishita <andremorishita@gmail.com>
> ---
> Changes in v2
> - Generic node names - codec (Krzysztof)
> - Drop label max98371 (Krzysztof)
> - Add sound-dai-cells in example (Krzysztof)


Best regards,
Krzysztof

