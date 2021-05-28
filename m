Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE965394580
	for <lists+devicetree@lfdr.de>; Fri, 28 May 2021 17:57:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234882AbhE1P7T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 May 2021 11:59:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234845AbhE1P7R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 May 2021 11:59:17 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 813EDC061574
        for <devicetree@vger.kernel.org>; Fri, 28 May 2021 08:57:42 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id y184-20020a1ce1c10000b02901769b409001so2676766wmg.3
        for <devicetree@vger.kernel.org>; Fri, 28 May 2021 08:57:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=7pmaZyXtM4AylBjc9qEm89kM4k0ziUNZ9Q5i42rDzWM=;
        b=fvi8pmHmARJkZGgKCqyDKLScFBrSY0l3kaR5OLzc6H+XzE6JnomEzjb4Lc1jf/E4jc
         UM0nI3C7KwptyQC655UoSunBZG9gbrk0YGE4mzIBphHqOZYZseRPTO8uukKA0STHYKZY
         mvDgNIIOuJbY7q8Fc3ehl0aIF/Dp6weMxHqunHxo7cH6p1MAaq86Sf3hisazalWXyvey
         8Bi4lkqy9Lg7Un+OyaNY2M3W7J3Fl0WhL5TkMM9eP11cn8QCO9amdroYt3KuaRHds5WN
         GSG7wMsXg+UofiVLRRHB8lZWV3HSuEf2/sBtEfm3nvEfYNicHifihx5zby7a9zM7SsUo
         9CTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7pmaZyXtM4AylBjc9qEm89kM4k0ziUNZ9Q5i42rDzWM=;
        b=YBjfcOFwkbsrbMO8kfXlI2p3n2zjP5LMprwS8rRzwsSWUcZwbMX9JA9h0Dc3hohYc5
         8FigN7QsEDDA6fytuT3ojljnE5fpeO3hlpBt3uYapYx8UIpWFuW9URWFE1Otd2yINT1l
         R5J2S4PuBLamvCAjRnsu82mdpzW0qrNUdDsEQaqgX4YM+6N+DiKksupoCPmIQ8z/DBVl
         28CweJevKruRMsaSucwLLWII5ikRu/6b+eEAnjdoaGRlYijWBc3VdXfoHWYP5xTdW3ie
         GAaSNEo1inOnw2YUmyhyJyCISZ69wPUOUwiUJO2pYD8ZAzhCd0MkvwB01kpjuZCkPtlE
         km1Q==
X-Gm-Message-State: AOAM531zIMUKrHkbHERMftxEIrgohOn11J3SGoTP7l46DxyXI17hhpn8
        OQVASIOR67xhRYzgTPOBgxvv8w==
X-Google-Smtp-Source: ABdhPJxMTLIJocRenHHTPeek/Fl6d7thRubV729bcfU9aTOyb22v3Hh7R4kffL2OGh/WjkyXRhQ8mg==
X-Received: by 2002:a7b:c18d:: with SMTP id y13mr11619016wmi.91.1622217460940;
        Fri, 28 May 2021 08:57:40 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:1d23:2234:5254:8179? ([2a01:e34:ed2f:f020:1d23:2234:5254:8179])
        by smtp.googlemail.com with ESMTPSA id c6sm7492788wrt.20.2021.05.28.08.57.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 May 2021 08:57:40 -0700 (PDT)
Subject: Re: [PATCH v2 3/3] dt-bindings: timer: convert rockchip,rk-timer.txt
 to YAML
To:     =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Ezequiel Garcia <ezequiel@collabora.com>,
        Kever Yang <kever.yang@rock-chips.com>,
        Rob Herring <robh+dt@kernel.org>, kernel@collabora.com
References: <20210506111136.3941-1-ezequiel@collabora.com>
 <20210506111136.3941-4-ezequiel@collabora.com> <15819722.JCcGWNJJiE@diego>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <398f8cd1-59cb-369f-0356-85cc1a64bb28@linaro.org>
Date:   Fri, 28 May 2021 17:57:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <15819722.JCcGWNJJiE@diego>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/05/2021 17:56, Heiko Stübner wrote:
> Hi Daniel,
> 
> Am Donnerstag, 6. Mai 2021, 13:11:36 CEST schrieb Ezequiel Garcia:
>> Convert Rockchip Timer dt-bindings to YAML.
>>
>> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> 
> can you apply this patch to the timer-tree?

Yes


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
