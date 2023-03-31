Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 96E856D1A83
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 10:38:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231719AbjCaIip (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 04:38:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231904AbjCaIib (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 04:38:31 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCC7F1D846
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 01:36:09 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id x20so22232121ljq.9
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 01:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680251743;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tkRYc2zjcEMTlLfWoSafrc84uzK9JDYRl9kYpG33h9E=;
        b=VDtYvpS72Cb8trEdZVmOD4XrZGTI0kgWf9WAirmYAqK6YXUnVdbBn7gj/IO2OKTFMX
         awun/DZKunVF7yFL/NqDphNreCz9VxqbyYMCF7ql9WgGuC7y0RN1peGeCe0PPyLga5c7
         BZ6tUgHyw6X7uxVpo8xxqAcNIHvIbY41ndFtvBqZEa6Em626CPuObX1Cwu7mYtJUtcU+
         2J4Y5KwVcOR1ufbnbEJ9pJr37KFGNqI1BJ/BUmjyd3mzvaQxEPIDD9A4rlK/Uo22kdik
         KN4jn7SuA+Yz9+i0bytGyuoa9xckYg4hAOhUp1YsfMUEY9LwZ6tip9uSwTJouX3bHfRJ
         /Ylw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680251743;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tkRYc2zjcEMTlLfWoSafrc84uzK9JDYRl9kYpG33h9E=;
        b=aoJeCB3/8KLa1Us/R2qp+qws0TQI//Ovhb+6IIyTid45ydQwqEgsrWo4zLxpyelRMS
         ouogxjXQbraPMQAcsaQ1kI6KHjy/YZgYlTGbIRiIROFkkbAztg9hmpqJD+HJAL8se9Rw
         D9Tpu5NnzLceaiCedjG4MBIlTMUbr8z+d1C41AE352WI1/Zg3B00VMRVmCGFVkDfy6Te
         GmGM6aJkfLbCvlcMBbVKcltQ0jnTsYWCOPozltRyx2NMOcwd5FYHKiVrq1V8F7qxWKBF
         IOxyBxf0dLbRE49q8kp3b7nLWZvV6fwUBSG2sWgzRtXcM//gQbWjBCQfXQTtvG9WhbiZ
         oz5A==
X-Gm-Message-State: AAQBX9eAbu7Tn1KrGHS+jUNLwu3mgY/YvrBFxYpCgjo3KjqxFR9dqOuy
        QPQIxTm0Pk/dMikdcj6HZlPMtg==
X-Google-Smtp-Source: AKy350biiEiYoHvXX4oy8SYpu5pCoC47zLNvMj4u1cmjiV2eNr3bJd7RLJ2vrzmFKZJOHU5xx0I7dw==
X-Received: by 2002:a2e:aa8b:0:b0:2a1:ed00:4b9e with SMTP id bj11-20020a2eaa8b000000b002a1ed004b9emr2503411ljb.1.1680251742960;
        Fri, 31 Mar 2023 01:35:42 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id f25-20020a2e6a19000000b002a03f9ffecesm262405ljc.89.2023.03.31.01.35.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 01:35:42 -0700 (PDT)
Message-ID: <7a81fe59-7076-9ebd-d574-e4f2d55c8ebe@linaro.org>
Date:   Fri, 31 Mar 2023 10:35:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/3] dt-bindings: iommu: rockchip: Add
 rockchip,disable-device-link-resume
Content-Language: en-US
To:     Jagan Teki <jagan@amarulasolutions.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     iommu@lists.linux.dev, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-amarula <linux-amarula@amarulasolutions.com>
References: <20230330131746.1475514-1-jagan@amarulasolutions.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230330131746.1475514-1-jagan@amarulasolutions.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/03/2023 15:17, Jagan Teki wrote:
> Rockchip iommu is trying to enable the associated device at runtime
> resume however some devices might enable the iommu during their pm
> runtime resume operation which indeed leads iommu to use the wrong
> domain and this leads to device iommu page fault.

That's not a DT property. You now described system behavior and want to
encode policy in DT.



Best regards,
Krzysztof

