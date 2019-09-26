Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 989A0BED8B
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2019 10:38:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725909AbfIZIi5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Sep 2019 04:38:57 -0400
Received: from mail-lf1-f67.google.com ([209.85.167.67]:45258 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726177AbfIZIi5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Sep 2019 04:38:57 -0400
Received: by mail-lf1-f67.google.com with SMTP id r134so1031632lff.12
        for <devicetree@vger.kernel.org>; Thu, 26 Sep 2019 01:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=SEFhit7dhXFXcp+RX20+3lijpNbYCsflJVaBHjh/Zv8=;
        b=MfIPsjJdVGDQcshkysQVQnT4b8y9aMpZYJxJXr+yqmwcTbPUAHhkAkCaEsjV/9YUhO
         uvbzPb6sIvOqc57FULCJbAd8YfNXqGH7aaqRLwZfEEUQHZI+g76j62b5GbCGL1dfeMmC
         ni2Myr14RlBgeuAImWSIk5Wm+uLyuBt05VfTTueIWlNS5O5BtLlH6gE9IX/GZW9TYWhw
         vJDpCKrtKsN679do41UpaCFMNfbKeQmJ0MlsoRjiHaAemCuhbgI0H8TCICOsDYyKbBmi
         AWCiFpO8Zr7CxSe/ofbFz1RaTz0IPfkGBW3bZ7fE2MYiVgnEN4JdWq9UXx9j28eOUGRC
         fPgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=SEFhit7dhXFXcp+RX20+3lijpNbYCsflJVaBHjh/Zv8=;
        b=HcsPJ+8xOUGSqflj/n/4eVh9Zh/8JIjn891AtlNh+OLX4TeKxi761PhK54iYVV0DiP
         8z8pppmZ2oVYBhD99YPt62MBF9I+IsKMQWHFRHgudwkSLrRG66FA/JEeJITfcprihQH5
         ITaua3s/JKaSvfcjRT4nycsP7kccJWz9zHFXCx46f41qY3v1/QmKKct8kRmabMDIHn2Y
         zsNBWxJl9jwdIrHH365UILlAjaohvaaVTFBMB90mpzWIVBlU7wyR29G8ubWGiwj4ighb
         KVpX4T37lqbUvJrb1ReJDqKOp3ugMS40riKXwZbjhUKcsNDxeaV2y6/QzSmRIOaPYl/F
         xJsA==
X-Gm-Message-State: APjAAAVB450JBdpVmZaxz+wD6yBwX4MtEczjVtOLEPRzqsFUl3sd+aqI
        qbWYvyFf9mtIn2Xnw/zpJk65/A==
X-Google-Smtp-Source: APXvYqyRVFsLmRsa0IvJ941gImT6zbazD22knxje26QDLHQ8CedS4SDhN4CQa1FxsGzvnFgWlcy5Gw==
X-Received: by 2002:ac2:4552:: with SMTP id j18mr1477008lfm.120.1569487135168;
        Thu, 26 Sep 2019 01:38:55 -0700 (PDT)
Received: from ?IPv6:2a00:1fa0:42c:6c1f:91b2:ffd:9670:84fc? ([2a00:1fa0:42c:6c1f:91b2:ffd:9670:84fc])
        by smtp.gmail.com with ESMTPSA id b7sm379262lfp.23.2019.09.26.01.38.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Sep 2019 01:38:54 -0700 (PDT)
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: msm8996: Update simple-pm-bus
 node name to 'bus'
To:     Simon Horman <horms@verge.net.au>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Andy Gross <agross@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Yoshihiro Kaneko <ykaneko0929@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org
References: <20190924093609.22895-1-horms+renesas@verge.net.au>
 <20190924093609.22895-4-horms+renesas@verge.net.au>
 <3d9dcd04-b34d-957e-6269-cf39a15b4b27@cogentembedded.com>
 <dbfc721b-ca66-edb4-aa87-13e15a9a68f8@cogentembedded.com>
 <20190926083226.tb5tgo74xg2n3udp@verge.net.au>
From:   Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <c1cdc5d9-5eee-c456-a392-c4811c5d2126@cogentembedded.com>
Date:   Thu, 26 Sep 2019 11:38:45 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190926083226.tb5tgo74xg2n3udp@verge.net.au>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello!

On 26.09.2019 11:32, Simon Horman wrote:

>>>> Update simple-pm-bus node name from 'agnoc' to 'bus' reflecting the
>>>> proposed binding description in json-schema which in turn reflects the ePAR
>>>
>>>     It's ePAPR. BTW, you can now refer to DT spec itself instead -- it was based
>>> on ePAPR...
>>
>> https://www.devicetree.org/specifications/
> 
> Thanks Sergei,
> 
> how about this?
> 
>    arm64: dts: qcom: msm8996: Update simple-pm-bus node name to 'bus'
> 
>    Update simple-pm-bus node name from 'agnoc' to 'bus' reflecting the
>    proposed binding description in json-schema which in turn reflects the
>    Devicetree specification [1] v0.3-rc2.
> 
>      "The name of a node should be somewhat generic, reflecting the function
>       of the device and not its precise programming model. If appropriate,
>       the name should be one of the following choices:
>         ...
>         * bus
>         ..."
> 
>    Also drop the unit address as there is neither a reg property nor
>    non-empty ranges.
> 
>    [1] https://www.devicetree.org/specifications/
> 
> Signed-off-by: Simon Horman <horms+renesas@verge.net.au>

    Fine with me.

MBR, Sergei
