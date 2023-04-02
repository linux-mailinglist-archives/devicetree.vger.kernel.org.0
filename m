Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4CE4F6D3751
	for <lists+devicetree@lfdr.de>; Sun,  2 Apr 2023 12:32:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230397AbjDBKcq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Apr 2023 06:32:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230366AbjDBKcp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Apr 2023 06:32:45 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA323BDE5
        for <devicetree@vger.kernel.org>; Sun,  2 Apr 2023 03:32:43 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id cn12so106531130edb.4
        for <devicetree@vger.kernel.org>; Sun, 02 Apr 2023 03:32:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680431562;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8fOlObxoML5vTFHTkwadYyQqqCQUtO8NR9apcX0WPJE=;
        b=DWM8WP+s4mvZAX6JuFOUV1MpACJnCW/5ryKn2zHkwgpS5ntopSMxdOsJKrh5NEX83Z
         Ow2XQUvzh709Y22acuclMiYWyTdRb0la8NBGZ49ubnUaS0/CpgMymdSGakvyBB7ybZ6g
         /QcjF1SlSbITAyWLE36iKvM7QrGFilgjGO+gGnUYRMDGD+xVrkUdDAeiItjwHYRg1VHt
         NqgylxI4WcVC7DGuIm0hYku6HkoKvRwx72bHvh6k12C45+JaRasntyhAUjrmvjlMIqDh
         LtK+3FAhvRvUo6MYN05XzH8nftrbGhNaJ+5B91ElDk9GOf9UuvJGZyRRFlzkceKITMY5
         UxUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680431562;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8fOlObxoML5vTFHTkwadYyQqqCQUtO8NR9apcX0WPJE=;
        b=QjeS32Y84nr5KXIJQjAn1uum1ltn3cIdSFH6VfGxsRxH6IFEdTJzK5BcjELI6NTUSk
         i+v8aHMjs0d8pMl8FCHYnhq5B91TP48JWTmCTlH0w1cXQlZgkIimDCmGQhmKpVMIMNaX
         ZG3xQI4Mb/PbpTS6HW2tmx5C1CYpZdWzu0egTV1Y8Sehhe+MVQ/m7SxMLgY19IRv8JpO
         HdnRYUPirxDhY6nbv8uD4LSN8ZzEOUPt20WetStM3GJNQUpMeS/FhTLNvqzMGe1iOYAf
         IhlkLSzhl/CS1lcKZXB4GA0xNf8Ysmd4EdGsjRieJYCFDO/ubWbWFtG6k8vPY03WeETg
         1ZYQ==
X-Gm-Message-State: AAQBX9dOZc1B/Ly88Fi78eDUWYzIUrqwXkSj+Bn838iBsqibkW9YF+3A
        SWp52zpBCh0FEMNLh6DgKSBlZg==
X-Google-Smtp-Source: AKy350aLlaGwwTv5qq8MpvYzoCX+//MWNu7TqiMRaLXHr8nb3JblqqytwHTyE55M6NYNKh+9AoiQlQ==
X-Received: by 2002:a17:906:3288:b0:8b1:fc58:a4ad with SMTP id 8-20020a170906328800b008b1fc58a4admr34047310ejw.11.1680431562320;
        Sun, 02 Apr 2023 03:32:42 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:7f7f:6a30:7a20:94d5? ([2a02:810d:15c0:828:7f7f:6a30:7a20:94d5])
        by smtp.gmail.com with ESMTPSA id dx21-20020a170906a85500b008d044ede804sm3050917ejb.163.2023.04.02.03.32.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Apr 2023 03:32:41 -0700 (PDT)
Message-ID: <f25647d0-2526-da0d-42fb-abbe5284d22c@linaro.org>
Date:   Sun, 2 Apr 2023 12:32:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 03/22] arm64: dts: qcom: sc8280xp-pmics: use pmk8350
 specifics for pon device
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Johan Hovold <johan+linaro@kernel.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>, linux-iio@vger.kernel.org
References: <20230401220810.3563708-1-dmitry.baryshkov@linaro.org>
 <20230401220810.3563708-4-dmitry.baryshkov@linaro.org>
 <0d7d1fcb-e914-907b-0ed5-44e104929766@linaro.org>
 <CAA8EJpqqnRvJJUJn3VoFaBncMz1mgn6_q4vHp6Pv2L9V4QOdKQ@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAA8EJpqqnRvJJUJn3VoFaBncMz1mgn6_q4vHp6Pv2L9V4QOdKQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/04/2023 12:25, Dmitry Baryshkov wrote:
> On Sun, 2 Apr 2023 at 12:42, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 02/04/2023 00:07, Dmitry Baryshkov wrote:
>>> Following the commit c0ee8e0ba5cc ("arm64: dts: qcom: pmk8350: Use the
>>> correct PON compatible") and commit f46ef374e0dc ("arm64: dts: qcom:
>>> pmk8350: Specify PBS register for PON") use "qcom,pmk8350-pon" compat
>>> string and add RBS region to the PON device.
>>>
>>> Fixes: ccd3517faf18 ("arm64: dts: qcom: sc8280xp: Add reference device")
>>
>> There is no compatible qcom,pmk8350-pon documented at ccd3517faf18, so
>> backporting it there is incorrect. qcom,pmk8350-pon is neither in v5.19
>> nor in v6.0.
> 
> Well, according to Documentation/process/submitting-patches.rst, Fixes
> tag is about noting that there was an issue fixed in the commit. The
> mentioned commit has an issue, as the device should have a second

Depends. If device was working in some limited way with old compatible
and one region, there is nothing to fix maybe. It was just incomplete.

If second region is needed for the work, then only that commit should be
marked as fix. Changing compatible is not a fix of that submission
because at the time, the compatible was correct. That time in Git
history, the "qcom,pmk8350-pon" was not correct.

> region. I did not intend to have this patch backported (no Cc stable).
> If I were, I could have also added a Cc stable # 5.19.x 03fccdc76dce.

AUTOSEL will backport it anyway, if you do not mention otherwise.

Best regards,
Krzysztof

