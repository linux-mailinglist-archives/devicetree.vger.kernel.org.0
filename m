Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E5023357711
	for <lists+devicetree@lfdr.de>; Wed,  7 Apr 2021 23:43:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234064AbhDGVoE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Apr 2021 17:44:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233811AbhDGVoD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Apr 2021 17:44:03 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57525C061760
        for <devicetree@vger.kernel.org>; Wed,  7 Apr 2021 14:43:52 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id j7so5344893plx.2
        for <devicetree@vger.kernel.org>; Wed, 07 Apr 2021 14:43:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=B+ENJQlWahXgPskU+UGwypHY2pnp4kwd5pPOeIDShEQ=;
        b=ESKyl8BrHE7ULlfnxAxqdYxVCf2z923ioVTZpQm0sBG7xYTcm7b12y480RWQLNjnYr
         9rntO6mCxztyvRRy/PFtKNXz9VVcUsB/pSwgk0ArSOVc0gMkz+vR5rg/SB1+Qt8hA6U3
         x9EoKmQorzMWOAEi93/zU19DBt6ULJGqHqTYjjK+hySt/pEFvbGeeB1q5uIA2L6/i2uv
         iVtLOs1T2Z1VlDulYQuA6l1WDJ0RaW87/BflWmfYGeL+JQh337TMiNUjD2I61957zbgD
         D/DZhKdiYciD2BSkgZ6zHak1dNfzY7deuA8Z8aKQjfAVOhoXIXDYQ/uk3krNbVUk9MeQ
         fRzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=B+ENJQlWahXgPskU+UGwypHY2pnp4kwd5pPOeIDShEQ=;
        b=KaRWg/YCBkjQBTZqbeejblQLIjuehGcuGgzYHeqG3zR61BmWs/b53mqSouDEwLXpGH
         bkUylYk9LfqGbHTCNzHpshK0+TFaxK+y8U83NHMP5yfr0LKa3c291RXAvJVCK6dO6fFo
         qbZgTD2WcR+7vM0FOAw6odIiZsExT1T15tKShFMfKZjHatCfxDgJ2Z4qZ7WgIkm3nM2R
         ++TsfQmBQX3LhVrHzI3fBRUWoZy/Mf6TVvBRLUBVIiHvkqOkSTFSpp2MJxtOtMWgHOue
         gSG5PLgr4hF8yt9v0Wk1jb0Mn7HFILX0+bk+R+Gh5FUyk/kN1ZMUKEQ+Esr/GByEr0H4
         2YZg==
X-Gm-Message-State: AOAM530tJnDagSGUJtUvaNXIRCz2RVT6kK+ivup6dm4+cTsMOQVqNJ4E
        TNR1+d3fxpZBvy0SNEqvZNc=
X-Google-Smtp-Source: ABdhPJx4WLLUW/PJsfCMTacCVzq0dCMA3zi5vJi51iR9/IBN5OLFdEJPqhXrK7eY1A5mJbh2vmUTMA==
X-Received: by 2002:a17:902:ecd1:b029:e9:45d4:40f6 with SMTP id a17-20020a170902ecd1b02900e945d440f6mr4697669plh.59.1617831831753;
        Wed, 07 Apr 2021 14:43:51 -0700 (PDT)
Received: from [10.230.29.202] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id y189sm21936422pfy.8.2021.04.07.14.43.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 14:43:51 -0700 (PDT)
Subject: Re: [PATCH robh next] dt-bindings: bus: add Broadcom CRU
To:     Rob Herring <robh@kernel.org>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20210309142241.16259-1-zajec5@gmail.com>
 <20210407205804.GA10597@robh.at.kernel.org>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <72bb76b7-7155-8b19-c1d0-4409acc0b32c@gmail.com>
Date:   Wed, 7 Apr 2021 14:43:40 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210407205804.GA10597@robh.at.kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 4/7/2021 1:58 PM, Rob Herring wrote:
> On Tue, Mar 09, 2021 at 03:22:41PM +0100, Rafał Miłecki wrote:
>> From: Rafał Miłecki <rafal@milecki.pl>
>>
>> CRU is a block used in Northstar devices. It can be seen in the
>> bcm5301x.dtsi and this binding documents its proper usage.
>>
>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
>> ---
>>  .../devicetree/bindings/bus/brcm,cru.yaml     | 41 +++++++++++++++++++
>>  1 file changed, 41 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/bus/brcm,cru.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/bus/brcm,cru.yaml b/Documentation/devicetree/bindings/bus/brcm,cru.yaml
>> new file mode 100644
>> index 000000000000..c3b1ca53a443
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/bus/brcm,cru.yaml
>> @@ -0,0 +1,41 @@
>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/bus/brcm,cru.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Broadcom CRU
>> +
>> +maintainers:
>> +  - Rafał Miłecki <rafal@milecki.pl>
>> +
>> +description: |
>> +  Broadcom CRU ("Clock and Reset Unit" or "Central Resource Unit") is a hardware
>> +  block grouping smaller blocks. It contains e.g. clocks, pinctrl, USB PHY and
> 
> Are these really separate blocks? I really need to see a complete 
> binding for the block.

The situation is a bit confusing because the CRU that is being described
here is not the CRU that is being described in the datasheet as a
block... but the registers are still prefixed CRU because they have a
clocking and reset component/function.

There are CRU registers within the DMU (Device Management Unit) and the
DMU is a sundry of various things containing:

- an internal MDIO bus controller (PCU_MDIO_MGT, PCU_MDIO_CMD)
- 4 registers to control and show the internal regulator status
- a collection of PLL and clock controls from 0x1800_c100 through 0x180_c180
- reset controls
- internal MDIO mux
- GPIO/pinmux/drive strength controls
- switch register interrupts
- adaptive voltage scaling registers
- gap
- crystal control

The 0x1d0 size would span all registers mentioned above and end
somewhere in the gap between AVS and XTAL.

> 
>> +  thermal.
>> +
>> +allOf:
>> +  - $ref: /schemas/simple-bus.yaml#
> 
> I don't think this should be a 'simple-bus'. Maybe 'simple-mfd' instead.
> 
>> +
>> +properties:
>> +  compatible:
>> +    contains:
>> +      const: brcm,cru
> 
> This should be SoC specific.

Yes agreed, brcm,bcm5301x-cru at least sine this is common to all
Northstar platforms.
-- 
Florian
