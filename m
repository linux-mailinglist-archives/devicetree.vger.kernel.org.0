Return-Path: <devicetree+bounces-218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D8F7A0503
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 15:07:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E8F041F2116C
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 13:07:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1A661F5E6;
	Thu, 14 Sep 2023 13:06:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A58841D68F
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 13:06:48 +0000 (UTC)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21F891FD8;
	Thu, 14 Sep 2023 06:06:48 -0700 (PDT)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-5925e580e87so10731947b3.1;
        Thu, 14 Sep 2023 06:06:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694696807; x=1695301607;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dHc0DpORXlGUIyJemXMGFwVrMRXG1k2BQKoTOugDHHg=;
        b=nSnCrULD0xRPONVeIXpOGcYOD3VK7CYTIGIhbcix6oBrlHUv1znEG5FCdGtClrXkuH
         eAVRZVcEYehQhDj8Di+eFJAr+5wyiAwioQ4PH/Jf8v5+YdT71M4qZdkQcSJCWe1o0E8z
         YMKmZvFkr7GOD9Pk+C6+NYGayO1Tg+H564Ii10+w5G5cBQOyIN7qpFVQ9xY09wD80IGV
         RsSsVHtMwqnfdBZfdsdIvClelZaUyz1+hpfV/68b0JgUGjZa3F407UMd4yuce1fNcGY+
         OBr86ahmFxX0KT8+cH0iEY3Szg7Rqiyc6lvrNWEDLH09E8bL8CxvZckkGukU/1qoKBu8
         XOiA==
X-Gm-Message-State: AOJu0YwPB2KFNZ9xiPCFBcACgwLnzi6EydrFMEi3Qz3S4ck/OAGqqxRY
	HOLcKBsDdTiKz1gfEezc8TE8AV8BJQr/4g==
X-Google-Smtp-Source: AGHT+IFS9HoJ0Qyx9QUiGoaPAoioe4tpc9Q2XDgr11jN6FtP32a4AMfhhful3BVJwzCxVQ576y4bQA==
X-Received: by 2002:a05:690c:250d:b0:59b:ec40:a121 with SMTP id dt13-20020a05690c250d00b0059bec40a121mr1597344ywb.3.1694696807118;
        Thu, 14 Sep 2023 06:06:47 -0700 (PDT)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com. [209.85.219.179])
        by smtp.gmail.com with ESMTPSA id t125-20020a0dd183000000b00597e912e67esm304748ywd.131.2023.09.14.06.06.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 06:06:46 -0700 (PDT)
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-d7e741729a2so989118276.2;
        Thu, 14 Sep 2023 06:06:46 -0700 (PDT)
X-Received: by 2002:a5b:bc6:0:b0:d80:1a0a:e7a7 with SMTP id
 c6-20020a5b0bc6000000b00d801a0ae7a7mr5064343ybr.53.1694696806097; Thu, 14 Sep
 2023 06:06:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230912045157.177966-1-claudiu.beznea.uj@bp.renesas.com> <20230912045157.177966-12-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20230912045157.177966-12-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 14 Sep 2023 15:06:34 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWDa0pmCR3Ma3KWhRTyXk13qXt0wsu50M9CRhNn5SSJ0A@mail.gmail.com>
Message-ID: <CAMuHMdWDa0pmCR3Ma3KWhRTyXk13qXt0wsu50M9CRhNn5SSJ0A@mail.gmail.com>
Subject: Re: [PATCH 11/37] clk: renesas: rzg2l: simplify a bit the logic in rzg2l_mod_clock_endisable()
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	ulf.hansson@linaro.org, linus.walleij@linaro.org, gregkh@linuxfoundation.org, 
	jirislaby@kernel.org, magnus.damm@gmail.com, catalin.marinas@arm.com, 
	will@kernel.org, prabhakar.mahadev-lad.rj@bp.renesas.com, 
	biju.das.jz@bp.renesas.com, quic_bjorande@quicinc.com, arnd@arndb.de, 
	konrad.dybcio@linaro.org, neil.armstrong@linaro.org, nfraprado@collabora.com, 
	rafal@milecki.pl, wsa+renesas@sang-engineering.com, 
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 12, 2023 at 6:52=E2=80=AFAM Claudiu <claudiu.beznea@tuxon.dev> =
wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> The bitmask << 16 is anyway set on both branches of if thus move it
> before the if and set the lower bits of registers only in case clock is
> enabled.
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-clk-for-v6.7.

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

