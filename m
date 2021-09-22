Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF6BA414B6E
	for <lists+devicetree@lfdr.de>; Wed, 22 Sep 2021 16:10:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234906AbhIVOL5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Sep 2021 10:11:57 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:37860
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S235122AbhIVOL5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 22 Sep 2021 10:11:57 -0400
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 5E60A40267
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 14:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632319826;
        bh=iNMj8PKQUNev51ZEKfGzcirSHdmbfqXjl4kbh441iow=;
        h=Subject:To:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=XIjct1eOxjWAAz9RTg5isOahsbjov4ldN2WntrN07bMsLylHSeSOWuCbpq97nkAyJ
         JWuQDArDUb/segs/QRPiDROrQ03vjl4iNJtgZsDaq0Si5OTh/T4V9f8nD4fCRk7HvL
         5BFOk2CivOgunHCUm9hDfci0l95pJckPRsTKytb+8UgEGoPWC4pGpqwBxX9GboZnQt
         jE5VcRU96YFTC0MU2cHz5OYq5Ha3f0VY7A0YPy3ysm7Lm0Cr2j+KPn9rFMSwm91jAs
         4yfSphu8m9zq7qBFqU5/zv14W9TcINE6CXd4wHaM4T5PxaXTraMvY1+/+7rUT4a4BZ
         YHhiRr2jQkKvA==
Received: by mail-ed1-f71.google.com with SMTP id e7-20020a50d4c7000000b003d871ecccd8so3178569edj.18
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 07:10:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=iNMj8PKQUNev51ZEKfGzcirSHdmbfqXjl4kbh441iow=;
        b=uMrCJQ5b4b0NwyAlO8RfgVf9Gf9TepnYXlJnzyQOsqCU088cJYuqWzxKmUeVaxD1+e
         j50/JSHm+atJvtvjiCBobkdc0wfDsytp2Th7f4Cl3mU+oTuDhRSMaUhe5C8SykDbyQPC
         62Cpr6rMTZPHB6gluO97IepUNuOyIg//yLF5Tx7BdRKfS5x5LdihmkM857kGPD7xYfyA
         KltZPorxKCSz30m+gmbjx+MFrl5Gr5VzpKECFqwgEZpXI52qPHJvyIiRU+HIdJi9ExFA
         /A/n2up794BWBGvcRh5i2jiBkAobebxgIkBG1Z13yZMKbvWf402ogizc58KpKzpsbrGj
         RTyA==
X-Gm-Message-State: AOAM532SyWfS3ppbkPBMwmOOl6GE1/++qc76aIrKvI4c5LeMdVejC4sh
        0dZgKf4JHBqmxWGMVq4WnsRlGIH9xDiWwAPSRS7Besp71wBA4FmDiQNPbg1JDYHM/pt8itSq8U6
        PXRZG4b7vj1s/6jPUApWwLVEcDz73SwvAcuJ99jE=
X-Received: by 2002:a05:6402:64e:: with SMTP id u14mr43168073edx.184.1632319824055;
        Wed, 22 Sep 2021 07:10:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzpsp4VMavM5vx191UsZKZeFxUGy6aFJnlOU4UVgDRR9QT2MJHyEjJZbwqlRc/RX1AObv+5Hg==
X-Received: by 2002:a05:6402:64e:: with SMTP id u14mr43167991edx.184.1632319823063;
        Wed, 22 Sep 2021 07:10:23 -0700 (PDT)
Received: from [192.168.0.134] (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id i6sm1112859ejd.57.2021.09.22.07.10.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Sep 2021 07:10:22 -0700 (PDT)
Subject: Re: [RESEND PATCH 1/2] powerpc/powermac: add missing
 g5_phy_disable_cpu1() declaration
To:     Christophe Leroy <christophe.leroy@csgroup.eu>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20210922084415.18269-1-krzysztof.kozlowski@canonical.com>
 <ee9fc44e-daab-10e6-f293-fb45b43ff5b1@csgroup.eu>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <32efc1e8-7c00-3550-4a39-af343397013a@canonical.com>
Date:   Wed, 22 Sep 2021 16:10:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <ee9fc44e-daab-10e6-f293-fb45b43ff5b1@csgroup.eu>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/09/2021 15:52, Christophe Leroy wrote:
> 
> 
> Le 22/09/2021 à 10:44, Krzysztof Kozlowski a écrit :
>> g5_phy_disable_cpu1() is used outside of platforms/powermac/feature.c,
>> so it should have a declaration to fix W=1 warning:
>>
>>    arch/powerpc/platforms/powermac/feature.c:1533:6:
>>      error: no previous prototype for ‘g5_phy_disable_cpu1’ [-Werror=missing-prototypes]
> 
> 
> While you are at it, can you clean it up completely, that is remove the 
> declaration in arch/powerpc/platforms/powermac/smp.c ?
> 

Sure, I'll send a v2. Thanks for pointing this out.


Best regards,
Krzysztof
