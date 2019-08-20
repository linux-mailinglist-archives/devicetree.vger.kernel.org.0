Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0498395223
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2019 02:06:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728615AbfHTAGG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Aug 2019 20:06:06 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:37856 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728578AbfHTAGG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Aug 2019 20:06:06 -0400
Received: by mail-pl1-f195.google.com with SMTP id bj8so1757774plb.4
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2019 17:06:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=qQOXa0QSQ8+7zZiklPWl3hCCcZsK+hqnhGUid1sWCU8=;
        b=wGnT9m7b9TR7M7i9MBlpKp6tEOWrDHxiWt77j4NAxEsRfJe/itBFxWCAr7XoUItxbK
         zeP9aFQ/wUJgiuSXIObMoXTjG6xFILJo8WmbIVvsE5IjpT1xQJFvDTJZ3z9i/ICG6t8D
         uZaiGVv8m+1cLepmoqsGHfcQsLCUNHsZ9uNwR7v0MTQsEjqeYijC80kN1yZM9T3qTo6B
         rlAISdOA/qwXYZCWu+6AsxlF/iAM/+nKcaZRPxMa9Knikvh7y4CWffTaqOc4tGUB5m74
         7cmuPVfGzBzCBA3wPl/JaYvwFeFl7dIz68XgvMUL4rVTW3O35pUyCwAtKvqFTer9YMkZ
         mGhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=qQOXa0QSQ8+7zZiklPWl3hCCcZsK+hqnhGUid1sWCU8=;
        b=tV6WBQphwTp/KbGny71YSKYQMeP4igoKedtfJy44W2LTnEXzFHkWMVoSaaHFScKVLG
         /QCW+sSGEDJBh5KpzBm26fsIMYXuLG7BW1Qw5Zlapj81ayqC0qJmzFJhwRqpctg+B3/u
         m1NH1SBKLfT2Y4GmNh+JhZPDsRXhJcmk45Wew1Duk9gnuMzA1RBs+sKrb9qWR4YC2rN3
         d0ekSPmONISJWQOdKsU/cmm7tv7aTIck3fb5y4Q0tnFPzpM+bJ5S1jeTTC+r6ceo4P+U
         61dXiie7zE0/N4IBwVRNEDUr9a1i/nX+Ee1Bl8nmVZj++Q5zQJFKvqYW4a9h5EJd+LPA
         rlkw==
X-Gm-Message-State: APjAAAW+XoQOfEUMZLMZl4l7Pwp/A0HuX+E9H8/sMO9SFUpwy1iktQFD
        L61DmgkiotVK1YCTIy5sOTVdGQ==
X-Google-Smtp-Source: APXvYqxODMOaWdUOfaqCWz58eCyX2XpNVazF2y31NY989nA8wv08oSs0Wv5q/o/p1dAhx7h45OxnQA==
X-Received: by 2002:a17:902:6f10:: with SMTP id w16mr2661912plk.143.1566259565283;
        Mon, 19 Aug 2019 17:06:05 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:35:cf9b:bad:702c])
        by smtp.gmail.com with ESMTPSA id e129sm6062949pfa.92.2019.08.19.17.06.04
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 19 Aug 2019 17:06:04 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Neil Armstrong <narmstrong@baylibre.com>
Cc:     jbrunet@baylibre.com, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [RFC 02/11] dt-bindings: power: amlogic, meson-gx-pwrc: Add SM1 bindings
In-Reply-To: <CAFBinCAT1JaK6ksD9OzCK_wEEWJdaZL2vLzGeCzVVbz9V67btQ@mail.gmail.com>
References: <20190701104705.18271-1-narmstrong@baylibre.com> <20190701104705.18271-3-narmstrong@baylibre.com> <CAFBinCAT1JaK6ksD9OzCK_wEEWJdaZL2vLzGeCzVVbz9V67btQ@mail.gmail.com>
Date:   Mon, 19 Aug 2019 17:05:56 -0700
Message-ID: <7h1rxgvgyj.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> Hi Neil,
>
> On Mon, Jul 1, 2019 at 12:48 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
> [...]
>> +General Purpose Power Controller
>> +--------------------------------
>>
>> +The Amlogic SM1 SoCs embeds a General Purpose Power Controller used
>> +to control the power domain for, at least, the USB PHYs and PCIe
>> +peripherals.
> AFAIK each binding document should only describe one IP block.
> this one seems to be new / different
>
> should it get it's own file?
> also should it be a .yaml binding?

I don't think this is a new IP block.  Comparing across the various
(64-bit) SoCs, it seems to be very similar across all SoCs.

>> +
>> +Device Tree Bindings:
>> +---------------------
>> +
>> +Required properties:
>> +- compatible: should be one of the following :
>> +       - "amlogic,meson-sm1-pwrc" for the Meson SM1 SoCs
>> +- #power-domain-cells: should be 0
>> +- amlogic,hhi-sysctrl: phandle to the HHI sysctrl node
>> +
>> +Parent node should have the following properties :
>> +- compatible: "amlogic,meson-gx-ao-sysctrl", "syscon", "simple-mfd"
>> +- reg: base address and size of the AO system control register space.
>> +
>> +
>> +Example:
>> +-------
>> +
>> +ao_sysctrl: sys-ctrl@0 {
>> +       compatible = "amlogic,meson-gx-ao-sysctrl", "syscon", "simple-mfd";
>> +       reg =  <0x0 0x0 0x0 0x100>;
>> +
>> +       pwrc: power-controller {
>> +               compatible = "amlogic,meson-sm1-pwrc";
>> +               #power-domain-cells = <1>;
>> +               amlogic,hhi-sysctrl = <&hhi>;
>> +       };
>> +};
>
> I'm not sure that we want to mix HHI and AO power domains in one driver again

We're not mixing here. These are all EE domains.  They just have some
control registers in the AO memory region.

> back in March I asked a few questions about modelling the power
> domains and Kevin explained that we can implement them hierarchical:
> [0]
> unfortunately I didn't have the time to work on this - however, now
> that we implement a new driver: should we follow this hierarchical
> approach?

The more I look at this, I don't think we have a commpelling need to
model them hierarchically.  The main reason being is that of the 3
top-level domains I listed[0], we can only managing the EE domains in the
kernel.  It doesn't make sense to model/manage AO domains because, well,
they are always-on (AO).  The CPU domains are managed my the PSCI
firmware, and we don't/won't have any control over that.

For that reason, I think it makes the most sense to have a generic
driver that handles all the EE domains.

IMO, the SM1 driver that Neil wrote in patch 4 of this series is 80%
there.  If we generalize that little more, it can be quite easily used
for all the EE domains.

Kevin

[0] http://lists.infradead.org/pipermail/linux-amlogic/2019-March/010512.html

