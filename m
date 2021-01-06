Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DBEE32EC0BE
	for <lists+devicetree@lfdr.de>; Wed,  6 Jan 2021 17:00:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726682AbhAFQA6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jan 2021 11:00:58 -0500
Received: from mail-vs1-f50.google.com ([209.85.217.50]:33869 "EHLO
        mail-vs1-f50.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726661AbhAFQA6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jan 2021 11:00:58 -0500
Received: by mail-vs1-f50.google.com with SMTP id x26so2026825vsq.1
        for <devicetree@vger.kernel.org>; Wed, 06 Jan 2021 08:00:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3M3RdL9VZv5fzeoztST100AAtV5IN+WNlMkYngQ6u54=;
        b=NJ3kXn/uUTPUHV3MMHw5WeF2BVbBRXbx1FH4PeNMiTOsW0P5iBwXVYPKTHNcuYFMwv
         C48AoTSZzJ8fe/OgXqPjfQHCVYnMZefXOdUpfCuJ0uv4epDXilSowIKZwwLdur3d4MRN
         p5tip0i8t3CvCZstmaSMzXwqeYSxdViNWP1zesf1B+QsuNyNBpRLxjisc/ASd3ezt/vo
         FmiQbQdHI5TVMIHtiERPHXh1WGE7wndSgwMDSyLU+Zq5x2VWA8OoLu6cLG7FGrSXI/vm
         J+fWdVCVgAiXFf1FNxJYXQ6V32xpbgE2y7aDJHJDyVrmZRQbrfKmyTgPMQpGTAn1rr3d
         HYlw==
X-Gm-Message-State: AOAM533s0yuSq7KCa9AETs7awLgbRW320CO1nKOq2sK47WBvSA7deLzo
        YfbKIQCoI42ugg+kKa+MrOK5vZaN2XruHw==
X-Google-Smtp-Source: ABdhPJym5Vk3Am1XQ1LblHeNAsq8LJaPS06YdTfym31BTafwOo02sPhIgPCVggun7Zo+hhda7vt/wQ==
X-Received: by 2002:a67:2d56:: with SMTP id t83mr3674182vst.47.1609948816558;
        Wed, 06 Jan 2021 08:00:16 -0800 (PST)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com. [209.85.222.47])
        by smtp.gmail.com with ESMTPSA id p24sm428623vsg.0.2021.01.06.08.00.15
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jan 2021 08:00:16 -0800 (PST)
Received: by mail-ua1-f47.google.com with SMTP id a31so1209658uae.11
        for <devicetree@vger.kernel.org>; Wed, 06 Jan 2021 08:00:15 -0800 (PST)
X-Received: by 2002:ab0:238e:: with SMTP id b14mr4270142uan.105.1609948815772;
 Wed, 06 Jan 2021 08:00:15 -0800 (PST)
MIME-Version: 1.0
References: <20210106150525.15403-1-andre.przywara@arm.com> <20210106150525.15403-8-andre.przywara@arm.com>
In-Reply-To: <20210106150525.15403-8-andre.przywara@arm.com>
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Thu, 7 Jan 2021 00:00:05 +0800
X-Gmail-Original-Message-ID: <CAGb2v6636=ZtO2m1pasAjoN2=Yd7y7dZ53neOUofFQMVg41yLQ@mail.gmail.com>
Message-ID: <CAGb2v6636=ZtO2m1pasAjoN2=Yd7y7dZ53neOUofFQMVg41yLQ@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 7/7] arm64: dts: allwinner: Pine H64: Enable
 HS200 eMMC mode
To:     =?UTF-8?Q?Andr=C3=A9_Przywara?= <andre.przywara@arm.com>
Cc:     Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Icenowy Zheng <icenowy@aosc.io>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 6, 2021 at 11:06 PM Andre Przywara <andre.przywara@arm.com> wrote:
>
> The eMMC modules offered for the Pine64 boards are capable of the HS200
> eMMC speed mode, when observing the frequency limit of 150 MHz.
>
> Enable that in the DT.
>
> This increases the interface speed from ~80 MB/s to ~120 MB/s.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Acked-by: Chen-Yu Tsai <wens@csie.org>
