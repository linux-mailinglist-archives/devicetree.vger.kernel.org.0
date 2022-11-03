Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66A4C6182EE
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 16:31:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232039AbiKCPbw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 11:31:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232186AbiKCPbR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 11:31:17 -0400
Received: from mail-qv1-xf2e.google.com (mail-qv1-xf2e.google.com [IPv6:2607:f8b0:4864:20::f2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A39341114A
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 08:31:14 -0700 (PDT)
Received: by mail-qv1-xf2e.google.com with SMTP id ml12so1384146qvb.0
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 08:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oYcP/bZfX3y5m3R3YG+zXCNAHfpGH9KzqqQb4FqEYA8=;
        b=F8zuHn1TcqfQj2Wa1sEG0XSa9kdvMdSNIFhdBO8H7yQNLE8RV6DaQC9VtoFl+oeJ8U
         JYs5d993esxlQxn8V+1ozErPMNZXJPZOX3KCzvDqqgBoTkycPEmfmZ0KYnEWyA4/q/Iq
         loyrdKm0/chun86RceZGkyR/iwb5FbX5mrrU0hVNDcozEW0wSNTUFHkrb7aY9qj2DftI
         3wzWX9NVh1gRICDyoRm8f1QZKdbTy9onUVKiz1cIgBqFkRt//TP3x7ReNcMMpSBtd+CH
         GzavJESs8eRTpysEkKdNdHWOnoFrjXLIta78EPwCxmV6Kx2k2ur0E4uca4tlUo4Pzudi
         NEUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oYcP/bZfX3y5m3R3YG+zXCNAHfpGH9KzqqQb4FqEYA8=;
        b=lLRO7zglQXnSPt4nEkvihY4naACeOvLiSKtuxqlOaMmnR+0mohwRKJ5kjuAL/Uwkji
         I+bWzysqpw0YiDpMA9U7pl9C3Qe3UXxAv5KL/COc3Dv9dz1oZZDyiz4ja/iLEVcqtjaa
         JkK9KUtvksR8D01hsharpvr9XR3N16OhlIRV6k3q4GK2Kon1gSu0njt2CHA7mb9MnkTY
         mVoKet9zGPP9hBsxv4qJHapaL3xAaGd8Z+qAZxgqhx7R9mg+hJuYedz9INLrQ+jhzksX
         iGCRtpHfNDl3ZJ84rtcd/7EQ+Z2RHbvgRyh+6dFzIHvrZt+Dp0JfEtuXjj9si+47zmEd
         GIIg==
X-Gm-Message-State: ACrzQf0c1t56Fu6M+bzjum9qna1p3sfFUO1ZFqQfllAtnMnhHFHJBxzC
        7QvDkPQkf0JfTnBLJWtdBI4=
X-Google-Smtp-Source: AMsMyM5OqYjjofHdJMLjpnel3/AruOz2dIf2066Z8ec/acQBrUw/tIgh2wFNDG1af0tyLm7gQf0WQw==
X-Received: by 2002:a05:6214:5081:b0:4bb:a1c6:bc70 with SMTP id kk1-20020a056214508100b004bba1c6bc70mr27826952qvb.92.1667489473739;
        Thu, 03 Nov 2022 08:31:13 -0700 (PDT)
Received: from [192.168.1.102] (ip72-194-116-95.oc.oc.cox.net. [72.194.116.95])
        by smtp.gmail.com with ESMTPSA id c10-20020ac86e8a000000b003a54a19c550sm693505qtv.57.2022.11.03.08.31.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Nov 2022 08:31:13 -0700 (PDT)
Message-ID: <9b346154-4f11-3682-3b6d-73c76170455d@gmail.com>
Date:   Thu, 3 Nov 2022 08:31:09 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] ARM: dts: bcm63138: drop invalid "nand" interrupt name
Content-Language: en-US
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Brian Norris <briannorris@chromium.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20221103102406.18339-1-zajec5@gmail.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20221103102406.18339-1-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 11/3/2022 3:24 AM, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> String "nand" was never a valid interrupt name. It was never documented
> and never used in Linux or U-Boot driver. It most likely comes from a
> copy & paste mistake ("nand" is used in "reg-names").
> 
> The whole "interrupt-names" property is optional and can be skipped.

How about we just fix the binding document instead? Deciding the fate of 
a property based upon client programs of the DTS using it is a weak 
argument IMHO.
-- 
Florian
