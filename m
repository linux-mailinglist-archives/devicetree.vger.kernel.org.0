Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B28FA48BEB4
	for <lists+devicetree@lfdr.de>; Wed, 12 Jan 2022 07:51:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237370AbiALGv1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jan 2022 01:51:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235485AbiALGv0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jan 2022 01:51:26 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 719A6C06173F
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 22:51:26 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id o15so4617026lfo.11
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 22:51:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wirenboard-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=zaGI81EMHsifAdOT68564xLwpsfUEIhoHCNJo7vjo/o=;
        b=DlvgHDgkIwVQ0aJwD8N9SwuWuGSx9B4TzE3bg1xIuNECz8BK5tYxp5dUULLAI00YCv
         2OPhMAVAQHI6v4DicAiOxj+UO+Em7O4zhjVs4hXg/EgqQVxTbIFNAa9eaI0xPJqUHGUH
         CVMM+p64xcHyo0gR29Ox/4Kd8CQt23padbD1FBvR8nQCpz/Q2RhqNOgEpD0PGckBbOPn
         KiDNYy/pkh6cQPo9QOGqT4bAOn1igDxX8GD7WQW0feU1O2gV49MCmM8Q1VhOgv6ni5sT
         +DjTV3MvrohLdg773hxwbhednCj7CikJ6FOMJDrNAMpI16xmQDrIk4zlBdMq5gNK0593
         Kaaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=zaGI81EMHsifAdOT68564xLwpsfUEIhoHCNJo7vjo/o=;
        b=bS7yKcuKrVdZwulNFgGens6saDvgdT7k9f9HmmeBtU44BOqSqB+DV8Slhk9iJtCeI9
         BReom23znW4Y1/7GqLnAK1jTda/orzawBlATW8KxBPVmze5EDJS79t+jt4iQ0EcH4ViW
         BuvPNeLqmlsO7y1tGC/TtBioe6qFY3jtUsW0H2/1eRXPORvdN4KnrifL+QGd9nOz0JPS
         ZApeXBAVZvC37B1i6tHQ1o4eH9CTxom7FvmzCefa0DG4UbYnZZx/G08/kYIN9vcz2Ahk
         nd3BbqUv8VyLKGAzVHY5rSVUIlmFYRqYkmiDVqelCda41CyCV8oc7FbRXUwD/Bu3rE+8
         diTw==
X-Gm-Message-State: AOAM5332vnQH9MP7iTfOtA3KrxpMTVxj39zYUaBnhmlPlQX0U0WGzFQs
        B8Amf6nBYSa7sMKF0VoryNiJQrJVyZLueQ==
X-Google-Smtp-Source: ABdhPJzAfneeThbAYnI4gqXxT5vM37c2z6/rJ3twSQEcsuESo0C5nTVEbtbG12XfDej7pYo2Idcowg==
X-Received: by 2002:a19:e309:: with SMTP id a9mr5847461lfh.19.1641970284767;
        Tue, 11 Jan 2022 22:51:24 -0800 (PST)
Received: from [192.168.1.213] (81.5.110.253.dhcp.mipt-telecom.ru. [81.5.110.253])
        by smtp.googlemail.com with ESMTPSA id b20sm1495009ljr.86.2022.01.11.22.51.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Jan 2022 22:51:24 -0800 (PST)
Subject: Re: [PATCH v2 0/3] add support for Allwinner R40 CAN controller
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev,
        linux-can@vger.kernel.org, Wolfgang Grandegger <wg@grandegger.com>,
        Marc Kleine-Budde <mkl@pengutronix.de>,
        "David S . Miller" <davem@davemloft.net>,
        Jeroen Hofstee <jhofstee@victronenergy.com>,
        Gerhard Bertelsmann <info@gerhard-bertelsmann.de>
References: <20220111155709.56501-1-boger@wirenboard.com>
From:   Evgeny Boger <boger@wirenboard.com>
Message-ID: <4c7fa5f4-8a65-c840-7928-5e78559a4732@wirenboard.com>
Date:   Wed, 12 Jan 2022 09:51:22 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220111155709.56501-1-boger@wirenboard.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-GB
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

11.01.2022 18:57, Evgeny Boger пишет:
> Allwinner R40 (also known as A40i, T3, V40) has a CAN controller. The
> controller is the same as in earlier A10 and A20 SoCs, but needs reset
> line to be deasserted before use.
>
> This patch series introduce new compatible for R40 CAN controller,
> add support for reset line in driver and add the corresponding nodes
> to the SoC .dtsi file.
>
> The CAN IP was documented in early V40 datasheet [1]. It also fully
> supported in vendor BSP. However, CAN description was removed from
> more recent A40i, T3 and R40 user manuals and datasheets.
> Anyway, we verified that the CAN controller is indeed there and tested
> it extensively on A40i-based custom hardware [2].
>
> [1] https://linux-sunxi.org/File:Allwinner_V40_Datasheet_V1.0.pdf
> [2] https://wirenboard.com/en/product/wiren-board-7/
>
> Changes in v2:
>    - sort pinmux nodes alphabetically and mark them with omit-if-no-ref
>
> Evgeny Boger (3):
>    dt-bindings: net: can: add support for Allwinner R40 CAN controller
>    can: sun4i_can: add support for R40 CAN controller
>    ARM: dts: sun8i: r40: add node for CAN controller
>
>   .../net/can/allwinner,sun4i-a10-can.yaml      | 24 ++++++++
>   arch/arm/boot/dts/sun8i-r40.dtsi              | 21 +++++++
>   drivers/net/can/sun4i_can.c                   | 61 ++++++++++++++++++-
>   3 files changed, 105 insertions(+), 1 deletion(-)
>
oh, v1 is already in Linus' tree. Please ignore this series then.

I'll send patches addressing the comments soon.


