Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6D20E12B0D6
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2019 04:36:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727047AbfL0DgU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Dec 2019 22:36:20 -0500
Received: from mail-pl1-f196.google.com ([209.85.214.196]:36096 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727002AbfL0DgU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Dec 2019 22:36:20 -0500
Received: by mail-pl1-f196.google.com with SMTP id a6so10478114plm.3
        for <devicetree@vger.kernel.org>; Thu, 26 Dec 2019 19:36:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=fLq96bOfsAzmbSOIUyDYSk8L7LxVPi35XEytAjg4LuM=;
        b=Qd30cIkyA8SKvQi0RvQCvKt7QvsnrdmHr6BufKwyWxkABdiHAMZ4LBivJLmuPDCP1O
         BEIVChvSf5TfrpEetcHbLhCg2OrdjBJuVff+9LRTg82UOLXroTPguXo33gQJ3+NAwwLB
         ltJBycTiwtWYaHF4F2ZgOg3au37yN9LB1GtvY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=fLq96bOfsAzmbSOIUyDYSk8L7LxVPi35XEytAjg4LuM=;
        b=nlvd2QdsenL5igedPAj79SXtWXpeivWEEIBSBg7hhkuAZ1mV/CZJ+QWFJB0N5iDhhn
         7kBH3bd4IFvlHN5qgqkv2Sc2iygAt3r4AXOpa9nkBSZTg8T2KQh5Xw/sQnRI6ehZRxhn
         OsH5vyTKMry2QE2uwqlVOEamu/phsi6Vc+WLZvdisRBnqqZqmfzmPSE9NDGnftwfPArp
         pXLngVD+YBguAEwSOyl7L+srM5QV+MumfpGJ4aXiLokjG05DOp8CTt4IS8p7+Vhbv6HY
         R+A9Ze+qNzDiLPC29ZgFiPhOGsXEh5T83WcwkODZuGKN9wqEsOnMyzCOnc84/h9WMiv/
         zFlA==
X-Gm-Message-State: APjAAAWlXgmj57hrfO/NIwDPxrnfS29tP0KGwnIUrMQjLn+2Q8xKSHXu
        yCe+dSAE5q0o7yKJLEiNGEM23w==
X-Google-Smtp-Source: APXvYqz/z/s8kSHuJyZyHEjj+uFSNBXKEzYgNH9kRupx8P0DjqaQBacLL815WhavxOy1+Okpr3Ogdw==
X-Received: by 2002:a17:90a:8912:: with SMTP id u18mr23351899pjn.21.1577417779227;
        Thu, 26 Dec 2019 19:36:19 -0800 (PST)
Received: from [10.230.28.123] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d23sm37569846pfo.176.2019.12.26.19.36.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Dec 2019 19:36:18 -0800 (PST)
Subject: Re: [PATCH 0/2] phy: brcm-sata: Support for 7216
To:     Florian Fainelli <f.fainelli@gmail.com>, kishon@ti.com
Cc:     Jens Axboe <axboe@kernel.dk>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Al Cooper <alcooperx@gmail.com>,
        Ray Jui <ray.jui@broadcom.com>, Tejun Heo <tj@kernel.org>,
        Fengguang Wu <fengguang.wu@intel.com>,
        Arnd Bergmann <arnd@arndb.de>,
        "open list:LIBATA SUBSYSTEM (Serial and Parallel ATA drivers)" 
        <linux-ide@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>,
        bcm-kernel-feedback-list@broadcom.com
References: <20191210200852.24945-1-f.fainelli@gmail.com>
From:   Florian Fainelli <florian.fainelli@broadcom.com>
Autocrypt: addr=florian.fainelli@broadcom.com; keydata=
 mQENBFPAG8ABCAC3EO02urEwipgbUNJ1r6oI2Vr/+uE389lSEShN2PmL3MVnzhViSAtrYxeT
 M0Txqn1tOWoIc4QUl6Ggqf5KP6FoRkCrgMMTnUAINsINYXK+3OLe7HjP10h2jDRX4Ajs4Ghs
 JrZOBru6rH0YrgAhr6O5gG7NE1jhly+EsOa2MpwOiXO4DE/YKZGuVe6Bh87WqmILs9KvnNrQ
 PcycQnYKTVpqE95d4M824M5cuRB6D1GrYovCsjA9uxo22kPdOoQRAu5gBBn3AdtALFyQj9DQ
 KQuc39/i/Kt6XLZ/RsBc6qLs+p+JnEuPJngTSfWvzGjpx0nkwCMi4yBb+xk7Hki4kEslABEB
 AAG0MEZsb3JpYW4gRmFpbmVsbGkgPGZsb3JpYW4uZmFpbmVsbGlAYnJvYWRjb20uY29tPokB
 xAQQAQIArgUCW382iBcKAAG/SMv+fS3xUQWa0NryPuoRGjsA3SAUAAAAAAAWAAFrZXktdXNh
 Z2UtbWFza0BwZ3AuY29tjjAUgAAAAAAgAAdwcmVmZXJyZWQtZW1haWwtZW5jb2RpbmdAcGdw
 LmNvbXBncG1pbWUICwkIBwMCAQoFF4AAAAAZGGxkYXA6Ly9rZXlzLmJyb2FkY29tLmNvbQUb
 AwAAAAMWAgEFHgEAAAAEFQgJCgAKCRCBMbXEKbxmoFYGB/9qN5VL6f/88+qtDaDhUKvwBgF8
 koryGCH/gw6FBW5h5hwW0m6946WnsBnqKnZ8OYr8qsCgeJewCh0BEN9rIg8SC5oU7WdcmNg5
 KTv4/V1CmBo6dQaSHA8yQoeHsrw0gQ9HK4EYjhAU60RYXxX7/LFAy0rJMLf0qGKdWW2f5EkN
 dS5GwWOrTp477WL2g+R0khhP57qpejxlMN+Mtvin52UjbAcr1PAx8Zt2rXpFIZsXVWADpZDd
 qIb6PZPdcP/lD1v5it4sTN7D27FgjvbvAgj/D3NmyOjIUsbN9ZDJDfgv431RsJ9LOd6ySaNr
 yuje7L0dbiYrcOi3CN6S+zE1UJsLuQENBFPAG8EBCACsa+9aKnvtPjGAnO1mn1hHKUBxVML2
 C3HQaDp5iT8Q8A0ab1OS4akj75P8iXYfZOMVA0Lt65taiFtiPT7pOZ/yc/5WbKhsPE9dwysr
 vHjHL2gP4q5vZV/RJduwzx8v9KrMZsVZlKbvcvUvgZmjG9gjPSLssTFhJfa7lhUtowFof0fA
 q3Zy+vsy5OtEe1xs5kiahdPb2DZSegXW7DFg15GFlj+VG9WSRjSUOKk+4PCDdKl8cy0LJs+r
 W4CzBB2ARsfNGwRfAJHU4Xeki4a3gje1ISEf+TVxqqLQGWqNsZQ6SS7jjELaB/VlTbrsUEGR
 1XfIn/sqeskSeQwJiFLeQgj3ABEBAAGJAkEEGAECASsFAlPAG8IFGwwAAADAXSAEGQEIAAYF
 AlPAG8EACgkQk2AGqJgvD1UNFQgAlpN5/qGxQARKeUYOkL7KYvZFl3MAnH2VeNTiGFoVzKHO
 e7LIwmp3eZ6GYvGyoNG8cOKrIPvXDYGdzzfwxVnDSnAE92dv+H05yanSUv/2HBIZa/LhrPmV
 hXKgD27XhQjOHRg0a7qOvSKx38skBsderAnBZazfLw9OukSnrxXqW/5pe3mBHTeUkQC8hHUD
 Cngkn95nnLXaBAhKnRfzFqX1iGENYRH3Zgtis7ZvodzZLfWUC6nN8LDyWZmw/U9HPUaYX8qY
 MP0n039vwh6GFZCqsFCMyOfYrZeS83vkecAwcoVh8dlHdke0rnZk/VytXtMe1u2uc9dUOr68
 7hA+Z0L5IQAKCRCBMbXEKbxmoLoHCACXeRGHuijOmOkbyOk7x6fkIG1OXcb46kokr2ptDLN0
 Ky4nQrWp7XBk9ls/9j5W2apKCcTEHONK2312uMUEryWI9BlqWnawyVL1LtyxLLpwwsXVq5m5
 sBkSqma2ldqBu2BHXZg6jntF5vzcXkqG3DCJZ2hOldFPH+czRwe2OOsiY42E/w7NUyaN6b8H
 rw1j77+q3QXldOw/bON361EusWHdbhcRwu3WWFiY2ZslH+Xr69VtYAoMC1xtDxIvZ96ps9ZX
 pUPJUqHJr8QSrTG1/zioQH7j/4iMJ07MMPeQNkmj4kGQOdTcsFfDhYLDdCE5dj5WeE6fYRxE
 Q3up0ArDSP1L
Message-ID: <9ede5ded-9ca2-e0c8-0b81-e43b08f99b29@broadcom.com>
Date:   Thu, 26 Dec 2019 19:36:16 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20191210200852.24945-1-f.fainelli@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 12/10/2019 12:08 PM, Florian Fainelli wrote:
> Hi Kishon,
> 
> This patch series adds support for our latest 7216 class of devices
> which are taped out in a 16nm process and use a different SATA PHY AFE
> that requires a custom initialization sequence.

Kishon, is this looking good to you for merging? Thanks!

> 
> Thanks!
> 
> Florian Fainelli (2):
>   dt-bindings: phy: Document BCM7216 SATA PHY compatible string
>   phy: brcm-sata: Implement 7216 initialization sequence
> 
>  .../devicetree/bindings/phy/brcm-sata-phy.txt |   1 +
>  drivers/phy/broadcom/phy-brcm-sata.c          | 120 ++++++++++++++++++
>  2 files changed, 121 insertions(+)
> 

-- 
Florian
