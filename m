Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ECBB826DBCD
	for <lists+devicetree@lfdr.de>; Thu, 17 Sep 2020 14:42:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727017AbgIQMmX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Sep 2020 08:42:23 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:35430 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727032AbgIQMkJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Sep 2020 08:40:09 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08HCdgxq054466;
        Thu, 17 Sep 2020 07:39:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1600346382;
        bh=FSxwoPL7aSoYCkxBrZForrCAzlbC92v79w5BQmsdNss=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=HznG9ARTc3qmGgjk4fJmV+S3pVgtetMzjo6El+rR7+AAENDTRgf1cs3kcPWwBDriX
         DZ8ormumBmFIOGp9Bj9de5xC+G9BoT3Y17Hey6sobsNjmc8r8fiKYs+zksxk0x0gPG
         kMlWUBEpun0XwozxUrO/wPqSE9Ap4EXGO3cj3Opc=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08HCdgVp041779
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 17 Sep 2020 07:39:42 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 17
 Sep 2020 07:39:42 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 17 Sep 2020 07:39:42 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08HCdddv017095;
        Thu, 17 Sep 2020 07:39:40 -0500
Subject: Re: [PATCHv2] dt-bindings: dp-connector: add binding for DisplayPort
 connector
To:     =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC:     <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Swapnil Kashinath Jakhade <sjakhade@cadence.com>,
        Neil Armstrong <narmstrong@baylibre.com>
References: <20200917055210.22868-1-tomi.valkeinen@ti.com>
 <20200917112229.GR6112@intel.com>
From:   Tomi Valkeinen <tomi.valkeinen@ti.com>
Message-ID: <5265c620-ee51-3896-4c5a-9e3284c52327@ti.com>
Date:   Thu, 17 Sep 2020 15:39:38 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200917112229.GR6112@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/09/2020 14:22, Ville Syrjälä wrote:
> On Thu, Sep 17, 2020 at 08:52:10AM +0300, Tomi Valkeinen wrote:
>> Add binding for DisplayPort connector. A few notes:
>>
>> * Similar to hdmi-connector, it has hpd-gpios as an optional property,
>>   as the HPD could also be handled by, e.g., the DP bridge.
>>
>> * dp-pwr-supply, which provides 3.3V on DP_PWR pin, is optional, as it
>>   is not strictly required: standard DP cables do not even have the pin
>>   connected.
>>
>> * Connector type. Full size and mini connectors are identical except for
>>   the connector size and form, so I believe there is no functional need
>>   for this property. But similar to 'label' property, it might be used
>>   to present information about the connector to the userspace.
>>
>> * No eDP. There's really no "eDP connector", as it's always a custom
>>   made connection between the DP and the DP panel. So possibly there is
>>   no need for edp-connector binding, but even if there is, I don't want
>>   to guess what it could look like, and could it be part of the
>>   dp-connector binding.
>>
>> * No DP++. I'm not familiar with DP++, but I think it's all handled by
>>   the DP bridge, and does not need any new properties to the dp-connector.
> 
> You might need an i2c bus for this. It's up to the source device
> to either hook up just AUX CH, or both AUX CH and DDC to a DP++
> connector. If just AUX CH is wired up you are limited to using
> only type2 DP dual mode adapters, whereas if you also have DDC
> the crappier type1 adapters will also work.

Ok, thanks for the clarifications on this.

> I guess it's possible some bridges might handle all that for you.
> But eg. on i915 we always set up both AUX CH and DDC, and some
> extra circuitry on the board will isolate one or the other
> depending on what kind of dongle/cable gets plugged in
> (identified via the CONFIG pins).

Is that automatic on i915? I could imagine a gpio-controlled mux doing the isolation, and then we
need some driver controlling the gpio.

I could add the ddc bus the same way as on hdmi-connector.yaml, but perhaps it's better to leave
that for someone with a DP++ board. Afaics, there should be no problems adding this later.

 Tomi

-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
