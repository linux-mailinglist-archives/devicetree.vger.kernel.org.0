Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A96E6411DFD
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 19:24:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345405AbhITR0Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 13:26:24 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:49682
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1349743AbhITRYX (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 Sep 2021 13:24:23 -0400
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com [209.85.221.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 63B333F322
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 17:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632158574;
        bh=Ib/7vEzqwK2uprJcTl5mNvdNQqfYMGseImnegUnlZu8=;
        h=Subject:To:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=dLd8MA/vlcqNC3HrAtrI875zKeCi8Bj5TyKfQVMlOmehYclCpJFvYHT8iOU45/ZOw
         +V85cFy1AePUZHdw96MT4YAe+8TWd/IlFW3qhSSe3Dmih2cJL5g12vKNdNi7gm9QNV
         zQul0PZTa3iCxu/AqFoDOiKK9IEXdms4TI/lu6dGb/KQo5hR4jd6gC8QFGky77fFDe
         vN8lRitT8/jcl/ynUCs+/eUGwfvP4Vf98hnC3w/i19x3sQeOCqmEaLwHx+FhLi1WUD
         eOF8tpXqH3TGpWl9hDtClFGJoYRcl/3NSoEb/9eF4X3sPa/EtMb/tmASTPzNd/Wngf
         biLCJ3ACbQqjg==
Received: by mail-wr1-f70.google.com with SMTP id r7-20020a5d6947000000b0015e0f68a63bso6709326wrw.22
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 10:22:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Ib/7vEzqwK2uprJcTl5mNvdNQqfYMGseImnegUnlZu8=;
        b=KAx+sqCiaGtcWE9TruohMQ8WNut1c5hmiSY+bVe+B9ug3ClV10hBRNOydo1cfnsVZE
         gXc2HrnuO6rezV5+9EKGoYWMwQA68jUjsU/crOKMgo4NjognCy9Oc8ikJ/0wIwz3McIY
         a9lkdbTvrN1dGOFJagdg131cj+0i8VR8bS5UGSBbganhoTgZY+sBPEI1RF4yKD5p6ksD
         SyVzBITXLAtu3VPz3hQgWSWl2MLQ6bfhRN4YV7P4uEuTTb2de259ut27XUV8boZDCwNk
         xG7WCFb6x2MgnAigDtL5ylffq+bHKMf7OSTJQFtdfRCkwat6ortYs4PyibL6Phbtjgvn
         rRqA==
X-Gm-Message-State: AOAM532GAQ1J3qn6IfVuNjwYurVKatUObxqdoXIVKv4gzV5GspBM16sd
        au8lPdLfq3c4o/vnS3PFkH18hrijKD6FYHw74P/mIp225F7mruhh1X033X36GgK45/ljZf1zBgh
        fK4OIPhZkpAaan3X9wmpFHTAygPHf3HcT8Ev2O64=
X-Received: by 2002:adf:9dc6:: with SMTP id q6mr29119908wre.161.1632158574153;
        Mon, 20 Sep 2021 10:22:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxwOXR3BGLGuHRY1saUVMJLa6t51fTX3CzldWDDLLRnhlJnRQKhpE+RtKpocM9bhIwyrYYE3Q==
X-Received: by 2002:adf:9dc6:: with SMTP id q6mr29119894wre.161.1632158573938;
        Mon, 20 Sep 2021 10:22:53 -0700 (PDT)
Received: from [192.168.2.20] (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id 4sm92158wmv.42.2021.09.20.10.22.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Sep 2021 10:22:53 -0700 (PDT)
Subject: Re: [PATCH] dt-bindings: hwmon: lm90: convert to dtschema
To:     Jean Delvare <jdelvare@suse.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>, linux-hwmon@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20210920140525.157013-1-krzysztof.kozlowski@canonical.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <9bd8a400-86da-04bf-8205-725794e62108@canonical.com>
Date:   Mon, 20 Sep 2021 19:22:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210920140525.157013-1-krzysztof.kozlowski@canonical.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/09/2021 16:05, Krzysztof Kozlowski wrote:
> Convert the National LM90 hwmon sensor bindings to DT schema format.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---
>  .../devicetree/bindings/hwmon/lm90.txt        | 51 ------------
>  .../bindings/hwmon/national,lm90.yaml         | 79 +++++++++++++++++++
>  MAINTAINERS                                   |  2 +-
>  3 files changed, 80 insertions(+), 52 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/hwmon/lm90.txt
>  create mode 100644 Documentation/devicetree/bindings/hwmon/national,lm90.yaml
> 

I will send a v2 because few devices are on trivial-devices list.

Best regards,
Krzysztof
