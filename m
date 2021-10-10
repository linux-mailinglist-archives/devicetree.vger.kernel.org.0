Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D58E4428392
	for <lists+devicetree@lfdr.de>; Sun, 10 Oct 2021 22:51:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232697AbhJJUxc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Oct 2021 16:53:32 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:49112
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231463AbhJJUxb (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 10 Oct 2021 16:53:31 -0400
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id A841F40012
        for <devicetree@vger.kernel.org>; Sun, 10 Oct 2021 20:51:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633899090;
        bh=v9Hlca2h1Hh9i8XXavu//vSEpOtNM2PYGAkdRD7X2go=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=JZFELgw7K0VD1IMh+hu0KyjgYongMtaaJBYo1b7wFYJzYnvSYWpnQ5iE9/jdr/qcg
         LAEPB2afCUSJ56tVi1mUgI6VUdJRlUUJ9os/tCsnAuotwZA1YFzq/7oJS4yTn7HqVB
         Y88g8DpUr/peeM3bggW0sC47V5PAADWqE05IpQMBrvdjKM5c59bMYc8bO0RvojTGj5
         ufuHfw35PKcu+xUGSqhWWklz5nDMKyXUJQtXlKrqw/dpJtURYpTOQ6nLLXw39dJqfG
         FB6otqlLmL/FcylGrSniknfPJfQy7vFf0FtCqq/rtsDiAMZu0pgGu6TWiiObDwDB+A
         sCi/+mBhAK+hw==
Received: by mail-ed1-f69.google.com with SMTP id g28-20020a50d0dc000000b003dae69dfe3aso13908966edf.7
        for <devicetree@vger.kernel.org>; Sun, 10 Oct 2021 13:51:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=v9Hlca2h1Hh9i8XXavu//vSEpOtNM2PYGAkdRD7X2go=;
        b=Chzuejve9YpAy9ZhzZDGIRsu0r5H4l3gTebQ6rtPbh1o+JINBTu55cyE7tEmzCrnto
         8YAJIH+mnspaU6YuZq10Z6X7npJo9PcoNNIuZfr09NBKV4JAlg6yWlapycDp7wc6NNO1
         Ru5KCY0foiPi/QF9J8RT6j4KddT+dluc5aukGzqwgJiBA6QApNqyCjwAthrQji8Sg0iS
         WaaH/jGrO1mzh/5enIRjWZXVH1NgTnT7+YX+70R9PlQ8CvJjN506em6qUFdn47gg3Pd2
         +xrkzNm8DP4frQ2KR1++Ai46T7NRi1YdMTEViDEwrZjJh0j+C2xLsjKywOSK2G184Eur
         8ZsQ==
X-Gm-Message-State: AOAM5314Oqrq5xX9QNmoNDF9ZI41qF5p6AZOyZ7sif7lFiDeczhXXV0L
        XA4byl0Ayl04OQApC3EgrloXZ4eHntUnl6AV90MC74+KR1fz6k8lvuEQamn2wLRHZydXCFc9wpH
        A8HYiHyf4p/P2DnBQBtGlE8npRyx9UQZql4R1rHU=
X-Received: by 2002:a17:906:3192:: with SMTP id 18mr21236985ejy.246.1633899090340;
        Sun, 10 Oct 2021 13:51:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxjRNid0wZoUMAIiXI0MXbANDRhB9LTg/OYg47esYCah+m3e1tvb/+lQTYbtBYkGvBFAh3XVw==
X-Received: by 2002:a17:906:3192:: with SMTP id 18mr21236965ejy.246.1633899090203;
        Sun, 10 Oct 2021 13:51:30 -0700 (PDT)
Received: from [192.168.0.20] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id m9sm3032908edl.66.2021.10.10.13.51.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Oct 2021 13:51:29 -0700 (PDT)
Subject: Re: [PATCH 6/7] dt-bindings: nfc: ti,trf7970a: convert to dtschema
To:     Rob Herring <robh@kernel.org>
Cc:     linux-nfc@lists.01.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Mark Greer <mgreer@animalcreek.com>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Charles Gorand <charles.gorand@effinnov.com>,
        linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
        netdev@vger.kernel.org
References: <20211010142317.168259-1-krzysztof.kozlowski@canonical.com>
 <20211010142317.168259-6-krzysztof.kozlowski@canonical.com>
 <1633894316.452946.3158671.nullmailer@robh.at.kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <a16d9765-a5d1-c8bc-729d-1c807b24e393@canonical.com>
Date:   Sun, 10 Oct 2021 22:51:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <1633894316.452946.3158671.nullmailer@robh.at.kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/10/2021 21:31, Rob Herring wrote:
> On Sun, 10 Oct 2021 16:23:16 +0200, Krzysztof Kozlowski wrote:
>> Convert the TI TRF7970A NFC to DT schema format.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>> ---
>>  .../bindings/net/nfc/ti,trf7970a.yaml         | 98 +++++++++++++++++++
>>  .../devicetree/bindings/net/nfc/trf7970a.txt  | 43 --------
>>  MAINTAINERS                                   |  2 +-
>>  3 files changed, 99 insertions(+), 44 deletions(-)
>>  create mode 100644 Documentation/devicetree/bindings/net/nfc/ti,trf7970a.yaml
>>  delete mode 100644 Documentation/devicetree/bindings/net/nfc/trf7970a.txt
>>
> 
> Running 'make dtbs_check' with the schema in this patch gives the
> following warnings. Consider if they are expected or the schema is
> incorrect. These may not be new warnings.
> 
> Note that it is not yet a requirement to have 0 warnings for dtbs_check.
> This will change in the future.
> 
> Full log is available here: https://patchwork.ozlabs.org/patch/1539014
> 
> 
> nfc@0: 't5t-rmb-extra-byte-quirk', 'vin-voltage-override' do not match any of the regexes: 'pinctrl-[0-9]+'
> 	arch/arm/boot/dts/imx6dl-prtrvt.dt.yaml

I already sent a patch for this one.


Best regards,
Krzysztof
