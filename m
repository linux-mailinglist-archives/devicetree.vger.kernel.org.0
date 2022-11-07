Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 23B9661FCCC
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 19:08:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232864AbiKGSH6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 13:07:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231462AbiKGSHm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 13:07:42 -0500
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A79C2C64C
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 10:03:53 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id a67so18838383edf.12
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 10:03:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fZR5zfjSiAmXCO6kzpyVLCVBd540rTqhTnPKKui0SCQ=;
        b=TDmmI0uPUe+Vb4w7gQrvJGTlfd9HoHWgnSupc4eYc2lS0G92gqIlJJrL0RRSQy5RUz
         AP+ndcgQMLPQGjxxQ42h01tRkViSBgM0/klbeMxuEsFP6xhelxHnFmkP5g90XGv1aZdC
         fxUH+jSBjJwyWulH7WaKNssF36R7pV/tOfKCfhEzLEoaAFGv2mJHIydWOIvSF4B7JrS1
         cO6H3nR07BEViqWLBoGiwmzi0TxW+RvtlKpYmpnvZj6QKqcvfuhAgHPCDVrTPM9NDhgC
         ZiZBLXicXmSwdZeIskPbZw8sDhhOIobUlWtajgLzmMYQkvaFaECz10wz0F8d3sXo2H+O
         BHbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fZR5zfjSiAmXCO6kzpyVLCVBd540rTqhTnPKKui0SCQ=;
        b=ube8Ev3QrUMdzAcz0LhifD0ENVzUPj1G9A3Utg3BwMSNAEvrK1uLoy2PDVAdy6Svfa
         NqmPIcLRB1yeWV2UpDw7kxvUTT+6hRHoQ3q6RzC86GHMS65hsSFqiOTCkjm/F5TuxO8x
         y3HweZbxgxRcEeow/lnAs7+AIlvuk3ea6ra7kyrDLbiq3SPHP7Ha6mMOnhKpF6CLAzI0
         FfV+nSyQCjFqjG5KhkodWtrvTej7sKcjCjGkfDnlDi6k08S9E+GpMfnF3KnZ3FukWTLd
         MESWucj9gVbPXkH62JwkmEoFG+A4suzUrzctN2imsT2OM/fxBwG0khoJt1MbpGkaaLRX
         iHqw==
X-Gm-Message-State: ACrzQf2lqDChGN4heAWrBXRxu1xAQJvrJpDyYgPNxMR7SLWmOb+H89Ky
        KqNNN49YkiHSEVMmFINgDqA=
X-Google-Smtp-Source: AMsMyM4ZdFtKiADHcMDRjo9ryfcRpyCpU3hx2nNzMJ9tRG9PPFT6XvEWgIiclIkQvANSy9IQVzjiwg==
X-Received: by 2002:a05:6402:606:b0:463:bef9:b64a with SMTP id n6-20020a056402060600b00463bef9b64amr774172edv.422.1667844227353;
        Mon, 07 Nov 2022 10:03:47 -0800 (PST)
Received: from kista.localnet (82-149-19-102.dynamic.telemach.net. [82.149.19.102])
        by smtp.gmail.com with ESMTPSA id i15-20020a17090671cf00b0078d76ee7543sm3660432ejk.222.2022.11.07.10.03.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 10:03:47 -0800 (PST)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andre Przywara <andre.przywara@arm.com>
Cc:     =?ISO-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>,
        Icenowy Zheng <uwu@icenowy.me>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v2 10/10] ARM: dts: suniv: Add Lctech Pi F1C200s devicetree
Date:   Mon, 07 Nov 2022 19:03:45 +0100
Message-ID: <1740432.VLH7GnMWUR@kista>
In-Reply-To: <20221107005433.11079-11-andre.przywara@arm.com>
References: <20221107005433.11079-1-andre.przywara@arm.com> <20221107005433.11079-11-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne ponedeljek, 07. november 2022 ob 01:54:33 CET je Andre Przywara 
napisal(a):
> The Lctech Pi F1C200s (also previously known under the Cherry Pi brand)
> is a small development board with the Allwinner F1C200s SoC. This is the
> same as the F1C100s, but with 64MB instead of 32MB co-packaged DRAM.
> 
> Alongside the obligatory micro-SD card slot, the board features a
> SPI-NAND flash chip, LCD and touch connectors, and unpopulated
> expansion header pins.
> There are two USB Type-C ports on the board: One supplies the power, also
> connects to the USB MUSB OTG controller port. The other one is connected
> to an CH340 USB serial chip, which in turn is connected to UART1.
> 
> Add a devicetree file, so that the board can be used easily.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej


