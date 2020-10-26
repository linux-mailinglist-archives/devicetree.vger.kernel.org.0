Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D813E2985A6
	for <lists+devicetree@lfdr.de>; Mon, 26 Oct 2020 03:50:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1420252AbgJZCuG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Oct 2020 22:50:06 -0400
Received: from hqnvemgate24.nvidia.com ([216.228.121.143]:16414 "EHLO
        hqnvemgate24.nvidia.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1420247AbgJZCuG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 25 Oct 2020 22:50:06 -0400
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate24.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
        id <B5f9639660000>; Sun, 25 Oct 2020 19:50:14 -0700
Received: from [10.25.99.37] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 26 Oct
 2020 02:50:03 +0000
Subject: Re: [PATCH v3 1/3] ASoC: dt-bindings: audio-graph-card: switch to
 yaml base Documentation
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
CC:     Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
        <alsa-devel@alsa-project.org>, <devicetree@vger.kernel.org>
References: <87a6wfay7t.wl-kuninori.morimoto.gx@renesas.com>
 <878sbzay6u.wl-kuninori.morimoto.gx@renesas.com>
 <92de1324-7845-a0ee-7962-aa297c0dced7@nvidia.com>
 <873621lxhv.wl-kuninori.morimoto.gx@renesas.com>
From:   Sameer Pujar <spujar@nvidia.com>
Message-ID: <963ea81c-f1c4-580c-f336-f9e5a98d2cae@nvidia.com>
Date:   Mon, 26 Oct 2020 08:19:59 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <873621lxhv.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
        t=1603680614; bh=zKZTot2/ISiwJLh0SmshmGOmB4SjDhX7s9gyIaaFHZ0=;
        h=Subject:To:CC:References:From:Message-ID:Date:User-Agent:
         MIME-Version:In-Reply-To:Content-Type:Content-Transfer-Encoding:
         Content-Language:X-Originating-IP:X-ClientProxiedBy;
        b=LI+KaAzR+A9nwBZJEvTdpkXPO26bpAG410S9xa4ubSnpVtDE5Aqx7PqIrzGF0MK0G
         pexAiCnW48FFvJiDmQHW7iQW8SKSVr7aeMquEoRQGgsWsiRyEHF7IvajjEZ6h5h2Fu
         Kjkfmv01hlU7Fn3YkRZRO1eHRddU5Y4f3fEcVlIHnKIw378WnN+48gd/riKRoQ1+Vv
         lEKvLSGXxxBabiQOO8xpX7LY03jzw7rZFe7VKSYu4sg6ojepfl8UOdVPkgStbFdUlf
         Z1+z8aQiCUDDDN9m9Z8WEYpPrkQixAwBC8uUTjS9nF0LMtvrDxnYP5QmEBT4q3+ayy
         E7iljS8VPfK+A==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Morimoto-san,

>>> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
>>>
>>> This patch switches from .txt base to .yaml base Document.
>>>
>>> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
>>> ---
>>>    .../bindings/sound/audio-graph-card.txt       | 337 ------------------
>>>    .../bindings/sound/audio-graph-card.yaml      | 165 +++++++++
>>>    .../devicetree/bindings/vendor-prefixes.yaml  |   2 +-
>>>    3 files changed, 166 insertions(+), 338 deletions(-)
>>>    delete mode 100644 Documentation/devicetree/bindings/sound/audio-graph-card.txt
>>>    create mode 100644 Documentation/devicetree/bindings/sound/audio-graph-card.yaml
>> ...
>>
>>> +
>>> +  port:
>>> +    description: single OF-Graph subnode
>>> +    type: object
>>> +    properties:
>>> +      reg:
>>> +        maxItems: 1
>>> +      prefix:
>>> +        description: "device name prefix"
>>> +        $ref: /schemas/types.yaml#/definitions/string
>>> +      convert-rate:
>>> +        description: CPU to Codec rate convert.
>>> +        $ref: /schemas/types.yaml#/definitions/uint32
>>> +      convert-channels:
>>> +        description: CPU to Codec rate channels.
>>> +        $ref: /schemas/types.yaml#/definitions/uint32
>>> +    patternProperties:
>>> +      "^endpoint(@[0-9a-f]+)?":
>>> +        $ref: "#/properties/endpoint"
>>> +
>>> +  ports:
>>> +    description: multi OF-Graph subnode
>>> +    type: object
>>> +    patternProperties:
>>> +      "^port(@[0-9a-f]+)?":
>>> +        $ref: "#/properties/port"
>>> +
>> Can these be referenced from graph.yaml (port and ports properties)
>> and only additonal properties (specific to audio-graph) could be
>> populated here?
> Yes of course.
> In such case, I need to wait graph.yaml first I think.

Yes we first need to add graph.yaml, which I started to add in series 
https://lkml.org/lkml/2020/10/16/645
Since there is cyclic dependency between your patch and my series, I 
could probably pull out graph.yaml out of my series and independently 
submit that first.
