Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C72E4525080
	for <lists+devicetree@lfdr.de>; Thu, 12 May 2022 16:45:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355537AbiELOp5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 10:45:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355526AbiELOpz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 10:45:55 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2BB060CF
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 07:45:53 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id ks9so10742918ejb.2
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 07:45:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=CPqBkEdrEbGQq9PO4VRntOhkH68ExfJapjQron6TzvU=;
        b=j9Lqup+w+JbCYAHNLXF8q4mSFWmRI+k5PWctRST04+m9LMs9F+mH9VEGtegtAAQ3Bf
         oKa8GmG6//cupcTQ0LQ/BYp4T/54il73+8mIUnW51hVmVmFDPmrLxlLsv6sXZ+1q8jdF
         KWuA0X6mjy7/tPUVFGIF1VuFHVldrVgyyM6ft7VgyhgKsV78WVbhY4QbU4cEfvbSNyiM
         MckTOra1RWF/9yLAz2tWenxh6N57eu0hOes7WZ2tpz5JTw9DYp3Pcb6MSX41wZsqiuFb
         YutuoBGrGIFqGeSU1+b6uzqZqG2absB3bSZjh2FA6DGNuTjUHnPln84UOcerN/iuZ8qt
         akVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=CPqBkEdrEbGQq9PO4VRntOhkH68ExfJapjQron6TzvU=;
        b=aKFjQ3fS0NPDsyo+NcSpKuvIGPFpWaK9AE849/FmdPQJdNMNFU4AaHnNKivVbbyXSA
         GYvJVHkIQEYRcg2WhxgRTGcLUVyyj50ZB8UxncElXKIpkS32VESjwghWkjJOIVYaKhaA
         lRxGyxT2L3hMwmfgk+ttgST50jJUytHKRb+xx5peaHZ9ZoLRkpJCcG24W4DwcSGOeptE
         eMx3n7ur5y1Gw1eYliFUfmSRg5xizEiERKFJ+tC5PIOzAFiXKmcLTrkXiXRGQeXE2t4Q
         gdZmjJwihBNQcwh51SJNeW8E+Ve/agfGfUbK/bh9KPT9liDSNN6rCzfdixh6/ImfyVDu
         6w/g==
X-Gm-Message-State: AOAM531XXXRtEcco441lu/llDQtyafxUjGAdGOo69+9NrGk+BsWDO9yy
        RV7JwK+eb+C5mQe7rx4wut3fR89yZ8PLDyyF
X-Google-Smtp-Source: ABdhPJzetfV6m52nnoRVHLg3huJiF84RvXYfQTJ9+DmeBr281DmFyJJ4Df01ISwFsMQsHLdsjyRwwg==
X-Received: by 2002:a17:907:9958:b0:6e7:f67a:a1e7 with SMTP id kl24-20020a170907995800b006e7f67aa1e7mr245908ejc.400.1652366752141;
        Thu, 12 May 2022 07:45:52 -0700 (PDT)
Received: from [192.168.0.161] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id tk18-20020a170907c29200b006f3ef214dc5sm2112471ejc.43.2022.05.12.07.45.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 May 2022 07:45:51 -0700 (PDT)
Message-ID: <ee0629ce-1d25-ebac-e235-7a26149c2f46@linaro.org>
Date:   Thu, 12 May 2022 16:45:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v6 1/3] dt-bindings: marvell: Document the AC5/AC5X
 compatibles
Content-Language: en-US
To:     Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
        "will@kernel.org" <will@kernel.org>,
        "andrew@lunn.ch" <andrew@lunn.ch>,
        "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
        "sebastian.hesselbarth@gmail.com" <sebastian.hesselbarth@gmail.com>,
        "kostap@marvell.com" <kostap@marvell.com>,
        "robert.marko@sartura.hr" <robert.marko@sartura.hr>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
References: <20220510231002.1160798-1-chris.packham@alliedtelesis.co.nz>
 <20220510231002.1160798-2-chris.packham@alliedtelesis.co.nz>
 <5c498985-64bb-b8ba-3e77-9cdb36dd1f16@linaro.org>
 <6d1e121f-847b-3fc5-c27d-6504f380e4ef@alliedtelesis.co.nz>
 <340b2ee9-54e5-5092-2a5e-6e7bc42fb611@alliedtelesis.co.nz>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <340b2ee9-54e5-5092-2a5e-6e7bc42fb611@alliedtelesis.co.nz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/05/2022 03:51, Chris Packham wrote:
>>
>> I know the ap807 has something to do with the vagaries of the cn9130 
>> SoC but isn't the "marvell,cn9130" still referring to the SoC. From 
>> what you've said shouldn't there be a "marvell,cn9130-crb" somewhere 
>> in the mix?
>>
>> Perhaps I've picked a bad example but the other dtbs I've poked at 
>> don't have any board binding.
>>
> The fsl,imx boards seem like a better example to follow 
> Documentation/devicetree/bindings/arm/fsl.yaml

Yes.


Best regards,
Krzysztof
