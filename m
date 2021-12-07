Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1415746C0ED
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 17:47:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238685AbhLGQvD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 11:51:03 -0500
Received: from phobos.denx.de ([85.214.62.61]:37308 "EHLO phobos.denx.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S238581AbhLGQvC (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 7 Dec 2021 11:51:02 -0500
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 4D11A80F89;
        Tue,  7 Dec 2021 17:47:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1638895650;
        bh=0825tELP4ArHrNXqWLYAcj07TMXuL2fnvIQiesDbPks=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=s7opmbnS1UtrgCj9fJvIUzeJIWRx5Q3dySrv6lyCyt+fCBWNlJAv6CW8P6TxMGw6r
         vCA1FhMkOCIZS2tDUAWxLjvSVBCUc8x2s90pc3Pja+aLsS7gmmtFQX+aeP76QrsEA6
         UJ37mCOiY2+EEMeqnOp8hnXbKd2nvNLu98AceyVjiCk/JP/uRxCsOATQbp/8GEVArC
         ZYQC6DCU7gwxCXaZBZCd4ShBKomEvHN3LPaNUEI0XYh5OSzOHolAgTmuFx2ggbZ8wV
         sCuciL7MFFZu4JUnchqU6qNhTFUMdQ1n5w0cvidT9GYeNKD+d71r05GcXGgCkPdeDP
         akshJQGn9xCkA==
Message-ID: <1a7967f0-ed4b-9cd2-28c8-eb9d181448ae@denx.de>
Date:   Tue, 7 Dec 2021 17:47:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH 1/4] dt-bindings: display: bridge: tc358867: Document DPI
 output support
Content-Language: en-US
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     dri-devel@lists.freedesktop.org,
        Andrzej Hajda <a.hajda@samsung.com>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Jonas Karlman <jonas@kwiboo.se>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
References: <20211127032405.283435-1-marex@denx.de>
 <Ya+PRMvq3cjJ46s/@pendragon.ideasonboard.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <Ya+PRMvq3cjJ46s/@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.2 at phobos.denx.de
X-Virus-Status: Clean
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/7/21 17:43, Laurent Pinchart wrote:

[...]

>> diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
>> index f1541cc05297..5cfda6f2ba69 100644
>> --- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
>> +++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
>> @@ -61,8 +61,8 @@ properties:
>>         port@1:
>>           $ref: /schemas/graph.yaml#/properties/port
>>           description: |
>> -            DPI input port. The remote endpoint phandle should be a
>> -            reference to a valid DPI output endpoint node
>> +            DPI input/output port. The remote endpoint phandle should be a
>> +            reference to a valid DPI output or input endpoint node.
> 
> I assume the mode of operation (input or output) will be fixed for a
> given hardware design. Isn't this something that should be recorded in
> DT ? It would simplify configuration of the device in the driver.

Currently the configuration (DSI-to-DPI / DPI-to-eDP) is inferred from 
the presence of DPI panel. If DPI panel present, DSI-to-DPI, else, 
DPI-to-eDP.
