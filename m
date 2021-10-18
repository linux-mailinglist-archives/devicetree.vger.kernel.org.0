Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DC34B4327EC
	for <lists+devicetree@lfdr.de>; Mon, 18 Oct 2021 21:47:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233052AbhJRTt2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Oct 2021 15:49:28 -0400
Received: from phobos.denx.de ([85.214.62.61]:41004 "EHLO phobos.denx.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232835AbhJRTt1 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 18 Oct 2021 15:49:27 -0400
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 636EE8111F;
        Mon, 18 Oct 2021 21:47:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1634586434;
        bh=x/P3vbpNUTIEoVsYF1dUtOdZvnv7+JaRiiItGytLISY=;
        h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
        b=0XHttoleP2HhObqyqdJbb9P0MBqUI/M3nwogGmH6b6hpdMS+5hk+APN6LR+ux5SaB
         ZrGLHotcfdrLLo0cHT2re1hiqnA4pptg4CK44Ta6f7SZ13IgLjoSfZOBX+O2+DGWA2
         f236vkMQYSWzlv4QXQKbzJlvXcf2ZqzlvkLPcxFNqthC+RkTXIUDbvGRRGamLKeIO8
         drS7mPnB2LHmJtZZJkbcXh2iotUYaEDdQDUJa6vDaYPEAl0HTi270YBze9/2Osqn2m
         3QoRGQM6X6BJ/t9+5dtnzmsGMNYnliaacb6vAsKBPLmJnf0YV+/S4RsLyLGBOhbYYs
         T3yXdTACPA6+g==
Subject: Re: [PATCH v5 1/2] dt-bindings: display: bridge: lvds-codec: Document
 pixel data sampling edge select
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
References: <20211017001204.299940-1-marex@denx.de>
 <YW24EbfbtJdMMDRV@pendragon.ideasonboard.com>
From:   Marek Vasut <marex@denx.de>
Message-ID: <c34f8a7e-eec6-9373-0c52-f6546ad689a8@denx.de>
Date:   Mon, 18 Oct 2021 21:47:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YW24EbfbtJdMMDRV@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.2 at phobos.denx.de
X-Virus-Status: Clean
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/18/21 8:08 PM, Laurent Pinchart wrote:

[...]

>> diff --git a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
>> index 1faae3e323a4..708de84ac138 100644
>> --- a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
>> +++ b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
>> @@ -79,6 +79,14 @@ properties:
>>         - port@0
>>         - port@1
>>   
>> +  pclk-sample:
>> +    description:
>> +      Data sampling on rising or falling edge.
>> +    enum:
>> +      - 0  # Falling edge
>> +      - 1  # Rising edge
>> +    default: 0
>> +
> 
> Shouldn't this be moved to the endpoint, the same way data-mapping is
> defined as an endpoint property ?

The strapping is a chip property, not port property, so no.
