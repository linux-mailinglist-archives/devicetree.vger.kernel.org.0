Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 592C4435EC6
	for <lists+devicetree@lfdr.de>; Thu, 21 Oct 2021 12:12:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229935AbhJUKOh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Oct 2021 06:14:37 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:47910
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229914AbhJUKOg (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 21 Oct 2021 06:14:36 -0400
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com [209.85.208.198])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 76FD03FFE2
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 10:12:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1634811139;
        bh=21AS2FEP/OzKAvU7EfAR5y5AIciFZnKJqHdmh3txaKU=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=kPS0ezkhCNCrdc8oLYG0hNVEqBfPkCZPzCxbdd2bv1zOxw1uklkMxmq8Jcnb3A8Ly
         Fa4FOMlxdX8WCQiOARGSeFoGqLNQsye5RiD3lzUMTy6FKdoEoenV+Elf5RrjwR0bID
         gJfDkjEWHoKZFPx680NAo0biO9zBWSHY6OvbEdSnuEd3QDsKMGVQYCEiC0N6/7g+Ie
         TNhc6PtFY/lsuewqc9PXEkLMyNvXEQVoIszNhvqMmtgVUPVFtJkIh0cVg7fj6xE+HK
         HwXwfJZHjJaO0dwk/RroDfyt42Zub31si0PdQwnyoMfLZis/IwKYAnqQ5WI1cIMQBN
         bXiLK4ov5rNSQ==
Received: by mail-lj1-f198.google.com with SMTP id j13-20020a2e6e0d000000b0021101c034d5so2613154ljc.14
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 03:12:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=21AS2FEP/OzKAvU7EfAR5y5AIciFZnKJqHdmh3txaKU=;
        b=EY5ie+iV3P3G22lP7D2oBgnG+1sbViAO2QqVYkHKwttfUkt5R97rG+yld/DsyzNG7o
         oI+NfLsTXlQUhPC6gEFaxz0R4f7k8/18dO/gg3xZool4/SB9Cd1+DBUAxafN0mpNNVo9
         +r3ibWDytbrYS5JsM501Xgzm77AQZhzrRI9MJpUOHJvI4ChiP/dg9im2C1VIbXP19aZs
         bkmeG0jF45h8WXQ3uWxaM7CcdrO2GroMQ4hr7Mnh8xQMr0AAgkw7/0wg7OUZIzmHiSH3
         Or35jv03kE3DV4JjXeHnT8vu95xsd0F7tqjBoEbvVaKtsAD2VdpwPIt+n/iMozYWmsSb
         IHag==
X-Gm-Message-State: AOAM532NXX9bN8DMZvuP/EJv2HI5zqXMAfY7BadJtM4zquG/938eUSQ/
        OaHLwyV9YNicGtWzQb8QlxCMHNjyhtM9IfwoLksd6qQ+kqFdCGbEapTaTAxyw58VioukxkyY80I
        X3OU3tJ3Kv3KgD3Xb8ybUkNlahgmdMByHfgNWEU8=
X-Received: by 2002:a2e:750e:: with SMTP id q14mr4978181ljc.338.1634811138964;
        Thu, 21 Oct 2021 03:12:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy+SlIK6fBGyzlDr6pIF6Po5nSccW4yTx8qBknyO8d7i0iNeVBcnz0u/NSa8Zxr5Tqxq9gqXg==
X-Received: by 2002:a2e:750e:: with SMTP id q14mr4978158ljc.338.1634811138705;
        Thu, 21 Oct 2021 03:12:18 -0700 (PDT)
Received: from [192.168.3.161] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id h1sm420052lfj.125.2021.10.21.03.12.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Oct 2021 03:12:18 -0700 (PDT)
Subject: Re: [PATCH v2 0/2] mfd/regulator: dt-bindings: max77686: convert to
 dtschema
To:     Lee Jones <lee.jones@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20211008123552.191384-1-krzysztof.kozlowski@canonical.com>
 <YXE65SBhGFHP54L6@google.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <85c56cfb-64d9-a840-c2e4-eea47461188d@canonical.com>
Date:   Thu, 21 Oct 2021 12:12:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YXE65SBhGFHP54L6@google.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/10/2021 12:03, Lee Jones wrote:
> On Fri, 08 Oct 2021, Krzysztof Kozlowski wrote:
> 
>> Hi,
>>
>> Convert Maxim MAX77686 bindings to dtschema.  The MFD patch (2/2)
>> depends on regulator, so this should go via one tree, for example MFD or DT.
>>
>> Changes since v1:
>> =================
>> See individual patches.
>>
>> Clock bindings
>> ==============
>> Existing Documentation/devicetree/bindings/clock/maxim,max77686.txt are
>> left untouched. The file is still used/referenced by other Maxim
>> devices: MAX77620 and MAX77802.
>>
>> Best regards,
>> Krzysztof
>>
>> Krzysztof Kozlowski (2):
>>   regulator: dt-bindings: maxim,max77686: convert to dtschema
>>   dt-bindings: mfd: maxim,max77686: convert to dtschema
>>
>>  .../devicetree/bindings/mfd/max77686.txt      |  26 ----
>>  .../bindings/mfd/maxim,max77686.yaml          | 132 ++++++++++++++++++
>>  .../bindings/regulator/max77686.txt           |  71 ----------
>>  .../bindings/regulator/maxim,max77686.yaml    |  83 +++++++++++
>>  MAINTAINERS                                   |   2 +-
>>  5 files changed, 216 insertions(+), 98 deletions(-)
>>  delete mode 100644 Documentation/devicetree/bindings/mfd/max77686.txt
>>  create mode 100644 Documentation/devicetree/bindings/mfd/maxim,max77686.yaml
>>  delete mode 100644 Documentation/devicetree/bindings/regulator/max77686.txt
>>  create mode 100644 Documentation/devicetree/bindings/regulator/maxim,max77686.yaml
> 
> Does this need a PR too?

No, I hope not. The regulator patch was acked by Mark and Rob, so you
can freely take both of these. I am not aware of any conflicts or other
dependencies.


Best regards,
Krzysztof
