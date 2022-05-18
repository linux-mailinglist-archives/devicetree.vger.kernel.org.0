Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C74552C441
	for <lists+devicetree@lfdr.de>; Wed, 18 May 2022 22:23:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242350AbiERUSF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 May 2022 16:18:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242366AbiERUSE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 May 2022 16:18:04 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D4D498085
        for <devicetree@vger.kernel.org>; Wed, 18 May 2022 13:18:03 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id pq9-20020a17090b3d8900b001df622bf81dso3159976pjb.3
        for <devicetree@vger.kernel.org>; Wed, 18 May 2022 13:18:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=lrrCplGkTlc2to0M0Y2pV85837vmqtd/KGwhdhrKhi8=;
        b=JfBNeRwiX8RFGH2yxWburUXQyCNA9PF/xQwDM4MudGU+XVTcTVZQ3zU9H2QgDy87R7
         DDaXEuDvoytxTn5itFKZFTH7Iryu9NDqtCs2g/8Edu/a5coftGQhxL4+FBk+3w79nFtY
         rYzaEj8mK6gGTKqZVnwDFhroYKyNs/GebLk0KSs4O0OuY2eRskP8skjgztgVtWLw+Ek1
         q466z3TlenlW/VF5Xr7eWXE+26zYtRVrEsJbrO4Y+VvsxF7XjQASBdpYZ1z4VsUvSOor
         K81UemxOW95A9VPmAFg5NAwLvkkqK445xJNo26KwHpV/s7Wlta4PH7yLvkEnxOD/BNVN
         YPAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=lrrCplGkTlc2to0M0Y2pV85837vmqtd/KGwhdhrKhi8=;
        b=k3bYKrs0ZCCrhKTpQhgfFChTwgOV+HJWBy9lsa1s39d0TPTl8QarzSISDxgpumAoIi
         QcOkhQGt27yy1lwpRErVBo5hWUMjT2UtPYoeS5hJEtRqvGSqEmsqkX6x66HDhee/OUph
         eyX8bCBQIbLN8jNBRRKBSajvQl67B1xlOZgsllWRhv0qzTHBpLyjLby6NJUkSFE5nbdU
         m5ait8FxuhlMV+VPKghelyM9EsM1AzrZd79Ww/8xsnyjpcmHWxpOqvOdInwPFscXScrf
         ThsiVtpPdxBh1aPbSfv4AHRzTh0I9gmjVHhO07okiKYY7x+iCoht+dJAl7CU3docaCiz
         y18w==
X-Gm-Message-State: AOAM530JxOHZyxOmZqgPJhz4WR+kb9+vgG7Miw7bMpnEwCDvgAmSx8cq
        48U8456kaYnmyl+Kcan9kAY=
X-Google-Smtp-Source: ABdhPJxAoU9urUSJc6vqR4mX5GczVw31V/Zk+K1EKPy/aA4EMSJzn5VEWwnlw1rIMmZmowmtWIK69A==
X-Received: by 2002:a17:902:f544:b0:161:9465:4421 with SMTP id h4-20020a170902f54400b0016194654421mr1290827plf.90.1652905083067;
        Wed, 18 May 2022 13:18:03 -0700 (PDT)
Received: from [192.168.1.3] (ip72-194-116-95.oc.oc.cox.net. [72.194.116.95])
        by smtp.gmail.com with ESMTPSA id s11-20020a17090302cb00b0015e8d4eb242sm2070919plk.140.2022.05.18.13.18.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 May 2022 13:18:02 -0700 (PDT)
Message-ID: <49f55379-86b8-1ff2-b540-dff245993e1a@gmail.com>
Date:   Wed, 18 May 2022 13:18:01 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH RFC] ARM: dts: bcm2711: Fix DMA constrains for newer
 BCM2711 boards
Content-Language: en-US
To:     Stefan Wahren <stefan.wahren@i2se.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Peter Robinson <pbrobinson@gmail.com>, matthias.bgg@kernel.org,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
References: <20220413162739.6717-1-stefan.wahren@i2se.com>
 <37114673-5b31-c03c-fb7e-0b6a05adffd6@i2se.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <37114673-5b31-c03c-fb7e-0b6a05adffd6@i2se.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 5/4/2022 2:43 PM, Stefan Wahren wrote:
> Hi,
> 
> Am 13.04.22 um 18:27 schrieb Stefan Wahren:
>> The commit 3d2cbb644836 ("ARM: dts: bcm2711: Move emmc2 into its own 
>> bus")
>> assumed that all bootloader pass the FDT modified by the firmware to the
>> kernel. But this is not always the case (e.g. Fedora) and cause boot
>> issues for boards with a BCM2711 C0 SoC (RPi 400, CM4, newer RPi 4 B)
>> which does have different DMA constraints.
>>
>> Since we are not able to detect the SoC revision, let's assume a BCM2711
>> C0 SoC for bcm2711.dtsi and move the restricted DMA constrains to a
>> separate RPi 4 B board file just for the old SoC revision.
>>
>> Fixes: 3d2cbb644836 ("ARM: dts: bcm2711: Move emmc2 into its own bus")
>> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> since there wasn't any feedback yet, i want to ping ...

Could not we just rely on the VPU patching the Device Tree instead of 
having to differentiate the 2711 revision and having to use different 
DTS/DTBs?

Also, can we consider that the older B0 are less predominant in the wild 
than the C0 nowadays, especially with the shortages going on is that 
even remotely the case?
-- 
Florian
