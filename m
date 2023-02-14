Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CFADA695F7B
	for <lists+devicetree@lfdr.de>; Tue, 14 Feb 2023 10:42:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231913AbjBNJmO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Feb 2023 04:42:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231806AbjBNJmO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Feb 2023 04:42:14 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF3823C27
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 01:42:12 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id r18so10525801wmq.5
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 01:42:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VU6LO+0m6Sq/cxRxnyqDta4QDFbKF1ERrN47QYF8Czk=;
        b=koBIcODlJXdgon6LrxVlBGARsGHRjtBSRVwazVYTYq6QjQL22XFft4m2dA7T295uWr
         P5L3TkHWsWlvajPy22Bj+quLaGxDC807d2BFOIicmur1wgQywLiSRdaQbRDaE3SfmKm8
         oVNLxiDCA8BPXMtQSZUjolGRHGtESmR4yAIfxMd2McYwCyimci2stte7a48NKqNFl6Hd
         Xe/v9o6NQvR8Mo5NTeXshhVVBrHHqJ6WJmihzVWbY3K6RXbOVHxWLg6eTtHxQZ+HXPtw
         IMTlZAXPq3VCul8dwXKlF7jVh1rpB5Vujz3Wfi5aROO9gVKTCax7fMD8rnhhasSss805
         p5Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VU6LO+0m6Sq/cxRxnyqDta4QDFbKF1ERrN47QYF8Czk=;
        b=3gDkJzk3b2Wri5OFisrBWZaC57V1BoeBPWVS0nVPjFwpW89xG/llTVmCg9UEh1kKiE
         4HZE4M6FJ4HxoH3Ig9NktTe7d516V8MPCbyemw2o/LGaopZjJY3brCxjFX7dbeFCcx2X
         vRpyArQithjC8boHEKlRMbCWqb6eT8qF+C6ya6RXhBdzPoWWUylUiQDZ7Vsc7upXIIwJ
         pq4lYba48rWGObVObZXWHPGK3TzuhyziA208rHa8bIi2Fx62KdNzOkK2Nr0d2IuPuFbH
         f7CzVDHyM2bN+XT2+d6gncc6j+uf+1cEdggiI2fUc768muIhxKph2Gt+LWu1feYDH7j/
         Q1Wg==
X-Gm-Message-State: AO0yUKWriZh9oTrd0/Z+l8nGAgCm+0p/HlLXobRHft3IgazzkAICXyyD
        SeyZ0R8x91xoLCAUlKBTDyVh2Q==
X-Google-Smtp-Source: AK7set8IufNWT5xcp2rG6SyjIPJC0CuSYl2MR9XqtXFT9GD48F8sW4PuYPa2cw4QFd3AP3u8S11+Lw==
X-Received: by 2002:a05:600c:4b1f:b0:3d9:f836:3728 with SMTP id i31-20020a05600c4b1f00b003d9f8363728mr1441681wmp.11.1676367731559;
        Tue, 14 Feb 2023 01:42:11 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id k7-20020a05600c080700b003daf672a616sm15681706wmp.22.2023.02.14.01.42.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Feb 2023 01:42:11 -0800 (PST)
Message-ID: <0c6dc673-7e11-eec5-ec2d-e00fb2060bf3@linaro.org>
Date:   Tue, 14 Feb 2023 10:42:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2] dt-bindings: ata: Add UniPhier controller binding
Content-Language: en-US
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Damien Le Moal <damien.lemoal@opensource.wdc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Hans de Goede <hdegoede@redhat.com>,
        Jens Axboe <axboe@kernel.dk>
Cc:     linux-ide@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230213045432.32614-1-hayashi.kunihiko@socionext.com>
 <2d76ec86-6580-28b0-0f80-a5c497f8cef7@linaro.org>
 <ed864d57-0de3-a169-ebde-628eb84b8a21@socionext.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ed864d57-0de3-a169-ebde-628eb84b8a21@socionext.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/02/2023 10:33, Kunihiko Hayashi wrote:
> Hi Krzysztof,
> 
> On 2023/02/13 18:10, Krzysztof Kozlowski wrote:
>> On 13/02/2023 05:54, Kunihiko Hayashi wrote:
>>> Add UniPhier SATA controller compatible string to the platform binding.
>>> This controller needs maximum three reset controls.
>>>
>>> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
>>> ---
>>>   .../devicetree/bindings/ata/ahci-platform.yaml  | 17 +++++++++++++++++
>>>   1 file changed, 17 insertions(+)
>>>
>>> Changes since v1:
>>> - Restrict resets property changes with compatible strings
>>> - Fix maxItems from two to three
>>>
>>> diff --git a/Documentation/devicetree/bindings/ata/ahci-platform.yaml
>>> b/Documentation/devicetree/bindings/ata/ahci-platform.yaml
>>> index 7dc2a2e8f598..25dd5ffaa517 100644
>>> --- a/Documentation/devicetree/bindings/ata/ahci-platform.yaml
>>> +++ b/Documentation/devicetree/bindings/ata/ahci-platform.yaml
>>> @@ -45,6 +45,9 @@ properties:
>>>                 - marvell,armada-8k-ahci
>>>                 - marvell,berlin2-ahci
>>>                 - marvell,berlin2q-ahci
>>> +              - socionext,uniphier-pro4-ahci
>>> +              - socionext,uniphier-pxs2-ahci
>>> +              - socionext,uniphier-pxs3-ahci
>>>             - const: generic-ahci
>>>         - enum:
>>
>> Top level is saying reset=1, so did you test your bindings?
> 
> Umm, I didn't see any errors on dt_binding_check, anyway I'll add
> initial minItems:1 and maxItems:3 on top level first.

You need to test also all DTS using these bindings. Yours and others.
If you tested the DTS (with proper binding, not one which is basically
noop):

uniphier-pro4-ace.dtb: sata@65600000: resets: [[27, 12], [27, 28], [37,
3]] is too long

BTW, the patch has other errors - just look at the beginning of the
file. I cannot see it here in the diff, but when you open the file you
should notice it.

Best regards,
Krzysztof

