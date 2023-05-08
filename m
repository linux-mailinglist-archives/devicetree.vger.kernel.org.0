Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E2216FB673
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 20:51:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232050AbjEHSvk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 14:51:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbjEHSvj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 14:51:39 -0400
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com [IPv6:2607:f8b0:4864:20::729])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90A2859FC
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 11:51:38 -0700 (PDT)
Received: by mail-qk1-x729.google.com with SMTP id af79cd13be357-7577ef2fa31so419406285a.0
        for <devicetree@vger.kernel.org>; Mon, 08 May 2023 11:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683571897; x=1686163897;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yRrl4pdEm7bcHMVL39k4MTlBNhiV+ni1QLSvMgcuhxY=;
        b=MaAy4A9otCkFws2z9R5QOkjTrsLG4fftEHwAdtnTkCIlvEuEw+md6tJzYKOueZQzBX
         sn2oYyMcpLDWmmR5NmjAvEEvSRiw1DtpD4b37m5bN5OuRNqkpe+vNyGEyjvvMf8RBYQ5
         AmeSNU8OTTXKui5ZILrE0SuNa6Ou4h06id78568r008uJg9UPr1oohbi7kbUm6UzgY0Y
         UELz4QVWW5p2V8RSukGTlIEBU03icNJRqUIfCnUZLfpX7s3JQ3cvyY2Upx6ASq52ztPh
         x/40hn6cw11L086InjuZ55PZy9SGuTPVzC2n1PB+Ze1PxLSKJORlgX1T6p0LFwOZUE8E
         CvBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683571897; x=1686163897;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yRrl4pdEm7bcHMVL39k4MTlBNhiV+ni1QLSvMgcuhxY=;
        b=fVUoY1RloDrt2Tf30XMzAHmF2vlKhi31eBdvbFeBVA4H6E6a+sssizGA/q5c6+gWZD
         iwIbnHAlL91Yvpkk4WoofFd8tC5IQQ5tMC7Gic89lpxphLa6/Sut9bR/RRvmw2LJwDzl
         faika27WcjoCVBfFSxpcvcIGktrmWi/2GXyMdVhWaw67VayMPa8sWlxKhmU7zCG2CoLA
         zolS2HHFShKStW51rJ305SuRmY0lSwwQE20WLCyaCjNfMdPRNWxxY14agSdpmdoTgB3+
         BI4J2UIMh6I+AKszMfXg6gtI71TyhMW8tL8KiDb/kBQ/3cxbGoR80ukGzDckzCtrbcOv
         d7Uw==
X-Gm-Message-State: AC+VfDxmFRTuwmg2IA81NraQKhZSP/+jOpJ6/PRUXlZd+kmngWf1YG1t
        uPhiiXW/8pkuk02JhfpmGag=
X-Google-Smtp-Source: ACHHUZ690y9zs1d85ZmPORREqeJzS3HSOM/wdlkoq1RP21PmiUOlBJ+cOy+4s4F+ML8VBUFS9+EmTQ==
X-Received: by 2002:a05:622a:18a7:b0:3ef:2bae:d1e5 with SMTP id v39-20020a05622a18a700b003ef2baed1e5mr24872854qtc.24.1683571897590;
        Mon, 08 May 2023 11:51:37 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id x10-20020ae9e90a000000b0074d4cf8f9fcsm2735291qkf.107.2023.05.08.11.51.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 May 2023 11:51:37 -0700 (PDT)
Message-ID: <735f6002-65b5-4ccb-feff-03d462879ccf@gmail.com>
Date:   Mon, 8 May 2023 11:51:34 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH] ARM: dts: BCM5301X: Drop "clock-names" from the SPI
 binding
Content-Language: en-US
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20230503122830.3200-1-zajec5@gmail.com>
 <20230508185048.1638733-1-f.fainelli@gmail.com>
In-Reply-To: <20230508185048.1638733-1-f.fainelli@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/8/23 11:50, Florian Fainelli wrote:
> On Wed,  3 May 2023 14:28:30 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
>> From: Rafał Miłecki <rafal@milecki.pl>
>>
>> There is no such property in the SPI controller binding documentation.
>> Also Linux driver doesn't look for it.
>>
>> This fixes:
>> arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dtb: spi@18029200: Unevaluated properties are not allowed ('clock-names' was unexpected)
>>          From schema: Documentation/devicetree/bindings/spi/brcm,spi-bcm-qspi.yaml
>>
>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
>> ---
> 
> Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!

Tweaked the subject a bit, because it is the SPI node we are changing, 
not the binding.
-- 
Florian

