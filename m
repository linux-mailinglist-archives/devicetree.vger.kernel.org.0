Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E991E78A631
	for <lists+devicetree@lfdr.de>; Mon, 28 Aug 2023 09:01:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229533AbjH1HAk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Aug 2023 03:00:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229669AbjH1HA1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Aug 2023 03:00:27 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C164CE0
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 00:00:24 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-99c1f6f3884so348720566b.0
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 00:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693206023; x=1693810823;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pf0wRFcbL4aMUzhOgl330QqnoThqb8W2rL7xxb0kxd8=;
        b=EF17grfKST859AXxoziBXteUD2v3MLDQPINYg40woqOpSLYfMkAbGRrQzLiNPFgGpu
         2lokci78mVM0kZSrt2djoIriNhK2XBIdZeA7FufxwI5xPRmbcYLUSCmEya4J4lbBT7i3
         qUm9S/CYv4WO4ECCY7IFg0MNKmuBb1qNGJAJX862tb4RfijZu6gIcOdPOqkIvIGnLn/L
         aDw3rt7WndHZmtiMWCByjpA1T06PhHuYA3luSS6NZuNzJmfod0ZFf56/UoDmLu4gOWOx
         nNM/rHxKEd/CHqOg39V4cTDYTPjYPrCSFlNJcbsmSBIFkZkjtLF3+b3Sn4n9N6AHQ3A7
         Rd7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693206023; x=1693810823;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pf0wRFcbL4aMUzhOgl330QqnoThqb8W2rL7xxb0kxd8=;
        b=X6j/LkOykO6v8r5zvgsIyJ39Et5SFVp9mhx1anjby4cJPx3PrNUSf1L8amETF+//Bs
         QLieHy0mPbwwkPMN94MXujA1oDqUIxmkScbMGuBmUc2I18k3Zx5NUYNR32ey1fil3tc/
         ougTxeKrYe0aKrFZv4ckNUyN0PWx8AHZgpEUSfGnYZ8LMgBR6/u248vDD/gYTQWuWk0V
         I1mMo6UYD+yYkDemMjkDoAMHd1UvVBZrZibXbTmePNZLYJqO01A4EXv/25ZMli8I7qgJ
         oVI4lcaYDekCFaVflyBXNoZl4rJ/aSFmb+27ZFsEvBLhUZCLgHjLKsAWP34t4X87m2+f
         kbZw==
X-Gm-Message-State: AOJu0YxAQB4IRVhlSI6B8T4zY/c7ES1ksHOTx2261IDexeSGRHyP15Hg
        5LM07QhPQhU6Da7Z2XByMIVdkw==
X-Google-Smtp-Source: AGHT+IHJIJHbmAUXWTWOFrG36GyISApUvcmXozjbLuJzr5rzOPmIqVa1Z+iqbTN0a+JO/lztEB3ulQ==
X-Received: by 2002:a17:906:32c2:b0:9a1:c495:66bb with SMTP id k2-20020a17090632c200b009a1c49566bbmr11676537ejk.60.1693206023201;
        Mon, 28 Aug 2023 00:00:23 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.225])
        by smtp.gmail.com with ESMTPSA id lx16-20020a170906af1000b0098de7d28c34sm4302280ejb.193.2023.08.28.00.00.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Aug 2023 00:00:22 -0700 (PDT)
Message-ID: <7859abb1-ae99-d33f-a8fc-c76304057df9@linaro.org>
Date:   Mon, 28 Aug 2023 09:00:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm7225-fp4: Revert "arm64: dts:
 qcom: sm7225-fairphone-fp4: Add AW8695 haptics"
Content-Language: en-US
To:     Luca Weiss <luca.weiss@fairphone.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230827122842.63741-1-krzysztof.kozlowski@linaro.org>
 <20230827122842.63741-3-krzysztof.kozlowski@linaro.org>
 <CV3ZCVK29BLY.D7Y8AEEOYLO3@otso>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CV3ZCVK29BLY.D7Y8AEEOYLO3@otso>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/08/2023 08:56, Luca Weiss wrote:
> Hi Krzysztof,
> 
> On Sun Aug 27, 2023 at 2:28 PM CEST, Krzysztof Kozlowski wrote:
>> This reverts commit 413821b7777d062b57f8dc66ab088ed390cbc3ec because it
>> was never reviewed, was buggy (report from kernel test robot:
>> https://lore.kernel.org/all/202204090333.QZXMI2tu-lkp@intel.com/) and
> 
> (I wouldn't say this part is accurate, the robot just didn't use a tree
> with the i2c10 node already present, it was sent in an earlier patch
> IIRC, but whatever)
> 
>> used undocumented, broken bindings.  Half of the properties in this
>> device are questioned, thus adding DTS node causes only errors and does
>> not make the device usable without the bindings and driver part:
>>
>>   sm7225-fairphone-fp4.dtb: haptics@5a: failed to match any schema with compatible: ['awinic,aw8695']
>>   sm7225-fairphone-fp4.dtb: haptics@5a: awinic,tset: b'\x12' is not of type 'object', 'array', 'boolean', 'null'
>>   sm7225-fairphone-fp4.dtb: haptics@5a: awinic,r-spare: b'h' is not of type 'object', 'array', 'boolean', 'null'
>>
>> Since bindings were abandoned (4 months since review), revert the commit
>> to avoid false sense of supporting something which is not supported.
> 
> I've been avoiding touching this topic again since I'm really not sure
> how to resolve.

Happens, but the DTS should not have been applied in such case.

> 
> There's a bunch of magic registers being written to in the downstream
> driver, I don't have any documentation for that so I'm not exactly sure
> what I can do to make nice bindings with proper properties.
> 
> Would you recommend just hardcoding some of these properties in the
> driver, assuming they're constant for every AW8695, even though the
> downstream driver has these properties in devicetree? Because of that I
> assumed these properties could differ per implementation / usage of the
> AW8695 in different devices.

Yes, keep them in the driver.

Best regards,
Krzysztof

