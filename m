Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6960E3FCA58
	for <lists+devicetree@lfdr.de>; Tue, 31 Aug 2021 16:50:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238271AbhHaOvD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Aug 2021 10:51:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232214AbhHaOvD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Aug 2021 10:51:03 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92931C061575
        for <devicetree@vger.kernel.org>; Tue, 31 Aug 2021 07:50:07 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id l7-20020a1c2507000000b002e6be5d86b3so2788077wml.3
        for <devicetree@vger.kernel.org>; Tue, 31 Aug 2021 07:50:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=o9Xerj9x1DLdOo3ptOhFxaFlDghoWf30GwyqU+zR+pM=;
        b=LYnaMiSx6In2IhqsjnBuzcKiAAnYd1Z9V8nHKpwnTHxnVU6vKJz2kuv+v+NT4E+tln
         9K/V2zFOD0fOgpT3zUVuAXgWD4PXEoy4Q/gCZ6iQ8PnN4sJ2Vv0HAmlw0Z7T3ZloaJhj
         x1LX1KgDZl+tHo8sXoETBDndsSZqZAInIT78mAOBOROzg4xeiLpPdJa9UPZW1vj5LVGZ
         6mcjb56V3x8apPenmXWh4Cyt+t9rrgZyBC6YWHOsdIUdxQ8xFgGhHgQOk5jtiN5i42RL
         5JewEyU7Aob+VQCvD4w5+ONNDEfhERvofgfNc6MjumtnrSKDynZnccbGQxJfOHENd4zY
         48jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=o9Xerj9x1DLdOo3ptOhFxaFlDghoWf30GwyqU+zR+pM=;
        b=Auwe39NE6oe0D7nz1EgfpgkyP3k2FWEurmvks8lyywSjynioKUIxePW1riPR7i7iAJ
         FMV0X0kPQ+aoJCoQkPUHi5Kn9wHXsZDIXcF9fb+vVtte24zQi48Yx3VKd88P4zaS/JWD
         VRDEXqUGQzfLpkZPiXRfuBehpBfLDPWaGDKAJmr63NrJIIvCagVAfY/b8nXEICXTJTkc
         vL41A/oc3aMhc4jrvCCCCEmQ9G/WWgfs0A+Mg/G9cGrUBWkx1a50DJfrIkB6GPNqE2tw
         W7CGEEhP7I0aDL2xf6oYqMSaGiCo13W3bQmvFhGfcQj/u/m8ojJYxIl6FwSBxb3kuxY6
         RbnA==
X-Gm-Message-State: AOAM532h+TMMXO+TVfOP/mx+xZoWeo4kAubbKVH7mNLqVrY6WM/qLZUW
        /0dUtQ3GICsGz+yRoL47HOUC7A==
X-Google-Smtp-Source: ABdhPJzfXFWLxmkSweI+5zHOnWUNvWwOON8f7JdZdJowyF1SEsMkEOlKFrkT0ehkRSJs7vuhu8m0zg==
X-Received: by 2002:a1c:4407:: with SMTP id r7mr4774784wma.150.1630421405887;
        Tue, 31 Aug 2021 07:50:05 -0700 (PDT)
Received: from ?IPv6:2001:861:44c0:66c0:fc41:6c:2c4e:2156? ([2001:861:44c0:66c0:fc41:6c:2c4e:2156])
        by smtp.gmail.com with ESMTPSA id h6sm2795675wmq.5.2021.08.31.07.50.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Aug 2021 07:50:05 -0700 (PDT)
Subject: Re: [PATCHv3 1/6] ARM: dts: meson8b: odroidc1: Add usb phy power node
To:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Anand Moon <linux.amoon@gmail.com>, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Matt Corallo <oc2udbzfd@mattcorallo.com>,
        Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Emiliano Ingrassia <ingrassia@epigenesys.com>,
        Brian Kim <brian.kim@hardkernel.com>
References: <20210817041548.1276-1-linux.amoon@gmail.com>
 <20210817041548.1276-2-linux.amoon@gmail.com>
 <c7f6213b-5ddc-881c-1aea-9cc7b03e6a4f@baylibre.com>
 <CAFBinCBeNMET2tvH0h6HF3dR+xBb59hifQyaoXigUs3UGkS+KQ@mail.gmail.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <2b07b3de-cee5-c570-8fde-6a4c684122d6@baylibre.com>
Date:   Tue, 31 Aug 2021 16:50:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAFBinCBeNMET2tvH0h6HF3dR+xBb59hifQyaoXigUs3UGkS+KQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 30/08/2021 21:37, Martin Blumenstingl wrote:
> Hi Neil,
> 
> On Mon, Aug 30, 2021 at 9:45 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>>
>> Hi,
>>
>> On 17/08/2021 06:15, Anand Moon wrote:
>>> Add missing usb phy power node for usb node fix below warning.
>>> P5V0 regulator supply input voltage range to USB host controller.
>>> As described in the C1+ schematics, GPIO GPIOAO_5 is used to
>>> enable input power to USB ports, set it to Active Low.
>>>
>>> [    1.260772] dwc2 c90c0000.usb: Looking up vbus-supply from device tree
>>> [    1.260784] dwc2 c90c0000.usb: Looking up vbus-supply property in
>>>               mode /soc/usb@c90c0000 failed
>>
>> First of all, DT is not here to fix boot message.
> Anand mentioned elsewhere that this is a debug/info message
> 
>> Finally, I looked at the Odroid-C1 schematics and the GPIOAO.BIT5 is an input
>> to the S805, and the PWREN signal is controlled by the USB Hub so this regulator
>> should not be added at all.
> I think there's a misunderstanding because there's two PWREN signals
> with different meanings.
> The PWREN signal for the USB host ports is hard-wired and not
> connected to the SoC at all.
> The PWREN signal for the Micro-USB port (which Anand is adding here)
> is controlled by GPIOAO_5. odroid-c1+_rev0.4_20150615.pdf [0] shows it
> as an input to "USB_OTG" on page 1. "USB_OTG" consists of a power
> switch and the connector itself as shown on page 28.
> 
> Personally I think that the change from Anand itself is good.
> If you feel otherwise then please speak up.

Ok thanks for the clarification, then the change is ok, but not the commit message.

>> Add missing usb phy power node for usb node fix below warning.

is not a good reason for a DT change. A proper reason should be added.

And the commit message doesn't specify the change is for the Micro-USB port,
this should be clarified.

Neil

> As I pointed out three smaller changes I am hoping that Anand will
> re-send the updated patch anyways. At that point he can also add the
> changes from your feedback.
> 
> 
> Best regards,
> Martin
> 
> 
> [0] https://dn.odroid.com/S805/Schematics/odroid-c1+_rev0.4_20150615.pdf
> 

