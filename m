Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C9C9146FE4
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2019 14:27:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725943AbfFOM1r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 Jun 2019 08:27:47 -0400
Received: from mail-qt1-f193.google.com ([209.85.160.193]:38686 "EHLO
        mail-qt1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725446AbfFOM1r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 15 Jun 2019 08:27:47 -0400
Received: by mail-qt1-f193.google.com with SMTP id n11so5651293qtl.5
        for <devicetree@vger.kernel.org>; Sat, 15 Jun 2019 05:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=QUdqxVBPq9imgdnJQFYvha+M4qxrrCavKMcvFwAngs0=;
        b=UDpts2Za5LSrbJ/yfgjWjZhBeaGNbJ1yfqFAGTWkQ1DigQwdh9DGMeM9GU7DWUrbzq
         QAyru1WMZHQbpkmrJm0umxi1tiwp/kDh+JCmKedyXKKX5A3cyohbGF68U26bTm2S7APh
         YoY/miuENg9XcmcP7XlownN58xlST9RI8Nj7n74y9FNy2jugYHkDY8LRwgd131vR1Cxe
         0kduedLzbzsVRNFl/ZNJWbe6keStlaR+fJWvKIS48Yy7AOZ+D0IiYCj6zJ848cFI/1mG
         Cc5hRAgoM6xQGq60CyyDJm2Iwph6nU9v7y1ARG+vNCiwF6z0xr0z3CktK0VHFFTd6S7t
         tAXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=QUdqxVBPq9imgdnJQFYvha+M4qxrrCavKMcvFwAngs0=;
        b=t/17YyIb3RWBFeUXzaVQueN57M7AjsyDWfAGmj1KrNPzNETPs8eWRLyO/lC16I8HwD
         RSyoqV2FD5WehAEJNg4pSDgM7cUzjfrbBwCraOQeCr7upU67Y8eE/H/wtu0DVX6/pz4T
         N0SIVht4K+VJKzzTkPDngjo4WP8JtrAzcYDlufl6WGSJ+WSEQ6iPCCRLy7knflTwmaT0
         6zhZIYQNSVXabKaPEJ3Q1ym0CWDTTjtqlvfPZqUVdtzZsAhOfZ+7kVU+FjuHaFUmzzMg
         t559HSqe7gSsCLxSA8W7xuk2OZ2I1l3wrqDuIr/QyV2aPuowbyqcymBRmXZmq1Fkoivb
         qpLA==
X-Gm-Message-State: APjAAAVJSA71SQpH/vf0/BmUvSzxZgknOl/tmhdQCf8c1FDgN/Tbfkia
        lfSXuh9qiUbGpJNYf8JxTOA=
X-Google-Smtp-Source: APXvYqxwct+cSu4cP4kyX4tb45S7fuhMl4vL0jeGlfeQbusi3lOjRa5CzRWC9r6WbJm1Rs2CmtOzAw==
X-Received: by 2002:ac8:3637:: with SMTP id m52mr71369587qtb.238.1560601666518;
        Sat, 15 Jun 2019 05:27:46 -0700 (PDT)
Received: from ?IPv6:2601:153:900:ebb:d1e6:5a48:e4d5:c6a6? ([2601:153:900:ebb:d1e6:5a48:e4d5:c6a6])
        by smtp.gmail.com with ESMTPSA id t197sm2776531qke.2.2019.06.15.05.27.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Jun 2019 05:27:46 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: rockchip: set TX PBL for rk3328-roc-cc gmac
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     "Leonidas P. Papadakos" <papadakospan@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jose Abreu <jose.abreu@synopsys.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
References: <20190417210059.26262-1-papadakospan@gmail.com>
 <1555938803.1241.1@gmail.com>
 <8ded737d-1fd5-3609-ca2e-cfeba63b2d95@gmail.com> <1619091.6MGD9gV0do@phil>
From:   Peter Geis <pgwipeout@gmail.com>
Message-ID: <4210ab8d-291c-8c44-3c39-6a1849a73874@gmail.com>
Date:   Sat, 15 Jun 2019 08:27:47 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1619091.6MGD9gV0do@phil>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/14/2019 5:26 AM, Heiko Stuebner wrote:
> Hi,
> 
> Am Donnerstag, 23. Mai 2019, 02:00:27 CEST schrieb Peter Geis:
>>
>> On 4/22/2019 9:13 AM, Leonidas P. Papadakos wrote:
>>>
>>> Indeed, at least with that first patch users won't have a crappy
>>> experience by default (ssh lags and the like)
>>>
>>>
>>
>> I apologize for taking so long at this, but I wanted to make sure I had
>> it right.
>>
>> So far I've found a few things that seem to help, and would like y'all
>> to test them when you get the chance.
>>
>> Adding snps,aal (configures DMA for address alignment) appears to make a
>> massive improvement to stability, although the the snps,txpbl = <0x4> is
>> still necessary for this to work.
>>
>> Second, I added snps,rxpbl = <0x4> as well, which seems to help with my
>> RX issues a bit.
>> The biggest improvement with these two settings is more stable transmit
>> and receive.
>> Currently I'm getting about 800mbps on tx and 400 mbps on rx.
>>
>> Please test when you get the chance and provide feedback.
> 
> I have to confess I lost track of the multitude of patches touching
> the gmac on rk3328 and their long mail threads in terms of which
> to pick up and which are considered superseeded.
> 
> So I'd really appreciate if you could resend the patches that matter
> and provide relevant Tested-by, Reviewed-by, etc tags from involved
> people that actually were able to test patches
> 
> Thanks
> Heiko
> 
> 

Good Morning Heiko,

Here's a quick catch-up for you:
Currently we use thresh dma mode to allow rgmii to work, but this has 
performance limitations.
Leonidas submitted the txpbl 0x4 patch, which works well for his board 
but my board has very poor performance with.
I submitted a new patch that combined txpbl 0x4 with aal dma mode, which 
fixes my issue and seems to work well for Leonidas.

That patch is under [PATCH] arm64: dts: rockchip: improve rk3328-roc-cc 
rgmii performance.
I'd like more people to test it prior to submitting it to replace thresh 
dma mode.

If we get a few more tests without regression, I'll resubmit it with 
Tested-by tags for inclusion.

Thanks,
Peter
