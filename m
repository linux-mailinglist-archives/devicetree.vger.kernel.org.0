Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B7E3372BD5
	for <lists+devicetree@lfdr.de>; Tue,  4 May 2021 16:17:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231515AbhEDOSi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 May 2021 10:18:38 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:45555 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231508AbhEDOSi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 May 2021 10:18:38 -0400
Received: from mail-qk1-f199.google.com ([209.85.222.199])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1ldvrq-0003ql-4n
        for devicetree@vger.kernel.org; Tue, 04 May 2021 14:17:42 +0000
Received: by mail-qk1-f199.google.com with SMTP id d201-20020ae9efd20000b02902e9e9d8d9dcso3557240qkg.10
        for <devicetree@vger.kernel.org>; Tue, 04 May 2021 07:17:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8Mdj10uq8YyfvX11RWMMGRr3/VZzdY5+rc9TfTZ6UC8=;
        b=uJeSRqcfb6/tkcaC9JQ7AUV+73n3SVkSbAnB/L4f8swJ9iH/+PZnQ7JITcZFcOPRLP
         ogAIGDpJynfDyWYCAQrmJO438NZ69IORvKhY5dmw6xTUTZjpeAdWOydA85ByozKINUea
         Yc07XSQVjREn9X9dyasCM8glve5EbotMxcq70qco/V/gufq34isD6Hu6D5QINOhzaL8l
         Ib3SjCmd68HpOSptil5G9wWpgfpoAFNU8pH4CzcWEdhKFQMM1LGCvxYtduEiPqaeg9Mt
         uMi4iaHM1ud3Ofef/1Lw47jLLmc70MtPd4/GO9MOMDf6uAjABc0BYlosAvOzed7kUArH
         ZWvw==
X-Gm-Message-State: AOAM530X5yaz1++dsMXXhc+f4rsd0WdIJ4hwucitZMOnG8sthKlIqn+s
        sftrRH4wYGq/SF5GibUVTTRcjwW+84boUTsA/vhW437ZeNBPNIlHvjgUJRMUr+CQdwSQGjlkql3
        BOFkgfFYPt78O8BtVfFmHzDk9XaJgPgrptZGnp0s=
X-Received: by 2002:ac8:60c8:: with SMTP id i8mr22133300qtm.63.1620137861306;
        Tue, 04 May 2021 07:17:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwBXSkZplOQFMqdOcrYIdibKIXwCDSIkqvwhTWqybS/PTYVBzFw35eerGZalnS6j+Q4dZ10Fg==
X-Received: by 2002:ac8:60c8:: with SMTP id i8mr22133258qtm.63.1620137861031;
        Tue, 04 May 2021 07:17:41 -0700 (PDT)
Received: from [192.168.1.4] ([45.237.49.3])
        by smtp.gmail.com with ESMTPSA id y13sm1047947qkj.84.2021.05.04.07.17.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 May 2021 07:17:40 -0700 (PDT)
Subject: Re: [PATCH v1 1/3] memory: Add support for MediaTek External Memory
 Interface driver
To:     EastL Lee <EastL.Lee@mediatek.com>,
        Sean Wang <sean.wang@mediatek.com>
Cc:     vkoul@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
        matthias.bgg@gmail.com, dmaengine@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        wsd_upstream@mediatek.com, cc.hwang@mediatek.com,
        joane.wang@mediatek.com, adrian-cj.hung@mediatek.com
References: <1611746924-12287-1-git-send-email-EastL.Lee@mediatek.com>
 <1611746924-12287-2-git-send-email-EastL.Lee@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <2cf92fc2-ccac-312f-f4a6-9a4dfd9aee9c@canonical.com>
Date:   Tue, 4 May 2021 10:15:28 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <1611746924-12287-2-git-send-email-EastL.Lee@mediatek.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/01/2021 07:28, EastL Lee wrote:
> MediaTek External Memory Interface(emi) on MT6779 SoC controls all the
> transitions from master to dram, there are emi-cen & emi-mpu drivers.
> 
> emi-cen driver provides phy addr to dram rank, bank, column and other
> information, as well as the currently used dram channel number, rank
> number, rank size.
> 
> emi-mpu (memory protect unit) driver provides an interface to set emi
> regions, need to enter the secure world setting and the violation irq
> isr will collect mpu violation information, after all regions have
> protected their respective regions, emi-mpu will set the ap region to
> protect all the remaining dram.
> 
> Signed-off-by: EastL Lee <EastL.Lee@mediatek.com>
> ---
>  drivers/memory/Kconfig                   |    1 +
>  drivers/memory/Makefile                  |    1 +
>  drivers/memory/mediatek/Kconfig          |   23 +
>  drivers/memory/mediatek/Makefile         |    4 +
>  drivers/memory/mediatek/emi-cen.c        | 1305 ++++++++++++++++++++++++++++++
>  drivers/memory/mediatek/emi-mpu.c        |  908 +++++++++++++++++++++
>  include/linux/soc/mediatek/mtk_sip_svc.h |    3 +
>  include/soc/mediatek/emi.h               |  101 +++
>  8 files changed, 2346 insertions(+)
>  create mode 100644 drivers/memory/mediatek/Kconfig
>  create mode 100644 drivers/memory/mediatek/Makefile
>  create mode 100644 drivers/memory/mediatek/emi-cen.c
>  create mode 100644 drivers/memory/mediatek/emi-mpu.c
>  create mode 100644 include/soc/mediatek/emi.h
> 

Use scripts/get_maintainers.pl to get list of people you need to Cc.

Run checkpatch, smatch, sparse and coccinelle on your new driver. I can
easily see that some of these steps were missing (e.g. OWNER field...).

Best regards,
Krzysztof
