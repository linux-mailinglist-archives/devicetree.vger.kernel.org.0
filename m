Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C2D43421233
	for <lists+devicetree@lfdr.de>; Mon,  4 Oct 2021 17:01:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235647AbhJDPDR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Oct 2021 11:03:17 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:44824
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S235494AbhJDPBX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Oct 2021 11:01:23 -0400
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id BF685402DD
        for <devicetree@vger.kernel.org>; Mon,  4 Oct 2021 14:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633359573;
        bh=mjXPISoqrzvv6T8eWckfoa+w/l3lHuMX4ztP7/j2C4I=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=HoJS/zS5gvpT6LYtIIHzkLUctpg2rjGIGAa0SfyuG9ylM4fCgfgY/NVWXjXNRyv3a
         G95LkjvFPTSP+VCjWfviUQcgHJzU6GWYSo8LlecJh94oer84rgb/KPLUQ+L+Rw1+g8
         BXoA+T6E1soL05EA5mkD04KqkFRzPLjEfwT3dINcX0RbsQCO6ZuM7cqnXv9W/zTONY
         cqyWSYA8kMWUimZwmEBJlG1uNm3ILsS+vQt9vH1lChQBDiozpj6m0z1PLhR66+JBQ0
         GS8kmp0K6SlgWQVikHAtKkbHWqnScbgh1tX2VtHN9O3BQ4vvxL2/fnCCgnp1yTDA6E
         g0jVbJoEUz5/g==
Received: by mail-lf1-f71.google.com with SMTP id c18-20020a056512075200b003fd0e54a0deso13563340lfs.17
        for <devicetree@vger.kernel.org>; Mon, 04 Oct 2021 07:59:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mjXPISoqrzvv6T8eWckfoa+w/l3lHuMX4ztP7/j2C4I=;
        b=3saF3No6vdSnZbYK68Vea+6d+yE0N9XqTUjO1KQEO5G3u66XihVLqj/NPGJb/JdP/L
         6Z+mZ39xvT64h09xnwG9ZU1c8BjVC7uBtwIgqRQn/jUP4DphAy8+T9z0C3pLXFoKcXu/
         OGG6oFr8v1RVrGq1mZBhiNXVTywDd6T9m62sbxFpoWSrYzdAA32tEZQAKmNFv3oWrtMZ
         ZfO98unUjQg6k8KSojxoeWoYCR1i7Mdrvi0HqWkm1cK1zhVdgOyEJHSED+495QRsDgcW
         4tNlwy+jSG/oBV/0Cz80s3WQSuqRnx742AdaktSnhsvmnamUte5J9Xavb2NFPAf3chqu
         TVZg==
X-Gm-Message-State: AOAM5317mt6/Wcp+fO0ID9tXrTlKvOZaZIaNlMk10d1Sw3alxiH0qU9U
        jIL4QAkFuqI60EtERqpxiCncZXcqSEN+SF9adcTA45uN7f2At5nBlNZbHqnCqEUNiAmxKIqHN7Q
        IbVrTG0BShR8pkV/K6Fc9TswQeFxDnxc1P+jGiXs=
X-Received: by 2002:a2e:575d:: with SMTP id r29mr16342111ljd.284.1633359573250;
        Mon, 04 Oct 2021 07:59:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyOo+lB6RcMLwBXgkySBQ4vL0Yv8gDCQD9CBhd0v3DB/P0euRpRs8FczKlBWRUn5Il77PI8dQ==
X-Received: by 2002:a2e:575d:: with SMTP id r29mr16342096ljd.284.1633359573085;
        Mon, 04 Oct 2021 07:59:33 -0700 (PDT)
Received: from [192.168.0.197] ([193.178.187.25])
        by smtp.gmail.com with ESMTPSA id h21sm817340lfc.30.2021.10.04.07.59.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Oct 2021 07:59:32 -0700 (PDT)
Subject: Re: [PATCH] dt-bindings: mmc: arasan,sdci: drop unneeded clock-cells
 dependency
To:     Rob Herring <robh@kernel.org>
Cc:     Ulf Hansson <ulf.hansson@linaro.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20210928082346.22398-1-krzysztof.kozlowski@canonical.com>
 <YVsWDaC0TOSOrrxW@robh.at.kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <ba5cfb69-1d79-d1cf-5f15-46b4dca2fa9f@canonical.com>
Date:   Mon, 4 Oct 2021 16:59:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YVsWDaC0TOSOrrxW@robh.at.kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/10/2021 16:56, Rob Herring wrote:
> On Tue, Sep 28, 2021 at 10:23:46AM +0200, Krzysztof Kozlowski wrote:
>> The meta-schema already defines dependency between clock-cells and
> 
> You mean the schema already does.

Yes.

> 
>> clock-output-names.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>> ---
>>  Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml | 4 ----
>>  1 file changed, 4 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
>> index 23abb7e8b9d8..dd70431df0b7 100644
>> --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
>> +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
>> @@ -158,10 +158,6 @@ properties:
>>      description:
>>        The MIO bank number in which the command and data lines are configured.
>>  
>> -dependencies:
>> -  clock-output-names: [ '#clock-cells' ]
> 
> The schema defines this.
> 
>> -  '#clock-cells': [ clock-output-names ]
> 
> But not this. That's because in the common case, clock-output-names is 
> optional. But here it is required when '#clock-cells' is present.

You are right, somehow I missed that part...


Best regards,
Krzysztof
