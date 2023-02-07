Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 47B1268D432
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 11:30:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231215AbjBGKaW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 05:30:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230519AbjBGKaP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 05:30:15 -0500
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7310834020
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 02:30:03 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id ml19so42119227ejb.0
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 02:30:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZLWwGdZFsr4XR1mfeRhZc4c2t2VwRw6cMMrO3IvOEA4=;
        b=eXfyb1NJShGd8tq7Mh5dgllyPYo1qaLZwwTFtjG3hITYbi8oLcFZIcjdwEZAF1J7qr
         egDpMG9pLcQppo5Ypq37/SMKAIauatX2HnGdermhC7Y12jy/uQSz2e/5CgmXITjxMZ+w
         Ox3v5fKGMlb/4TFlvokJn4hH0Cc8VWQYnmRX1Op8Ch4mN/kMe3DdtuFtjAFaeGEnEdbE
         rJfeDB88rekcabFI0665mnWolQ8VFyn/0uz/3RErqqo0yMEuKpO7fIT7xsj48sVIvUXh
         rTdxTfU3vMgAI8LWVuucMsWVimtStWrZbSu7DiykXsAQ8fs6BeeSTml6/J35mq1pdRUU
         H5tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZLWwGdZFsr4XR1mfeRhZc4c2t2VwRw6cMMrO3IvOEA4=;
        b=SSchVcmsaSPlW/OXdl52AvZHiJuuLk2zI2hPMz2lXjr62FRrM0K0zwnH3gbnGhO988
         wKPM6O5CkSlmze2yO85W5mF04w6PHfJOjsbQJUwXfBf74/4N74qoyXZmhnuqbYpoiet6
         9ni13yB03iFe/r2vm6wXJWfbOxlpKBfh20TDkWOR4yHKzFUFuEdW4tAK98Dsgl9zLaqP
         jvQ36sS7QKhhThijpqbm/1I1r+GeKvm8drf3qksVWNS3CiQlsUVCGKZWjquUKV+aopaI
         ETuZYopElskfqmMy2dMoZIwdvi39U92Y6aKBpAKnMevWolqVZtQPaOw8HDOf89xYg/Nv
         Oxbw==
X-Gm-Message-State: AO0yUKWYbTopu6O76sJ0xtEd712uifP4NXaMia8WGkdAFGQMaUU/Rbot
        8eD5ME+Go3RfoRBN+ElJmeFW2w==
X-Google-Smtp-Source: AK7set+T/UmYA9+q8aIy6kO/MNggriZO6OSaE1Omx3A3P0zTIUPcqFxiB5VTkvsYs0Ejcq27Tq4tbw==
X-Received: by 2002:a17:906:4808:b0:870:827f:f78e with SMTP id w8-20020a170906480800b00870827ff78emr2695790ejq.48.1675765801971;
        Tue, 07 Feb 2023 02:30:01 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id z8-20020a1709060ac800b008aa7c2f49edsm331847ejf.0.2023.02.07.02.30.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Feb 2023 02:30:01 -0800 (PST)
Message-ID: <2af6a6fc-1179-270a-ee9d-a841ca2002e9@linaro.org>
Date:   Tue, 7 Feb 2023 12:30:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm8550: fix DSI controller
 compatible
Content-Language: en-GB
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230207-topic-sm8550-upstream-sm8550-dt-fix-v1-0-698d132ab285@linaro.org>
 <20230207-topic-sm8550-upstream-sm8550-dt-fix-v1-1-698d132ab285@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230207-topic-sm8550-upstream-sm8550-dt-fix-v1-1-698d132ab285@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
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

On 07/02/2023 12:06, Neil Armstrong wrote:
> Add missing sm8550 soc specific compatible before fallback to
> match the updated bindings.
> 
> Fixes: d7da51db5b81 ("arm64: dts: qcom: sm8550: add display hardware devices")
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

