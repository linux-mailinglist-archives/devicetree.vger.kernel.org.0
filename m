Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1E4D4EC198
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 13:57:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344514AbiC3L4O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 07:56:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344846AbiC3Lxl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 07:53:41 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AE7C26E767
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 04:49:46 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id w4so28854571wrg.12
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 04:49:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Zz5V7y6zyX28uzHv7nbJNO/THNVqL6J0WR2WWuQ7SCY=;
        b=ZUOogO2MuK6NJjubHjbfEz+haJ4Oh6ePGA6/+gd7oK40h63IMjwzaVvnJYUmTxImAs
         MyvMzaw35CVlu+C1Qwxa9gZov8B7ynpIwE3Kahpcz6sN0ho/mSj65L6ftNnsKk0N0nfj
         4FD0bVTJb2fmEnKM40jG3JvPfGa1UEDFrVUzYozFy2JbNwdiOUCDqvoRUU5p/1MuvQtk
         H1t8//3ATlKAdlXRm+jWADGLrIYnbjN2Vd+1QzD13qGQn0d2D1eJ8SeQBqJ9cpJE8m8y
         rxQTaDbTj6arnFaptoXI1QxDOgI01CGVevoN+fRv/LEDGV5rgU6D1hGjCmYn3/CIg8i5
         eoDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Zz5V7y6zyX28uzHv7nbJNO/THNVqL6J0WR2WWuQ7SCY=;
        b=h3FQY1O9UOhLwG/W36VskXIvYPlHcMEwQ1thfgeulhNkVUt2SJhrgclc7uJw1WRJgp
         pAxjBb+BknrWV7Fx/nqNqd7ccdGrsJWMW6S0kAq/7mHrMtyI+aZ9ErjMCRumXtyrO4c5
         7KGT9ad4OTcd/srnd5x5XYk8Yk5+mqvxoHkjisz9NK5GYyS3a0q1sk7gt2FxYr/nt2I5
         4kwB5we31MVs2EZYawMHA/4zg2QeG0B/d7Dd9/poyl14IrohNpz/YSdQHFWl35hjtCFj
         f4R1EndpU0z273NfefmCSDGfGJ0fVCw7LVjj7Ya2CsG82TGEzVPkEmSQNYVPTdH42PFV
         GRZQ==
X-Gm-Message-State: AOAM531r+3iXWH0YFYPQ8e7nPGh+u3EYVPXfl8Jz8uMXvJh1iLQ395oo
        XYB2MuAZHMfHcbdizTIfFMdmhA==
X-Google-Smtp-Source: ABdhPJxlxhSbqKiKCa9E9IGILcoh2/H6PVy3wwrQdQj0w9n8pdqxILCg+dwurPk7Vv6V2VCi3BDOrQ==
X-Received: by 2002:adf:d1e5:0:b0:205:85f5:656c with SMTP id g5-20020adfd1e5000000b0020585f5656cmr35738237wrd.65.1648640983633;
        Wed, 30 Mar 2022 04:49:43 -0700 (PDT)
Received: from ?IPV6:2a01:e34:ed2f:f020:8f92:3217:a3c6:3ee8? ([2a01:e34:ed2f:f020:8f92:3217:a3c6:3ee8])
        by smtp.googlemail.com with ESMTPSA id z5-20020a05600c0a0500b0037fa93193a8sm5539221wmp.44.2022.03.30.04.49.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Mar 2022 04:49:43 -0700 (PDT)
Message-ID: <98be733a-62b0-4cf6-ab27-992ea49da5b1@linaro.org>
Date:   Wed, 30 Mar 2022 13:49:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v4 1/4] dt-bindings: timer: Add compatible for Mediatek
 MT8186
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Allen-KH Cheng <allen-kh.cheng@mediatek.com>
Cc:     hsinyi@chromium.org, Thomas Gleixner <tglx@linutronix.de>,
        Guenter Roeck <linux@roeck-us.net>,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
References: <20220311130732.22706-1-allen-kh.cheng@mediatek.com>
 <20220311130732.22706-2-allen-kh.cheng@mediatek.com>
 <Yitv3IUpCzp1/eGX@robh.at.kernel.org>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <Yitv3IUpCzp1/eGX@robh.at.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/03/2022 16:50, Rob Herring wrote:
> On Fri, 11 Mar 2022 21:07:29 +0800, Allen-KH Cheng wrote:
>> From: Allen-KH Cheng <Allen-KH.Cheng@mediatek.com>
>>
>> This commit adds dt-binding documentation of timer for Mediatek MT8186 SoC
>> Platform.
>>
>> Signed-off-by: Allen-KH Cheng <Allen-KH.Cheng@mediatek.com>
>> ---
>>   Documentation/devicetree/bindings/timer/mediatek,mtk-timer.txt | 1 +
>>   1 file changed, 1 insertion(+)
>>
> 
> Acked-by: Rob Herring <robh@kernel.org>

Applied, thanks

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
