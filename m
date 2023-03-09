Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B8B76B2FB5
	for <lists+devicetree@lfdr.de>; Thu,  9 Mar 2023 22:36:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230265AbjCIVge (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Mar 2023 16:36:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229786AbjCIVgd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Mar 2023 16:36:33 -0500
Received: from mail-oa1-x2c.google.com (mail-oa1-x2c.google.com [IPv6:2001:4860:4864:20::2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E0C2F6035
        for <devicetree@vger.kernel.org>; Thu,  9 Mar 2023 13:36:26 -0800 (PST)
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-176b90e14a9so3778066fac.9
        for <devicetree@vger.kernel.org>; Thu, 09 Mar 2023 13:36:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112; t=1678397785;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AX0kFryzQ9wNEJRIiuBwJvaQs4qfJWG0KPZfdOauJKg=;
        b=G5iZj9JNMPqz7ESLkgQ0Ik51gdix1jphc7986eKPWwcCafaqhRStPDGbdYMXE3G51T
         XR1J7WXeIA8vBbt413vuaSrLYUvu4eaU1w38bcEBzEikLiKrJToFBxDKgy7x824Iu48g
         qhyFxANYmpm830eQD7eQ72MyhrAeWcZIoq0aM+SDfhRTBvfGtW1FDU4ZCEcXFaTztdlq
         wv4u2dPfjoq8m8R7X/7AvXXtHXDZ3c99lc7MpQRG1F+OdXZfzeoywlUvBQWQuzvpahRx
         YczkrTMcd5+hFojAH3b74fzuI113P/p2LdKb3yu2nOy98nGyaYL9TyBrbEQKyZ/wUjH5
         Sp1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678397785;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AX0kFryzQ9wNEJRIiuBwJvaQs4qfJWG0KPZfdOauJKg=;
        b=oY3Qmm3H8TB5xkxro34acgTB0avT8bUeF/gOsFb1rMRTnL+JwVUB1nVqwYDnbqe0Tr
         MpXNMWTrGghETMNQK0eMfh3BmsJ8DVoQqn3O7aN1Xv44zze89Koxl9Sllht+SY/Ea8tH
         a9RAT9Ereingn+PGsRUoYBTw/7OzdpL9ZorJ3AfqlPSBiWwCf8FnAyma4TOgTCRWEuge
         uw4SZx09p27WORZPWweAWHosSzx53JkchwwEFZ/yJRV0GXdLJR/DIxmCsjLlfrcbJYv9
         cK+R0kW9s1kU0FJuCbKvxPtn1AwwaNOqtvFPpQ0EQC+31zwWT/NxGSGAC0hWh8itEBpv
         zHqA==
X-Gm-Message-State: AO0yUKWeavpNnXKlMHUoz1T3chiXmtq4UUsB87XHYYGY79S7VttZh37S
        j3MQz78FFQL5UGU1nigXAfphxWovGOz+EH8bEnZTRQ==
X-Google-Smtp-Source: AK7set9yYS54QE4EUO4suqJYspm6F8sMoOdVS6y+H0bCghSilwGBZNJt4ZGxplqpZNHflpN8lQuhq7eaZZGw8eMY9+s=
X-Received: by 2002:a05:6870:5a94:b0:16e:85c7:4f9 with SMTP id
 dt20-20020a0568705a9400b0016e85c704f9mr8212404oab.7.1678397785453; Thu, 09
 Mar 2023 13:36:25 -0800 (PST)
MIME-Version: 1.0
References: <20230309143459.401783-1-bero@baylibre.com> <20230309143459.401783-4-bero@baylibre.com>
 <42e0c0fe-3ee5-91df-302a-20193ec64bd3@collabora.com>
In-Reply-To: <42e0c0fe-3ee5-91df-302a-20193ec64bd3@collabora.com>
From:   =?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>
Date:   Thu, 9 Mar 2023 22:36:14 +0100
Message-ID: <CAP2ifjN23Q6wmRQGW7rPG26Yy+FjwaRsgWEMrc_ytQYLKH5ESA@mail.gmail.com>
Subject: Re: [PATCH v10 3/3] arm64: dts: mediatek: Initial mt8365-evk support
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        matthias.bgg@gmail.com, gregkh@linuxfoundation.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        maz@kernel.org, tglx@linutronix.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 9, 2023 at 4:21=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:

> > +             compatible =3D "mediatek,mt8365-systimer", "mediatek,mt67=
95-timer";
>
> You mean "mediatek,67 -> 6 <- 5-timer", right? :-P


Yes, of course. Thanks, good catch. I've posted v11, this should fix everyt=
hing.

ttyl
bero
