Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04713367441
	for <lists+devicetree@lfdr.de>; Wed, 21 Apr 2021 22:45:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243648AbhDUUpc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Apr 2021 16:45:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245680AbhDUUpc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Apr 2021 16:45:32 -0400
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B4BDC06174A
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 13:44:45 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id e9so5354392plj.2
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 13:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=LqeeZgChcK3wdcOs4dDdba7xt3RLZI12xLEaMRltL8w=;
        b=ANQIhEfici6n+E6aXWErlQi26kq9j670L8srhMDBeURjitFFDdhjOPd4qFaIAEd0Wt
         OK2Ha/hO4tO5fvrDPp8l0TMsGY9JxrxRnGxmamGYVm+rWckLnv3T6nv2I34VUd3jMbwE
         Lo9qQaSooYIfOEjwciBHI0tSqaWzcs+4d1emK0JEBzTjzAItXs6pHGgDLlRh6Htotocm
         6f5gdolPfDSFXLn3YVC+9/WIY1wtztG3nHnlxDvjg9HRqGD+B84Mdb1SFHCN8d6PVn6+
         944QCofIedp+MZ1h/sJO07hF8i+W16Y5RadTZ9QxeLd1F3/rCh2/ncLmU+yI7rs8Bsnw
         zkEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=LqeeZgChcK3wdcOs4dDdba7xt3RLZI12xLEaMRltL8w=;
        b=lWRDcFZl0WnbbSdmXY78K5gd6yjsZnbkmCNLhxHcQbYHT55bw/TxUJlCqU0/IE8XTe
         SJuJkMSvyEnnvBzCr9uNKAfe3vcE/dPV93YYdNTVsMqwlzYORtf+8oj0s+NOZi47/bM4
         Bvk9zuXDqtwMPDeCgRfknb7ZZaHxnns4qAUgE8qDob8b2n0uzd2PgBkxVS5e4hRJLZfz
         0wM5cEBBHL0cIGRkrRxk+FyD/ZDTPNtwF+uRnvddsDCaQOrWnM3gV6CK/w/9BtyFRYtu
         90N6bAy1B893p3XgkFYUDvcWyUmwVya+ov6SzpTSiFBWLycM8v6cCgdy6BzbrAz8o5a7
         xGMg==
X-Gm-Message-State: AOAM531AR/AwrUcloiYHX9NUrc8Sxsykq1vSPxwAi/BN7lqSaa6UMHlm
        sw7cKHJiUxrPq7mP4pZ/jD7KaQ==
X-Google-Smtp-Source: ABdhPJxIxAXLVcAkfgmjFPBmQheFcOxGtvyZBWfr+pibd0xIENT7Dp7m40rQgH4lvmHqtOYRBWSvGA==
X-Received: by 2002:a17:902:d3d3:b029:ec:ce64:a8ad with SMTP id w19-20020a170902d3d3b02900ecce64a8admr108381plb.68.1619037884784;
        Wed, 21 Apr 2021 13:44:44 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id t184sm244636pgt.32.2021.04.21.13.44.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Apr 2021 13:44:44 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Arnd Bergmann <arnd@arndb.de>, SoC Team <soc@kernel.org>,
        devicetree@vger.kernel.org,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
Subject: Re: [PATCH] arm64: dts: amlogic: misc DT schema fixups
In-Reply-To: <CAL_Jsq+Z2Mxy_m1QpqgFi0M7DGqMYUwZhrgk_CP7Vy1frAzUcA@mail.gmail.com>
References: <20210420230402.8807-1-khilman@baylibre.com>
 <CAL_Jsq+Z2Mxy_m1QpqgFi0M7DGqMYUwZhrgk_CP7Vy1frAzUcA@mail.gmail.com>
Date:   Wed, 21 Apr 2021 13:44:43 -0700
Message-ID: <7hmttrbc5g.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rob Herring <robh+dt@kernel.org> writes:

> On Tue, Apr 20, 2021 at 6:04 PM Kevin Hilman <khilman@baylibre.com> wrote:
>>
>> Take a pass at cleaning up a bunch of warnings
>> from 'make dtbs_check' that have crept in.
>>
>> Signed-off-by: Kevin Hilman <khilman@baylibre.com>
>> ---
>>  .../devicetree/bindings/gpu/arm,mali-bifrost.yaml  |  5 +++++
>>  .../bindings/media/amlogic,axg-ge2d.yaml           |  1 +
>>  Documentation/devicetree/bindings/media/rc.yaml    |  4 ++++
>>  .../devicetree/bindings/sound/amlogic,t9015.yaml   |  1 +
>>  arch/arm64/boot/dts/amlogic/meson-a1.dtsi          |  4 ++--
>>  arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi  | 14 +++++++-------
>>  .../arm64/boot/dts/amlogic/meson-g12b-gsking-x.dts |  2 +-
>>  .../boot/dts/amlogic/meson-g12b-gtking-pro.dts     |  4 ++--
>>  arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts  |  2 +-
>>  .../boot/dts/amlogic/meson-g12b-odroid-n2.dtsi     |  4 ++--
>>  .../arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts |  2 +-
>>  .../dts/amlogic/meson-gxl-s905d-mecool-kii-pro.dts |  2 +-
>>  .../boot/dts/amlogic/meson-gxl-s905d-sml5442tw.dts |  8 ++++----
>>  .../boot/dts/amlogic/meson-gxm-mecool-kiii-pro.dts |  2 +-
>>  .../boot/dts/amlogic/meson-gxm-minix-neo-u9h.dts   |  2 +-
>>  .../boot/dts/amlogic/meson-gxm-wetek-core2.dts     |  2 +-
>>  arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi |  4 ++--
>>  .../arm64/boot/dts/amlogic/meson-sm1-odroid-c4.dts |  2 +-
>>  18 files changed, 38 insertions(+), 27 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
>> index 184492162e7e..db2240bad012 100644
>> --- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
>> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
>> @@ -69,6 +69,11 @@ properties:
>>
>>        where voltage is in V, frequency is in MHz.
>>
>> +  dma-coherent:
>> +    description: |
>> +      Present if page table walks made by the SMMU are cache coherent with the
>> +      CPU.
>
> Copied from the SMMU binding whose definition is a bit special?

Oops, yes.  A mostly blind copy/paste.

> Just 'dma-coherent: true' is good.

OK

Kevin

