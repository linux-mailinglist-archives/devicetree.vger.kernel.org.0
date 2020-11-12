Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 169E02AFF3F
	for <lists+devicetree@lfdr.de>; Thu, 12 Nov 2020 06:45:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728036AbgKLFdF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Nov 2020 00:33:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728689AbgKLENn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Nov 2020 23:13:43 -0500
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com [IPv6:2607:f8b0:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58036C0613D4
        for <devicetree@vger.kernel.org>; Wed, 11 Nov 2020 20:13:42 -0800 (PST)
Received: by mail-pf1-x441.google.com with SMTP id a18so3307140pfl.3
        for <devicetree@vger.kernel.org>; Wed, 11 Nov 2020 20:13:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=hNUSM1grWO9vy+XbwQYcKuJzWbYPa41sIt6VxAzGZ60=;
        b=JpXqWkTNjbGP49vI7qFhq2woghriFKkTm5vcYedTvUvqt3ZwN4Axw16Cjn8ztdHybe
         hn1tYg/E9pp/sWqFiEnUKzFWnuG4NgkdAPRatfFz21jYjn4fysmPcx7hkdLqi3KsGFV8
         No+HRlM2rlqJGBTvdUOFpWZAEbyknpygTpslWUTDevzqGjkKgVcYVYuh/1R1yW9AtczY
         iNSIg8pp8sRQeWj4ulAkx3yMgCVmER5YN9AgVUBP64AoHIdJV0UehM79D6v2/5JdeHsz
         oI9dIxbzteBnktATYHoQsZ83iTPLcy24cByfsSG/wMW7Sv5oBUE5YwIRCJDxMVKl0AHy
         ALFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=hNUSM1grWO9vy+XbwQYcKuJzWbYPa41sIt6VxAzGZ60=;
        b=kPOYk3xBcdW76eh6CGKtf4Vk3Te0DYM+z0JxIlQEn6knChBRa58VbeKsl3SqFEmVgs
         9TdkBODHurmrylCLs4KM+5Hq+UThThl+h3usKerAeVPE4X4ft2fFlYjABrm+V14VSuVY
         D2mPf/ZocUZGRuY70eEC/GT0w7AL2u7SKOAj77mFGD+RZ+hD7kSNNQMVOZhjgncxllTv
         bRBbGUr8Ho3LVrdWiV8AJlRqWEAPq6Y7fwCxm8OGQY3eQfVBbUpRSdDuZlfCah6S1xKa
         QVbok/pyuDENgQXF7unntps/zElNUgw4xjjEIkjP3dUkqYrynmeEGXHtIdU3LFpTc7y9
         C8Og==
X-Gm-Message-State: AOAM5301Q6h+exvSw50J7Ka97D5PMuZNdATVHOk93ylhx2z3p1Jf0jM+
        u0qD5TC/1B+awGJcobmLk1k=
X-Google-Smtp-Source: ABdhPJwjTX204uIRWfSUxSI17Mzjy2okJbjxj0mOj9qgEBVHbetoFPSGAgZh3UdP5LV4cadBSo47rQ==
X-Received: by 2002:a17:90a:9504:: with SMTP id t4mr7568828pjo.82.1605154421898;
        Wed, 11 Nov 2020 20:13:41 -0800 (PST)
Received: from [10.230.28.234] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id f4sm11200912pjp.3.2020.11.11.20.13.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Nov 2020 20:13:40 -0800 (PST)
Subject: Re: [PATCH] ARM: dts: BCM5301X: Move CRU devices to the CRU node
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20201111145538.14893-1-zajec5@gmail.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <8a69d115-1906-a89d-9380-a647b8325065@gmail.com>
Date:   Wed, 11 Nov 2020 20:13:39 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <20201111145538.14893-1-zajec5@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 11/11/2020 6:55 AM, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Clocks and thermal blocks are part of the CRU ("Clock and Reset Unit" or
> "Central Resource Unit").
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>

Applied to devicetree/next, thanks!
-- 
Florian
