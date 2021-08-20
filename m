Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 828623F2E8D
	for <lists+devicetree@lfdr.de>; Fri, 20 Aug 2021 17:05:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240931AbhHTPFp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Aug 2021 11:05:45 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:60694
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S240995AbhHTPFn (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 20 Aug 2021 11:05:43 -0400
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 0CFAC40202
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 15:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629471905;
        bh=j0dYi0KupqdKnWz5W7Du03JuCWQtXHT/rpVxperl5M4=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=OVQAXF5ToM/xkt0HfwjC5AonObTs5AdoSuRjLGZ1Dhork3A0fYwaQCJbbwxwl6lYe
         u5Xgm5Jsj6/auyLT8JrO2O9dANuCQ0v2UqSgf2Y9+qdYIUG+Q01qdqyzwVpZYAdL0O
         aNyneP3fVB61ZDrXcBA8RdHuBJmZAHBME0N3uTZrie+P8w7Bf5U37flteP1PH2VJ6y
         Nv3jxzAAEC/TQ4tLCUDJlUh6XyT5LL+JxkuMo0zdc3H2gCQmbvFRlOsXsLSC1PsWu2
         mQl06hN77TLNr5EdExnyMRRgF0/bj/MyT37+mDyRpMSJdnfa54gcBOVveTf5RKq4d7
         25NqBye/5/tAw==
Received: by mail-ed1-f71.google.com with SMTP id l18-20020a0564021252b02903be7bdd65ccso4723592edw.12
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 08:05:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=j0dYi0KupqdKnWz5W7Du03JuCWQtXHT/rpVxperl5M4=;
        b=XifFmeYAHQUkSgivXtFheF7CuylRb6PIICUXXUDdrp/R2CE5GX0wLpwGPS5vjLn92I
         m/8xLc7SSD0kLNMZVz0VHTEvmDJTCH0/vavbQkEpSGD3pAUqPFtzSQOvJkFvMBODYj3F
         VPf8c89dBznkhU0mBjSAN2R2G4WyQdPJlltoorTWRKVcjNw3e7DIoFhEGOGjJDg1BX5H
         pDohVjEBgsx2GnSk7XT7Qlu2xWRjDJInt46rhX1OVi0FqK7GtOupV+94OBcvFMnKyLV+
         edCA/eRm2LZ8DMIIC/gcpF6agzwKjlzbVm7DabM5iILkAFgTKaJJh6XVFUvNUX26OYwm
         +wig==
X-Gm-Message-State: AOAM533vVh27TT6FwRQnxmP3TVoSYW+OOY5zMey2277mW24acb7p6LZ+
        c8Qi9mIs0O/BZttkvMwhmAE8WxbhDuFkGD9D/V+Z7pdszmvk8rUdvSyqXzV/MmBskuUPaiF/gMS
        lpCTizugv0WK3X3EePd0jm6h5NejD4jYsNzRyRYk=
X-Received: by 2002:a05:6402:50c6:: with SMTP id h6mr14531793edb.3.1629471904770;
        Fri, 20 Aug 2021 08:05:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwKW9WSIpRJLoykrE+AkG4eBlKpM8Vni9qzYCXxPUlR6EMgj8hG6t6dywWH/oxBp6h55QhRdg==
X-Received: by 2002:a05:6402:50c6:: with SMTP id h6mr14531779edb.3.1629471904650;
        Fri, 20 Aug 2021 08:05:04 -0700 (PDT)
Received: from [192.168.8.102] ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id cx18sm2986223ejb.33.2021.08.20.08.05.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Aug 2021 08:05:04 -0700 (PDT)
Subject: Re: [PATCH 2/2] arm64: dts: exynos: add proper comaptible FSYS syscon
 in Exynos5433
To:     Alim Akhtar <alim.akhtar@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org,
        open list <linux-kernel@vger.kernel.org>
References: <20210820081458.83406-1-krzysztof.kozlowski@canonical.com>
 <20210820082149.84613-1-krzysztof.kozlowski@canonical.com>
 <CAGOxZ53CeRYafwjP45CsDRgBQtuvyVxJQR4CX4qChWyHzO4_fA@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <b21ceda4-c960-791b-6d09-a7579a35c3a4@canonical.com>
Date:   Fri, 20 Aug 2021 17:05:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAGOxZ53CeRYafwjP45CsDRgBQtuvyVxJQR4CX4qChWyHzO4_fA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/08/2021 16:47, Alim Akhtar wrote:
> On Fri, Aug 20, 2021 at 1:52 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@canonical.com> wrote:
>>
>> The syscon nodes should come with specific compatible.  Correct theh
> s/theh/the?

Indeed, thanks!

> 
>> FSYS syscon to fix dtbs_check warnings:
>>
>>   syscon@156f0000: compatible: 'anyOf' conditional failed, one must be fixed:
>>   ['syscon'] is too short
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>> ---
> With typo fixed above,
> Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>



Best regards,
Krzysztof
