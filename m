Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE12A2A0771
	for <lists+devicetree@lfdr.de>; Fri, 30 Oct 2020 15:08:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726573AbgJ3OIf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Oct 2020 10:08:35 -0400
Received: from hqnvemgate24.nvidia.com ([216.228.121.143]:19595 "EHLO
        hqnvemgate24.nvidia.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726178AbgJ3OIe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Oct 2020 10:08:34 -0400
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate24.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
        id <B5f9c1e670002>; Fri, 30 Oct 2020 07:08:39 -0700
Received: from [10.25.99.37] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 30 Oct
 2020 14:08:32 +0000
Subject: Re: [PATCH 2/2] dt-bindings: Use graph.yaml reference in docs
To:     Rob Herring <robh@kernel.org>
CC:     <devicetree@vger.kernel.org>, <p.zabel@pengutronix.de>,
        <kuninori.morimoto.gx@renesas.com>
References: <1603691266-32643-1-git-send-email-spujar@nvidia.com>
 <1603691266-32643-3-git-send-email-spujar@nvidia.com>
 <20201030135007.GA3734985@bogus>
From:   Sameer Pujar <spujar@nvidia.com>
Message-ID: <a26fbeb1-e18d-ff88-5b3e-41b5d51debe2@nvidia.com>
Date:   Fri, 30 Oct 2020 19:38:29 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201030135007.GA3734985@bogus>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
        t=1604066919; bh=NCKYI0v6W1sV1ztHSOoFaYPd6SK3gJvU0O0ZqqwXkXg=;
        h=Subject:To:CC:References:From:Message-ID:Date:User-Agent:
         MIME-Version:In-Reply-To:Content-Type:Content-Transfer-Encoding:
         Content-Language:X-Originating-IP:X-ClientProxiedBy;
        b=rrvSqZPYaVrMycbTGNZl1UY8Ss+q4kMLgIOXLQbY8sa6+pxMITzqUmXwboF6x+okT
         97PwVduFgB4CDf6raPCoTVXvKCi1CgdimwQlKeb4+5zdswninWxZFpo1PCXin5LuZQ
         TKDLX48xbJwVUIIy1KdFTtPQdCzEolbbrsD2EpzxzF0vxJLJKvlx4w04XyEiBiH4Y2
         yN5v0tO0wTZ0zDDV3iKKINnNy83/7TlSiTy1Gdq/uxIRiPzG8jsw3llRKmUmrYcpli
         KsUUBczPk9h0X0nFbPmWM1gWX7sTjMnrG5wr1R07dMFu225dKqMh7gLDsclS95ktna
         qm0L0s370NE1Q==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


>> Since graph bindings are now converted to json-schema the references of
>> graph.txt are replaced with graph.yaml in various docs.
> This will conflict unless you split by subsystem (still conflicts, but
> it's not Linus dealing with them) and new ones will creep in during the
> cycle. It's easier to just make graph.txt say, 'This file has moved to...'.

OK, I will retain the graph.txt and re-direct the reference to graph.yaml

>> Signed-off-by: Sameer Pujar <spujar@nvidia.com>
>> ---
>>   Documentation/devicetree/bindings/arm/coresight.txt                   | 2 +-
>>   Documentation/devicetree/bindings/connector/usb-connector.yaml        | 2 +-
>>   Documentation/devicetree/bindings/display/arm,hdlcd.txt               | 2 +-
>>   Documentation/devicetree/bindings/display/arm,komeda.txt              | 2 +-
>>   Documentation/devicetree/bindings/display/arm,malidp.txt              | 2 +-
>>   Documentation/devicetree/bindings/display/armada/marvell,dove-lcd.txt | 2 +-
>>   Documentation/devicetree/bindings/display/atmel/hlcdc-dc.txt          | 2 +-
>>   Documentation/devicetree/bindings/display/bridge/adi,adv7511.txt      | 2 +-
>>   .../devicetree/bindings/display/bridge/analogix,anx7814.yaml          | 2 +-
>>   Documentation/devicetree/bindings/display/bridge/cdns,dsi.txt         | 2 +-
>>   Documentation/devicetree/bindings/display/bridge/cdns,mhdp8546.yaml   | 2 +-
>>   Documentation/devicetree/bindings/display/bridge/dw_hdmi.txt          | 2 +-
>>   Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml      | 2 +-
>>   Documentation/devicetree/bindings/display/bridge/nwl-dsi.yaml         | 2 +-
>>   Documentation/devicetree/bindings/display/bridge/ps8640.yaml          | 2 +-
>>   Documentation/devicetree/bindings/display/bridge/renesas,lvds.yaml    | 2 +-
>>   Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml   | 2 +-
>>   Documentation/devicetree/bindings/display/bridge/tda998x.txt          | 2 +-
>>   .../devicetree/bindings/display/bridge/thine,thc63lvd1024.yaml        | 2 +-
>>   Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.txt | 2 +-
>>   Documentation/devicetree/bindings/display/hisilicon/dw-dsi.txt        | 2 +-
>>   Documentation/devicetree/bindings/display/hisilicon/hisi-ade.txt      | 2 +-
>>   Documentation/devicetree/bindings/display/imx/ldb.txt                 | 2 +-
>>   Documentation/devicetree/bindings/display/ingenic,ipu.yaml            | 2 +-
>>   Documentation/devicetree/bindings/display/ingenic,lcd.yaml            | 4 ++--
>>   Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt   | 2 +-
>>   Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt   | 2 +-
>>   Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.txt  | 2 +-
>>   Documentation/devicetree/bindings/display/mipi-dsi-bus.txt            | 2 +-
>>   Documentation/devicetree/bindings/display/msm/dpu.txt                 | 2 +-
>>   Documentation/devicetree/bindings/display/msm/dsi.txt                 | 2 +-
>>   Documentation/devicetree/bindings/display/msm/mdp4.txt                | 2 +-
>>   Documentation/devicetree/bindings/display/msm/mdp5.txt                | 2 +-
>>   Documentation/devicetree/bindings/display/panel/panel-common.yaml     | 2 +-
>>   Documentation/devicetree/bindings/display/renesas,du.txt              | 2 +-
>>   .../devicetree/bindings/display/rockchip/inno_hdmi-rockchip.txt       | 2 +-
>>   Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt  | 2 +-
>>   Documentation/devicetree/bindings/display/st,stm32-dsi.yaml           | 2 +-
>>   Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml        | 2 +-
>>   Documentation/devicetree/bindings/display/ti/ti,j721e-dss.yaml        | 2 +-
>>   Documentation/devicetree/bindings/display/ti/ti,k2g-dss.yaml          | 2 +-
>>   Documentation/devicetree/bindings/display/ti/ti,omap-dss.txt          | 2 +-
>>   Documentation/devicetree/bindings/display/tilcdc/tilcdc.txt           | 2 +-
>>   Documentation/devicetree/bindings/display/truly,nt35597.txt           | 2 +-
>>   Documentation/devicetree/bindings/media/video-interfaces.txt          | 2 +-
>>   Documentation/devicetree/bindings/media/video-mux.txt                 | 2 +-
>>   Documentation/devicetree/bindings/sound/st,stm32-sai.txt              | 2 +-
>>   Documentation/devicetree/bindings/usb/mediatek,mtu3.txt               | 2 +-
>>   Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml               | 2 +-
>>   49 files changed, 50 insertions(+), 50 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
>> index d711676..97a6c1c 100644
>> --- a/Documentation/devicetree/bindings/arm/coresight.txt
>> +++ b/Documentation/devicetree/bindings/arm/coresight.txt
>> @@ -141,7 +141,7 @@ Coresight components are interconnected to create a data path for the flow of
>>   trace data generated from the "sources" to their collection points "sink".
>>   Each coresight component must describe the "input" and "output" connections.
>>   The connections must be described via generic DT graph bindings as described
>> -by the "bindings/graph.txt", where each "port" along with an "endpoint"
>> +by the "bindings/graph.yaml", where each "port" along with an "endpoint"
>>   component represents a hardware port and the connection.
>>
>>    * All output ports must be listed inside a child node named "out-ports"
>> diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
>> index 728f82d..f3e6df0 100644
>> --- a/Documentation/devicetree/bindings/connector/usb-connector.yaml
>> +++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
>> @@ -125,7 +125,7 @@ properties:
>>         power dual role.
>>
>>     ports:
>> -    description: OF graph bindings (specified in bindings/graph.txt) that model
>> +    description: OF graph bindings (specified in bindings/graph.yaml) that model
> The real fix for the schemas is removing the free form reference and
> making a schema reference.

Yes true, I will drop this patch for now.
