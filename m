Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE4A445EAB9
	for <lists+devicetree@lfdr.de>; Fri, 26 Nov 2021 10:50:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244349AbhKZJx3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Nov 2021 04:53:29 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:33704
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229871AbhKZJv2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 26 Nov 2021 04:51:28 -0500
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 95C253F1D7
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 09:48:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1637920095;
        bh=HRNUL8Y0Iq5Vt2e9JL9LxZBZvKj6u9INfG9sLHI3bog=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=BJBZzbiw784nA/OpKfH8JpfuMC4L0rL68UKnPihZr9C1fvw6fxfVXWQHqGwbGx1IP
         ebrPcIqQ86vPKr3tZQfVK+LUwCAttTSIpll5HyyMwGm6oBI8DsAvnprYSgwqW4OnVc
         uuNnk28hnRQfMZ5QBLLxw/3zbMrUe1SHHYuvv1sFvtOpN1GUjJ63Nv+olHRI1WVPDn
         SJptIOU6pTtEkX08kWoJtrWpDHpKj6k1387KmAEaBizxIbDfpv9+tEhH2SSCdUZWhh
         QDqriUNTpbfFIoKXx6o1RfEqeWCJnMq2rhLudx4/scajhIruZtlmXf70QubkAFSpMQ
         f70WkamMAYqyQ==
Received: by mail-lf1-f72.google.com with SMTP id bp10-20020a056512158a00b0040376f60e35so3983249lfb.8
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 01:48:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=HRNUL8Y0Iq5Vt2e9JL9LxZBZvKj6u9INfG9sLHI3bog=;
        b=7hak5sNrA9QJvwwNRB3VyPBS0A+6GYvkzwE40Oysa/wvhKNj941polLty1Ywn9gWTX
         xHad9gAXZETzSqSnidG0MsHTcJj0NWYstVTkBTvxOC42jKoimOKsUo4lc4HxAs/BnsCT
         9EgsPIjtXnYG7qQt5G0T1UzqGzaqT2aS8A4ri55bC0eLAIQBoANmBcnqPOVm+P0shzZW
         CYHsG32YYgg7W86Q/iL0P4XWkX56OdRK/GzeiVDDEX99vwmeAqMR2MEkugHixA+B1EWu
         T+imTYRkFcZcJ8MGsFdRMToj15I32Zi0M9R/6piqJb2sZCO8KvK62HEC6qIEHpia1StA
         CBAg==
X-Gm-Message-State: AOAM530Qow3f9J3cTqJmEBk/wsQPmuHCROuaXeE+2d7TOLl0SgyjeBNB
        bprmKPAL/8UA0Ix+lupBwb4OATzI3dj6w/iP7CkyQeD/TtwVr5TagL6K3zn1vd6Y6dMnpenP0qu
        GMsD8OBj/DuFj0tDTkfiPQE6SKRoVRGeE+Ozbie8=
X-Received: by 2002:a05:6512:2809:: with SMTP id cf9mr28141143lfb.429.1637920094959;
        Fri, 26 Nov 2021 01:48:14 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzek9h6XgJ5SJzyAAWkH+dhGuc29TAt2GBIxwRD8EDlfyCOSEoOkXlLvt/VNfVcVyE0zgW8cA==
X-Received: by 2002:a05:6512:2809:: with SMTP id cf9mr28141117lfb.429.1637920094756;
        Fri, 26 Nov 2021 01:48:14 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id i10sm465200lfv.22.2021.11.26.01.48.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Nov 2021 01:48:14 -0800 (PST)
Message-ID: <3b8442c7-fafb-421b-cd5b-4b57d1b545c3@canonical.com>
Date:   Fri, 26 Nov 2021 10:48:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH 6/9] riscv: dts: microchip: mpfs: Fix reference clock node
Content-Language: en-US
To:     Geert Uytterhoeven <geert@linux-m68k.org>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        Lewis Hanly <lewis.hanly@microchip.com>,
        Conor Dooley <conor.dooley@microchip.com>
Cc:     devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20211125153131.163533-1-geert@linux-m68k.org>
 <20211125153131.163533-7-geert@linux-m68k.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211125153131.163533-7-geert@linux-m68k.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/11/2021 16:31, Geert Uytterhoeven wrote:
> "make dtbs_check" reports:
> 
>     arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dt.yaml: soc: refclk: {'compatible': ['fixed-clock'], '#clock-cells': [[0]], 'clock-frequency': [[600000000]], 'clock-output-names': ['msspllclk'], 'phandle': [[7]]} should not be valid under {'type': 'object'}
> 	From schema: dtschema/schemas/simple-bus.yaml
> 
> Fix this by moving the node out of the "soc" subnode.
> While at it, rename it to "msspllclk", and drop the now superfluous
> "clock-output-names" property.
> 
> Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
> ---
>  arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)
> 

It is also logical because refclk usually is not a property of the SoC.
It actually might be a property of board...


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
