Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 44F8346FDC
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2019 14:12:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725943AbfFOMMh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 Jun 2019 08:12:37 -0400
Received: from mail-qk1-f194.google.com ([209.85.222.194]:33420 "EHLO
        mail-qk1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725446AbfFOMMh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 15 Jun 2019 08:12:37 -0400
Received: by mail-qk1-f194.google.com with SMTP id r6so3456894qkc.0
        for <devicetree@vger.kernel.org>; Sat, 15 Jun 2019 05:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=inRr4CIO+m2MnMN+UoknQRa/5PVtmKpMFRVNhhThkrA=;
        b=jjCiZX5E0qW6WES3BwYF3kpVF0I32Bl8mV4LQP22iER/ygXFQi3ggLvAt9Cy82w6ds
         CO0+XzmYagn1XgEJv15bI2c8patMC0eBUJknratHBcXQAuq6l6wkLRsnYLW5t4GYsWzF
         XBoX62ScD1h1njfG2SHMtHb/4r4Y1H9kMw4sg3kloM3HGoVV//OQwQ98V3+ce/XnoCkK
         njtPUN8WcYWrdZRlh7OaKfWAjbwiHlHhfucxQNX/0KX58ShnEBXLVQtNBIQkndkafBJY
         5bxrVgG9wWMfwaHLJA6rOE25BIFJgnauPfl7bnm0T9FKmCdo0VgF8tyNYoUIVt4hMsoG
         3Smw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=inRr4CIO+m2MnMN+UoknQRa/5PVtmKpMFRVNhhThkrA=;
        b=ZTknlnTt13TXynjYEx1xdrj2PNNNHn+04EAB2gOPUrhQ5bmzrSl/aFGON6/P7Rzv8a
         hHiVNhJ68XxpFhUsq/hyWrY8e8A/Jvths+VNDd+Aej5pnjggQGmMqN7SB7XyH2wgXT55
         lSYNyX64q1id7Sn2LG9RtXlzmWp+zRh1t7QUWSPBFQTKPgGmtI+Q7DiX1xSnuhnWkEEP
         sr7ASiF/d8btmLN6EjkZOe711HS7BvxygSk6n4+it0B+/TFIb49gc3lr9V2Pl35KnYT4
         Coh7CmFdfzE035SlbqOs3narfj81Pdiml9eo8sGaEQqSAjb8VYiDYmi0n+3CBFiPiUrA
         wOZw==
X-Gm-Message-State: APjAAAU3qZHo92ZwVGRkflJRmLLyYDHIWNJ93FbiQ9uLqisJex2/i2IZ
        QrGWGOt7Goo077le071RUP4=
X-Google-Smtp-Source: APXvYqyiTf3HnTZs3MMs7IAw0mHRPbED9YwhOkFchUCDomSUrB04yrQpaHrMXLkrdEO4inE5zz5nnw==
X-Received: by 2002:a37:5942:: with SMTP id n63mr67499055qkb.69.1560600756482;
        Sat, 15 Jun 2019 05:12:36 -0700 (PDT)
Received: from ?IPv6:2601:153:900:ebb:d1e6:5a48:e4d5:c6a6? ([2601:153:900:ebb:d1e6:5a48:e4d5:c6a6])
        by smtp.gmail.com with ESMTPSA id p64sm3169167qkf.60.2019.06.15.05.12.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Jun 2019 05:12:35 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: rockchip: improve rk3328-roc-cc rgmii
 performance.
To:     "Leonidas P. Papadakos" <papadakospan@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Jose Abreu <jose.abreu@synopsys.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
References: <20190607123731.8737-1-pgwipeout@gmail.com>
 <1559912295.22520.0@gmail.com>
 <CAMdYzYorvWr1YhmFKaMQUCditjop5AZp4d1tO79XsVr7m7HrMw@mail.gmail.com>
 <1560547631.1367.4@gmail.com>
From:   Peter Geis <pgwipeout@gmail.com>
Message-ID: <71dc10a5-1024-d849-336e-476d183e5f46@gmail.com>
Date:   Sat, 15 Jun 2019 08:12:36 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1560547631.1367.4@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 6/14/2019 5:27 PM, Leonidas P. Papadakos wrote:
> 
> 
>> The big change was actually snps,aal.
>> As per the TRM, DMA channels not address aligned have severe
>> limitations, if they work at all.
>>
>> Setting the DMA ops as address aligned fixed my 30mbps TX issue when
>> combined with your snps,txpbl = <0x4>.
> 
> Honestly, I don't notice any difference either way with aal. So what 
> happens without it? If You only use the 0x4 txpbl and having removed 
> thresh dma mode, (2 things then) do you get bad tx?
> 
> 

I'm unsure why, but I think there might be small variations in the 
different boards (Firefly, Libre).
On my board (Libre) with just 0x4 txpbl and thresh dma removed I get a 
whopping 30mbps.

Adding aal brought it up to 900 mbps.

I also had stability issues on rx, where it would bounce between 200 and 
400 mbps, which adding 0x4 rxpbl helped.
I still haven't been able to get rx above 400mpbs though.

It's definitely the MTU issue, since setting the max mtu to 1496 fixes 
most problems.

I have to wonder if the pl330 in the rk3328 is bugged, since all of the 
hardware that misbehaves (usb3, mmc, rgmii) require the dma engine.

If this works as a valid replacement for thresh dma mode, then I can 
submit it for merging.
I would like a few more people to test it first.

Anyone else with a rk3328-roc-cc board that can test this patch?
