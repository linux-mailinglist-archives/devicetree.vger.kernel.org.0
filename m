Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9DF8D63CB08
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 23:28:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229544AbiK2W2G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 17:28:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229512AbiK2W2F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 17:28:05 -0500
Received: from mail-vk1-xa33.google.com (mail-vk1-xa33.google.com [IPv6:2607:f8b0:4864:20::a33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35A5C58000
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 14:28:04 -0800 (PST)
Received: by mail-vk1-xa33.google.com with SMTP id g137so1295446vke.10
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 14:28:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0wnx+Yj/ET0L5sMjWSq8jL4BSlGprBa4eYplIOzB+hE=;
        b=Xtu9mPq9OsoOJ5/HyUUw4N6+aDJS1VaqDqAztwYmbM6xeO76ZvHt/v4ovIsVV0U9Pa
         WNUtZ6JOIoD/6veHlAP7vdM+b4Vop2rXdgAbCHpYiDLoMeGP5xRYP9SBXCcD/Wks4gM1
         gs/0FmFzCIpwWLCs/KAPdZ7qAJ21KOc4RQEyogm8n5rcN2sAQ5lgGhdlquCuOIAzruhg
         xq73ws8mQFhr4wfibLBD2RHkGp8/UlXvGt/Vbwl5oX3X6+z+Wz3AjmyxFOUXgaDz79MQ
         znSX1RtVOY6CjQgfez8AS4dwxUB0TtzQOsTFiSGg0HrHtTuJZ7mSQata+Kh0nI2aB1xw
         XjEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0wnx+Yj/ET0L5sMjWSq8jL4BSlGprBa4eYplIOzB+hE=;
        b=HbdRRi+thFRUa1/Ue20S1tjQsbIURcFQpfozsDJxX59FWxA2WNDR/aBjngBJLBwxRn
         TXAot2P7Vnhs2jzZtYXPilekZZcw4vWupVZNviIXt3oenXKFpamLT8K43S0LCCSU+Zor
         W5b6aLBNRbgJTYE/l+tCBIF8fekv7B2WhnRHLi5jI0mNCjrsx//UzUDLc6g5TLW8tF1e
         rJDdewSL7EvnYpvBHq8lDpMscNowSJXib08ZJlnc0pFST4jPUMOu1RK089edTrezxaJS
         zj25ohXS8FcJIwiqirEo+t3zo+gxNOXxBhyUM+wYDhUGjbkRt2dOiPqk7F3H6Icn5bpQ
         xmLA==
X-Gm-Message-State: ANoB5plx+kUGZSzjt00K1QCg0uOn3g9te6ucF5ir9DDhgiJQGBRxVjb1
        bHylhHoXCyKAixQRHQZkYzt3w2qJJSNEMWvzVFcZ4Ckkwu1D5Q==
X-Google-Smtp-Source: AA0mqf6K/n7sJjlMOkz1EjE0N/7pUXVbfnNDPhY/26wGgeJcG+y3eq9Oe2bp6kfjKhsiCGjjopQKtNsN0ZWs5lLUKD4=
X-Received: by 2002:a1f:1bc9:0:b0:3b5:888e:f142 with SMTP id
 b192-20020a1f1bc9000000b003b5888ef142mr23422629vkb.16.1669760883068; Tue, 29
 Nov 2022 14:28:03 -0800 (PST)
MIME-Version: 1.0
References: <20221003073443.1511266-1-paweldembicki@gmail.com>
In-Reply-To: <20221003073443.1511266-1-paweldembicki@gmail.com>
From:   =?UTF-8?Q?Pawe=C5=82_Dembicki?= <paweldembicki@gmail.com>
Date:   Tue, 29 Nov 2022 23:27:52 +0100
Message-ID: <CAJN1KkzczBEhDjmqP2of=SvM9eQsXUq2-ZW_+V4itzU6-aRLUA@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: dts: kirkwood: Add Endian 4i Edge 200 board
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Gregory Clement <gregory.clement@bootlin.com>,
        Andrew Lunn <andrew@lunn.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

pon., 3 pa=C5=BA 2022 o 09:34 Pawel Dembicki <paweldembicki@gmail.com> napi=
sa=C5=82(a):
>
> Add Endian 4i Edge 200 is 5-port firewall.
> It have also clone: Endian UTM Mini (The same hardware, with added WLAN
> card).
>
> Hardware:
>   - SoC: Marvell 88F6281-A1 ARMv5TE Processor 1.2GHz
>   - Ram: 512MB (4x Nanya NT5TU128M8GE-AC)
>   - NAND Flash: 512MB (Micron 29F4G08AAC)
>   - Lan 1-4: 4x GBE (Marvell 88E6171R-TFJ2)
>   - Lan 5: 1x GBE (Marvell 88E1116R-NNC1)
>   - Storage: MicroSD Slot
>   - MCPIE: MiniPCIe Slot present [fitted with SparkLan WPEA-110N/E
>           (Atheros AR9280 chipset) in Endian UTM Mini WLAN only]
>   - USB: 1x USB 2.0 port
>   - Console: RJ-45 port
>   - LEDs: 3x GPIO controlled
>
> Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>
> ---
> Changes in v2:
> - added MIT licence option
> - removed "cpu" switch port label.
>

Hi all,

Gentle reminder for this patch.

Best Regards,
Pawe=C5=82 Dembicki
