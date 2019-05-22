Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3B66D26907
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2019 19:23:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729641AbfEVRXM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 May 2019 13:23:12 -0400
Received: from mail-lf1-f68.google.com ([209.85.167.68]:43401 "EHLO
        mail-lf1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730162AbfEVRXI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 May 2019 13:23:08 -0400
Received: by mail-lf1-f68.google.com with SMTP id u27so2282759lfg.10
        for <devicetree@vger.kernel.org>; Wed, 22 May 2019 10:23:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=lBNMJ6UCxXT/YF+lFUeXussSr2NQJ1IFe7JSJtDJqb8=;
        b=wrWjZS1VcTFTBBgUzyHp1/AOCa/Nvm+zWwLMEzSDn4IFs2OMmIFs3ZM6B5WYEdlz+T
         xTjM5Jpr7BQp/By25fuYTpsMVTbxjhJUAEUohHCWk/Fl+mJKUwOcUQdnxd7YCDNL5iyr
         f5FSXooSRFOS5410Qxlcetg7xH/tX8DWAJzbNbvkViyT1p9Z0CQ770BJNLppHNvpaNN3
         9spTlhk2OnceN0iLWNU6MRzwajsAHsd3C26hFA1m42GIwSb6zjTwGoqA+Jm9YPm/4U4e
         jdORvkaReWF5CemOF59O3jAWFTzX/p4e+PsdWbIgYtG3qvPILUN2OR9neqdRve9RvrBn
         9IGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=lBNMJ6UCxXT/YF+lFUeXussSr2NQJ1IFe7JSJtDJqb8=;
        b=OFbEfG00xdNIt5QyUEnmAIrfoeWY8ozwzgS0L630ZIPVcKlBsaT/AqMkkAUeR2O3IU
         VRH0qS/4ytA8OId5jQQphZsdVqLB7OY0BbCSJ5sRmWOd5fdEoNg9sScyDJYoUHht3Hg/
         /HdcT4EfFb42VzeI2J4+Z2dQIEdSLZLVm68I966ay2SEFQODlJUy5/kE149R0dfEgpDE
         FhjJaoVrCUwlkqjbNknb+Vq3gPd/cqiHHJUDxq85uVLHXEoj+fTLiQWjop/N32eTuqY7
         0aCh0HuIUl9aYovIEk9CKD+3NXGYHDZEhR7Mj8diMwjknNdHk17/weAfyliBQWJeiRbO
         6uRw==
X-Gm-Message-State: APjAAAV3Tac2G6ca2QH11Sv3ZtckmsbHF2CPr8jPo9vJFYyGj5QFEhHJ
        T0PaHLiYFKVSqi+D4b7P38ezZg==
X-Google-Smtp-Source: APXvYqxh6z0c+HMItpmjk7oDLYnEBiKv2gMrikNxJClquOF/OVRMup6KVFeHonqCNSkGHl69ulKwBQ==
X-Received: by 2002:ac2:483c:: with SMTP id 28mr26309353lft.93.1558545786181;
        Wed, 22 May 2019 10:23:06 -0700 (PDT)
Received: from wasted.cogentembedded.com ([31.173.80.150])
        by smtp.gmail.com with ESMTPSA id r19sm4762708lji.87.2019.05.22.10.23.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 May 2019 10:23:05 -0700 (PDT)
Subject: Re: [PATCH v12 3/3] dt-bindings: mfd: Document Renesas R-Car Gen3
 RPC-IF MFD bindings
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Mason Yang <masonccyang@mxic.com.tw>,
        Lee Jones <lee.jones@linaro.org>,
        Boris Brezillon <bbrezillon@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Simon Horman <horms@verge.net.au>, juliensu@mxic.com.tw,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
        linux-spi <linux-spi@vger.kernel.org>,
        Marek Vasut <marek.vasut@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh@kernel.org>, zhengxunli@mxic.com.tw,
        Miquel Raynal <miquel.raynal@bootlin.com>
References: <1556092536-17095-1-git-send-email-masonccyang@mxic.com.tw>
 <20190424212356.GA27103@bogus>
 <65853dc2-6f3c-1494-7e72-54877797cdd2@gmail.com>
 <20190507125730.GD29524@dell>
 <OF08A5650B.8AE8977C-ON482583F4.000E5B1E-482583F4.000F7215@mxic.com.tw>
 <d229b19e-351c-c576-b5c4-716d10dad1a0@gmail.com> <20190508061119.GB7627@dell>
 <OFE86674B9.06D723A0-ON482583F5.000AD50C-482583F5.000BA075@mxic.com.tw>
 <a05cff8f-7df2-1938-c0e7-f9366bece607@cogentembedded.com>
 <OFB19BCE91.6EBBAA77-ON482583F6.000234E2-482583F6.00061290@mxic.com.tw>
 <CAMuHMdUP8KU3Dbv6cwOvrY0hWOcm1xqVcsi20+GvazYMDLGGZg@mail.gmail.com>
 <OFD932ABFC.E3FFCEB8-ON482583F9.003412B1-482583F9.0034D5CA@mxic.com.tw>
 <b51d1cb7-b3b5-208f-ab4c-145ecb57805d@cogentembedded.com>
 <44bc8f0a-cbdc-db4a-9a46-b8bae5cc37a2@cogentembedded.com>
 <OF5AF00898.3CE87C98-ON48258400.00259B16-48258400.0028A4F5@mxic.com.tw>
 <5e718d9f-3aeb-c2ef-0723-400497b2b98f@cogentembedded.com>
 <CAMuHMdUWNqkZz5DEWFJsoHLmC86ziLjWKHpz=A-EmvMDDgnSNQ@mail.gmail.com>
From:   Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <bba153f8-051c-9880-eacf-2ff698cc0171@cogentembedded.com>
Date:   Wed, 22 May 2019 20:23:03 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CAMuHMdUWNqkZz5DEWFJsoHLmC86ziLjWKHpz=A-EmvMDDgnSNQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-MW
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/22/2019 08:05 PM, Geert Uytterhoeven wrote:

>> On 05/20/2019 10:23 AM, masonccyang@mxic.com.tw wrote:
>>> +- clocks: should contain 1 entries for the module's clock
>>
>>    1 entry (clock node phandle and specifier).
> 
> Doesn't "specifier" mean "phandle + optional arguments"?

   No.
   E.g. when specifying the IRQs, the "interrupts" prop contains one or more
interrupt specifiers, the phandle is specified in the "interrupt-parent"
prop (see the DT spec). 

> Gr{oetje,eeting}s,
> 
>                         Geert

MBR, Sergei
