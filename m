Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 397AE4667C2
	for <lists+devicetree@lfdr.de>; Thu,  2 Dec 2021 17:20:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347717AbhLBQX3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Dec 2021 11:23:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347508AbhLBQX2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Dec 2021 11:23:28 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9843CC06174A
        for <devicetree@vger.kernel.org>; Thu,  2 Dec 2021 08:20:05 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id r26so72750983lfn.8
        for <devicetree@vger.kernel.org>; Thu, 02 Dec 2021 08:20:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:to:cc:references
         :from:in-reply-to:content-transfer-encoding;
        bh=k6LHCdqupYCyeUzX+YCyG1xNMMlr+UmFCAMXGooVQMs=;
        b=e+JJj5cNeWPUwn8S1OmA+kDqtpNXJPa5Opd/S+qtxERQ/09gMxflAsfco3UZ74UJrK
         xWZ1m358sAMWN2/EIDQ0SOwIM/zU4Do1CQxRl7Hvc33wQr9lRAZH9gifPVnIe/5UbaZ6
         xWKHFNSdAQi9Cn07hO3KMYxSfYTUmHr9uW26whlW9NXVKqY2mPQpV7fy7Qk+pZ3DfBGq
         9dE71eXkdahKYFe3KpXVp9quszLaxH5mHCTcEkr38QNK9MZqDSVljZYeMg+DELbU+GwJ
         A4JKhWvQVdCczhIYZ8CMiVmoU+8so/QSJYxfvZKfIRXvvoulg8sq5FhJV7j37CEOFS+I
         oDHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :to:cc:references:from:in-reply-to:content-transfer-encoding;
        bh=k6LHCdqupYCyeUzX+YCyG1xNMMlr+UmFCAMXGooVQMs=;
        b=c5CV7NUmlZvX0iEfE5ILSGE1jj3BPXVm2xC4YvNOiEFEMQC4EzJhZrVO0/tjft7Lcq
         u+cyslcLA/wNpIIy9IoHYS5xeZAK3EWgkVlAa6IpaWa0XDqZU8XCHlYO54vWRtgJLckv
         CGA6el/9LV9Mf0e3et1xnwbiJlTB9JDMqtHSaeFDGQqvJmY/vMY/gW7mFN+HUjxA1euE
         eEkVsxpWYCNuZC66Xc/b9AzlowQ34dvY/45L7YrnYJLAm/e71EV4HrnymEuQbxH4eFcr
         RU8yV9Cv1uj1J5GHRcHoQthSyKfLgzUOPPmp0JFUCHlp0uHSLqHudejiwJynyvqRUgj5
         58Rg==
X-Gm-Message-State: AOAM533K4S5gNlg+7g/gknAzETNk/BGFspo2ZvFlEpnvZwBrYYHuB15Z
        AVT7uRh5+8vZyF9qYTarN+k=
X-Google-Smtp-Source: ABdhPJxyG7J7tKr0Cyxbsm0j5nJNI8saMevJZJ1zZbFONQDzHDFw4b5qhwZzTug/BCZe/ZXK8c8F4Q==
X-Received: by 2002:a05:6512:607:: with SMTP id b7mr13095781lfe.489.1638462003870;
        Thu, 02 Dec 2021 08:20:03 -0800 (PST)
Received: from [192.168.26.149] (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.googlemail.com with ESMTPSA id 12sm22296ljq.59.2021.12.02.08.20.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Dec 2021 08:20:03 -0800 (PST)
Message-ID: <308143e0-937a-5350-6cd5-f6d5738169a7@gmail.com>
Date:   Thu, 2 Dec 2021 17:19:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:95.0) Gecko/20100101
 Thunderbird/95.0
Subject: Re: help on patch Netgear R6300v2 router to enable USB disk mount
To:     Dweb Fan <dwebfan@gmail.com>, f.fainelli@gmail.com
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
References: <CA+HNRgDCfto-Y=NdchLZ=GK_xFru1ZNYJEp9g5jO_rdNLGvV0g@mail.gmail.com>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
In-Reply-To: <CA+HNRgDCfto-Y=NdchLZ=GK_xFru1ZNYJEp9g5jO_rdNLGvV0g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02.12.2021 17:05, Dweb Fan wrote:
> Rafal Milecki, who is from openwrt community and also CC in the email,
> suggests that I consult you and see if you or someone can provide one
> kernel patch modifying bcm4708-netgear-r6300-v2.dts

To say pricesly, I wrote: "please send a kernel patch modifying (...)".

Please check
https://www.kernel.org/doc/html/v5.15/process/submitting-patches.html
on how to submit kernel changes and please kindly send an actual patch.
