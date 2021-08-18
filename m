Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 431D23F06E0
	for <lists+devicetree@lfdr.de>; Wed, 18 Aug 2021 16:41:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239177AbhHROlg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Aug 2021 10:41:36 -0400
Received: from smtp-relay-canonical-1.canonical.com ([185.125.188.121]:53102
        "EHLO smtp-relay-canonical-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238113AbhHROle (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 18 Aug 2021 10:41:34 -0400
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPS id 5FAF141EFF
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 14:40:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629297657;
        bh=DLPUvH0pMsZEo7oSDshpkSHaLc1cxq4MFpx1B1UfF+Y=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=DnLyTYTMaPI63WUuLNOpCuTfRWP3tvbY6OieCj7Bn5EGZZ6tveowOXZeqFrO5DwvW
         UH1qS8hnwTx9Ar+rX8enGpIRZjkx6EaePRUUjwFa/N6aZQlyjEzNtmdHHly7BQeeuz
         KbA69dKHKUCw7rj1M6wWMHxmjdjW+6Ite3B6/X4zQezyfoY5MjGRcoax2ncXOafol5
         QroqoJ0IyZzNLrEiNF7XWgFdr9UYS6MbMjdRUwdXFsPyEpZ4HHYsvrKeP6w0bEm7DG
         iF26DznhC8hw2d8bwFFD4zWyQussa78tcKknxXYEa2czzZW36SgLDOLhQ1N+BU+Pae
         v7W245949gTkQ==
Received: by mail-ej1-f70.google.com with SMTP id x5-20020a1709064bc5b02905305454f5d1so945332ejv.10
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 07:40:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DLPUvH0pMsZEo7oSDshpkSHaLc1cxq4MFpx1B1UfF+Y=;
        b=V5TXDwKe8ooQ8YqcTFAb+kUklxNrZxc94DR20QPB1K47JtDWmScokFh1IswdVo1sWr
         rcpUrSMA6oDPo8CnBGiqbtampjUceV/S9HJb4kqrasSUVgfe4h6ZgTVsiGo29q5hcSJt
         VOweoFpIwdNN0w543auR7R09C8oi3+ujA2CcTSaYL+wDFaKbO7TzqQLORoGHee3JZWuR
         ol8IPwwgD4IP9zECYt7brkivW4yMfcQ1F4WVSG/GZ38XIPZ5ruOreqfLtmaN7ZGoHqqn
         y18i0BwTkC601XUBBVq9fl1ZaMbSDT0CqIBQDI26TAVRALW/qwiICcf6X5J7eFFblyxW
         B82A==
X-Gm-Message-State: AOAM532u79xmmKNpbaVnvRnMe858Pf6kKayhS0X56Mx32ZfRU05I8p/U
        oZdEtUsJFXISOUwpNsGPoK3OyHJfVKGWR/iGe13rM4pnZa+4DmZQ6dmy3fvzD5NuUD63wn6JvX8
        6iizkKUIQU3ZkNVhVEFpMDpTYLIWUhGyC3VIEjq4=
X-Received: by 2002:a05:6402:5192:: with SMTP id q18mr10332948edd.149.1629297657132;
        Wed, 18 Aug 2021 07:40:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx62KWpwSCyuHpseqcxmWKuQPrpEIsQmzffg6jqMCp8l5ru7jmHQtTzRP5R4KPhpxtDzpPoKg==
X-Received: by 2002:a05:6402:5192:: with SMTP id q18mr10332938edd.149.1629297657034;
        Wed, 18 Aug 2021 07:40:57 -0700 (PDT)
Received: from [192.168.8.102] ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id v21sm2139783ejw.85.2021.08.18.07.40.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 07:40:56 -0700 (PDT)
Subject: Re: [PATCH] dt-bindings: memory: convert Qualcomm Atheros DDR to
 dtschema
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Alban Bedel <albeu@free.fr>, Paul Burton <paul.burton@mips.com>,
        Oleksij Rempel <o.rempel@pengutronix.de>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        devicetree@vger.kernel.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20210813143537.130310-1-krzysztof.kozlowski@canonical.com>
 <YRwx1Blpqq0+JK3m@robh.at.kernel.org>
 <CAL_JsqJ_6pvRy2K_msX5wr6TcLUNjV2AwK1_RHB9puGXJTJ6Xw@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <54dd6d8b-3f4f-35b4-585f-95a31ca9ef8f@canonical.com>
Date:   Wed, 18 Aug 2021 16:40:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqJ_6pvRy2K_msX5wr6TcLUNjV2AwK1_RHB9puGXJTJ6Xw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/08/2021 16:34, Rob Herring wrote:
> On Tue, Aug 17, 2021 at 5:01 PM Rob Herring <robh@kernel.org> wrote:
>>
>> On Fri, 13 Aug 2021 16:35:37 +0200, Krzysztof Kozlowski wrote:
>>> Convert Qualcomm Atheros AR7xxx/AR9xxx DDR controller to DT schema
>>> format using json-schema.
>>>
>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>>> ---
>>>  .../ath79-ddr-controller.txt                  | 35 -----------
>>>  .../qca,ath79-ddr-controller.yaml             | 61 +++++++++++++++++++
>>>  2 files changed, 61 insertions(+), 35 deletions(-)
>>>  delete mode 100644 Documentation/devicetree/bindings/memory-controllers/ath79-ddr-controller.txt
>>>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/qca,ath79-ddr-controller.yaml
>>>
>>
>> Applied, thanks!
> 
> I applied forgetting you are maintaining the memory-controller
> bindings. I can drop if you prefer. I see you've got a few more too.

No need, I don't expect dependencies and it is already late in the
cycle. Feel free to take all of the bindings patches.

Thanks!


Best regards,
Krzysztof
