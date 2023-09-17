Return-Path: <devicetree+bounces-833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 142817A34DE
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 11:14:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 24C4D1C20AFB
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 09:14:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 649BB1FBB;
	Sun, 17 Sep 2023 09:14:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC7B1C35
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 09:14:05 +0000 (UTC)
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 322F11B3
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 02:13:56 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-9ada2e6e75fso460671166b.2
        for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 02:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694942035; x=1695546835; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NxqlGhwY2fUZ1yfWj7spM6aDi6ioSNbYpolJVQsFDKM=;
        b=siugGCj9SZS0BomloQwlUv1zg2uym/mHjE3Cy4jXcFYhsbLkY13zo0nLIywJXZ4wrd
         P8b3cpWJSFwI6V2KMwec4kWa55/5neHTSqgOURkShunFfaXgpsW41Tougnesf/xt/L3j
         CIJJH5W57cCHlCb7STf7NPrNttsetjJs8YtOQTP0zcv8ST9cNzIOe0HlSRFKEn30JePj
         xiCP8Y4i7IWxxKTw57Qu4VKC4wvmWX8rbYTtTsiUYoKl59l2sWD2Yym6qoFib261Bvvd
         SzmvZtGa16RE9IpbegxEuK3RmBSX0w9QmGzSZSXFccNCxjAM8CjAzHXDr9ghbXC+E+RQ
         g1Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694942035; x=1695546835;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NxqlGhwY2fUZ1yfWj7spM6aDi6ioSNbYpolJVQsFDKM=;
        b=Cip4sSN3sKdq030klZMdvkWVZCZ7QTMTANER8FU6X/wnjFlj60OffqogmeAABPN6Ew
         Nw7UXP1cZeOKon9FWeQ8YGutAVHgcpQ9+0nt5pAROs8W6OYZI/z+IVOdqJlTYiiF9Cw5
         azVgz6sVo7FXUoxvfH2g7vspzYqCiuZz0i7Q3lCwte/pxfHo6DPjPUf9XEbNnTKfdrvI
         ycx5V2nqt54J5IHOD+o1pM98FFJgYCGSYTc7PRrcu7UQXXPSFT6GbprwTUapKlxTTsQl
         qtQ5KzLA43YvXcBxo68jHJX9HRWJ+AbtfCNoaOapgA8xq3gP++pU6MWs3pQNnj6n0Pwa
         Inyg==
X-Gm-Message-State: AOJu0YzCTokjzplFURY6chHC8XGTEPG8dIWs9XTcG7V4AQ3FPD8YDYFE
	a8Uo20g+Qag6U/qZaMIBG7cnBg==
X-Google-Smtp-Source: AGHT+IGznPIr/6FkDMahjI+c8MV7cCopeOQZUE2NeRKnvXfh8yjYJZkt5NVaMdJFOFmqqD2PMB4+Ew==
X-Received: by 2002:a17:906:8a4c:b0:9a9:dfbe:ca99 with SMTP id gx12-20020a1709068a4c00b009a9dfbeca99mr5709211ejc.10.1694942035483;
        Sun, 17 Sep 2023 02:13:55 -0700 (PDT)
Received: from [192.168.1.77] (150-140-187-31.ftth.glasoperator.nl. [31.187.140.150])
        by smtp.gmail.com with ESMTPSA id o10-20020a1709061d4a00b0099293cdbc98sm4781973ejh.145.2023.09.17.02.13.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Sep 2023 02:13:54 -0700 (PDT)
Message-ID: <fd9f9cc2-bf56-8046-1b15-ff0ffe30304a@linaro.org>
Date: Sun, 17 Sep 2023 11:13:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 1/3] dt-bindings: mfd: qcom,spmi-pmic: Add pm8916 vm-bms
 and lbc
Content-Language: en-US
To: Nikita Travkin <nikita@trvn.ru>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <20230916-pm8916-dtsi-bms-lbc-v1-0-7db0b42f9fb1@trvn.ru>
 <20230916-pm8916-dtsi-bms-lbc-v1-1-7db0b42f9fb1@trvn.ru>
 <18bef7a4-608b-9ba3-ce8f-ca25999705c3@linaro.org>
 <fac4a27d08108bd6e902ba0fa4708ec4@trvn.ru>
 <011074e5-cec2-1c69-7324-30d9ab653577@linaro.org>
 <27adb905b990398989b4c13f03339ae9@trvn.ru>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <27adb905b990398989b4c13f03339ae9@trvn.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 17/09/2023 10:54, Nikita Travkin wrote:

>>>>> +  "^battery@[0-9a-f]+$":
>>>>> +    type: object
>>>>> +    oneOf:
>>>>> +      - $ref: /schemas/power/supply/qcom,pm8916-bms-vm.yaml#
>>>>
>>>> That's just ref, so no need for oneOf... unless you already think this
>>>> will grow with different schemas like the charger below?
>>>>
>>>
>>> Yes, I think some other PMICs have different battery/fuel-gauge
>>> blocks too so I'd like to have some room for expansion here.
>>
>> There is always room. Which other device will have different battery
>> charger?
>>
> 
> I know of non-"VM" BMS block in PM8226. It's used on some Nokia
> devices that people were working on so I expect it to appear in
> the future.
> 
> There is also some BMS block in more modern PM6150 that I've
> seen being looked at by people interested in bringing sm7125
> phones upstream.
> 
> Both of those, to my knowledge, are completely different from
> this VM-BMS block, which I believe was present in the generation
> of pm8916, pm8909 and was abandoned again shortly after...

OK, sounds good.

Best regards,
Krzysztof


