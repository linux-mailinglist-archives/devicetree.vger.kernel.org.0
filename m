Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 149B93F1F3C
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 19:37:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232954AbhHSRh3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 13:37:29 -0400
Received: from smtp-relay-canonical-0.canonical.com ([185.125.188.120]:59688
        "EHLO smtp-relay-canonical-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231745AbhHSRhZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Aug 2021 13:37:25 -0400
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id 6F636411BE
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 17:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629394608;
        bh=iB4/HnIn+QRyTqSe3aTZUggGYaij6p5wJKKNJY87YsA=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=oi0lsl/e56+PTobv15v2o0sGANvhpPNBN3mXX7S/F8P95SWkvIUJc/uMfjRW0IQS1
         djqLElBr3U2oksksHwc0L6/EHx+ho0Gjc2vzdoUha1kILwsLnaDoy4o1ighsszw3rO
         ri16qQPqqWWKbwVOMmWRtmLUz3AM6KTigQqKACHlzEPKAqsMuy78VOWugD1G7y9iq1
         AmwzR7WXyd0Cq2vUIf7az+ViSx0awPjemaXOrqDBmS+M9nCpTCqAcHx/wbz+HSDZRC
         bkINSu9QP7Y8nQeQL6T1mlf8nWRtk2b0m44Ou3ivGiQnpRfJpeGuETv+euyG0DP856
         DbwGdW+0I9lFQ==
Received: by mail-ed1-f69.google.com with SMTP id bx23-20020a0564020b5700b003bf2eb11718so3166091edb.20
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 10:36:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=iB4/HnIn+QRyTqSe3aTZUggGYaij6p5wJKKNJY87YsA=;
        b=JyFVL7ZbP0t6mIXKU/nxKIRxVquyydiCCI5U32LZT4nnn/f/ZOZWQKd1Nij7hKE1n2
         SDORfBSCzjVJfXoTZqa2mxpWf90MKu8I9OM/fT8fbyy/M4sO0XkB14MuH5gDoVtvow9Z
         BFbyHRCFTA9vOsj7j7+HJy76qC7iYKKTSuAMDSNKDGvHliFkI+lChXC7ovl/0+HqWJP0
         2rTKQ0tXpHqb+FbEqpJLt5YMCeLyq8QUMnxRW68cRgodQXBnMqIAicWaW98ed1uJLFXx
         JgVvsgF7QBrNYVpb4qZNQMko7FRgfm2lUylAeHYjT3NcHf7chZltwsVaMpTTrbbdD6Cp
         I5Rw==
X-Gm-Message-State: AOAM532L9JFFUPP7tPePu0DUScFdKUHm4cnUgi9/Ldpz2WVIcjFuaUtI
        MxVWh6fAoz5unAzknHA+2uP4OUURD/J6viQvixG4WRJVyz0hOX1Ixhg/YssifoobZ7K4OltZlY3
        H9X59a22Aig0bUBx9+c6cuGbCpzfBuQDB0rce/nc=
X-Received: by 2002:a05:6402:51d2:: with SMTP id r18mr17952712edd.376.1629394608198;
        Thu, 19 Aug 2021 10:36:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy3HJpK5BEPVQFecqrxkkDpoqFxB6FotTSoqpiEW1uGqQvjEka4kyDCIm+7+hq8Q3VP1w+KqQ==
X-Received: by 2002:a05:6402:51d2:: with SMTP id r18mr17952687edd.376.1629394608068;
        Thu, 19 Aug 2021 10:36:48 -0700 (PDT)
Received: from [192.168.8.102] ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id k19sm1581326ejq.42.2021.08.19.10.36.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Aug 2021 10:36:47 -0700 (PDT)
Subject: Re: [PATCH 1/5] dt-bindings: mtd: jedec,spi-nor: document
 issi,is25wp256
To:     Pratyush Yadav <p.yadav@ti.com>
Cc:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Atish Patra <atish.patra@wdc.com>,
        Sagar Shrikant Kadam <sagar.kadam@sifive.com>,
        Tudor Ambarus <tudor.ambarus@microchip.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20210819165908.135591-1-krzysztof.kozlowski@canonical.com>
 <20210819172852.b26mybrdr33wso62@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <5bff5a0c-48e5-3721-5595-836ce0562c6f@canonical.com>
Date:   Thu, 19 Aug 2021 19:36:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210819172852.b26mybrdr33wso62@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/08/2021 19:28, Pratyush Yadav wrote:
> + Tudor (you should be listed as a maintainer for this file IMO)
> 
> On 19/08/21 06:59PM, Krzysztof Kozlowski wrote:
>> Document bindings for the issi,is25wp256 SPI NOR flash.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>> ---
>>  Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml b/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
>> index ed590d7c6e37..0db64ac7dc33 100644
>> --- a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
>> +++ b/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
>> @@ -33,6 +33,7 @@ properties:
>>        - items:
>>            - enum:
>>                - issi,is25lp016d
>> +              - issi,is25wp256
> 
> I don't think we want to add any new flash specific compatibles. Why is 
> "jedec,spi-nor" not enough for you?

It's fine for me. I had impression that specific compatibles are still
preferred and one of boards is using this one. The other way is to
remove this compatible from the board DTS.

Best regards,
Krzysztof
