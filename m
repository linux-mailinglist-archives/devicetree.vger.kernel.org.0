Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F05757F0D9
	for <lists+devicetree@lfdr.de>; Sat, 23 Jul 2022 19:59:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236496AbiGWR7G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Jul 2022 13:59:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235743AbiGWR7F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Jul 2022 13:59:05 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D65ED1AD89
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 10:59:03 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id p11so7434055lfu.5
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 10:59:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=WrZoUp11W0oJ7GzKnkdxiwVjorx/oxQvW0Vj4xR4LoY=;
        b=UjYnYTBQk0sh/4YSJFi9BGlebU/cPzp6/AY6+KOc+8pjm0affROpmQDsqgi3hgsJZT
         K6X4WrA1dna+RzS8NYMyO2O2ERM/8dbBPdJ5poMXuaRaXFaMn8CY5mxdNHxlURudjJ7J
         jE30zo379S+CQtKMur4EtZk+pj1N8QweHza8oA+7EKFEmQoDapCeB5sVRcMmXzeQLuy4
         pNAJCslzl59wb31yh0pnXu5voUhoW4WyshgiSr8C+DFfSFUBA1yqj6QhAjzQfzBtvD7x
         3jMhhEz2iH4sfav2XyfNplKqcvuj9PA8XcsUmqTenERcSyUeYthtqvBTIv4NQa17K90Z
         RF/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=WrZoUp11W0oJ7GzKnkdxiwVjorx/oxQvW0Vj4xR4LoY=;
        b=IcsPyuDlnH6MEwkmhkfoPPyMDOLWKNtbRwlKGfIIA+Py37lu5z/x7bu3qDCkG919rl
         gKqYS9ABbAUaYFO52s9pKWPUFYX8eelSKA+fVL8T+YAf9DQ0rhGSEE31hPg4qzzHtwtE
         Kpjq3mc1CFSh0gDQFUTzSNiLN2kfoM9W8EFQccqdEY/oJCIvuRTNfNA8KvqeX5+Ud+wY
         Ueda56ftQuJmTPW3QBq9uhjLbWDP/32nwvApbeqjzINcKFK35ubrjUMEAyfMN+iVkDwd
         7+Y45VwnYTN4EH+HtXgxNmfOIGAbmkoyWDjmLQ8Tyw1hKUuxMA+iTG9Moc4Xu9edeM+6
         un0w==
X-Gm-Message-State: AJIora+DCu9DtiPcryarvV1hANQn0ltc3YSgYsLzqinNFQlKu/nhqI1M
        DivNrQ5rn4XzPZjwbjuAy21Tfw==
X-Google-Smtp-Source: AGRyM1u9xwp+l/U6cPMKiF3f9DWLlcwDi6AqtsHxH9+/vkSXzDhIjHcrxdsv166bJL04Ed4DSg8S8A==
X-Received: by 2002:a05:6512:1109:b0:489:e782:b6bc with SMTP id l9-20020a056512110900b00489e782b6bcmr2170578lfg.648.1658599142265;
        Sat, 23 Jul 2022 10:59:02 -0700 (PDT)
Received: from [192.168.10.173] (93.81-167-86.customer.lyse.net. [81.167.86.93])
        by smtp.gmail.com with ESMTPSA id w29-20020a197b1d000000b0047f647414efsm1753886lfc.190.2022.07.23.10.59.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Jul 2022 10:59:01 -0700 (PDT)
Message-ID: <135be705-24f9-13b8-6939-0eaa569434d7@linaro.org>
Date:   Sat, 23 Jul 2022 19:59:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 2/3] Documentation: sysfs: Document Broadcom STB memc
 sysfs knobs
Content-Language: en-US
To:     Florian Fainelli <f.fainelli@gmail.com>,
        linux-kernel@vger.kernel.org
Cc:     Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
References: <20220722201043.2731570-1-f.fainelli@gmail.com>
 <20220722201043.2731570-3-f.fainelli@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220722201043.2731570-3-f.fainelli@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/07/2022 22:10, Florian Fainelli wrote:
> Document the "srpd" and "frequency" sysfs attributes exposed by
> the brcmstb_memc driver.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  .../ABI/testing/sysfs-platform-brcmstb-memc       | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>  create mode 100644 Documentation/ABI/testing/sysfs-platform-brcmstb-memc
> 
> diff --git a/Documentation/ABI/testing/sysfs-platform-brcmstb-memc b/Documentation/ABI/testing/sysfs-platform-brcmstb-memc
> new file mode 100644
> index 000000000000..2bf0f58e412c
> --- /dev/null
> +++ b/Documentation/ABI/testing/sysfs-platform-brcmstb-memc
> @@ -0,0 +1,15 @@
> +What:		/sys/devices/platform/*/*/*/*/srpd

That's a lot of */. Are you sure it is correct path? Didn't you include
here some driver-related path components? Can you paste in email full
path as an example?

> +Date:		July 2022
> +KernelVersion:	5.21
> +Contact:	Florian Fainelli <f.fainelli@gmail.com>
> +Description:
> +		Self Refresh Power Down (SRPD) inactivity timeout counted in
> +		internal DDR controller clock cycles. Possible values range
> +		from 0 (disable inactivity timeout) to 65535 (0xffff).

Using hex suggests one should write there hex? If so, skip decimal...
You describe the user interface, not hardware registers.

> +
> +What:		/sys/devices/platform/*/*/*/*/frequency
> +Date:		July 2022
> +KernelVersion:	5.21
> +Contact:	Florian Fainelli <f.fainelli@gmail.com>
> +Description:
> +		DDR PHY frequency in Hz.


Best regards,
Krzysztof
