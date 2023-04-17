Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F0AB06E44B0
	for <lists+devicetree@lfdr.de>; Mon, 17 Apr 2023 12:03:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230302AbjDQKDS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Apr 2023 06:03:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230521AbjDQKDA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Apr 2023 06:03:00 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D3258A76
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 03:01:48 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id m39-20020a05600c3b2700b003f170e75bd3so1147929wms.1
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 03:01:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1681725704; x=1684317704;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ulDyeTfM/dLc8xW1I8CjbmB4vSY2qudxnA5Iz8lTqFw=;
        b=Juvg+xtZc7vlWFJjzGXhPzM9BeoL2I0ec3x/42sjfHioTj3hOI2mOZV/RYn5xvoUf/
         SxoBpSW/ZisNsZIG6bjQoC4LfCCPGpKTG/4Tzytcpnf1gyJ1myyT3jaYZzt6ca/SSjxB
         PLCHn4S1L0sINar49+MPFb4llc9eaPKnJRyHd+kSrF5ctZg94RQHpoI1rLcUT5qnRedj
         QZ79N4875RTp5kNBCjY6IWnlDJ2W3FALG9iHzRSqywi1qwnbv4fB55nZR5Taw5OHb4xa
         TBPNG6HWRNE/LpgIm/4A6JlEvEnKRXknT57uJftdpqn+W3qTs3zBhiODRFXuEI6Nygw6
         PcrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681725704; x=1684317704;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ulDyeTfM/dLc8xW1I8CjbmB4vSY2qudxnA5Iz8lTqFw=;
        b=b749i1V51TDWJt5WMSWLmeynZJTJT1tGPrvumBnjyi0cvu2Is4odMWfFLgARQ2hdOo
         T1ghc90D2EK+Ois3UkhLbskodzHSwIywJOQGN3h27kMPTvvc+xaK7QTVB8kPAMltcl+N
         opaM34h50X+AosXl0cfEDB8VWBZY1SUuInBFTrgFgDwJS2KoDaXDJS6sqPis650hkU/L
         fXj++g01hUMK0KUc9r9/+ZM5QfBEDvD+lzoGEBYz+MCYaWuzJ+LEpuXgUysAZpV9efey
         XDb9YlKsyF1TeeyKM/t1dHmE9dgQNGfowhH/EEvwPQrUDb5YKV2QEN1FyVgJ1B7pfxJ3
         8DeA==
X-Gm-Message-State: AAQBX9desV0RgvdHw5hpN2yVODHmfDXfmQOoxTwWmEBj+xT0xJiV92dd
        dwIffMkTCn/NiHSn+rO/W+l/tQ==
X-Google-Smtp-Source: AKy350Y9qhQaZjIQAx6s8l4L/Cr75yfwxzT7F+pVDDC5A9nMjb0Apur8IOipa70GeI78x11Uy41owg==
X-Received: by 2002:a1c:f719:0:b0:3f0:a9b1:81e0 with SMTP id v25-20020a1cf719000000b003f0a9b181e0mr10028830wmh.19.1681725704116;
        Mon, 17 Apr 2023 03:01:44 -0700 (PDT)
Received: from localhost ([2a01:e0a:28d:66d0:92d9:442d:a276:285d])
        by smtp.gmail.com with ESMTPSA id v10-20020a05600c470a00b003ef36ef3833sm15409232wmo.8.2023.04.17.03.01.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Apr 2023 03:01:43 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Mon, 17 Apr 2023 12:01:42 +0200
Message-Id: <CRYY0AFI63HC.MPYLE2JQ49AK@burritosblues>
Cc:     <vigneshr@ti.com>, <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <sterzik@ti.com>, <u-kumar1@ti.com>, <jneanne@baylibre.com>,
        <jpanis@baylibre.com>, <aseketeli@baylibre.com>
Subject: Re: [PATCH v2 0/5] arm64: dts: ti: k3-j7200-som-p0: Add TP6594
 family PMICs
From:   "Esteban Blanc" <eblanc@baylibre.com>
To:     "Nishanth Menon" <nm@ti.com>
X-Mailer: aerc 0.14.0
References: <20230414112843.1358067-1-eblanc@baylibre.com>
 <20230414180551.urqvxtxtaewoz5xa@lustfully>
In-Reply-To: <20230414180551.urqvxtxtaewoz5xa@lustfully>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri Apr 14, 2023 at 8:05 PM CEST, Nishanth Menon wrote:
> On 13:28-20230414, Esteban Blanc wrote:
> > TPS6594 is a Power Management IC which provides regulators and others
> > features like GPIOs, RTC, watchdog, ESMs (Error Signal Monitor), and
> > PFSM (Pre-configurable Finite State Machine). The SoC and the PMIC can
> > communicate through the I2C or SPI interfaces.
> > TPS6594 is the super-set device while TPS6593 and LP8764 are derivative=
s.
> >=20
> > This should be applied on top of other patch series:
> > - https://lore.kernel.org/all/20230406075622.8990-1-jpanis@baylibre.com=
/
> >   For core MFD driver
> > - https://lore.kernel.org/lkml/20230414101217.1342891-1-eblanc@baylibre=
.com/
> >   For regulator driver
> >=20
>
> https://lore.kernel.org/lkml/20230330030046.qr5dnft6klejkxkp@ungreased/
>
> has anything changed?

Yes:
- Harmonize regulators names across the different boards
- Adjust AVS voltage range
- Remove some outdated comments
- Add PMICs to J784S4 board
- Compatible string modified to match dt-bindings
- Add gpio-controller and gpio-cells properties

I missed a few of theses on the cover letter, sorry about that.

Best regards,

--=20
Esteban Blanc
BayLibre
