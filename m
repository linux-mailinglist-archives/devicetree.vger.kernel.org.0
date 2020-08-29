Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E98992569EE
	for <lists+devicetree@lfdr.de>; Sat, 29 Aug 2020 21:56:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728391AbgH2T4l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Aug 2020 15:56:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728380AbgH2T4k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Aug 2020 15:56:40 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC784C061236
        for <devicetree@vger.kernel.org>; Sat, 29 Aug 2020 12:56:39 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id c10so2074836edk.6
        for <devicetree@vger.kernel.org>; Sat, 29 Aug 2020 12:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hS82gtSU74N51St4WJZJCm2YeYvE2fwgxXoJTtDqHK0=;
        b=t5ZCDcA1+op0bSc6ISVEnhiucQl+pLFcfA1CKUb1cw41VbjOvpuQzmPhYSHs6XYSrA
         kaKjUY1XlqMqoaqzXFfirCnKk5HgJ/GfxWOyrKy1LWr9b7s2/zynqcJ7iMsVhxfkTh/J
         blBnGZ8nBj9UKeDW9r+qxiX1bHMa7RoQ91INIuFjxjxYBMr3tWYBX6OsUsYaI1+xFkKC
         BSPxgPEjecZYV4DsJJSWEetCKVpVBv5BG86Sqag4Xk2bdXvRQnTT/UeZTvCZjQk+4Mlk
         sIA4B1Hs1P6fe0znv9CyB9aI51zmkWV6+sr2UTIS2wMdRV/HV6oQnZwmS5xU9EthA5hj
         kdBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hS82gtSU74N51St4WJZJCm2YeYvE2fwgxXoJTtDqHK0=;
        b=h1EIEEbzrkni8otv1T8rjXliaMHeC2wfNt7/xQu7kF01GjJ3NBqw5meBdWvac/kYG2
         HFipkVUwVIq/tnnzgaabiGSsBal4hrorVLB2JP9jJTL2FypunkjCHMzH+Dtnuzz+IaM/
         iLKp9dsdyDLcVWXPtndydndT0t1kJz1bvy5KeFVvHXTDdNomiPP+vvPpN87TkXNQ/a7I
         WxmLm3ya3iMVFI3EdebWUkc4HdNBicIsSxUtxIdl1Ey4PYW3PtaTdufdEdI/incgKoH1
         JLvqrFNe/Q8wWrvQmn2qOXcFaICtLG6N3LQTkla3QwNp6h//fs4+Hd88ldgm2RciJrLA
         5ZPA==
X-Gm-Message-State: AOAM531n3nzOcCdpNLzRnJ6n0/VyHN6pHeMKWwIH/h6BFgLNgx2fB2ar
        luXfXYPpyVCZ7Lp1Jkucn974uBvuODmYg2tOvrc=
X-Google-Smtp-Source: ABdhPJykbW3aRLfm36R75esNYyv4HCTY6wsWHSwILu8lvVGZ/d7SktNUWbCljnAFCgBro8I9Z5/Okj7tNME68q85bmI=
X-Received: by 2002:aa7:cf08:: with SMTP id a8mr4583047edy.98.1598730997785;
 Sat, 29 Aug 2020 12:56:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200820121323.564-1-linux.amoon@gmail.com> <20200820121323.564-2-linux.amoon@gmail.com>
 <7hlfi9xgch.fsf@baylibre.com> <CANAwSgTZ23jFPAO46vRg1Dx_Bzi=4Bg6KHE0ozLQGky4p_fgKQ@mail.gmail.com>
 <CANAwSgQLnqDnuQvLv4cvaeTPeBW=H_g5F2aaNue_hb4nKLdovg@mail.gmail.com>
 <f7e6ce5f-02b0-065b-ffcf-2826159f926a@baylibre.com> <1j7dto3ylq.fsf@starbuckisacylon.baylibre.com>
 <CANAwSgQ1Miu73hfdK+cgL3howpekn2xj_5qwGasQZwtQpSGj5Q@mail.gmail.com>
 <1j4koq4x38.fsf@starbuckisacylon.baylibre.com> <CANAwSgTWnHXRFRUrbdCph+eBxL2PNXe6Q4aTXxEU32i7dGS=dw@mail.gmail.com>
 <CANAwSgQV7_4VdGRMgJDMjPFvOS3Nabkqbf2ucE5vqo6zrhxPDw@mail.gmail.com>
In-Reply-To: <CANAwSgQV7_4VdGRMgJDMjPFvOS3Nabkqbf2ucE5vqo6zrhxPDw@mail.gmail.com>
From:   Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date:   Sat, 29 Aug 2020 21:56:26 +0200
Message-ID: <CAFBinCCEJJT_kfJ4qfTEz0R7Mo3ciCGDSw_MJYi_5PyNJA6x5w@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] arm64: dts: meson-g12b-odroid-n2: Enable RTC
 controller node
To:     Anand Moon <linux.amoon@gmail.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-amlogic@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Christian Hewitt <christianshewitt@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Anand

(I haven't re-read all of this discussion, so apologies if something
in my reply doesn't make sense)

On Sat, Aug 29, 2020 at 6:31 PM Anand Moon <linux.amoon@gmail.com> wrote:
[...]
> Just want to clear my confusion on RTC INT gpio setting is not needed.
> I did not find any other example to support this changes.
> So I have enable the debug logs on rtc-pcf8563.c with this current
> patch at my end.
my understanding is that your testing procedure is to simply use your
original patch and see if rtc wake-up is working.
since GPIOAO_7 is not explicitly mentioned in your testing procedure
I'm assuming that you're not configuring it anywhere.
Kevin's concern is what happens when that GPIO is configured
incorrectly (for example by some u-boot bug, firmware issue, ...). for
example: have you tried to configure GPIOAO_7 in u-boot as output low
pin and see if rtc wake-up is still working?

In your previous replies you mentioned various pin mux settings
related to TSIN_A_DIN0 //  TDMB_FS // TDMB_SLV_FS
I don't know how those are related to the RTC
My suggestion is to look at
arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi - it has a
eth_phy_irq_pins definition and apply something similar on Odroid-N2


Best regards,
Martin
