Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 52BFB4283A9
	for <lists+devicetree@lfdr.de>; Sun, 10 Oct 2021 23:01:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232815AbhJJVD1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Oct 2021 17:03:27 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:35736
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232508AbhJJVD0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 10 Oct 2021 17:03:26 -0400
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id E99BF3FFE3
        for <devicetree@vger.kernel.org>; Sun, 10 Oct 2021 21:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633899686;
        bh=H2uxHzAe6TlUN0i9yZmgBvOWIIeVlNqhS2vORWZhyZw=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=tNqtwUBpKuMZMe9p9UlQO8uwXtnP5fK9oxJG+SqA3o95/uAA6FzABWU61QtVQGI38
         Eaj6hswV8Kja22563KnrNgiq1PMDCMm3Nvz/tG8n80TCw1R4Vp/wLN6IAU4d6wEp8Z
         8Zk+pck3K2CSjl6PVNdo6JexnghvUVobih8LEsWsRdRrYmnncleq2GtRO3F0N20LwO
         UDarmZhkkg6KTnuilaCrtZbzr6WQVb/H+WIAHiEfn44GvvRmOvY8n6z7SARrgK8LNF
         g8DnBs3Qq18fB2g3yh+IfhJdVZvV6LbZTdYPSMLf9nQAzZ4nJTtBKa9AHV8Ft/9aFE
         7Io1Rfm6aM/vg==
Received: by mail-ed1-f71.google.com with SMTP id p13-20020a056402044d00b003db3256e4f2so14013605edw.3
        for <devicetree@vger.kernel.org>; Sun, 10 Oct 2021 14:01:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=H2uxHzAe6TlUN0i9yZmgBvOWIIeVlNqhS2vORWZhyZw=;
        b=4G8miDMGB1p1HwV4aPiY6pXeS9aRgBAxkOIcaetanqyKttRExFYFJsQNFRLVLTL4DR
         LYKAOQC2/Sw6vCgAiN5ghT4zxWsoGs6F5Z6vYpGXJ3EDejJ8KD3r9SWyIehYSnSk1c99
         /NC95FDvKCHs3oNRF52yYkliCWp6hrHdj9wSW/PvSMCULPgoZHOMoM00l+EnrJrMSQo2
         +l7fTw5cjE7yVNjNQ8IUL3C49f7MO71seM/nYwdkKylLJcfNlEvN4N1eoOFhlvgdu88S
         ep3CaGafJN/plstsrmMVVlYivRgG5pgNIsEpyIJxKI38EdjdtFdaxwdbU/AjErJvnd4V
         2P9Q==
X-Gm-Message-State: AOAM532E0MpAYXfWmc4aeOeD3ZxsVHkdXSaumkx1JPSgR3O5TNKbsbjp
        WPCcZSfHbkDYhaEVF/CK0JVoOaMCmzMnp3dZJUPGsFlNRDcaUq/pMmuQejuY0laohwj9gb5VtP7
        I9CacP/VysehfkVadq9ZogE5vNiy+TtGe4juwedI=
X-Received: by 2002:a17:906:d979:: with SMTP id rp25mr20510164ejb.355.1633899686232;
        Sun, 10 Oct 2021 14:01:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxjSgUFXXROM9c6E/IwY9mvFF/lw9viqSodp2KEoabBou2gaVWP6Wge9DFYZaeMF9MLTgDfrQ==
X-Received: by 2002:a17:906:d979:: with SMTP id rp25mr20510153ejb.355.1633899686064;
        Sun, 10 Oct 2021 14:01:26 -0700 (PDT)
Received: from [192.168.0.20] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id g20sm3038565edw.71.2021.10.10.14.01.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Oct 2021 14:01:25 -0700 (PDT)
Subject: Re: [PATCH v3] dt-bindings: net: nfc: nxp,pn544: Convert txt bindings
 to yaml
To:     Rob Herring <robh@kernel.org>, David Heidelberg <david@ixit.cz>
Cc:     netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Jakub Kicinski <kuba@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        devicetree@vger.kernel.org, ~okias/devicetree@lists.sr.ht
References: <20211009161941.41634-1-david@ixit.cz>
 <1633894316.431235.3158667.nullmailer@robh.at.kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <1a315cff-fa34-0fac-8312-9a96d56966c7@canonical.com>
Date:   Sun, 10 Oct 2021 23:01:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <1633894316.431235.3158667.nullmailer@robh.at.kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/10/2021 21:31, Rob Herring wrote:
> On Sat, 09 Oct 2021 18:19:42 +0200, David Heidelberg wrote:
>> Convert bindings for NXP PN544 NFC driver to YAML syntax.
>>
>> Signed-off-by: David Heidelberg <david@ixit.cz>
>> ---
>> v2
>>  - Krzysztof is a maintainer
>>  - pintctrl dropped
>>  - 4 space indent for example
>>  - nfc node name
>> v3
>>  - remove whole pinctrl
>>  .../bindings/net/nfc/nxp,pn544.yaml           | 61 +++++++++++++++++++
>>  .../devicetree/bindings/net/nfc/pn544.txt     | 33 ----------
>>  2 files changed, 61 insertions(+), 33 deletions(-)
>>  create mode 100644 Documentation/devicetree/bindings/net/nfc/nxp,pn544.yaml
>>  delete mode 100644 Documentation/devicetree/bindings/net/nfc/pn544.txt
>>
> 
> Running 'make dtbs_check' with the schema in this patch gives the
> following warnings. Consider if they are expected or the schema is
> incorrect. These may not be new warnings.
> 
> Note that it is not yet a requirement to have 0 warnings for dtbs_check.
> This will change in the future.
> 
> Full log is available here: https://patchwork.ozlabs.org/patch/1538804
> 
> 
> pn547@28: 'clock-frequency' is a required property
> 	arch/arm64/boot/dts/qcom/msm8992-msft-lumia-octagon-talkman.dt.yaml
> 	arch/arm64/boot/dts/qcom/msm8994-msft-lumia-octagon-cityman.dt.yaml
> 

I think clock-frequency should be dropped from I2C slave device.
Similarly to this one:
https://lore.kernel.org/linux-nfc/f955726a-eb2d-7b3e-9c5f-978358710eb6@canonical.com/T/#u


Best regards,
Krzysztof
