Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6BDAA52C44B
	for <lists+devicetree@lfdr.de>; Wed, 18 May 2022 22:23:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242519AbiERUWz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 May 2022 16:22:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242518AbiERUWx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 May 2022 16:22:53 -0400
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E26E415E491
        for <devicetree@vger.kernel.org>; Wed, 18 May 2022 13:22:51 -0700 (PDT)
Received: by mail-pl1-x629.google.com with SMTP id n18so2837580plg.5
        for <devicetree@vger.kernel.org>; Wed, 18 May 2022 13:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=8Rdx28mbAZ3rQyESNT/+MvdHC8M41WEr7nlZDazlHeo=;
        b=YTsWgLi6IZPes6ICJD0TfMbKjBgY4cZxegPUPrKoOSvNqbjfjEjeLKMBBSgtUIiaYD
         iackcE118NHG00h3svSC+bNucpFYOKOOQbHDAcalRqZfD5bpIkEJ1WQpwt4MPagEKnbk
         DPVMO1+0J3p1a3GcDNDBMi2SiBt14kCtWY8sK/xSrLDiGqSxPWxrHkkLDQgsKY0E1OYT
         w5YFCt+n0433rrDyLx8OyZV/AJ2Yjm0v1MWGhRZnmY05GULDQSZkQU/zMQ+Yv6L0CzVX
         yUhtAVxLtfWMOkrKeMKNnwPOR/iLiNhiQ14EHEi8F7Oaq2BmxAmqmNfg/LDbW+5IvBWi
         H8CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=8Rdx28mbAZ3rQyESNT/+MvdHC8M41WEr7nlZDazlHeo=;
        b=2nxuVB7RCj0c8U3uxe1/96bCGEn6snm3h6U5vKPbygFf/8pfItroj3MD+9aY0I77CO
         khNQqyfjrwxRRsqdXnK/3rLBoR21W1YuJUgDYyL5ENkcMGbtWZPfmg/l5JXeD63U6xy6
         seM2aJNIwF6TWgLOnFkD6cSpHjHBebUkz9noEO+0p411HzpY+ihRSI81JgKzqtsoiBpr
         KUo6hHY+u4FaNfNQaaQicud8MYpnXrXmBWBLmggVcOUMcSYtEtn6UX35Woty8MfOvarE
         HUeg63DKKQ52+DLHKXYcr6W3HOj66qnUkHEmTRG8V/q1v8/T3K8HqdiXIZI9bfIYaKCv
         Sn8w==
X-Gm-Message-State: AOAM530zl/LJt9iEG7YSYBQTQpgCNAR57CaYvefyWab9AsMny2m1ssmH
        dVr8NuGWUHaGu/wh2dVkkzQ=
X-Google-Smtp-Source: ABdhPJx+Motbv9JDvIc1t4GURYYvQ2xTDyrZmOYib/mATzMgJl0fbtZonooaXQgUaVyXNiRqcNvCbw==
X-Received: by 2002:a17:90b:4c0a:b0:1dc:e81a:f0c with SMTP id na10-20020a17090b4c0a00b001dce81a0f0cmr1272793pjb.2.1652905371311;
        Wed, 18 May 2022 13:22:51 -0700 (PDT)
Received: from [192.168.1.3] (ip72-194-116-95.oc.oc.cox.net. [72.194.116.95])
        by smtp.gmail.com with ESMTPSA id be11-20020a056a001f0b00b0050dc762813csm2370685pfb.22.2022.05.18.13.22.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 May 2022 13:22:50 -0700 (PDT)
Message-ID: <83e27d30-2390-aef2-fc14-8cc29dc41e61@gmail.com>
Date:   Wed, 18 May 2022 13:22:48 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH 00/11] soc: bcm2835-power: Prepare BCM2711 V3D support
Content-Language: en-US
To:     Stefan Wahren <stefan.wahren@i2se.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Lee Jones <lee.jones@linaro.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
References: <20220515202032.3046-1-stefan.wahren@i2se.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20220515202032.3046-1-stefan.wahren@i2se.com>
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



On 5/15/2022 1:20 PM, Stefan Wahren wrote:
> This series is a split out of version 4 - Raspberry PI 4 V3D enablement send
> by Peter Robinson [1]. It attemps to enable BCM2711 V3D support for the
> power management driver. It's a rework of the less controversial changes
> (excluding V3D GPU driver changes) so this can be reviewed and applied faster.
> 
> The changes has been tested just superficial on RPi 3B+ and 4B, so further
> tester are welcome.
> 
> Changes since the mention series:
> - fix DT schema errors
> - make rpivid_asb register optional in DT schema
> - avoid code duplication in BCM2835 ASB enable/disable
> - rework ASB V3D handling so we don't need the V3D flag
> - avoid log errors for optional register
> - use a define for expected ASB_AXI_BRDG_ID result
> - fix copy & paste issues in bcm2835-pm changes
> 
> [1] - https://patchwork.kernel.org/project/linux-arm-kernel/cover/20220213225646.67761-1-pbrobinson@gmail.com/

Lee, can I get your Ack for the two patches touching mfd so I can take 
the entire series via the arm-soc pull request?

> 
> Nicolas Saenz Julienne (6):
>    dt-bindings: soc: bcm: bcm2835-pm: Convert bindings to DT schema
>    dt-bindings: soc: bcm: bcm2835-pm: Introduce reg-names
>    ARM: dts: bcm2835/bcm2711: Introduce reg-names in watchdog node
>    ARM: dts: bcm2711: Use proper compatible in PM/Watchdog node
>    mfd: bcm2835-pm: Use 'reg-names' to get resources
>    soc: bcm: bcm2835-power: Bypass power_on/off() calls
> 
> Stefan Wahren (5):
>    dt-bindings: soc: bcm: bcm2835-pm: Add support for bcm2711
>    mfd: bcm2835-pm: Add support for BCM2711
>    soc: bcm: bcm2835-power: Refactor ASB control
>    soc: bcm: bcm2835-power: Resolve ASB register macros
>    soc: bcm: bcm2835-power: Add support for BCM2711's RPiVid ASB
> 
>   .../bindings/soc/bcm/brcm,bcm2835-pm.txt      | 46 ----------
>   .../bindings/soc/bcm/brcm,bcm2835-pm.yaml     | 89 +++++++++++++++++++
>   arch/arm/boot/dts/bcm2711.dtsi                |  3 +-
>   arch/arm/boot/dts/bcm2835-common.dtsi         |  1 +
>   drivers/mfd/bcm2835-pm.c                      | 77 ++++++++++++----
>   drivers/soc/bcm/bcm2835-power.c               | 72 ++++++++++-----
>   include/linux/mfd/bcm2835-pm.h                |  1 +
>   7 files changed, 199 insertions(+), 90 deletions(-)
>   delete mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.txt
>   create mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
> 

-- 
Florian
