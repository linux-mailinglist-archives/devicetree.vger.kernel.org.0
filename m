Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50D2770244D
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 08:17:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238679AbjEOGR4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 02:17:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238452AbjEOGRz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 02:17:55 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39B952120
        for <devicetree@vger.kernel.org>; Sun, 14 May 2023 23:17:54 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-50be17a1eceso22863006a12.2
        for <devicetree@vger.kernel.org>; Sun, 14 May 2023 23:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684131472; x=1686723472;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ldBcmg1Q8SbxfgETwxTKU35G/M1o/OwaJtErXXKJya8=;
        b=snK0yUYEFNsLAhu8Aoqi2COu/QBq02FeqAtIXCZoVgUuNV39L7uZo7RxlD4vrvq22R
         CBYNUnoPlvSeLXd+OJnUuyJDMCvFZc51YbmLDNJyh4PMoYFOb3fuFjVQAi1EZN03YmHV
         37YVRyTJlSHmicqbZcFodYCf8Ji4dm+ewWBgG8qL/VJI3DcvNuhJGIH8jyfqk4nNEh1K
         UjI1QK4w02YldqSbr3sahPUhHjzrt2d2fQhFSPkLX2tEFp5kVbnJSXV82l72GZbhVbjB
         d60P6s7WprwdSnxtFyUY5yeI4zxiFWIux3GRSojrDds8oja5/tJJRHvxwSz7ikwOE/33
         K0XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684131472; x=1686723472;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ldBcmg1Q8SbxfgETwxTKU35G/M1o/OwaJtErXXKJya8=;
        b=LZogbmCmUmK6pWJjso6dJsMGtcr7Pr65iWmEZ5t7mOpplks3M9j0h31mVSV7SnffNr
         w1iBYVi3NwylubWwuExWG/+quOWij/SwcOOsVrMbMyZVTinqU2hr6UnZIBWGHhGHZ/nR
         TXskgdEneIhz1W0zbrXgZKyRU6aMjavBuGxR4PiBozc+y80DiXwbGEoN6EsOd3uTbN9k
         HzgeScyWhu2WlZjG2Ld6rZhPo2eyqxN+CHhhHzAMCQIiz7wo7kFYYrphJVTY2/Le45CQ
         2GWUDWzQkfNCWD0vRJrJpQGs1uTR4Im/8xQX5//7URGRqFjGo5Dka3RHkyWCGnyjAuW5
         n2KA==
X-Gm-Message-State: AC+VfDwXLlQmIgSCzy2q2QVMGUEiUBc3V6I4XgOsQHPvvAKswH17gQM4
        v5ot1bRw/6NTmEKsSOAe53RaAQ==
X-Google-Smtp-Source: ACHHUZ7CM7AjXzzAxacy/dfNX6gRdlHAbIjGTapjY57KXBzUnPctv4wcLOJGWnmVVI2ylxRy6gvKNQ==
X-Received: by 2002:aa7:d686:0:b0:50b:f9d8:ff72 with SMTP id d6-20020aa7d686000000b0050bf9d8ff72mr25877744edr.31.1684131472556;
        Sun, 14 May 2023 23:17:52 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:6470:25b8:7c2d:1992? ([2a02:810d:15c0:828:6470:25b8:7c2d:1992])
        by smtp.gmail.com with ESMTPSA id l23-20020aa7c3d7000000b004f9e6495f94sm6823347edr.50.2023.05.14.23.17.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 May 2023 23:17:52 -0700 (PDT)
Message-ID: <3954a518-0e10-63ec-6a87-a127862966b0@linaro.org>
Date:   Mon, 15 May 2023 08:17:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/2] dt-bindings: iio: temperature: Add support for tmp006
Content-Language: en-US
To:     Anup Sharma <anupnewsmail@gmail.com>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Peter Meerwald <pmeerw@pmeerw.net>,
        u.kleine-koenig@pengutronix.de, andriy.shevchenko@linux.intel.com,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <cover.1684089997.git.anupnewsmail@gmail.com>
 <e6e56cd513625c76435f444f13c640f9556fb2bc.1684089997.git.anupnewsmail@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <e6e56cd513625c76435f444f13c640f9556fb2bc.1684089997.git.anupnewsmail@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/05/2023 21:01, Anup Sharma wrote:
> Add devicetree binding document for TMP006, IR thermopile sensor.
> 
> Signed-off-by: Anup Sharma <anupnewsmail@gmail.com>
> 

Missing ---


> Changes:
> V1 -> V2: Removed redundant dt-binding from subject.
>           Added supply information.
>           Adhere to the generic node name.
> ---


Best regards,
Krzysztof

