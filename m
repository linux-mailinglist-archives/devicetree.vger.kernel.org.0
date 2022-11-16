Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58D8B62C875
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 19:56:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234129AbiKPS4A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 13:56:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229536AbiKPSzm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 13:55:42 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02481654EF
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 10:54:44 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id ay14-20020a05600c1e0e00b003cf6ab34b61so2359137wmb.2
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 10:54:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/ybyDfMaptLNYKWD0owp2GZmuItR1V5USB+ky4BlQ1A=;
        b=m57mzC8x4EHy9wnOUTbmr5oByjJbg4hWZTLniudXGnhzS8eDLGMtVAMcytNLnF+H/V
         EQtO6ntAziH8YfUOLxUQjHZJvHPrtpbDc9A1cpF5ELFLJ9pk5E/u6W8biAGff5h+BOCk
         dzcuwgz8LzbGN/E22k5xsjIN9Rh+W2qkde7aiyaDZFZGYKShPg1i0NzHg4PioNc4TrtW
         y5qRhV5F463VgZgJ13o9pXYOyi7jWkKmXN5pQgPEq7I6Cx/cZi/tUV0mPK7jOFYu19WG
         Ihr2VfC69YhVOZseqnkF9MDlCQNklCee736kCJoxCdLH5ufL8GiZ2ouCtYAfGGC+DY09
         xRYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/ybyDfMaptLNYKWD0owp2GZmuItR1V5USB+ky4BlQ1A=;
        b=cgXWSUkWrbU4bQ2x/6nwCfxfXUx+I34H9GcSAWh9Xbe6CxvjVOsC9ih7h3psrTiUTm
         uNFZK85/Vymd2H42L2r5JyEeMeFhw7LLGV3OfIynPc9P/jHjvjzADLGTd276wDkNESbF
         BrS7y9DnnTmkn6JOJyYujpnt5LyccWmkkAEQm6afM/Np4tLIvIC7YdMkGZ+sQVG9Xhkd
         9nLFXMZedjqRlVKNFYfQSVU/jR2W5G/kmU9i0bTmtdoo1ZiwUHtR5sgzifnIx2PyTnpW
         /EfbKK2WgLtgvXrLwlSGKMFDPQB/w5Tp51GQDHRLGdReWUVQjTK9il7Z9CnLUT9UHuhw
         rZYA==
X-Gm-Message-State: ANoB5pma0Tmruk5D5ucDGEGGxr8RAV2w+sTWQbBE0en7m1oPtP3eevg1
        wQv+HUbrfTxjJ9f0CNE1vjo=
X-Google-Smtp-Source: AA0mqf6ghleNAdh1yxVRZLLOw9YwnmvyHS2SCQYUTSX34rkHE7Eqi+hHbt2a9W/AYOiRADQLswPV/w==
X-Received: by 2002:a05:600c:4e51:b0:3cf:713a:c947 with SMTP id e17-20020a05600c4e5100b003cf713ac947mr3152876wmq.40.1668624882609;
        Wed, 16 Nov 2022 10:54:42 -0800 (PST)
Received: from kista.localnet (82-149-19-102.dynamic.telemach.net. [82.149.19.102])
        by smtp.gmail.com with ESMTPSA id 9-20020a05600c228900b003b3365b38f9sm2909469wmf.10.2022.11.16.10.54.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 10:54:42 -0800 (PST)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Samuel Holland <samuel@sholland.org>,
        Andre Przywara <andre.przywara@arm.com>
Cc:     Icenowy Zheng <uwu@icenowy.me>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH] ARM: dts: sunxi: H3/H5: Add phys property to USB HCI0
Date:   Wed, 16 Nov 2022 19:54:41 +0100
Message-ID: <13140087.uLZWGnKmhe@kista>
In-Reply-To: <20221110005507.19464-1-andre.przywara@arm.com>
References: <20221110005507.19464-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne =C4=8Detrtek, 10. november 2022 ob 01:55:07 CET je Andre Przywara napis=
al(a):
> As many other Allwinner SoCs from the last years, the first USB host
> controller pair in the Allwinner H3 and H5 chips share a USB PHY with
> the MUSB OTG controller. This is probably the reason why we didn't have
> a "phys" property in those host controller nodes.
> This works fine as long as the MUSB controller driver is loaded, as this
> takes care of the proper PHY setup, including the muxing between MUSB
> and the HCI.
>=20
> However this requires the MUSB driver to be enabled and loaded, and also
> upsets U-Boot, which cannot use a HCI port without a "phys" property.
>=20
> Similar to what we did in commit cc72570747e4 ("arm64: dts: allwinner:
> A64: properly connect USB PHY to port 0"), add the "phys" property to
> the OHCI0 and EHCI0 DT nodes in the shared H3/H5 .dtsi file.
>=20
> This is not only the proper description of the hardware, but also avoids
> a nasty error message in U-Boot triggered by a recent patch. (The port
> never worked in host mode, but the error was suppressed due to a bug.)
>=20
> When using the MUSB port in OTG mode, this also fixes host mode
> switching, so people can use OTG adapters to connect a USB device to
> port 0.
>=20
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Applied, thanks!

Best regards,
Jernej


