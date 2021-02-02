Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB7BB30B452
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 01:52:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230197AbhBBAvS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Feb 2021 19:51:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229527AbhBBAvR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Feb 2021 19:51:17 -0500
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B28D7C061573
        for <devicetree@vger.kernel.org>; Mon,  1 Feb 2021 16:50:37 -0800 (PST)
Received: by mail-pf1-x42b.google.com with SMTP id o20so13204866pfu.0
        for <devicetree@vger.kernel.org>; Mon, 01 Feb 2021 16:50:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=27tKhSPFIqMlc7ipauT/Jyzv2QmoBByq5yY9O8csaB0=;
        b=FGsXTgnbWdL/VfLwzPmHXFsdESL4PYfRb3bu9bkTk5A+FSJtSvsRI8iVTfhw/+7tzR
         XO6932S5OtqRqOHKwk5Ytm9iqkR2iZX1aTTolJRNWvnf/CDU4I3p53Y0NtRQ9MMzE3KP
         lIF8TDVxuxzKmyW/416vsts5j+b1IYj4k9kbT6aB7F/ejeDR2WPCxvVl1gptxoOJ9PD5
         cFEzVUPe2njXRgt8TRuo/w6amKL4KVWxf/2/PTqTcn8TMgWJ3La7F99SAQtBH4MoTXPw
         cscIobbem362gSuMW1Tezctu5n7MJMjQIcKu83J8OPMBUuinosJgI0rwGQkIDGGHaWDC
         mqNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=27tKhSPFIqMlc7ipauT/Jyzv2QmoBByq5yY9O8csaB0=;
        b=CZViOgmPmjb3J4Cv9l++vDTgoTGG1ZmrSWfg1MLwyywllOIzkfcUE5hx19rsU/7KHW
         L/pSS26kjrPNr4GZDn7qZKv5Ug29CEKDM4I7PIOWA3H9sWivlGFPfVw2L7NaeygxrFXm
         p5SolFejoW2qpGb50IOW5C2L/mq9CpdGeGBbGXIDiNOkSXo+fu1xphgt7PkRizLDrs8a
         n+jfoEcsp1/bzX57MLMzOAmoNwQNsWAq38uvOB3+p4VCj5wRT9em8kVIXhstH7/B+P53
         VWHcWTexDyue0KlnKFlZmOQM6BuNYcmA1meRxD/utF3T8pO+E/gJAWaXmVnzIpixNmGR
         rRWw==
X-Gm-Message-State: AOAM530iZzo2vmi/DBeRTZBF2qThoFFRNcdWhi2ojXewUnBWtDTahP8N
        JWwhHRBBgb4DlJ3W83CVBCD9wQ==
X-Google-Smtp-Source: ABdhPJxkIhp3kWe0EgoOtzHX/utXf4RXQ3p3onEWFdayXG6hNlmdJuwme8HwjvDmSsXhXoBpnbLVsg==
X-Received: by 2002:a65:590d:: with SMTP id f13mr19575154pgu.38.1612227037223;
        Mon, 01 Feb 2021 16:50:37 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id cq2sm595324pjb.55.2021.02.01.16.50.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Feb 2021 16:50:36 -0800 (PST)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Alexander Stein <alexander.stein@mailbox.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Neil Armstrong <narmstrong@baylibre.com>
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: meson: g12b: odroid-n2: Assign a fixed
 index to mmc devices
In-Reply-To: <1975982.ltkoRUPMKj@kongar>
References: <20210127230852.66686-1-alexander.stein@mailbox.org>
 <8de4d82e-b9a5-f809-ea67-5527f9fdde5f@baylibre.com>
 <1975982.ltkoRUPMKj@kongar>
Date:   Mon, 01 Feb 2021 16:50:35 -0800
Message-ID: <7hv9bbgun8.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Alexander Stein <alexander.stein@mailbox.org> writes:

> Hi,
>
> Am Freitag, 29. Januar 2021, 09:07:45 CET schrieb Neil Armstrong:
>> On 28/01/2021 00:08, Alexander Stein wrote:
>> > Recently introduced async probe on mmc devices can shuffle block IDs.
>> > Pin them to fixed values to ease booting in environments where UUIDs
>> > are not practical. Use newly introduced aliases for mmcblk devices from 
> [1].
>> > [1]
>> > https://patchwork.kernel.org/patch/11747669/
>> 
>> I understand the goal, and this should be done for _all_ boards, not only 
> the Odroid-N2.
>
> I see. So there are 2 options:
> 1.
> Set the mapping for all 3 sd_emmc_* in the top-most .dtsi
> Upside: very easy patch
> Downside: When sd_emmc_a is not enabled "mmc0" will never be available.
> Might be confusing.

sd_emmc_a is (almost?) always the iface used for SDIO devices, which are
not always present.

I would recommend we go with a single mapping in the top-level .dtsi

  SD card -> mmc0  (sd_emmc_b)
  eMMC    -> mmc1  (sd_emmc_c)
  SDIO    -> mmc2  (sd_emmc_a)

it's not exactly obvious why we don't go 0,1,2 == A,B,C but just
document it in the top-level .dtsi.

This approach also has the benefit of having the devices show up how
many/most boards showed up before the async probe changes.

Kevin
