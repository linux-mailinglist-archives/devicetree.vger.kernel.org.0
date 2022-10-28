Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28FD06111DD
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 14:49:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229536AbiJ1Mt6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 08:49:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229456AbiJ1Mt5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 08:49:57 -0400
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com [IPv6:2607:f8b0:4864:20::830])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77CB823E93
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 05:49:53 -0700 (PDT)
Received: by mail-qt1-x830.google.com with SMTP id ay12so2701791qtb.12
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 05:49:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=78EkPymzi4tFci0TofuHjBanKxiie8Uy8xR+13iUJlg=;
        b=OgxLe9TO75/NaKzvtCskIZ0uDQm0ObF8SwIn5CR9IUL52cxTUsvozBzosJbXX8zgCH
         1H6JiXYjc+n3Fsuhk/HUaAow00ts/w0FXgqtK2pK18KNMV0TY0RpxIrePUfP1y9xZITn
         2fIplO6Tef0rlKFAvrQjPBAwvhYf2MOpSONhfwkZqTUiiYkRyXAvTjYsGoziHw+rDWp9
         FwsBGnqv4vjMt+ueq+kTeUoxJcm1GDHbEutSpHobqXeNlCT5NThdIePUYd6JniZgia9p
         r8fNG7a6JxufMxskvpo27ZcRLrFDEP0wagqCjLup1iSV4eCGmpXdbP422KVNMFVi7NGI
         hxNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=78EkPymzi4tFci0TofuHjBanKxiie8Uy8xR+13iUJlg=;
        b=FhCIfRjP+BCh9f99YCgiNwNHKmnzAIW+MVvgmpRw3h1ag5vZLQFnQYHctN1rGKnq72
         Dm+O7BU/3KiSQ2aal4296d7aE0BL12+zdTJyu5YYWnRScPI+fcS9tZgXgGlOvHgxD/hF
         Xi4+bMvkmIiFh9+CmkF5BOCN6AhvN0Bz3bRn0H8O3egikuF7haJMJ1KRhJpeoavtfSQi
         ywtTTTuNIbLFuSi52/KYP0gVI4vBfkO2XtP0BTqioQJ2kbAXwH3Xcc1t276i17i/5/u1
         zR+8oNCFR2LGXDo7WfmpBS0BNoF5BGWsSZmiDtN4r7+Y9ik/z7Y7cgf+EPc57mkQ/TNy
         VXfw==
X-Gm-Message-State: ACrzQf08FSpv/VvJmnCvUgsIgTXaP073Kk6501xhVN2nzICfuTf2PHmn
        nLYNzjLJfaXrc6ycr8WY84EifQ==
X-Google-Smtp-Source: AMsMyM4MNPg/WUEKUSALrXXxbQds68aAO3L5Avmsq+rwrX6q2DUfVzwvPzbwsMh8/Ncl/O5S6nvfjg==
X-Received: by 2002:a05:622a:554:b0:39c:ef65:bc66 with SMTP id m20-20020a05622a055400b0039cef65bc66mr45963286qtx.550.1666961391180;
        Fri, 28 Oct 2022 05:49:51 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id k11-20020ac8140b000000b003a50ef44a77sm37361qtj.28.2022.10.28.05.49.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Oct 2022 05:49:50 -0700 (PDT)
Message-ID: <9c00f1a4-d7d6-ef9b-c480-4635ab793607@linaro.org>
Date:   Fri, 28 Oct 2022 08:49:48 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH V2] dt-bindings: timer: add Broadcom's BCMBCA timers
Content-Language: en-US
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Lee Jones <lee@kernel.org>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20221028115353.13881-1-zajec5@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221028115353.13881-1-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/10/2022 07:53, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> BCA is a big set / family of Broadcom devices sharing multiple hardware
> blocks. One of them is timer that actually exists in two versions. It's
> a part of TWD MFD block.
> 
> Add binding for it so SoCs can be properly described. Linux (and
> probably any other OS) doesn't really seem to need a driver for it. it
> may be needed for bootloaders (e.g. U-Boot) though. Especially for SoCs
> with CPUs other than Cortex-A9 (which contains arch timers).


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

