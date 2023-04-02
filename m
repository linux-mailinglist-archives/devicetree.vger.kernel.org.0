Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE0ED6D3779
	for <lists+devicetree@lfdr.de>; Sun,  2 Apr 2023 13:03:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230283AbjDBLDr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Apr 2023 07:03:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230206AbjDBLDr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Apr 2023 07:03:47 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D10151B367
        for <devicetree@vger.kernel.org>; Sun,  2 Apr 2023 04:03:45 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id bx10so9168809ljb.8
        for <devicetree@vger.kernel.org>; Sun, 02 Apr 2023 04:03:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680433424;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lfjHt6qNVwHg2v1g+6y01N/7z5oT5yPA13yDyByiAKc=;
        b=tZbu6XL1Jt1aawHnsehe44munzMV1yqEc5fTGMPSnl/CqGB4+2wZygQEZkObxxVDbG
         LLkRxTujsA0OwYXh3XkleKSVg98HqeG6LWbz19apOaPUkH5wcMcIz7jKrUZPmLMNhGdv
         V+S0Jwx7ZqiHF0eR90ssYA2NKvgytfUILaXLso5mWJWb96GVpQ+2fib+5pdfOD3jzvEb
         ycKfxxLCbglaxUSh064fBR/xtyWsL6gKTkIJmOP7tE9fPOA8yAnw2HbCtZqNUO0b8zsL
         R5DWyFZNmtNPXXlrY9TPWpZqjFMs8c/po/6nr7zaf0LrGx101RgPnvvHo8EmdQ42s6uF
         8Atw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680433424;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lfjHt6qNVwHg2v1g+6y01N/7z5oT5yPA13yDyByiAKc=;
        b=0QQNRlnrcqM9SIz2CNQv/Y6Wg7qMZw92ZTXZu5Mbs6KLxJkODfvZlTbEETOWXcHDDT
         V26o0eLtfolUP3tqrOKs2XHVLWHQwWOr6Oje7IjQEz+O5kNFVbwVYxcARPQGkONbX+L7
         Sbg6/5yFsU4GZrLSI3Wq71LCVuhqSVzfQOX5S+U9AdWFHJKc9Fh7AO/khhOqT/IQkUHN
         tzk3MEYaVTiyGgM46mTq2eAUEXdbdGnVd8lWFzb6o0cCh2A9PWHYvgSqjpKUPq/mFlsX
         rkc3uC69IlCY+W0Tty8sbHlHaRlWvnpmITRTkzF9ZGTqj0kPhUqp7jPyFK+cJbthVjoI
         Z/Fg==
X-Gm-Message-State: AAQBX9dej/xbtEdUm/Jf0aWiELc8+yWJxtt025IHi/i5iq3TwtK5eB42
        1b0UHQziwgu3QcXqh9HfPAPwoA==
X-Google-Smtp-Source: AKy350ZkV6BpkwmDzD+iDkoWAK/I7CPEeVPmKN+JRCzJYz6+5fbKwjfWuV4NBYMwURQozY1NFU0mFQ==
X-Received: by 2002:a2e:888f:0:b0:299:a8e2:2181 with SMTP id k15-20020a2e888f000000b00299a8e22181mr10193304lji.43.1680433424129;
        Sun, 02 Apr 2023 04:03:44 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id a23-20020a2e8317000000b002958937e9cbsm1192401ljh.99.2023.04.02.04.03.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Apr 2023 04:03:43 -0700 (PDT)
Message-ID: <07b87a68-14ee-41d8-27dd-7067fc7c8fd6@linaro.org>
Date:   Sun, 2 Apr 2023 14:03:43 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 03/22] arm64: dts: qcom: sc8280xp-pmics: use pmk8350
 specifics for pon device
Content-Language: en-GB
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
 <f25647d0-2526-da0d-42fb-abbe5284d22c@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <f25647d0-2526-da0d-42fb-abbe5284d22c@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
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

On 02/04/2023 13:32, Krzysztof Kozlowski wrote:
> On 02/04/2023 12:25, Dmitry Baryshkov wrote:
>> On Sun, 2 Apr 2023 at 12:42, Krzysztof Kozlowski
>> <krzysztof.kozlowski@linaro.org> wrote:
>>>
>>> On 02/04/2023 00:07, Dmitry Baryshkov wrote:
>>>> Following the commit c0ee8e0ba5cc ("arm64: dts: qcom: pmk8350: Use the
>>>> correct PON compatible") and commit f46ef374e0dc ("arm64: dts: qcom:
>>>> pmk8350: Specify PBS register for PON") use "qcom,pmk8350-pon" compat
>>>> string and add RBS region to the PON device.
>>>>
>>>> Fixes: ccd3517faf18 ("arm64: dts: qcom: sc8280xp: Add reference device")
>>>
>>> There is no compatible qcom,pmk8350-pon documented at ccd3517faf18, so
>>> backporting it there is incorrect. qcom,pmk8350-pon is neither in v5.19
>>> nor in v6.0.
>>
>> Well, according to Documentation/process/submitting-patches.rst, Fixes
>> tag is about noting that there was an issue fixed in the commit. The
>> mentioned commit has an issue, as the device should have a second
> 
> Depends. If device was working in some limited way with old compatible
> and one region, there is nothing to fix maybe. It was just incomplete.
> 
> If second region is needed for the work, then only that commit should be
> marked as fix. Changing compatible is not a fix of that submission
> because at the time, the compatible was correct. That time in Git
> history, the "qcom,pmk8350-pon" was not correct.

Ack, so we have to backport the schema too.

> 
>> region. I did not intend to have this patch backported (no Cc stable).
>> If I were, I could have also added a Cc stable # 5.19.x 03fccdc76dce.
> 
> AUTOSEL will backport it anyway, if you do not mention otherwise.

Is there a way to influence AUTOSEL to make it also pick up another commit?

> 
> Best regards,
> Krzysztof
> 

-- 
With best wishes
Dmitry

