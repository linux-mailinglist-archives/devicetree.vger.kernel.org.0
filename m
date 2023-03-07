Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34C946ADC25
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 11:43:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229750AbjCGKnA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 05:43:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229787AbjCGKm7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 05:42:59 -0500
Received: from esa6.hgst.iphmx.com (esa6.hgst.iphmx.com [216.71.154.45])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81C39558B
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 02:42:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1678185777; x=1709721777;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=+LVO3F5En6AqL41D+hH/tg3GKjgWE12xa9SmTfU53w4=;
  b=eFLn6ZgGQxfPQmrjEmi1PE7r93t5lWuwB9HSCBcK8pw3+/Wl3GNR0Zu/
   QvdrAYfxb85nky2VZ8JnuG/JBHKk8FANTuoPvy3SniGgiUFbdBWNXzijP
   hBOENxZ5gPSuhTe9tudKJsSK8KR0fiTK8/M/I2HyuaJRR/kcAWx//XbXy
   HhD7GkBttALlUq6PY+ATWdZw2r0zuGwTLOkFnCPX3/HQgJHukVoeJ9wm1
   66AIdy4toTiW0TQx329xe+vLr/giOvxn+1xCOoQJSfmq775UCXzUAlE4x
   yInrNBJxGOMZfqO6ZTmQpS7Ogg3ytBrXn31lKGsn/sbloa+Fw9LhWISTs
   Q==;
X-IronPort-AV: E=Sophos;i="5.98,240,1673884800"; 
   d="scan'208";a="224997657"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 07 Mar 2023 18:42:56 +0800
IronPort-SDR: b/8DiMcDJyMNzb0tPWwoOghTf+muFTWtAmUdKulc3wr+qM7sNnRHCP48k3kH0q03QVcleJWpL8
 rRWcRBPo+kWWLDLkc4ckwnI3KZAZh7sTbTa2E/fF0B3HNa8GKOsSX2nIvpCSEwJnO8Dai5GeGB
 u3EoHv2ZD4b+YdP5wqAGNjZVNb4uljv4DxqoffZ0/uUYoeYPAFETxnNnUxSJGRa04oKc/ejSC+
 WuSKWBgerxLmudNXZaWh25+BDPFSwKdXNb69ZGaAaTKE6db7awJmieekeRDi7ANl3FbrqQ7uR0
 je0=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 07 Mar 2023 01:53:54 -0800
IronPort-SDR: YHFcxJefRi9aKtw1UqvAft+lBzxUMVBI+/HGfpvFXABd+eju8UGAcxjGpMrJIhs4SWgLbgD0Yl
 pa84tv4y/1CI4GyyFdvuebQwcWvvnXr82cEhadRUECGWk61YKAGBYCvv6SDgSpuWrzyOAPs90K
 Wb0FtZdI3nSi/okdymAIgbtRDAnaJJ7Q8L7A5qPYKmAXZrKdkalu4hy9Fo93WbH+2xU3a5h9ts
 OIYJUUao9O/8w6ZXu6ULXA4Yyora4OrbMDTl0jBdFQipR/ABwM1u2T5UKA43896RKVAmxv5F13
 JyU=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 07 Mar 2023 02:42:56 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PWBqM5H1lz1Rwt8
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 02:42:55 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1678185774; x=1680777775; bh=+LVO3F5En6AqL41D+hH/tg3GKjgWE12xa9S
        mTfU53w4=; b=iHuNRbLdEaWckV6KFojXQfovcBZDwpdG2rnG01xu7WjlcVOeBUp
        Y08SZAw9lTTiN/upNS7qJ7ewy+pheoAxIwuvlyTB3vg1oylHzFatPTkJVwyQDJ+i
        Nt8NmIsLE7CpGtTCbxHB2GwxlIXwOtPeI9fjxdC6iFIrhJu3Rd8sgPRJmSbi+ni9
        r9apG5I5Y9rFuy6T0gW+Q4cyGuoPgUp8AQMu1IFFh4Qz5KOt0pbiWQn6iN4+2q8z
        mSSEjHAHJW0/mq6o+pQSyls3RSilNsC0Enu3Q31mMZ92hfOZ43s415w2VunuX8hX
        1BEkceyCJnoWHSfnXrMVYTv2k7/kLz99XoA==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id s_7-G4T0Xbwm for <devicetree@vger.kernel.org>;
        Tue,  7 Mar 2023 02:42:54 -0800 (PST)
Received: from [10.225.163.63] (unknown [10.225.163.63])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PWBqK3WwWz1RvLy;
        Tue,  7 Mar 2023 02:42:53 -0800 (PST)
Message-ID: <e5ed284a-77ac-df6d-1473-e4d96955f65b@opensource.wdc.com>
Date:   Tue, 7 Mar 2023 19:42:51 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v4] dt-bindings: ata: Add UniPhier controller binding
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Hans de Goede <hdegoede@redhat.com>,
        Jens Axboe <axboe@kernel.dk>
Cc:     linux-ide@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230222155906.19403-1-hayashi.kunihiko@socionext.com>
 <9d36818f-3ce3-0fb6-1a3e-85e3879af08c@opensource.wdc.com>
 <a6425bde-5b6d-2fb2-2396-a35677b19e8f@linaro.org>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <a6425bde-5b6d-2fb2-2396-a35677b19e8f@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 3/7/23 17:13, Krzysztof Kozlowski wrote:
> On 06/03/2023 02:22, Damien Le Moal wrote:
>> On 2/23/23 00:59, Kunihiko Hayashi wrote:
>>> Add UniPhier SATA controller compatible string to the platform binding.
>>> This controller needs three reset controls for Pro4 SoC, or two reset
>>> controls for PXs2 and PXs3 SoCs.
>>>
>>> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
>>
>> Rob,
>>
>> Are you OK with this patch ? I can take it for 6.4.
>>
> 
> You got Review (which includes also "Ack"), what are you missing here?

By the way, I am not seeing/have not received any Ack. Hence why I checked with Rob.

> 
> Best regards,
> Krzysztof
> 

-- 
Damien Le Moal
Western Digital Research

