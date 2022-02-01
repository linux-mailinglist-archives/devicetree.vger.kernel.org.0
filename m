Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 972C94A5949
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 10:33:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236066AbiBAJdm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 04:33:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236051AbiBAJdj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 04:33:39 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9800C06173D
        for <devicetree@vger.kernel.org>; Tue,  1 Feb 2022 01:33:38 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id l25so30623413wrb.13
        for <devicetree@vger.kernel.org>; Tue, 01 Feb 2022 01:33:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=jR0cK8D/cxqE0XH4x3hRJS7ga+v+EADCVtjxDl6n2ec=;
        b=e3XfiA5vXUh72nUHoqnkjA+JNWHiMQM9t7dBcPXPHgF6sDSGez1IqxNzJpi+GjFBOV
         KUD48C81FhtNoxA0lbzVxeyRRhvpRlx+cE0VRNTkadtW8VaTsaf+Df+BRX/o6WXx3KeJ
         ggfrpaYwN5ipBuJYBt6C96M4z3HvTR/E+3kCkKZTbsh2NsUI+fG9SCrLO+h+/XA87aOr
         d2FJ4JQpI44+yS86eGUFGZUt2O97zc/ek9olDN0omyd9T2PSXc5OjaVHoT+CTDB2WufY
         gL4SDiz7omcLywGsPoK771Bp0vY6kAwTETgNkV8fXkWv8vOmtUkFqqpehVTj0IkxDF39
         7D8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=jR0cK8D/cxqE0XH4x3hRJS7ga+v+EADCVtjxDl6n2ec=;
        b=Gr2fzTIDzkztSGT4xe/8cEKYst5hkcWj6/7w1Sa18x5tv5pkgY+vKQusZE+72Y20pW
         V7B/qsmwkP7qBsyOTiZnC/I9uhIFBYgpOnltyia4v2gDJdIv8QWoUUlGzy0L0xbI9vP1
         G1w1z6G3MdW8r4cc5xEDTzKk8gm3p8tEyEqMsRwUVjROy58GBr5/jjTk6QbGlSWdDNLK
         54zLVOgrvfBq2PXGoxk/6QUY/xVLbuhOpqhDw9HCLDZjQ8/sEVFQWoSOB/Y9mUIyUQmc
         ud7DjLgtUOFWqk6jtzGTIphB1PXN690jrRKC/D53WevIBMTGQy1T4QkUmfMS4otcE578
         lkaQ==
X-Gm-Message-State: AOAM532nQDCssRkBpG0ww6j9WhM4NjJnVHhLxf+Lc6rqYVWlU5wy6pGx
        q8Gi0fiX2YPih/r/CPGysnnRUQ==
X-Google-Smtp-Source: ABdhPJz7q6Dc9gGjf2b6E0Z5D79bjl78fxuAGHPjeuYmXnRsPs8fH+DkNHCl7jLbwlUXMVseit1hTg==
X-Received: by 2002:a05:6000:104e:: with SMTP id c14mr21065076wrx.252.1643708017192;
        Tue, 01 Feb 2022 01:33:37 -0800 (PST)
Received: from ?IPV6:2a01:e34:ed2f:f020:accd:30fa:dc2c:eeeb? ([2a01:e34:ed2f:f020:accd:30fa:dc2c:eeeb])
        by smtp.googlemail.com with ESMTPSA id k10sm1520260wmi.1.2022.02.01.01.33.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Feb 2022 01:33:36 -0800 (PST)
Message-ID: <ec3c5869-a7e0-9963-2da1-5e695e4f6e95@linaro.org>
Date:   Tue, 1 Feb 2022 10:33:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [Patch v3 3/3] dt-bindings: thermal: Add sm8150 compatible string
 for LMh
Content-Language: en-US
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Thara Gopinath <thara.gopinath@linaro.org>
Cc:     agross@kernel.org, rafael@kernel.org, rui.zhang@intel.com,
        robh+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220106173138.411097-1-thara.gopinath@linaro.org>
 <20220106173138.411097-4-thara.gopinath@linaro.org> <Ydd8IhMesT4QBiWZ@ripper>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <Ydd8IhMesT4QBiWZ@ripper>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/01/2022 00:32, Bjorn Andersson wrote:
> On Thu 06 Jan 09:31 PST 2022, Thara Gopinath wrote:
> 
>> Extend the LMh dt binding document to include compatible string
>> supporting sm8150 SoC.
>>
>> Signed-off-by: Thara Gopinath <thara.gopinath@linaro.org>
>> Acked-by: Rob Herring <robh@kernel.org>

Applied, thanks


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
