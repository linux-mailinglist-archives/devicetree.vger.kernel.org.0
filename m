Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 518F869789E
	for <lists+devicetree@lfdr.de>; Wed, 15 Feb 2023 10:06:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233410AbjBOJGB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Feb 2023 04:06:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233117AbjBOJF6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Feb 2023 04:05:58 -0500
Received: from mail-ua1-x92c.google.com (mail-ua1-x92c.google.com [IPv6:2607:f8b0:4864:20::92c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82B5529E33
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 01:05:57 -0800 (PST)
Received: by mail-ua1-x92c.google.com with SMTP id v5so2980207uat.5
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 01:05:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OK/Q/phuym1TfWPA1EBQC/91tXucWH+AbkqODxHd+vc=;
        b=Ydmn7Xt5AYbZObMFlW/egeupY8qPMzmU1xlPaTedIdTaL5Ez0/yWJhFZIZ3aZXVvBg
         nrdrAeik9VNFA7h2ki1EPQFikgu49LxPMUrmcd9F3sk+RrseVz/RFPOZ+kBo7dNxht+x
         rDzU1+l1Utv8dlBbRI7I4zC/8valm/1auAciZ3SPUXpkbG4qqTC2zryrFlsI30ZyDoNb
         wwfQYAEcjhFIVA+gSJqxHHOAiXNw1CeHIVi+0x9ECY46y7uQgA+OE+de9whr1yFj55dx
         VDtys2BsD8LgZj4BWBOZZp5NWoxwPD7vM9EtdzOp1NkeWr8TEGQ6+9w9SkdQgovZef92
         GU7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OK/Q/phuym1TfWPA1EBQC/91tXucWH+AbkqODxHd+vc=;
        b=Cmijm2mXp10F6+aDFiMzfzIFnHqTjZ1+NaRK7QGU9TndX0eNbSqQMi2aMZHrsnJZjR
         qBKk0xXxKPT+sJ3C/lRFLzhA6/AmWj9HzwawkpGZkLqOEZPH6jhlO0BQoHfMmxrW6mZg
         jufgv55udQL5Nj7OfblV0n2B0Wx4cBIdB79S1cerAXUDXYioZYB3uAR9mXWMA1dYnZ12
         Eo5J1r3LkRcifAjVREp1CjQdm6UbwHYZaQ3M3txFaZBjsSRwt7cYtzSPGYXhkWA6x2YJ
         EICK4K+4Z0yTAxkRJseJxkjmHiI7fqR/JuddQzLsUg5G+YSDYpas8z7Pb61zbXD9us2i
         j+nA==
X-Gm-Message-State: AO0yUKWaWKFJhd3TiTuBoDIa6eMEWDZKbsIOCBv8yHysPuBwInQV0/EF
        LQ4KbExfwVgTX+k1pKPNl+NHsIBkh5/halqaPlkfEw==
X-Google-Smtp-Source: AK7set/IPQ3wITuV5FFkFXqZdGFftAn+e/QA1ZQpZsxkd41HqT4E0+lCOoPrmpxpG6MkxmVXzPQcZEQxKrYNFzi4IsE=
X-Received: by 2002:ab0:654d:0:b0:68a:7054:58a6 with SMTP id
 x13-20020ab0654d000000b0068a705458a6mr184058uap.22.1676451956432; Wed, 15 Feb
 2023 01:05:56 -0800 (PST)
MIME-Version: 1.0
References: <20230214155715.451130-1-brgl@bgdev.pl> <602b1c64-db73-b6e3-020c-f2b24085a986@quicinc.com>
In-Reply-To: <602b1c64-db73-b6e3-020c-f2b24085a986@quicinc.com>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Wed, 15 Feb 2023 10:05:45 +0100
Message-ID: <CAMRc=McUOSZiW8nRO-o32y0XL4i+LCF2Z380QX0uDgv2J=cuZA@mail.gmail.com>
Subject: Re: [PATCH 0/3] arm64: dts: qcom: sa8775p-ride: enable relevant QUPv3 IPs
To:     Shazad Hussain <quic_shazhuss@quicinc.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 15, 2023 at 8:06 AM Shazad Hussain
<quic_shazhuss@quicinc.com> wrote:
>
>
>
> On 2/14/2023 9:27 PM, Bartosz Golaszewski wrote:
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > This enables the QUPv3 interfaces that are exposed on the sa8775p-ride
> > board: I2C, SPI and the GNSS UART.
> >
> > Bartosz Golaszewski (3):
> >    arm64: dts: qcom: sa8775p: add the i2c node for sa8775p-ride
> >    arm64: dts: qcom: sa8775p: add the SPI node for sa8775p-ride
> >    arm64: dts: qcom: sa8775p: add the GNSS high-speed UART for
>
> Hi Bartosz,
> This instance is for BT HS UART , not for GNSS.
> For GNSS we have uart12 (0x00A94000).
>

Thanks, I'll rectify it in v2.

Bart
