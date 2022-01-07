Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 48C414877AA
	for <lists+devicetree@lfdr.de>; Fri,  7 Jan 2022 13:47:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231891AbiAGMrH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jan 2022 07:47:07 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:47120
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232013AbiAGMrH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jan 2022 07:47:07 -0500
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 017F6406EC
        for <devicetree@vger.kernel.org>; Fri,  7 Jan 2022 12:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1641559626;
        bh=mw0ExawwR8ahd9kK1BIGn/SS/zU5Dv8XgcJ3wXAs/II=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=TZ9KpX7TFm2sLJCJGX+8aBNp6FQ2E6SZF/dc4kMLmQ2HXWpZYxeUyevw6Q/E7zgYI
         pT+VzzNVP4j7Yvr2eR5guFbOhVx6FV7xg+JrinBMSslZJZJvuIrjkMiJZyKkG3u7rz
         +D9DoyYR9HwlFPFoHiwzGqyXdlPJPWR8FUWvAYBI2XPu2Sd47HXzS2BBv9+769LanI
         NVr8Ut1ZM2GuNxamsHxByvMt2iQPSsK66Rf2UKQDpOQHPmkktg3/VxD+TJT4li/qqy
         KMmI0xSb5F8Q/DDAWjnst+XcwENK+wO2Q4xpaCdaHhPX9V0rD/EXmxqfcJVQ5hygkT
         7jfmY8ws0Ydvw==
Received: by mail-wr1-f72.google.com with SMTP id h26-20020adfa4da000000b001a652d52d8eso182913wrb.16
        for <devicetree@vger.kernel.org>; Fri, 07 Jan 2022 04:47:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=mw0ExawwR8ahd9kK1BIGn/SS/zU5Dv8XgcJ3wXAs/II=;
        b=smb5ycuWJm9hzdcyhZ84h+IISBVO8/lGQeTlgkMQbrDy6baI17qGVaYRKZLYtPzWVH
         A0z0pYwi8gJFK+SEtDhg1WYF3d62KmSlw1aN0NHMGKJcagqJb/qX8nHCPVjO+ForjMwX
         xReSWEAUtmuzuQoeJ5neW0ZwhRsXqsHcB7glf2yT1+nZZtCGF/3wWIIRNJq8lnEiJaOY
         QG1LwqByE3/SysmNE1jBjClRkWpp1Q9H4HyepJVLCFCVMV6XPO1pk/CgMkT/gd/MwWeA
         DDa7sMXAmi1RFPp2rM2qMDUbbE07uOI7cg4WpJirxK37Uq9vnwcVy0jU2zbvNFabofy0
         c7fQ==
X-Gm-Message-State: AOAM531kc+dhx2oiAAwn4Dnr1lHVj9okqCoiMzaE6R5B8NP6qHc68Wz0
        9O2nVaFM2V/Bm59ktQRSv5JK45wjp6Pwm0JbuYahAsR7bzQdgoSc6u1d15ByzxruhOqyrGCIXrK
        +ZRTq58M2/CKTDOFxRZ7OTYGQEBHwxWOvGQ0kRhw=
X-Received: by 2002:a1c:7908:: with SMTP id l8mr10769071wme.16.1641559624910;
        Fri, 07 Jan 2022 04:47:04 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw2FsvDO60VgGxZNwGuql9jeQSwLbf8fwlr9vig9/8LpbnhuhXAEvvUqztMYtnXUorH1j6+bA==
X-Received: by 2002:a1c:7908:: with SMTP id l8mr10769046wme.16.1641559624685;
        Fri, 07 Jan 2022 04:47:04 -0800 (PST)
Received: from [192.168.1.126] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id y8sm5941569wma.19.2022.01.07.04.47.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Jan 2022 04:47:04 -0800 (PST)
Message-ID: <99115cc4-32f6-d217-68be-33256a6993a8@canonical.com>
Date:   Fri, 7 Jan 2022 13:47:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH 0/7] arm/arm64: dts: Remove unused num-viewport from pcie
 node
Content-Language: en-US
To:     Mark Kettenis <mark.kettenis@xs4all.nl>,
        Jisheng Zhang <jszhang@kernel.org>
Cc:     shawnguo@kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
        linux@armlinux.org.uk, andrew@lunn.ch,
        sebastian.hesselbarth@gmail.com, thierry.reding@gmail.com,
        jonathanh@nvidia.com, hayashi.kunihiko@socionext.com,
        mhiramat@kernel.org, nobuhiro1.iwamatsu@toshiba.co.jp,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        linux-tegra@vger.kernel.org
References: <20211229160245.1338-1-jszhang@kernel.org>
 <d3cb7b8439ee3d06@bloch.sibelius.xs4all.nl>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <d3cb7b8439ee3d06@bloch.sibelius.xs4all.nl>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/12/2021 17:50, Mark Kettenis wrote:
>> From: Jisheng Zhang <jszhang@kernel.org>
>> Date: Thu, 30 Dec 2021 00:02:38 +0800
>>
>> After commit 281f1f99cf3a("PCI: dwc: Detect number of iATU windows"),
>> the number of iATU windows is detected at runtime, what's more,
>> the 'num-viewport' property parsing has been removed, so remove the
>> unused num-viewport from pcie node(s).
>>
>> It's too late for linux-5.17-rc1, I will rebase and send out v2 if
>> necessary when 5.17-rc1 is released.
> 
> Please no.  This only makes the device trees unnecessarily
> incompatible with older kernels

Anyone who is running a new DTB with older kernel is doomed anyway, not
only because of this change but hundreds of other similar cleanups, e.g.
making DTS conforming to dtschema. Are you sure there are such use cases
of using new DTB with old kernel? I cannot imagine making a stable
product with such scenario...

> and other OSes that do rely on the
> "num-viewport" property.

Right. We should have move the DTS out of the kernel when it was still
small. :)

> It really doesn't hurt to keep this property
> even if future Linux kernels no longer look at it.

For Exynos PCIe, the property is still required by bindings, so
definitely it cannot be removed from DTS. I did not check the other
bindings.

Best regards,
Krzysztof
