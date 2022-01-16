Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 14B9D48FE30
	for <lists+devicetree@lfdr.de>; Sun, 16 Jan 2022 18:32:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235908AbiAPRb7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Jan 2022 12:31:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233486AbiAPRb6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Jan 2022 12:31:58 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 755F6C061574
        for <devicetree@vger.kernel.org>; Sun, 16 Jan 2022 09:31:57 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id n19-20020a7bc5d3000000b003466ef16375so18952251wmk.1
        for <devicetree@vger.kernel.org>; Sun, 16 Jan 2022 09:31:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=references:user-agent:from:to:cc:subject:date:in-reply-to
         :message-id:mime-version;
        bh=QaFReGXs98i0NSKG5VNBSVqWm1GpdVirFq4L16mRIkg=;
        b=cG5uL1yvhdYotgs9DFrlN6VpYNMt0a8uWjvm7602DsilgVBYK7TwqIbHT5OBDsD0m/
         lQNozJdANUu+ZQ8hvN/iOY2+ShmwLmOD8uUnBNsYkimUAy/8yyz0TJ4ophKSOasPr5YL
         uf2tiwYKTT1k9knb2hdj2WYKhgaTe2d42Ixy3f9BcWt+9KOG/guz1UxmbBPPaFWIb71F
         wG4ybqM0mKm7h+DQcMc0lvB1CGfTL8NvFCBrFmBbKiVV+/yNMMpVc15F11LdjfN6dRyU
         6fXVz4DA4T4lufOJra8SqsNhuiqqcLupfIt/jANsGdXthnAEs6stvKpOQ8qz363hjM9h
         zK1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:references:user-agent:from:to:cc:subject:date
         :in-reply-to:message-id:mime-version;
        bh=QaFReGXs98i0NSKG5VNBSVqWm1GpdVirFq4L16mRIkg=;
        b=UCHwKi8Be8CeGY7hCVplXGowGFDmf4nXGlxY8vezi9ZsZ2tmWojrgpTu0ZAbY2We/Z
         jKeXEuHhMqpLWQbDDRqDeHzlfH5DdHAsyOq+w/Q9R9DmfKEZjX4ocG+o43N6wEdgs+2v
         NvleaxE4iG9PPWNxha/scCEhw4AyPnlUdCruBW/wym+a3y9aTRFSq57znLuvGqACGbu5
         BTR46xDniOWaD18tEXuL4VXod/MVD2xucb/dd3CwI394zg2k+Y9kSlB5W86XEIcV6mjI
         BlVK4WkSA7nMJ8iX2SS/rg/qMRErUPw77F4ENGs3KdOqZ2Chzs6I+T9iEi3ZtW5evnMX
         sZaQ==
X-Gm-Message-State: AOAM533arIandKa7HVfLUFht7jFksCSH3o3EWMCCoF3Aw1OR9uJhXr6R
        qte61q5OK4XOWKktNJHKPAd76A==
X-Google-Smtp-Source: ABdhPJxI5CihhtOe66ecJE5IsAwQgw+NnbF/1kxAtB1F0kEcJYpVyEGhlgVMeyPjuxcEHoUssDfGQw==
X-Received: by 2002:a5d:6251:: with SMTP id m17mr8977296wrv.49.1642354315994;
        Sun, 16 Jan 2022 09:31:55 -0800 (PST)
Received: from localhost (82-65-169-74.subs.proxad.net. [82.65.169.74])
        by smtp.gmail.com with ESMTPSA id n14sm13728953wrf.107.2022.01.16.09.31.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Jan 2022 09:31:55 -0800 (PST)
References: <20220115093557.30498-1-alexander.stein@mailbox.org>
 <1jilulav4u.fsf@starbuckisacylon.baylibre.com> <4732096.GXAFRqVoOG@kongar>
User-agent: mu4e 1.6.10; emacs 27.1
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Alexander Stein <alexander.stein@mailbox.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: meson-axg: add missing reset-names
 property
Date:   Sun, 16 Jan 2022 18:30:32 +0100
In-reply-to: <4732096.GXAFRqVoOG@kongar>
Message-ID: <1jfspnpoxh.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Sun 16 Jan 2022 at 10:49, Alexander Stein <alexander.stein@mailbox.org> wrote:

> Am Samstag, 15. Januar 2022, 16:04:10 CET schrieb Jerome Brunet:
>> 
>> On Sat 15 Jan 2022 at 10:35, Alexander Stein <alexander.stein@mailbox.org> 
> wrote:
>> 
>> > Bindings amlogic,axg-fifo.txt mandates that reset-names is a required
>> > property. Add it.
>> 
>> Binginds *mandates* ?? the bindings you are adding mandates that, not the
>> previous doc, nor the driver.
>
> Well, under required properties 'reset-names' is listed as well as 'arb' is 
> required, only 'rst' is optional.

I think there is a misunderstanding then.
The arb reset is required, the "reset-names" is not - as long as there
is single reset.

> So when creating the .yaml accordingly this leads to warnings this patch is 
> about to fix.
>
>> Modifying drivers and DT to accomodate made-up bindings requirement is
>> disturbing.
>> 
>> The bindings should not require that because the driver does not, as it
>> stands. The driver requires the arb reset to be provided, not the name.
>> Please fix the bindings.
>
> Nothing is made up. When creating the .yaml file I took the .txt documentation 
> for granted. How should I know the bindings documentation is apparently wrong?
>
> When using your older bindings conversion [1] I'm fine with dropping this one.
>
> Best regards,
> Alexander
>
> [1] https://patchwork.kernel.org/project/linux-amlogic/list/?
> series=246453&state=%2A&archive=both

