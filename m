Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0338E676935
	for <lists+devicetree@lfdr.de>; Sat, 21 Jan 2023 21:28:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229673AbjAUU16 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 Jan 2023 15:27:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229493AbjAUU15 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 Jan 2023 15:27:57 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73A3D14229
        for <devicetree@vger.kernel.org>; Sat, 21 Jan 2023 12:27:56 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id f12-20020a7bc8cc000000b003daf6b2f9b9so8046093wml.3
        for <devicetree@vger.kernel.org>; Sat, 21 Jan 2023 12:27:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2gYor4MITA5uSMYoCpBNwX+bgrx2iZsvrgpEb0qchBs=;
        b=L38lHgm0yzSqIA94fztSf77pU+UWyIqPmMmeYS+7omaI3yKNXTgeliVz9rPHRvMHyL
         iveL1RRXOnAZr7elw2jS5ZpA8j6wqP5zxK8kLzbI19XcTwgorCW/IHc5GzR3d1Mnwfhr
         m1nlUWbnD0QyyYBBIumrmNHzFk+jUir9ZiffBt8kpUkjp5+8cpWRi19u2UGVfGS5Q2Bg
         IwrosQ+z/+pki2591R900Wp+4eHBggrjZtA749vkdUZsGgr87VzLn0QQ9nCNioK57V+n
         TEPyUqwOv5rpjuvtSC81qx4StFWdgh9hhQ40u+obs8nkkoe8eEz0AOR4lEAeLLZK/++0
         6OdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2gYor4MITA5uSMYoCpBNwX+bgrx2iZsvrgpEb0qchBs=;
        b=Pvt7v8d0W/5FkEiEP+rq735HQQSCJayRGVJ307YXt9wMOjDcj98vASD5iXIH2Yiy/U
         yKWbYX8CQqJEYwfsYZNmBsnujCG0EMmSQRSBtZ1bPqisWa1Ix7OTwciC/sil7a3P2GzK
         nygHIoOFA1vif/bnpWou4rHtJ4RWMsBh7nCQUAZoCQ/0k1rRSxLuXpGPSvmYneaTK0oy
         WzCSWayiAV9Z94+gYtHEZs5UakGbDyaZFYZ1vhDVfWI+aVTIwsgewU1vl5Y3y39GkFbQ
         /upkSo+St1eI94eavAasXONJo2KiVaH1H3QUsDyusVFo5k41FF1WOOKHEBWth2jgogSX
         NhwQ==
X-Gm-Message-State: AFqh2kr/kveLd7X9A3vfeGTeINRzujeFVl6AoegpXyJvriNTcMRJxXW3
        6QkN2EF0/oNTB9BXMWIAkbc+3+BuyOjzznnK
X-Google-Smtp-Source: AMrXdXtiemP2u4lmD7Dy1eRfHpYZQ84FNIvfGnxxFc7ySjWlCL9N0sMPVS2vqhS1eggWqZrXD1CsqQ==
X-Received: by 2002:a05:600c:3b84:b0:3da:fd7c:98b3 with SMTP id n4-20020a05600c3b8400b003dafd7c98b3mr18322184wms.25.1674332874942;
        Sat, 21 Jan 2023 12:27:54 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id d19-20020a05600c34d300b003a6125562e1sm6201659wmq.46.2023.01.21.12.27.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Jan 2023 12:27:54 -0800 (PST)
Message-ID: <3114bdeb-c8eb-3a3a-0d68-ca3370ce64ec@linaro.org>
Date:   Sat, 21 Jan 2023 21:27:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 8/9] ARM: multi_v7_defconfig: Add options to support
 TQMLS102xA series
Content-Language: en-US
To:     "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Marek Vasut <marex@denx.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>, soc@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230119144236.3541751-1-alexander.stein@ew.tq-group.com>
 <20230119144236.3541751-9-alexander.stein@ew.tq-group.com>
 <acab1d7a-ef00-a3be-f73c-6cb9d01687b9@linaro.org>
 <2168770.1BCLMh4Saa@steina-w>
 <e08e6325-4b2b-c1ce-b33a-877de2c0babe@linaro.org>
 <Y8qr8wl8WdJfQ9We@shell.armlinux.org.uk>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y8qr8wl8WdJfQ9We@shell.armlinux.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/01/2023 15:57, Russell King (Oracle) wrote:
> On Fri, Jan 20, 2023 at 12:35:41PM +0100, Krzysztof Kozlowski wrote:
>> Defconfig=y is only for critical stuff needed to bring initramfs. Time
>> is not needed for initramfs.
> 
> Are I2C drivers "critical stuff"? What about AHCI drivers? What about
> all the USB HCI drivers? USB Storage can certainly be loaded from an
> initramfs, yet it's =y. LED triggers? Loads of RTC drivers that are
> marked as =y? XOR drivers? VIRTIO drivers? Filesystems? I seem to
> remember Red Hat sets even popular filesystems to be a module in their
> kernel.

Almost all your answers above - these should be =m. USB not always,
because it is used for USB Ethernet adapters which is used for network
boot (although even then initramfs comes with actual drivers...)

> 
> Clearly, "defconfig=y is only for critical stuff" is rather false in
> practice, and I suspect is little more than a desire rather than a
> rule. I suspect it's more "defconfig=y is for stuff that makes most
> platforms successfully boot without an initramfs".

Yes, that's true, although there was already pushback against this.
Having an initramfs is not a big deal and nowadays I think all new ARMv8
platforms use it.

Anyway this talk here is about RTC which is not needed at all as built in.

Best regards,
Krzysztof

