Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB0493A35B2
	for <lists+devicetree@lfdr.de>; Thu, 10 Jun 2021 23:12:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230368AbhFJVOP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Jun 2021 17:14:15 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:36203 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230340AbhFJVOO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Jun 2021 17:14:14 -0400
Received: from mail-wr1-f69.google.com ([209.85.221.69])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lrRyK-0006PA-Uf
        for devicetree@vger.kernel.org; Thu, 10 Jun 2021 21:12:17 +0000
Received: by mail-wr1-f69.google.com with SMTP id u20-20020a0560001614b02901115c8f2d89so1542527wrb.3
        for <devicetree@vger.kernel.org>; Thu, 10 Jun 2021 14:12:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DYrEI1CPfZmySk6cY9J0ohXCN4+Mz5LA/y5DlhALlNg=;
        b=YclPdBp4QGpdWlq4UjR/OVhFsAH8v803icDPhyvgWyWJHOmQiFQIDErHkPe4jde6eO
         0VDH/5pyz1EUOPpoicsGHveBFcy0fkladZQW+8E21JLksoP7axSceNe84aMRp+jA8gru
         K+KVQKjf7Cp3oK0G7jzUcPB1/aEp1JK3dC170gtNnnyptSr9KwW9S7tq1ENJYbinr9ek
         wReNf5EVzy9poPesxwb00PIZx0Mey1+WXKuE/iKLSbR+Ar0HhseGJRdpiWWim0LfKxrd
         SvZXEI1cMAiy4Rchmh7nUc12E+J3b2IkHED/jlTCPP2z+TtuoE4SA7OeLC+c8dks76UG
         XGZQ==
X-Gm-Message-State: AOAM533pltPIcHaAoJuoo3AmrE/Kv/Cy2onwg9I14wnGe0o5jNB6WKgi
        hZyxbQiYkYolfGAIX/rRnQ7vBlAhRwauW5favc7eX+aCpkAyazLcirwETefATGy8GkbBoaeJWqx
        A0Q0OSR/yBHDqFIRHnEWLT6nJyiIVMpP7NVQ0BsA=
X-Received: by 2002:a5d:64c7:: with SMTP id f7mr419976wri.36.1623359536176;
        Thu, 10 Jun 2021 14:12:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx688A9cV+dEt1NvDmIjm1lap6cMqZBXZgUyNwhXCx9GAk5LyRDHaiwPttV7/4KtyMfj0W9sQ==
X-Received: by 2002:a5d:64c7:: with SMTP id f7mr419956wri.36.1623359535971;
        Thu, 10 Jun 2021 14:12:15 -0700 (PDT)
Received: from [192.168.1.115] (xdsl-188-155-177-222.adslplus.ch. [188.155.177.222])
        by smtp.gmail.com with ESMTPSA id t66sm4005724wma.41.2021.06.10.14.12.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jun 2021 14:12:13 -0700 (PDT)
Subject: Re: [PATCH v23 08/18] dt-binding: memory: pl353-smc: Enhance the
 description of the reg property
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Rob Herring <robh@kernel.org>
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        Michal Simek <monstr@monstr.eu>,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Amit Kumar Mahapatra <akumarma@xilinx.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        helmut.grohne@intenta.de, Srinivas Goud <sgoud@xilinx.com>,
        Siva Durga Prasad Paladugu <sivadur@xilinx.com>
References: <20210610082040.2075611-1-miquel.raynal@bootlin.com>
 <20210610082040.2075611-9-miquel.raynal@bootlin.com>
 <20210610155345.GA1873816@robh.at.kernel.org> <20210610180107.1cc889f3@xps13>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <76a94eb1-170a-307d-e1ce-1080a7af6a0a@canonical.com>
Date:   Thu, 10 Jun 2021 23:12:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210610180107.1cc889f3@xps13>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/06/2021 18:01, Miquel Raynal wrote:
> Hi Rob, Krzysztof,
> 
> Rob Herring <robh@kernel.org> wrote on Thu, 10 Jun 2021 10:53:45 -0500:
> 
>> On Thu, Jun 10, 2021 at 10:20:30AM +0200, Miquel Raynal wrote:
>>> The SMC bus controller features several register sets. The one pointed
>>> by the reg property is for the SMC configuration (impacts the
>>> sub-controllers configuration), while the others are meant to be used to
>>> send regular cycles on the memory bus (eg. CMD, ADDR, DATA for a NAND
>>> device). Detail this a little bit for the sake of clarity.
>>>
>>> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
>>> ---
>>>  .../devicetree/bindings/memory-controllers/pl353-smc.txt       | 3 ++-
>>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt b/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt
>>> index ecd46856f139..ba6a5426f62b 100644
>>> --- a/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt
>>> +++ b/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt
>>> @@ -5,7 +5,8 @@ of memory interfaces: NAND and memory mapped interfaces (such as SRAM or NOR).
>>>  
>>>  Required properties:
>>>  - compatible		: Should be "arm,pl353-smc-r2p1", "arm,primecell".
>>> -- reg			: Controller registers map and length.
>>> +- reg			: SMC controller and sub-controllers configuration
>>> +			  registers.  
>>
>> I think you could just drop this patch. Otherwise, this doesn't match 
>> what's now in the yaml file.
> 
> Fine.
> 
> Krzysztof, if it's still time you can just take patch 9 which Rob
> just acked and forget about this one. I think we'll be good. Otherwise
> that will be for the next MW ;)

I skipped this one but took dtschema (9/18) so it should be in
tomorrow's linux-next.

Best regards,
Krzysztof
