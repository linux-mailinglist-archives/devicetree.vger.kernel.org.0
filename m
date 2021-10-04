Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A7D042084B
	for <lists+devicetree@lfdr.de>; Mon,  4 Oct 2021 11:31:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231355AbhJDJdJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Oct 2021 05:33:09 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:58532
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231526AbhJDJdJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Oct 2021 05:33:09 -0400
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 877374076F
        for <devicetree@vger.kernel.org>; Mon,  4 Oct 2021 09:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633339879;
        bh=BhMF861qRXxB8JicXlfyBxo5M67ugNaJYcXfYfJhwvs=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=bYAGtPuaB4Xqt8xHhaZmNF7h3QHbk+h/YFfVuu6gkm6HfQCh9fBl2H9n/QihYYUno
         a18syd933uWrL8i0UB1CYwBSDnvCBbw/SZxJVmnh65m1ovsb/V3MBXCxEbYkDyk7I2
         lHOVAJ+wGFiYnr9ILiWC/AFuGwPTcCU/7ErlkfpRqbFFSvqE0DXN45GYjX25BLa8US
         EVZamjmcoOom1lgkUrzd+bjzBbMKLkUIJVLQ/aO/NxH+pgV6tR6HZFUpx8ghjSA7/8
         ggz5rgagUr+y+t8U/DkkVgIo/Q0OW1iUb2PWuCXRSA7LBH2gL1ozmtEoZ+T4nuyV1y
         oB2z0DABKBmtQ==
Received: by mail-lf1-f71.google.com with SMTP id r14-20020ac25c0e000000b003fc149ed50eso13712817lfp.11
        for <devicetree@vger.kernel.org>; Mon, 04 Oct 2021 02:31:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=BhMF861qRXxB8JicXlfyBxo5M67ugNaJYcXfYfJhwvs=;
        b=LJOOhOxb0mQKJWCEKeXYr/3KsELpu7GUcZdI6Jd6SPQfK2ojny8Oy36rFWxPyRLXYF
         e/LgP5q2cAkRdrVR1ddYVdeOXp0wCpsm3XRgpJyC+CjdH/HH3y/W+xudonBBMrFE8AD3
         MDWnGWsN2IFUZbYFT/WlSrwzkb/fXDLv79GkPGU0aNKlciRbgnmhxGCEv5bq4Hv52eSv
         MlC4wKQH6h2y1iS/at6p7XEuT/Ezr0/fo55cAcC1zysIdfvoBkzvtPItIrGQvz3OhJaP
         8GBwdSJV59spY/4+8sxe+lka8PZNB0k6JKR/2c7zrEIWHhUtMMkWZJjiXToe3O0+pQC0
         ARAQ==
X-Gm-Message-State: AOAM5304vJzSl4rJsQxM18PxWS4N7YcJZANFWdQHLGEmucrxdSphfXN2
        cKsbvacUmNLU6IqMOLhJnpTeebwKnULo6ncxBJ6HD689OBDXAGtCMwIwcNe4Tc4g0j4yI+iohX7
        oxoTgOx5rBHY6sQQyLYhlN6EkJsPrCe7Jj0/KpvY=
X-Received: by 2002:a05:6512:1052:: with SMTP id c18mr13061982lfb.223.1633339876150;
        Mon, 04 Oct 2021 02:31:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzsF7MpTHnCy/j3g+hDSYlF5AGtBdgBEcCWhBbURgsQ+KvwKCwGBOZ9EeWYxDHnkw58Nm6QvQ==
X-Received: by 2002:a05:6512:1052:: with SMTP id c18mr13061970lfb.223.1633339875996;
        Mon, 04 Oct 2021 02:31:15 -0700 (PDT)
Received: from [192.168.0.197] ([193.178.187.25])
        by smtp.gmail.com with ESMTPSA id s29sm1678179ljd.54.2021.10.04.02.31.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Oct 2021 02:31:15 -0700 (PDT)
Subject: Re: [PATCH 1/5] dt-bindings: memory: fsl: convert ifc binding to yaml
 schema
To:     Li Yang <leoyang.li@nxp.com>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Michael Ellerman <mpe@ellerman.id.au>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        lkml <linux-kernel@vger.kernel.org>
References: <20211001000924.15421-1-leoyang.li@nxp.com>
 <20211001000924.15421-2-leoyang.li@nxp.com>
 <db751cb1-9107-3857-7576-644bde4c28e5@canonical.com>
 <CADRPPNROVBp_QB=6XEgk8WF5fnEPFTSko4Nn+mm8oLM3iGTuuw@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <e42fa620-810b-fdcc-c827-602a14d10d97@canonical.com>
Date:   Mon, 4 Oct 2021 11:31:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CADRPPNROVBp_QB=6XEgk8WF5fnEPFTSko4Nn+mm8oLM3iGTuuw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/10/2021 18:17, Li Yang wrote:
> On Fri, Oct 1, 2021 at 5:01 AM Krzysztof Kozlowski
> <krzysztof.kozlowski@canonical.com> wrote:
>>

(...)

>>> +
>>> +  interrupts:
>>> +    minItems: 1
>>> +    maxItems: 2
>>> +    description: |
>>> +      IFC may have one or two interrupts.  If two interrupt specifiers are
>>> +      present, the first is the "common" interrupt (CM_EVTER_STAT), and the
>>> +      second is the NAND interrupt (NAND_EVTER_STAT).  If there is only one,
>>> +      that interrupt reports both types of event.
>>> +
>>> +  little-endian:
>>> +    $ref: '/schemas/types.yaml#/definitions/flag'
>>
>> type: boolean
> 
> It will not have a true or false value, but only present or not.  Is
> the boolean type taking care of this too?

boolean is for a property which does not accept values and true/false
depends on its presence.
See:
Documentation/devicetree/bindings/phy/lantiq,vrx200-pcie-phy.yaml
Documentation/devicetree/bindings/thermal/qoriq-thermal.yaml


Best regards,
Krzysztof
