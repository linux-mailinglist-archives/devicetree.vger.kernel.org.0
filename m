Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E3287388258
	for <lists+devicetree@lfdr.de>; Tue, 18 May 2021 23:45:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352509AbhERVqk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 May 2021 17:46:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352569AbhERVqj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 May 2021 17:46:39 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE2C8C061573
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 14:45:20 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id m11so16028079lfg.3
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 14:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Zq8Oj0D7oak1Vt4kV54mr1ZTCVcZbOhaIw9L0IBs9T0=;
        b=l2FFG8EPiN3vjj4EafWKp8FVGmDqN3MACtnwZCAHjEyaKq0ByGblwx9z9oUGFFqzjh
         ZIWvcDQWDjlRNkhQP6YpWYgl00aCM02ts8vijCHXKa9L2Xt+encl3y47O5AGwIUIpE2b
         joGZEqrwpnr1nYpEeJKj7hEYIthii8xUcMb7T+uAZWCVEqI85gReLfVbMHFWAgdWLX3c
         MeOq2BlFNOHaigcy5h6BauK9gVc3tvfWBMPip9wwAtWA2PeEZCpVv8cOzwX0kDB0af2x
         EWjxVtEN0kWy4wtT9U+eysxOAha7+KyHLrEHVX/O/AvlYzbS1LXxRN4nhK5MFqK2hNEN
         FVJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Zq8Oj0D7oak1Vt4kV54mr1ZTCVcZbOhaIw9L0IBs9T0=;
        b=roCA/f5d76JvkC6xj0nw07lpS+oT+vpgMmGfLtWFn0cnY6TPicwyHqlixqJkt387M1
         WV00KABzSaDYPFsb98A8OjAXqa6nwT6XhczGb/OLLahTBeB6+liT31I3CPmGdzufsh7y
         5jdzoJJQ5Fs17ey2zSzMHZWgiUZMs9CiUEUyp1DyoH9rhOiyrD8yoT3Rq3UQnUdgIhpB
         zITIOEImrth2eZo2/lHNkY429aIwdb8jJmgtucMLZWoEpxjn0CXt4GYv6+zxGhOm/f4e
         JILvmrRK3zD0Tnb8sDK9EQ/M43Fv6zbi7nyB0cTNxWTHmkkU6Q7xcqXyO6MA2hO7CYGU
         PI5w==
X-Gm-Message-State: AOAM530lxwWi8CYZcfOiRs+XvM8+RewYa3OCFp7xXLwI0IAHe8q6r7mM
        gaOTPXtqp3ucMbSo2eRo0so=
X-Google-Smtp-Source: ABdhPJxh5+b5L6ZRRyHsSrTpjq+R+4xiVVCh52oF+kqhQNv1TVL1AeH/w7K17KfxyxbG0Kf8MuzQ8w==
X-Received: by 2002:a05:6512:1192:: with SMTP id g18mr5531306lfr.659.1621374319358;
        Tue, 18 May 2021 14:45:19 -0700 (PDT)
Received: from localhost.localdomain (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.googlemail.com with ESMTPSA id v1sm2015837lfo.179.2021.05.18.14.45.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 May 2021 14:45:18 -0700 (PDT)
Subject: Re: [PATCH] dt-bindings: sound: wm8750: convert to the json-schema
To:     Mark Brown <broonie@kernel.org>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20210512205926.780-1-zajec5@gmail.com>
 <20210518185511.GF4358@sirena.org.uk>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <edc9e00f-1074-8a9b-1666-ba4a0b9a08f6@gmail.com>
Date:   Tue, 18 May 2021 23:45:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210518185511.GF4358@sirena.org.uk>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18.05.2021 20:55, Mark Brown wrote:
> On Wed, May 12, 2021 at 10:59:26PM +0200, Rafał Miłecki wrote:
>> From: Rafał Miłecki <rafal@milecki.pl>
>>
>> This helps validating DTS files.
> 
> Please submit patches using subject lines reflecting the style for the
> subsystem, this makes it easier for people to identify relevant patches.
> Look at what existing commits in the area you're changing are doing and
> make sure your subject lines visually resemble what they're doing.
> There's no need to resubmit to fix this alone.

Oops, "ASoC: " prefix is quite unique, no many subsystems use any prefix
before the "dt-bindings:". I didn't think of checking that, sorry.
