Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D743B439B86
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 18:31:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233921AbhJYQdl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 12:33:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233913AbhJYQdk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Oct 2021 12:33:40 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25F06C061745
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 09:31:18 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id s19so13788636wra.2
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 09:31:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=references:user-agent:from:to:cc:subject:date:in-reply-to
         :message-id:mime-version;
        bh=Nt0Z/OoxuAlfqincAk23d4XiLhHWvzP4USaTuY2uOYM=;
        b=Jv73JKOhyIuyHHoF8LvmW80lCuLptqy5ligk1M3eNPLZDXaW4dHjdiIaf6tWQq/IHe
         pcx2gNb9IKqtnQD6wHVl5nG/Gy+GTXmsUHkQGqr0tSeJJgBc2SuOmkfSaaL3BvfaYDcQ
         BOVpdG9KmKZ99tR7rSKI1dMmrvk2wmzJj/pKtcnUqLWjqSQUYaL1XzgCpnh1pD+8N/IE
         IImjs4qreeLTG9s/AQyJeDDC6GDjXW0V+7+oWcvd96vTYkTzLtTb/m+y3AAgw5WgLx7I
         X/i5ZMzPowCk7kasO+xhdQQK568c26ft9FIFNf47ymxamawLRllhD75E2z9pmtptn8dQ
         11dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:references:user-agent:from:to:cc:subject:date
         :in-reply-to:message-id:mime-version;
        bh=Nt0Z/OoxuAlfqincAk23d4XiLhHWvzP4USaTuY2uOYM=;
        b=Nwtp87Khta9d+j/KzTbA3IOksiXPTNqs3OhtTMPNK6eEiTSW7MQt85sBi9X7hqNJ6h
         Svr12GLAiH3Xdbjjn0lQPvkBjGX7Rg3Qit6Hc/b0fhTtMrmVt3o2o3VSZmtj4DRUhV7v
         BmUTrUCj0JELNnx0HhttVaNBd4gQJOqj6NHJ9Rt7aoKv+wrhnUmAFGRO9mbL+MTLOu5Z
         0lygZynnFoMgfGJQiNMb3bLtIHV22A25mLgHOWcOF7gmZxpn6mbUF9Vcv/Q2Sf6piYmB
         3xgo81hejXJ/shz2qIKBqY9ZDdR+UfvtwJ8n/Z+TEf21n6udp2VbaJmYVIUSTW3lXlXL
         miYA==
X-Gm-Message-State: AOAM531AWgRfu1AUDCP14GNCq1uFcKwiTHey+dhIwGWUEDvl8MJwdsjD
        pU/J281q0PzeNNX8S/vOFbe97Q==
X-Google-Smtp-Source: ABdhPJyayqQRTnZbHghBSUcVYQazO16mXqcW0LVetemvLajHk+9P0Dhpge5W/YH8w0/PidvdpNH8Pw==
X-Received: by 2002:adf:eece:: with SMTP id a14mr21532867wrp.79.1635179476260;
        Mon, 25 Oct 2021 09:31:16 -0700 (PDT)
Received: from localhost (82-65-169-74.subs.proxad.net. [82.65.169.74])
        by smtp.gmail.com with ESMTPSA id f17sm12257069wrr.56.2021.10.25.09.31.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Oct 2021 09:31:15 -0700 (PDT)
References: <20211023214856.30097-1-alexander.stein@mailbox.org>
User-agent: mu4e 1.6.9; emacs 27.1
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Alexander Stein <alexander.stein@mailbox.org>,
        Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/4] dt-bindings: sound: amlogic: t9015: Add missing
 AVDD-supply property
Date:   Mon, 25 Oct 2021 17:53:04 +0200
In-reply-to: <20211023214856.30097-1-alexander.stein@mailbox.org>
Message-ID: <1jilxl5ang.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Sat 23 Oct 2021 at 23:48, Alexander Stein <alexander.stein@mailbox.org> wrote:

> Fixes the schema check warning "audio-controller@32000: 'AVDD-supply'
> do not match any of the regexes: 'pinctrl-[0-9]+'"
>
> Fixes: 5c36abcd2621 ("ASoC: meson: add t9015 internal codec binding documentation")
> Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>

Hey Alexander,

First, thanks for picking this up.

I think Rob's automated reply is because you forgot to update the
example (if the property is required, it should be there)

Also, I believe this change could have been sent separately, to Marc
(instead of Cc) and with the "ASoC" prefix.

With this changed
Reviewed-by: Jerome Brunet <jbrunet@baylibre.com>

> ---
> I am aware that adding required properties to bindings is frowned upon. But in
> this case it seems acceptable for the following reasons:
> * AVDD-supply was used from the very first driver commit
> * All DT (g12 and gxl) using t9015 controller provide AVDD-supply
>   already
> But I'm ok to not add it to required properties as well. The driver uses
> it nevertheless though.
>
>  Documentation/devicetree/bindings/sound/amlogic,t9015.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/sound/amlogic,t9015.yaml b/Documentation/devicetree/bindings/sound/amlogic,t9015.yaml
> index c7613ea728d4..5f4e25ab5af6 100644
> --- a/Documentation/devicetree/bindings/sound/amlogic,t9015.yaml
> +++ b/Documentation/devicetree/bindings/sound/amlogic,t9015.yaml
> @@ -34,6 +34,10 @@ properties:
>    resets:
>      maxItems: 1
>  
> +  AVDD-supply:
> +    description:
> +      Analogue power supply.
> +
>  required:
>    - "#sound-dai-cells"
>    - compatible
> @@ -41,6 +45,7 @@ required:
>    - clocks
>    - clock-names
>    - resets
> +  - AVDD-supply
>  
>  additionalProperties: false

