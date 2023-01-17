Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A145966E582
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 19:00:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231454AbjAQSA0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 13:00:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231620AbjAQR4U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 12:56:20 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EB7D521C1
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 09:47:33 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id o17-20020a05600c511100b003db021ef437so3723595wms.4
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 09:47:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TrT1QNbqDZpxzDX2Nu+aPCCCseyjr8nsq1uLil6VD8k=;
        b=x8n+v435ClOVY5tFD/0Ncr93RVWBbaN4EQ3zU/1BeXTnaQ698F2Lf/XaApr954IeNs
         cYqb9svpHsk6Eqgt6h6QaDCpUKUqnyA00+XJLHf05ZoVQvG9s/M9TQcapHntTIM0A37g
         5E4MczvNjKrlmNCm8RBHA4Vjmbw4ZmEisx8lIS5AWFqJUJp2RTCB3CBbQ75LMRRn1jHt
         hgf6MUSqHPZ1WZpNDLzmIxSXKGn8VtxMfFAtm5Ju/0BARJ/emF1MIGqtrGLH1UOdpkcI
         2SiLw2Pfx0fCT7L1Wv0PX8TQdnbTQ1YSuVK9STlwaZGV3ofLBrGvzuPA6aY6F0hG8yXk
         Yu1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TrT1QNbqDZpxzDX2Nu+aPCCCseyjr8nsq1uLil6VD8k=;
        b=uZkrWYp7N/uxwJ0ha4+fptHSqHsVG4lA11ac9EkZzD8SbXYczGIlu82NCVLwOAHWXf
         Ktf/zZRy7Q74sQTq/fAqhb58zmD7bCWp8xvI+cu3iou1BH3RgkOBe3yVLhnCHaJBQ7kF
         KWKp29vsX8mA+XWWRO0O/f0ucrPZra3sD6OJWYwNRjFN3wiW7quYbKVzxKakxmoPUU4Z
         2AFNASmYUA8OVJX0zRSHY5E/fWfCiX2obkXLBgAsaP6baSZ96HiPADyosAkFDZEUqhQq
         njAxEfqBhY7EhZK/LZoU0t7KechU5udIBI4Gie7oacOo0OwZEUyXHabNAUH2D/IesgjC
         DKPw==
X-Gm-Message-State: AFqh2kp6kmOuEX8YF2WPWJzzOGBQPhq0XYTZ9E9+SAOS9hNhxKfLejRN
        z7IXsjOXLbwanob9veWrKLt6cg==
X-Google-Smtp-Source: AMrXdXsJ9/8q6S+B9RrmpqrZXd7fuCMfae2rM491EYGCWyrVmHpnEarU9Xy3aY471UECh/ucAjKyfw==
X-Received: by 2002:a05:600c:3b82:b0:3d3:5d0f:6dfc with SMTP id n2-20020a05600c3b8200b003d35d0f6dfcmr3792925wms.30.1673977652055;
        Tue, 17 Jan 2023 09:47:32 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id i6-20020a05600c4b0600b003d9e91cd08dsm31449687wmp.4.2023.01.17.09.47.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 09:47:31 -0800 (PST)
Message-ID: <a9b9ae95-2a3f-75fd-1355-07363bcb66e3@linaro.org>
Date:   Tue, 17 Jan 2023 18:47:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 0/7] add support for CDX bus
Content-Language: en-US
To:     Nipun Gupta <nipun.gupta@amd.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
        rafael@kernel.org, eric.auger@redhat.com,
        alex.williamson@redhat.com, cohuck@redhat.com,
        song.bao.hua@hisilicon.com, mchehab+huawei@kernel.org,
        maz@kernel.org, f.fainelli@gmail.com, jeffrey.l.hugo@gmail.com,
        saravanak@google.com, Michael.Srba@seznam.cz, mani@kernel.org,
        yishaih@nvidia.com, jgg@ziepe.ca, jgg@nvidia.com,
        robin.murphy@arm.com, will@kernel.org, joro@8bytes.org,
        masahiroy@kernel.org, ndesaulniers@google.com,
        linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc:     okaya@kernel.org, harpreet.anand@amd.com, nikhil.agarwal@amd.com,
        michal.simek@amd.com, git@amd.com
References: <20230117134139.1298-1-nipun.gupta@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230117134139.1298-1-nipun.gupta@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/01/2023 14:41, Nipun Gupta wrote:
> Introduces AMD CDX bus, which provides a mechanism to
> discover/rescan CDX devices. The CDX devices are 
> memory mapped on system bus for embedded CPUs.
> 
> CDX controller interacts with the firmware to query different
> CDX devices present in the Fabric and expose them to the Linux
> host on CDX bus.
> 
> This patch series:
> - Introduces the CDX bus and CDX devices.
> - Device tree binding for CDX controller
> - Support for CDX bus in arm-smmu-v3 driver
> - Add MCDI (Management CPU Driver Interface) as a protocol
>   for communication with RPU Firmware
> - Support RPMSg channel for Firmware communication
> 
> MSI patches for CDX are not added in this series as it's
> support is being revisited as per patch series:
> https://lore.kernel.org/all/20221111133158.196269823@linutronix.de/
> It will be added as separate patches.
> 
> RFC changes with stubs were submitted at: 
> https://lore.kernel.org/linux-arm-kernel/20221014044049.2557085-1-nipun.gupta@amd.com/

This is v5 then. Please mark it appropriately, otherwise it looks like
it is first submission.

Best regards,
Krzysztof

