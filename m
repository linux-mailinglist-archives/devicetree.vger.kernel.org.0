Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D2FF71F9A26
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2020 16:28:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730147AbgFOO2t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Jun 2020 10:28:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729962AbgFOO2t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Jun 2020 10:28:49 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9A45C061A0E
        for <devicetree@vger.kernel.org>; Mon, 15 Jun 2020 07:28:48 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id g10so14840383wmh.4
        for <devicetree@vger.kernel.org>; Mon, 15 Jun 2020 07:28:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=xGDCFEKi8HPI3D0JqHhVUyKhW7cWu5yo2qs+AF/FFQg=;
        b=Le1ui5h1RFDRX7MHDNBOe50JiR6qxmvuYkfJy1r90c0vukA2QbHtCC4GjaGhFi7aY1
         UfVZVUoClT7O/3WPSZ4WZFovdZUEVQ+XHmOCdzqJvgUdW2BeYmUIncJAZl7SHmK8EPpO
         Xwto79YM518LbFSqELX9i9IoK3X0emmXvFr5P9YjZ+hcflPmSZPE/47zOJ2CLWBPZ9R/
         FjXErRJAQRSufzyoJTBg8TN75eHwMCfckicK/iC/UKtttLIVkCgQbjh9lt2F2CWumOvu
         7KA/feRfIM0R5fdFwxwYKb4mrlNg3sxIJT7hfccnSV4BpnIsevRelZKhwoJwjQwOmEmM
         VhGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xGDCFEKi8HPI3D0JqHhVUyKhW7cWu5yo2qs+AF/FFQg=;
        b=OB/3N+M8QfhREwCH0IRwSXRC/oFUW9k3UfIuWj4FkNXB2u3iM6sJ8ZiGqKH0f6O6yw
         JYYFYT3hJ1vRrroT9/K+WkawkIdUdlKB77cr7YLdnHiq3ZNgXD3nQUY86g2nfxstxf4G
         7omk5lqnndOUg1EUDUQ+Qu+7kK6n+uXpDVFehcbGHx5eeCPuuEMbROjeYa7LjiLbbN7d
         vGh2oHVYX2HZ/KiEzcthOt8DzARBDo/GiJ96+q4ewEwhZLCjusfnSrNVZIse/UlfZrAQ
         FrwZ8N/e/7Qg93ilEhmkC9s6WT4hMav/Vq96yO4Iq+TS1WEHgjRkPgEZdH1C2e8hZqlZ
         GMuw==
X-Gm-Message-State: AOAM5300KoXOFLSjvBaxWtPgB1ebrWaEVlVW5eB6ceg+sbjYBq/tketB
        NQd7oaeyl+0O6b/wq6ZFtVKPMw==
X-Google-Smtp-Source: ABdhPJzjPlB084ZbJ22w6JnJ0+3/LKJfBN9RTr2pz+fW7ZJKZZzu0Z/8wTigeY3ja39uTmOlimT/RA==
X-Received: by 2002:a1c:7717:: with SMTP id t23mr13299332wmi.175.1592231327311;
        Mon, 15 Jun 2020 07:28:47 -0700 (PDT)
Received: from [192.168.86.34] (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.googlemail.com with ESMTPSA id a6sm24329946wrn.38.2020.06.15.07.28.46
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jun 2020 07:28:46 -0700 (PDT)
Subject: Re: [RFC v2 1/3] dt-bindings: nvmem: Add devicetree bindings for
 qfprom-efuse
To:     Doug Anderson <dianders@chromium.org>
Cc:     Ravi Kumar Bokka <rbokka@codeaurora.org>,
        Rob Herring <robh+dt@kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
        dhavalp@codeaurora.org, mturney@codeaurora.org,
        sparate@codeaurora.org, c_rbokka@codeaurora.org,
        mkurumel@codeaurora.org
References: <1591868882-16553-1-git-send-email-rbokka@codeaurora.org>
 <1591868882-16553-2-git-send-email-rbokka@codeaurora.org>
 <CAD=FV=WjvAWVmq3fTh=_f2p1Dv+sXg1RV-CqZr8KRgHe8_wT0w@mail.gmail.com>
 <0ee1d7fa-0520-a347-6a55-6ab646284b1a@linaro.org>
 <CAD=FV=WGCvQTRHWX4Dvx+pTf010NbEzQMgcV4WDKQ6M8KO-cRw@mail.gmail.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <9f702f74-1fb7-423b-0899-0bdaeafbef82@linaro.org>
Date:   Mon, 15 Jun 2020 15:28:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAD=FV=WGCvQTRHWX4Dvx+pTf010NbEzQMgcV4WDKQ6M8KO-cRw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 15/06/2020 15:27, Doug Anderson wrote:
> Hi,
> 
> On Mon, Jun 15, 2020 at 3:44 AM Srinivas Kandagatla
> <srinivas.kandagatla@linaro.org> wrote:
>>
>>>> +properties:
>>>> +  compatible:
>>>> +    enum:
>>>> +      - qcom,qfprom
>>>
>>> As per discussion in patch #1, I believe SoC compatible should be here
>>> too in case it is ever needed.  This is standard practice for dts
>>> files for IP blocks embedded in an SoC.  AKA, this should be:
>>>
>>>       items:
>>>         - enum:
>>>             - qcom,apq8064-qfprom
>>>             - qcom,apq8084-qfprom
>>>             - qcom,msm8974-qfprom
>>>             - qcom,msm8916-qfprom
>>>             - qcom,msm8996-qfprom
>>>             - qcom,msm8998-qfprom
>>>             - qcom,qcs404-qfprom
>>>             - qcom,sc7180-qfprom
>>>             - qcom,sdm845-qfprom
>>
>>
>> Above is not required for now in this patchset, as we can attach data at
>> runtime specific to version of the qfprom.
>>
>> This can be added when required!
> 
> I'm OK with leaving off for this patchset.  After we get everything
> landed for blowing fuses then I can send out a separate patch where we
> can debate the merits of adding the SoC-specific compatible strings.
> :-)  Sound good?

Sounds good!

--srini

> 
> -Doug
> 
