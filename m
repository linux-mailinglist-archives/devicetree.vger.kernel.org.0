Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 47AB427312
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2019 02:00:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727305AbfEWAAa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 May 2019 20:00:30 -0400
Received: from mail-qt1-f193.google.com ([209.85.160.193]:45594 "EHLO
        mail-qt1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726218AbfEWAA3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 May 2019 20:00:29 -0400
Received: by mail-qt1-f193.google.com with SMTP id t1so4650300qtc.12
        for <devicetree@vger.kernel.org>; Wed, 22 May 2019 17:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=D32ZOKFRLW3jAQLYe8MxTrM9BtRmyZsAFpuUM0kn1Ds=;
        b=JS8A+Bj/AWAzLMo3ePM3T1UaSpb1eFU4LIWakq8i+KUmlgr835lr1xpsWj2Uj7x2MB
         PqJJTfd06T/sk14XCzrScM5CEvQU5Jq9efppNRs1FFYUgGDSUh1OXcZpYJy7IlH+PKQh
         q5kvokXUAgCQNYrPmGygRhBdWXPdihNDXxR42nnHvt0juMn7iLRbRnTC38Lo12QwanDg
         3sN0VNr0XKwBQQKqe99tYKMVRYqbqdTcOdMsRNCBntYbbsAU/4NSEIXE4FhWv5d5gxQq
         lqFruq00bv9lW3y7lxOSisbTemJ0JgQqHAlySmn5jF/k93YXIpKDV5et1tSARvTIY1n8
         Lstw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=D32ZOKFRLW3jAQLYe8MxTrM9BtRmyZsAFpuUM0kn1Ds=;
        b=mwb7Jna5MEbhZ9wYbj0aRHT0bvbF+QAXxm9ghHyCu4E40R916AzgkO9nvdnlNfXMod
         16k80VzKpa6mVQ7i8nyFRBuAKwDsdYO9mRAVxzztbNUjH6NbT9xfeDxZUWbs3cuzN66u
         ZTD1mLCSeI72eT8RfQhqoZiii2zc2cV0X4vfI20IqafLwzrmWUf1xjHls1aZ3g0oIpFF
         06eIbaN05wpSGEcHvGIu7XdTMzysDfpqR4KpHCQgGPSuhhhblTF2fnhUTiqdrv399NIS
         QN0YXaKqaVEHtlpDVfrAmXwCKtunJH/89Db22oDZ8c7CK///jQCSVkxGw0Z/QZKrQW+B
         bUuQ==
X-Gm-Message-State: APjAAAWlUwwaPoCO/KKmhwaql8R87kq9H1jUTkUbD9XD8uV1Lroa6BGy
        tksUIxDe3f2S9jGpHyXCKzw=
X-Google-Smtp-Source: APXvYqwCoN7DDPqrWOVld8/7JP9cFARTCBUDwI2ne42/vUAqE2OwpkZjxFm9lOvdj0+yKh06/hUEpw==
X-Received: by 2002:ac8:32d1:: with SMTP id a17mr12803234qtb.111.1558569628805;
        Wed, 22 May 2019 17:00:28 -0700 (PDT)
Received: from ?IPv6:2601:153:900:ebb:74b5:9fcf:6f1f:201d? ([2601:153:900:ebb:74b5:9fcf:6f1f:201d])
        by smtp.gmail.com with ESMTPSA id c32sm17735525qte.2.2019.05.22.17.00.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 May 2019 17:00:28 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: rockchip: set TX PBL for rk3328-roc-cc gmac
To:     "Leonidas P. Papadakos" <papadakospan@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Jose Abreu <jose.abreu@synopsys.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
References: <20190417210059.26262-1-papadakospan@gmail.com>
 <8865b046-fb3a-4071-335c-66abb344d7f4@gmail.com>
 <1555915435.1262.1@gmail.com>
 <9a5c62b4-ea75-de4f-9b71-ffa42cb8eaac@gmail.com>
 <1555938803.1241.1@gmail.com>
From:   Peter Geis <pgwipeout@gmail.com>
Message-ID: <8ded737d-1fd5-3609-ca2e-cfeba63b2d95@gmail.com>
Date:   Wed, 22 May 2019 20:00:27 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1555938803.1241.1@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 4/22/2019 9:13 AM, Leonidas P. Papadakos wrote:
> 
> Indeed, at least with that first patch users won't have a crappy 
> experience by default (ssh lags and the like)
> 
> 

I apologize for taking so long at this, but I wanted to make sure I had 
it right.

So far I've found a few things that seem to help, and would like y'all 
to test them when you get the chance.

Adding snps,aal (configures DMA for address alignment) appears to make a 
massive improvement to stability, although the the snps,txpbl = <0x4> is 
still necessary for this to work.

Second, I added snps,rxpbl = <0x4> as well, which seems to help with my 
RX issues a bit.
The biggest improvement with these two settings is more stable transmit 
and receive.
Currently I'm getting about 800mbps on tx and 400 mbps on rx.

Please test when you get the chance and provide feedback.
