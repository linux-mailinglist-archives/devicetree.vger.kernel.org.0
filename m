Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7932F47BFEB
	for <lists+devicetree@lfdr.de>; Tue, 21 Dec 2021 13:44:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234503AbhLUMoa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Dec 2021 07:44:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230326AbhLUMo3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Dec 2021 07:44:29 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AA18C061574
        for <devicetree@vger.kernel.org>; Tue, 21 Dec 2021 04:44:29 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id v7so19371710wrv.12
        for <devicetree@vger.kernel.org>; Tue, 21 Dec 2021 04:44:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=references:user-agent:from:to:cc:subject:date:in-reply-to
         :message-id:mime-version;
        bh=LFkudhgE/RfVwuGY1n7h7LKuNRIgZvkWEBMWG1M1X6E=;
        b=pf15ho+6XPQgQBH195bxwibSYp3O0VCy8NNQgRII/9a4Nm9b8BuZouEnV4DiiKScLq
         /QiGbT632mF6jEM1flpu3fbwmRRluRrBYvJIbVldwiL7+xjevhYEuTTBBi+MWqNMMNCa
         anAUYQHwNt9C/z5RCLT/eszNX3pxWzVEMTPJ9CpBc3m212mtBnusMem95uW4cK6CB2Gr
         OBXXikXoS4pLauMwcMZmaM76mrmBCOYEKla4TbrOxfSmocBuL+l4t2NOs9vh2uOapvu6
         GVSvVX/0VzlMcUjGmNeSPVyTyiW7ln8CaLvyB37HgfuuEXFNv2P39ozZiQqke9NhLwy/
         VCTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:references:user-agent:from:to:cc:subject:date
         :in-reply-to:message-id:mime-version;
        bh=LFkudhgE/RfVwuGY1n7h7LKuNRIgZvkWEBMWG1M1X6E=;
        b=TajIT84JDTzx/mAyaqc9qxxPnpVr8H1Bh1YzS29oVmK3HcZOTErR5hO9hlX8p5qp1K
         RiTVfaXhK0i1I5o1kWv3p/7Gn4AdjOnwZS4VgLOyh4k0m4zq5Z64KQlMyzjbRx6MzVRy
         /lQhR61SV6/VL9KiBF8uBm5Dq3OZ4Cn6t7yHi57k6fxPHTSDjEjug2uAero7p0nfREi+
         2xotn4ITjouwYUkCtOXF0MSagzJa0Ig18iDv7jHSPuDXju1FvYutJA/ZXMQPr4gf5N9p
         p7bT1aqmUTQsJLsgxqQDPukfxenLkKk7GjZfz30hboalYvZw+bG2MOJmtJd+YYGGqUMF
         eklw==
X-Gm-Message-State: AOAM530lQg0VTfrFBQnJnSbMZ6NBWNQQ7mliMrQDaW0tLQj+xxh2xdax
        roGROyZe8MRNu2XRibEjJ4Exgw==
X-Google-Smtp-Source: ABdhPJy5ufpXEgZoRhzOxuJM0uLIBZI1smTxKJ2/W0UXOvP69/PmKVwEpnZ4JMk3aAEQpmS0N5YbLw==
X-Received: by 2002:a5d:64aa:: with SMTP id m10mr2631439wrp.500.1640090668069;
        Tue, 21 Dec 2021 04:44:28 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id v6sm2302654wmh.8.2021.12.21.04.44.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Dec 2021 04:44:27 -0800 (PST)
References: <20211218143423.18768-1-alexander.stein@mailbox.org>
User-agent: mu4e 1.6.10; emacs 27.1
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Alexander Stein <alexander.stein@mailbox.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/3] ASoC: dt-bindings: Use name-prefix schema
Date:   Tue, 21 Dec 2021 13:36:03 +0100
In-reply-to: <20211218143423.18768-1-alexander.stein@mailbox.org>
Message-ID: <1jzgou6sba.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Sat 18 Dec 2021 at 15:34, Alexander Stein <alexander.stein@mailbox.org> wrote:

> name-prefix.txt does not exist anymore, just reference the schema instead.
>
> Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>

Thanks for doing this.

To keep things coherent, it would be nice if you could do the
same for the other amlogic sound components. They all use prefixes,
except card drivers.

Side note: Any ASoC component could use the sound-name-prefix. Is there
a way express that somehow ? instead of repeating this type of change in
every codec/cpu binding doc ?

> ---
> Changes in v2:
> * Fix 'pass' -> 'true'
>
> .../devicetree/bindings/sound/simple-audio-amplifier.yaml | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/sound/simple-audio-amplifier.yaml b/Documentation/devicetree/bindings/sound/simple-audio-amplifier.yaml
> index 26379377a7ac..8327846356d3 100644
> --- a/Documentation/devicetree/bindings/sound/simple-audio-amplifier.yaml
> +++ b/Documentation/devicetree/bindings/sound/simple-audio-amplifier.yaml
> @@ -9,6 +9,9 @@ title: Simple Audio Amplifier Device Tree Bindings
>  maintainers:
>    - Jerome Brunet <jbrunet@baylibre.com>
>  
> +allOf:
> +  - $ref: name-prefix.yaml#
> +
>  properties:
>    compatible:
>      enum:
> @@ -22,10 +25,7 @@ properties:
>      description: >
>        power supply for the device
>  
> -  sound-name-prefix:
> -    $ref: /schemas/types.yaml#/definitions/string
> -    description: >
> -      See ./name-prefix.txt
> +  sound-name-prefix: true

I've seen a couple of file with this, according the commit description
it solves some kind of name clash but I did not really get how ...

>  
>  required:
>    - compatible

