Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 824F755E369
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:37:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232823AbiF0JfT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 05:35:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232562AbiF0JfS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 05:35:18 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 131B663DB
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 02:35:18 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id cw10so17903083ejb.3
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 02:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=TeN/iwsTV4FhP/OywXKY/fx1M3aFIWw7RCkbflk2R9o=;
        b=WdWufUduLcKXBmqthhLKerQLhk1pUFi7XWTD9qKZ3PlDx5Y7FjMPp8ypB8pn82kYKi
         BWSaxzMgNqx9STnQ46/HTMxh014kcmYRTqsqAQ08HNwys5PInRLlaxCG7RqB2iU3/pQK
         Y3UHsv5GwvBYbZdrNKivf/IuS2O6MgYLqD08RMXgfElnyrjg+waj73Eseg3z+rGjdnkM
         A5Ec6P/315Yqt3hvigPyvgpTsZtqSSM+S7JoXw2IUzApO34x6jRHqwaTk4bk7podakac
         ESSpBJdo7E1FoMYDyDkzql1ExNYhOqa4sVgaUB31NUnwCifu/DcaIfCxeWsEPjwBizit
         QkOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=TeN/iwsTV4FhP/OywXKY/fx1M3aFIWw7RCkbflk2R9o=;
        b=S5JDi8Gn+KYNIzkVFB+sGayhg4hdUKRfZ7hfuFgzbrgrz5x5gE7RbIz7wXGvqNCb1M
         N6Vq+qkwExdkcavA9aMOVPnq62/ORI4VXIJZ+cUsjGs1Hsz29SCeHetV+mILA8FiFFtQ
         3BXtoaKN3YKBd7c6q+n9F21rgumStY1XTN0XeouzpLWSm/NtjjMNtCpqwet2uqx1/K5E
         OiHpFG10OLCT+RW/vE9qXASuc9pf4OBCrpLM7YEle6aihcmnlwvTee80fUwDxoxsagfy
         hGYsCr9mRC7iksxQZJLRigZIAy6t4Cjy0C1RkVOpNDELd6s4YYQd/+lDawZDbHvXZ6FE
         uXOw==
X-Gm-Message-State: AJIora8mfmrKgxQRQhOGZ9f4NtK8qy1H65EjpdumWPf8h0e8OMlysjiJ
        I7Dr6Vry/BLjqe4uVXMsInAECQ==
X-Google-Smtp-Source: AGRyM1uTdIi0aYEYixohA+nAVSHM9M59wtJB/1A4P8XfRZh7rsryDIKZ3vrVQ13PulLSe/wHT/dBAg==
X-Received: by 2002:a17:907:62a9:b0:726:2a3b:8507 with SMTP id nd41-20020a17090762a900b007262a3b8507mr12026191ejc.666.1656322516674;
        Mon, 27 Jun 2022 02:35:16 -0700 (PDT)
Received: from [192.168.0.247] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id z21-20020a170906815500b00722e7e26d22sm4812672ejw.58.2022.06.27.02.35.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jun 2022 02:35:16 -0700 (PDT)
Message-ID: <aafd58d6-8705-96ee-7813-9b3bae7bb3d1@linaro.org>
Date:   Mon, 27 Jun 2022 11:35:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] ARM: dts: aspeed: Add device tree for Ampere's Mt.
 Mitchell BMC
Content-Language: en-US
To:     Quan Nguyen <quan@os.amperecomputing.com>,
        openbmc@lists.ozlabs.org, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>, soc@kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
        Open Source Submission <patches@amperecomputing.com>
Cc:     Phong Vo <phong@os.amperecomputing.com>,
        "Thang Q . Nguyen" <thang@os.amperecomputing.com>
References: <20220621092120.2427152-1-quan@os.amperecomputing.com>
 <97934f38-4da5-ab9e-7089-d6e48edd5e6a@linaro.org>
 <9120c167-38c2-f8c4-e039-4202d5844639@os.amperecomputing.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <9120c167-38c2-f8c4-e039-4202d5844639@os.amperecomputing.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/06/2022 11:32, Quan Nguyen wrote:
>>> +
>>> +	ltc2497_reg: ltc2497_regulator {
>>
>> No underscores in node name, no specific names (Devicetree spec requires
>> generic), so ltc2497 has to go. You could add some more specific
>> prefix/suffix to describe the function.
>>
> This is to monitor peripheral voltage so it would be updated to:

But it is a regulator, not a voltage monitor, so the node name could be:
regulator-0
regulator-voltage-mon
voltage-mon-regulator

> 
>           voltage_monitor: voltage-monitor {
> 
>>> +		compatible = "regulator-fixed";
>>> +		regulator-name = "ltc2497_reg";
>>> +		regulator-min-microvolt = <3300000>;
>>> +		regulator-max-microvolt = <3300000>;
>>> +		regulator-always-on;
>>> +	};
>>> +


Best regards,
Krzysztof
