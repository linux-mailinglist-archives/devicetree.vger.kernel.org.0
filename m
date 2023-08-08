Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9425F774220
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 19:34:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231783AbjHHRev (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 13:34:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234876AbjHHReR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 13:34:17 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 929317ED1
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 09:14:47 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2ba0f27a4c2so87486771fa.2
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 09:14:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691511283; x=1692116083;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6L6tMWU3aKaycgVqUwJnj0J3V0zw/N188ab7mQDczlE=;
        b=LyXhCsLge+Bc4R32YTsLEEqhOS1MVzAJLySXZifiA7f4upGjnbWjWoiQy+gANxCUru
         SeREnxLmrRD8YgvnGy4PtMHTJs487jc+SOEPp6XPm27o+wBEdB35Fbn7p+xbLgQFNW+m
         JxPmyuCjsTeJwfyFwrrUq66qqrvEHv3t0VBUNo0g6oFdw+asAH8ABbDDB11jJ2vQLs5o
         bpYfdPF+wfkLlGjaO2wJDGgxgE8Mnk2GtL7USlruYV1pEZFnDidjubNCpfA3nn6FjE5D
         ggW74MHSZ1J/d/4t8iX5lz3lHkmqWD7M/S6B/45QQk1xrAygRQ670i+8FfMpespw7yYY
         rFwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691511283; x=1692116083;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6L6tMWU3aKaycgVqUwJnj0J3V0zw/N188ab7mQDczlE=;
        b=AU3BZezZfRDIBQGljKf+njhmpMzFr6/S82mhziNwBoglQb+RsfZVctJTfH+M4yt6tI
         nKy2QYIVKqbBFg2t7VLeU0oIXScW9PRdtA9T13DLr01qa8c5s+yZxrEnJD/oKFiwLTNE
         sdY/tFUkkOfOBrSsOt1xu9EpBgUd8JJx1l5w3v6WXI4F7oxZzGSd++eWeAjsKJVdL81O
         2rdCRGyOhfKMoNUwmOK2wtTXhFA3FiOtVOYl0lChuP3PS/WTe34k5dzZYOizGglBTDQ4
         P5TZ0WzYLRJYLU58a6fXN9HWSe8r5P2ShgffF2nGcXzw2asuRq82EktiepP3h7a1EX3A
         HldQ==
X-Gm-Message-State: AOJu0YxyfLsfc6jGjaH0ZJr/oQzD+WdJ2TZMCPTxVdFMyAJvcJ+vZP7u
        c4gXgrN/SdLghkzmGz7miRCDCJDXp4iNFpHmFnw=
X-Google-Smtp-Source: AGHT+IG+RQBDRreQuCfaB3AJYJr+y4JGtXo/OBe6/HlLumfIT4YYOXaRfEagnfiUj7daFmOn0e5QFg==
X-Received: by 2002:a17:906:1099:b0:94e:4489:f24d with SMTP id u25-20020a170906109900b0094e4489f24dmr10991221eju.61.1691474953222;
        Mon, 07 Aug 2023 23:09:13 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id qh18-20020a170906ecb200b0098733a40bb7sm6183736ejb.155.2023.08.07.23.09.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Aug 2023 23:09:12 -0700 (PDT)
Message-ID: <66a4856c-69e8-67ad-6f1f-b017912bf61d@linaro.org>
Date:   Tue, 8 Aug 2023 08:09:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH -next] ARM: dts: integrator: fix PCI bus dtc warnings
Content-Language: en-US
To:     Lin Yujun <linyujun809@huawei.com>, linus.walleij@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, arnd@arndb.de
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20230808012811.2309267-1-linyujun809@huawei.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230808012811.2309267-1-linyujun809@huawei.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/08/2023 03:28, Lin Yujun wrote:
> An warning is reported when allmodconfig is used to compile the kernel of the ARM architecture:
> 
> arch/arm/boot/dts/arm/integratorap-im-pd1.dts:252.3-14: Warning (dma_ranges_format): /bus@c0000000/bus@c0000000/display@1000000:dma-ranges: empty "dma-ranges" property but its #address-cells (2) differs from /bus@c0000000/bus@c0000000 (1)

This does not fix the warning at all.

> arch/arm/boot/dts/arm/integratorap.dts:161.22-206.4: Warning (pci_bridge): /pciv3@62000000: node name is not "pci" or "pcie"

Maybe this one is fixed only... Drop all unrelated warnings, because
this is very confusing.

> arch/arm/boot/dts/arm/integratorap-im-pd1.dtb: Warning (unit_address_format): Failed prerequisite 'pci_bridge'
> arch/arm/boot/dts/arm/integratorap-im-pd1.dtb: Warning (pci_device_reg): Failed prerequisite 'pci_bridge'
> arch/arm/boot/dts/arm/integratorap-im-pd1.dtb: Warning (pci_device_bus_num): Failed prerequisite 'pci_bridge'
> arch/arm/boot/dts/arm/integratorap.dts:161.22-206.4: Warning (pci_bridge): /pciv3@62000000: node name is not "pci" or "pcie"
> arch/arm/boot/dts/arm/integratorap.dtb: Warning (unit_address_format): Failed prerequisite 'pci_bridge'
> arch/arm/boot/dts/arm/integratorap.dtb: Warning (pci_device_reg): Failed prerequisite 'pci_bridge'
> arch/arm/boot/dts/arm/integratorap.dtb: Warning (pci_device_bus_num): Failed prerequisite 'pci_bridge'
> 
> Change the node name to pci to clear the build warning.
> 
> Fixes: 4952aa696a9f ("ARM: dts: integrator: Tag PCI host with device_type")

No, not a fix. It's just node naming.

> 
> Signed-off-by: Lin Yujun <linyujun809@huawei.com>
> ---
Krzysztof

