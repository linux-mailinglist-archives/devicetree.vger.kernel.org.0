Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 695276E450E
	for <lists+devicetree@lfdr.de>; Mon, 17 Apr 2023 12:21:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230002AbjDQKVw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Apr 2023 06:21:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230391AbjDQKVr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Apr 2023 06:21:47 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83A9372B2
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 03:20:51 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id xd13so28786930ejb.4
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 03:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1681726728; x=1684318728;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IEKwLXsBEauVzf8PBHcbltO1uOVycYMbAPiN0uQCZOA=;
        b=z1/4XUxTRf+MxwZzFrAn5VXQJVSFBh8AFpQkl5e5QodhhBhbXZHmHZTtLsIkeLynQ1
         5dKtcSHqiofPKSpkxUbr5i6miGBwVLAwQN+1tNgsYb3kmwhyccuWAm3GA8zu+0dHx/ap
         SNzLiQvrIhSQKVmsFTZdc4IfZ/R2FC3BXLknv87jor3b9RiB/Sok76iLZIcX9XSp4EHW
         cV2Py4YJgfTtfhsVuDqbBeZv12kJCfl+ioflkiKsPwEQOucO3iIWVe1CzZ90+gjn29r6
         +OI+APMa78pReWIWVGEFqkKbHeJYC/jc4ZYDoTWYWQ4aff+LqqeaHGiWUpPBo1jVnURR
         3RuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681726728; x=1684318728;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IEKwLXsBEauVzf8PBHcbltO1uOVycYMbAPiN0uQCZOA=;
        b=jkuYx0rohmEsuhdiZVWuxjhTA6dBUCR6cbQqFbU6/rtF16iCEUTZ4/tmpEHSu1C5Nd
         GhwLNUcyz4k85CkO/jmi86If+eIkw6khOFxeqehHpUipg1Knfh21X2MPjfbEcJ2hLA9d
         N/FRzkDT9WtFaFSw/tZIk+z2/33rLtYSM6qDJWsQRYCUK3Y0BWl3kf63JmTjJh6unVbb
         13x0hKplITN9nLNGR3IzgcURpzsovjXaXMxkmN792rlyGyZa+tGk21+MFpV4EX239ShH
         1YipHezRgnoLuG7vKo4Dv/1i8Q2dGiZCy9XJEbfYZulOMfeqfVNKsunCMSVtdAuXArHo
         Q4DA==
X-Gm-Message-State: AAQBX9cXCOt3EiMRpTJf9fBrlP5JmbZ6MDlq8NBGYjqpAv8HCasRM4Gw
        PM1owXnbQCXQFLtPpsfwfUgO/v0uWYpn9ttKqnIF/A==
X-Google-Smtp-Source: AKy350Yn97b8YdvYRltq539a9T88Tdd9ctYhN1bmF84VQIX609OSCsLtqz6Ga+Pe34Pw2ZZURwGa6g==
X-Received: by 2002:a7b:ca59:0:b0:3ef:5a4f:430 with SMTP id m25-20020a7bca59000000b003ef5a4f0430mr11274672wml.11.1681725905871;
        Mon, 17 Apr 2023 03:05:05 -0700 (PDT)
Received: from localhost ([2a01:e0a:28d:66d0:92d9:442d:a276:285d])
        by smtp.gmail.com with ESMTPSA id p8-20020a7bcc88000000b003f04f0c5a6fsm11463173wma.26.2023.04.17.03.05.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Apr 2023 03:05:05 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Mon, 17 Apr 2023 12:05:04 +0200
Message-Id: <CRYY2V3HJ0CP.96JQ18PLZB3C@burritosblues>
Cc:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <sterzik@ti.com>, <u-kumar1@ti.com>, <jneanne@baylibre.com>,
        <jpanis@baylibre.com>, <aseketeli@baylibre.com>
Subject: Re: [PATCH v2 0/5] arm64: dts: ti: k3-j7200-som-p0: Add TP6594
 family PMICs
From:   "Esteban Blanc" <eblanc@baylibre.com>
To:     "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>,
        <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>
X-Mailer: aerc 0.14.0
References: <20230414112843.1358067-1-eblanc@baylibre.com>
 <714a56b1-438c-7aad-920b-f3f1d72afc5f@linaro.org>
In-Reply-To: <714a56b1-438c-7aad-920b-f3f1d72afc5f@linaro.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri Apr 14, 2023 at 1:36 PM CEST, Krzysztof Kozlowski wrote:
> On 14/04/2023 13:28, Esteban Blanc wrote:
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
>
> Why? DTS cannot be merged with drivers, so if you insist on such
> dependency then:
> 1. Your patchset is broken,
> 2. I actually does not understand why,
> 3. NAK - don't merge DTS into driver branches.
>
> You probably are misunderstanding branches and dependencies.

There is no dependency indeed. We thought that dt-bindings patch at least h=
ad
to be applied before this DT series even if it is not a 'dependency', the o=
ther
link was a mistake. I will remove these misleading links in next cover-lett=
er.

Thanks for your time. Best regards,

--=20
Esteban Blanc
BayLibre
