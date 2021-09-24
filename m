Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 05120417CF6
	for <lists+devicetree@lfdr.de>; Fri, 24 Sep 2021 23:20:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347330AbhIXVWE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Sep 2021 17:22:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233640AbhIXVWD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Sep 2021 17:22:03 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CAB5C061571
        for <devicetree@vger.kernel.org>; Fri, 24 Sep 2021 14:20:30 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id on12-20020a17090b1d0c00b001997c60aa29so8354336pjb.1
        for <devicetree@vger.kernel.org>; Fri, 24 Sep 2021 14:20:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZEDXf+n0EIzatEn+Z3lapmBH+uZxjQJihtmcATDfNPg=;
        b=mf1ztt5aCuA2auGtGblEbygiGYdJRZK6/RH6Z/shEZon1p35bjtUiCj1ZGMSkIn3L2
         qSGxWreK5QyvhxrlM3Hf/bEjwEKxTs35Ll5jlnzyHzNa9FYnqKJPTGLLgfsFIDURk//v
         nuMpHcGl6GPtj3Vl0iGbSrIgZUeCzZn2sF8Mmve/08QAePB4cuoaCz0irH9maMpQjEsB
         ruQO+BAjEA2fgUJVkKeDDmKqHnO0kMoyY6MNoR5MnzUkaUVYx/BU7G+vn58s7EIpM1od
         gJzi8qKAK0oAzcIHQMbYm2AfgUa7U3qaUg681i8Pf4n8P2CkcMFKYvNkhA1BneHeIIte
         cnyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZEDXf+n0EIzatEn+Z3lapmBH+uZxjQJihtmcATDfNPg=;
        b=Q3kOk32dPITSeyomCTx7t42YzjXlMnJ/B8C5IWuEWXo6yE6TquVdw5wr1pA74S7UtF
         R9V+O2/scdBou+0k4wBIrswuOfrsd963OhJhWA61c+Gf5OjKDOILKc5QyYJiyv8gw510
         czX2I5T0Ptouh+T3TR0MRxQu2xb9vb6QJHtiYk9qNQRKm5qxYLbH0U16dgZ30A+EOqcS
         7hae7VNkRzn13jp1iwOtHzFXCNl9DNvcYPWTGSt5mN6AnXfpoQregLptBHDnhteyYeSx
         NzPR2U6Uhfcv43sWYNVA05Ur66vFR1Uze4XqR2QwyKACycHvuIRcmTdez/PqlWgfv7C+
         pKNw==
X-Gm-Message-State: AOAM531SO0kBTWkIhr/tJ2jps0574gUE2f9WlDXipXQhK1Q7f2/tWkXx
        1pn45WcCsm/WlRDF4nP6OAc=
X-Google-Smtp-Source: ABdhPJzKqOYA8EMv/gDJUywXioSDlxzzcAgJom6y/MoKsnd1LJDG+eq5V0TphBxWSVhusVgi1od9Rw==
X-Received: by 2002:a17:902:e282:b0:13a:45b7:d2cd with SMTP id o2-20020a170902e28200b0013a45b7d2cdmr10981417plc.86.1632518429725;
        Fri, 24 Sep 2021 14:20:29 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id bv16sm9202066pjb.12.2021.09.24.14.20.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Sep 2021 14:20:28 -0700 (PDT)
Subject: Re: [PATCH] ARM: dts: BCM5301X: Add DT for Asus RT-AC88U
To:     =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
Cc:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?Q?Alvin_=c5=a0ipraga?= <alsi@bang-olufsen.dk>
References: <20210921121901.24578-1-arinc.unal@arinc9.com>
 <b695c272-b718-f702-8890-e098eee7e093@gmail.com>
 <50b7d44c-614e-bf3a-00bc-bc8a1c5d353a@arinc9.com>
 <b26b86d9-a2d2-70b5-c06f-b4edba75de13@gmail.com>
 <36707d63-2aa7-4e08-5df9-abd9c398439a@arinc9.com>
 <9ba1d9f6-354a-f8e6-7633-d629d7f9c62a@gmail.com>
 <6b2aed0e-8c03-ce15-e33a-5d1d15d1b9a6@arinc9.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <90eac7d8-c0b6-e8f2-a7b5-9c959b43e431@gmail.com>
Date:   Fri, 24 Sep 2021 14:20:22 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <6b2aed0e-8c03-ce15-e33a-5d1d15d1b9a6@arinc9.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 9/24/21 2:02 PM, Arınç ÜNAL wrote:
>> 0x200 is not the address of the Realtek switch on the MDIO bus, 0x200 is
>> the offset with mdio mux that needs to be toggled (bit 9). You still
>> need to provide the Ethernet switch's address on the MDIO bus which
>> appears to be 0.
> 
> Oh, we flip the 9th bit. 2 to the power of 9 = 0x200. Got it!
> 
> I tried 0 and 29 as the PHY ID. I'd assume the DSA realtek-smi driver
> would start probing the switch, however, nothing happens. Full log in
> attachments.
> 
> [    2.026772] bcm_iproc 18029200.spi: using bspi-mspi mode
> [    2.033467] libphy: Fixed MDIO Bus: probed
> [    2.038123] libphy: iProc MDIO bus: probed
> [    2.042331] iproc-mdio 18003000.mdio: Broadcom iProc MDIO bus registered
> [    2.049823] libphy: mdio_mux: probed
> [    2.054206] libphy: mdio_mux: probed
> [    2.058713] b53-srab-switch 18007000.ethernet-switch: found switch:
> BCM53012, rev 0
> [    2.066671] bgmac_bcma: Broadcom 47xx GBit MAC driver loaded
> 
> Quoting Documentation/devicetree/bindings/net/dsa/realtek-smi.txt for
> further reference.
> 
>> Realtek SMI-based Switches
>> ==========================
>>
>> The SMI "Simple Management Interface" is a two-wire protocol using
>> bit-banged GPIO that while it reuses the MDIO lines MCK and MDIO does
>> not use the MDIO protocol. This binding defines how to specify the
>> SMI-based Realtek devices.

Ah this is the key here, using the MDIO controller won't work sorry
about misleading you. I suppose you will have to go back to the previous
Device Tree representation you had, but change the dsa,member property
and then you should be in business baring additional bugs/features.
-- 
Florian
