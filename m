Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8CFCE786C5E
	for <lists+devicetree@lfdr.de>; Thu, 24 Aug 2023 11:57:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233384AbjHXJ4a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Aug 2023 05:56:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240361AbjHXJ4Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Aug 2023 05:56:16 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9351198E
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 02:56:13 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-5007c8308c3so7040725e87.0
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 02:56:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692870972; x=1693475772;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/TAc5IOYScdftn/7ihH9yrOC71c7ZHl9nQtNZ57aAzw=;
        b=Rxnh0KQvPGqDSbcYmpIDGGQpyEbfhbZ9eQVaUY8EllL119uZB3mq0DHxuvc6rsguaJ
         f/D4fxx96ME4guCXPyVte4qKiCt+dXsDK3SRZu7KjBumziH8GxoQUL89gao7NdWYluSB
         5GYrnvTwqAs4poUR7FNs7OKbkLG8e10lDm3Ha4ITFa5jzSrXxJI7ibQSPKRUEPwhaccr
         GI1spCem957JhJDxBkMUaHjDm+7nAK92rHDoq/YOrD2PwTfoR/+i75DIAptXpAsVH5KD
         +Sv8gpj1uDQmVrYZSmCEN6GZvYtpEU4cB2yOHDe5VC6SOG579evEI3X7eH00nhj4p2hP
         lRtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692870972; x=1693475772;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/TAc5IOYScdftn/7ihH9yrOC71c7ZHl9nQtNZ57aAzw=;
        b=EADoFWQTrT13w2C6G/xZNiyKPIbzBtq4d4zmb0S6oH5idXgDO1IpBYtRrvDOas86ys
         cf0Fdu4Wvw/JQiTybCRR6vFQv7TnAjbZxVCbQBQly3m5ARU7EF8aP6NQQFvsPKHykiVd
         Z2OAeQFK3OaIAxBzFBEed2//ySr27TtsWe8dj5lYpKgtjvAPpdhibyAmPRkca55mE13i
         yFuy/gvwJu9TzINRTJpGrvZKSW+yUtBnm1/HSLWGlqiV8MDQSQtNrmGFGvIaMjDAMfGn
         8Ab8m8aDWtCu9HnJ5vq91xtONW9AmyDVEXsFCwWTCioUB/WglANN6AeNXExTLJ24dU0y
         sjVw==
X-Gm-Message-State: AOJu0YwBMiwYKEVb/rX0Kj3//DC2M3Bbw4Pm6h/ovRb34y3Gr6odmPDS
        YntkSRNrMWtd0ti23ZhXpLG41Q==
X-Google-Smtp-Source: AGHT+IGi3/dzSL7cCm6mnmwvL81iYEMCtKE7TUsu3q5OW3kP/ALD7U9TDPFLcujSzdly1/Ey8S1ACQ==
X-Received: by 2002:a05:6512:68d:b0:4f7:6017:8fb with SMTP id t13-20020a056512068d00b004f7601708fbmr13669092lfe.26.1692870971988;
        Thu, 24 Aug 2023 02:56:11 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id k19-20020aa7d8d3000000b005257f90c976sm10216356eds.3.2023.08.24.02.56.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Aug 2023 02:56:11 -0700 (PDT)
Message-ID: <b06c6161-0143-f1fe-2ea8-4c54ed824595@linaro.org>
Date:   Thu, 24 Aug 2023 11:56:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v1 2/2] dt-bindings: extcon: Add Realtek DHC RTD SoC
 Type-C
Content-Language: en-US
To:     =?UTF-8?B?U3RhbmxleSBDaGFuZ1vmmIzogrLlvrdd?= 
        <stanley_chang@realtek.com>,
        MyungJoo Ham <myungjoo.ham@samsung.com>
Cc:     Chanwoo Choi <cw00.choi@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20230822102846.4683-1-stanley_chang@realtek.com>
 <20230822102846.4683-2-stanley_chang@realtek.com>
 <1e0632d6-73e9-4633-a709-bf9140f2fd32@linaro.org>
 <ca406c19e59145fd9e7e035ea5ad3eeb@realtek.com>
 <50ce8e71-613e-1ef5-0c23-67a2f6f78949@linaro.org>
 <1390ad28e50f493fa72209fe29b7f3f4@realtek.com>
 <5894c8db-4b85-e7dd-e894-33aa8a448153@linaro.org>
 <7e34f4bfd15244ac95e68ee2372ac0de@realtek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <7e34f4bfd15244ac95e68ee2372ac0de@realtek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/08/2023 11:23, Stanley Chang[昌育德] wrote:
>>>
>>>>>
>>>>> And I will add “connector” to the title.
>>>>> title: Realtek DHC RTD SoCs USB Type-C Connector detection
>>>>
>>>> So usb...
>>>
>>> I refer to this binding, and it is in folder bindings/extcon.
>>> docs/devicetree/bindings/extcon/extcon-usbc-cros-ec.yaml
>>> Title: ChromeOS EC USB Type-C Cable and Accessory Detection
>>
>> So maybe it should be moved as well?
>>
>> extcon is a Linux framework. If you think extcon is a type of hardware, then
>> please tell me what it is exactly. Please define it. And then I wonder why the
>> name "extcon" is anyhow connected to Type-C USB.
>>
> 
> Well, from my point of view. extcon stands for External Connector.

For connectors we have separate directory - connector. So no, it is not
an external connector.

Anyway type "external connector" to Wikipedia or some hardware
manufacturer website and find me examples of such hardware. It does not
exist.

> HDMI connector, micro USB connector, type-c connector are all a kind of hardware, they are external connectors.

You did not write here bindings for connector...

> I think the Type-C connector is a kind of extcon.

There is no such thing as extcon. Otherwise please show me datasheets
using this name. Show me Wikipedia article.

> Of course, I agree that Type-C is part of USB.
> 
> So this binding can be usb or extcon, I don't think it is strictly restricted.



Best regards,
Krzysztof

