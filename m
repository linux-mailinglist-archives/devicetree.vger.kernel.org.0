Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D6E841A4A8
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2019 23:43:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728180AbfEJVnx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 May 2019 17:43:53 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:43400 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728161AbfEJVnx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 May 2019 17:43:53 -0400
Received: by mail-pg1-f194.google.com with SMTP id t22so3596537pgi.10
        for <devicetree@vger.kernel.org>; Fri, 10 May 2019 14:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=txyEEfuShyaKA6OU4S1C4qT56CSHhTHuadhhSgL/B1w=;
        b=ci2xc1wMaUwRzlapr3pHT3/06zeHBirtF8f8zIVeaDiEcqVmHzp8ogt2zKmtauZmmL
         VZg/Ua/ac6Wvtp5CoYM+tnC+aYJaIBAZL/I49GcWt47mNK4nhHSsjecPYnOitfIdasBD
         AYTR08ttwqYyE0Ej5rmdVDb49HkxqKb+WKnZ9TH0Y0zkn244hVP/WYmeoBK5CqBl2emv
         g/aKYE7jv5GV/ja1Evbhw35hjze33nG1A3FodYiHjFc19l124BBiEBJ9VqziVZ8Mqjzx
         qBdPmQfXE/QaAS4/STKAdR9UpbmC9z32yGxjaZ5yEj7OpwP5BmxaWMtk4pmQj6lcNOxx
         L6fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=txyEEfuShyaKA6OU4S1C4qT56CSHhTHuadhhSgL/B1w=;
        b=IeMM9LLyjjzZH32fC8IW3rkx9NS1lZgL+hyC0NHAP6cCWAlYehT956NnRqvzaW/hTR
         ULz0Ahr9jox1l3gBvBDobWJHHxdrn2DYBY7BSAmUpbN/IBFLQIdLUZsFNw8jiWondHB8
         Pun+LvZlyYWVrSgDEwzFTYnxQ3hTKjr4kt9ed3OsT+mbd5AJZAxMv7jjuTNmhUkHsCwT
         6EMM/VEpTjv7MtE1vU2iCZlt6/WcvMjd8mU3noGktqScVyJ1QRnfpPsbiWRAS166CwMc
         8Ba9By5ljRVV/pDuEpOh5FAzoQiCsinUpwgeZ8kEab51zAeMlZvuIkb+Xb3qmrCPcRNk
         nzQg==
X-Gm-Message-State: APjAAAUY3z+DMIF9SR3Sc7gBgWJHA33EWtwPAhPlXqH+Pqn0DuLewcW9
        w1e2jI6Tbs7/mbSRQDTYUhUMLA==
X-Google-Smtp-Source: APXvYqzRCjmRJjSzsDwGBlbaEZrNsuy1m6VB19YK4Aid076Xs8KZtDoj/OsSd8Sa+55YAvxnj8ibsw==
X-Received: by 2002:a63:a449:: with SMTP id c9mr16552136pgp.149.1557524632125;
        Fri, 10 May 2019 14:43:52 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:fd66:a9bc:7c2c:636a])
        by smtp.googlemail.com with ESMTPSA id j189sm15075590pfc.72.2019.05.10.14.43.51
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 10 May 2019 14:43:51 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Jerome Brunet <jbrunet@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: meson: sei510: consistently order nodes
In-Reply-To: <20190510155327.5759-2-jbrunet@baylibre.com>
References: <20190510155327.5759-1-jbrunet@baylibre.com> <20190510155327.5759-2-jbrunet@baylibre.com>
Date:   Fri, 10 May 2019 14:43:50 -0700
Message-ID: <7h4l62dlyh.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jerome Brunet <jbrunet@baylibre.com> writes:

> Like order boards, order nodes by address then node names then aliases.
>
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
> ---
>  .../boot/dts/amlogic/meson-g12a-sei510.dts    | 92 +++++++++----------
>  1 file changed, 46 insertions(+), 46 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
> index 34b40587e5ef..61fb30047d7f 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
> @@ -14,10 +14,6 @@
>  	compatible = "seirobotics,sei510", "amlogic,g12a";
>  	model = "SEI Robotics SEI510";
>  
> -	aliases {
> -		serial0 = &uart_AO;
> -	};
> -
>  	adc_keys {
>  		compatible = "adc-keys";
>  		io-channels = <&saradc 0>;
> @@ -31,13 +27,8 @@
>  		};
>  	};
>  
> -	ao_5v: regulator-ao_5v {
> -		compatible = "regulator-fixed";
> -		regulator-name = "AO_5V";
> -		regulator-min-microvolt = <5000000>;
> -		regulator-max-microvolt = <5000000>;
> -		vin-supply = <&dc_in>;
> -		regulator-always-on;
> +	aliases {
> +		serial0 = &uart_AO;
>  	};

minor nit: I kind of like "aliases" and "chosen" at the top since they
are kind of special nodes, but honestly, I can't think of a really good
reason other than personal preference, so keeping things sorted as
you've done here is probably better.

Kevin
