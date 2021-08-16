Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B17A83ECDF1
	for <lists+devicetree@lfdr.de>; Mon, 16 Aug 2021 07:14:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229795AbhHPFOz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Aug 2021 01:14:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229523AbhHPFOy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Aug 2021 01:14:54 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5DE5C061764
        for <devicetree@vger.kernel.org>; Sun, 15 Aug 2021 22:14:23 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id z2so32093229lft.1
        for <devicetree@vger.kernel.org>; Sun, 15 Aug 2021 22:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=RdDT5paKDgZnt270NtHwhW6/yeWE6E0Y+DA6hMj56/Y=;
        b=qwwYfuPbUvu3ALHdhtgSZAU7p8nFB5FiyG3o6M+v8KRHT/xGkgbpt7KqWQwTCINDu3
         DdkxqxFub0ohv93Km6gvOMBNqrWRDiDdmX/HSWbJpOcbMUUU/2/4CQao/1rTeQRkHFcx
         Lla9z+bCHjWrZHLTAXSgnD9sGiXvo9vf2xmumByY1jz0wV/s16Hrkv9i0QCR3eI8Ooqh
         +aWUY/D/Q2XdUFlyvF7G2LfA0bWCpoiSQzD5gVnneCoXBCtuyCcfng+bJi3HBmlJy7yr
         fqyuiD4F6T7v1ujHBMVK1mppdTt5irat3aaMoX9rzmqLGA9wDKWPt9cBReqBzQCNn1Bd
         bwzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=RdDT5paKDgZnt270NtHwhW6/yeWE6E0Y+DA6hMj56/Y=;
        b=mEr25XG2Jh6UHziS7UODH7L0b4+TNYrSLk4Cklxg3n+t79/39cX1ZV6eohZubo8knS
         GcTNjyuRCd7XNVjduNA74JY/LOkrweNTSFSR1Iv6vmbbfVWa87knZtANG1PVtutGh08k
         xhy0BMqevQ1dqieLZ6HSqav3CMLM8CIRyCTPwguD0PKGFWoCXhtypnRyL//ts+I7tw6X
         Abb33qmRSov/Gbs5NYWXikpetiHXRnyI/0uUp5+zIMHqiEaGXNa2izMcdWXNksBeIBFh
         0+xgVxHj5TmC6bBijn/zE16yOZ/RiGdlycifERxFZgCkQLgei1DzDNBv8uBBSkdsjIwQ
         YmaA==
X-Gm-Message-State: AOAM5301kJP5pyAuNiFMwx0xlgFWAI+WwqnY/RT4NHU8D/hdAyxqfkZz
        r7UWCjfCCGg1GgKcZDkEVRxu+GPyrd4MLg==
X-Google-Smtp-Source: ABdhPJzQRwNZeOsRxFFuLJO75+HJoiKl5FaIJMutQxN6BsOTEgs5rWuLrXDbnnx6SYRdYPBXjdSJ2A==
X-Received: by 2002:a05:6512:3baa:: with SMTP id g42mr5741110lfv.599.1629090860928;
        Sun, 15 Aug 2021 22:14:20 -0700 (PDT)
Received: from localhost.localdomain (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.googlemail.com with ESMTPSA id v5sm90257ljg.117.2021.08.15.22.14.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Aug 2021 22:14:20 -0700 (PDT)
Subject: Re: [PATCH V3 RESEND] dt-bindings: mfd: add Broadcom CRU
To:     Lee Jones <lee.jones@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vivek Unune <npcomplete13@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Rob Herring <robh@kernel.org>
References: <20210713094745.2586-1-zajec5@gmail.com>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <76a2cdb9-0d74-0dfc-7a78-a5c8022c643d@gmail.com>
Date:   Mon, 16 Aug 2021 07:14:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210713094745.2586-1-zajec5@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lee,

On 13.07.2021 11:47, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> CRU is a block used in e.g. Northstar devices. It can be seen in the
> bcm5301x.dtsi and this binding documents its proper usage.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> V2: Use complete binding & change additionalProperties to false
> V3: Use clock-controller@ for clocks
> RESEND: Patch is ready for pushing now since 5.14-rc1 is out
> 
> Lee: last time I sent this patch you couldn't push it because of docs
> validation dependency on 3 following commits:
> ac5f8197d15c ("dt-bindings: pinctrl: convert Broadcom Northstar to the json-schema")
> 08e9fdfbb224 ("dt-bindings: thermal: brcm,ns-thermal: Convert to the json-schema")
> 8f711f68cffd ("dt-bindings: clock: brcm, iproc-clocks: convert to the json-schema")
> 
> All above commits made it into the 5.14-rc1.

let me kindly ask you about this patch as I don't see it in the
https://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git/log/?h=for-mfd-next

Could you send it to Linus with your upcoming 5.15 pull req, please?
