Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3BB770C258
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 17:27:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234507AbjEVP15 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 11:27:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234436AbjEVP14 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 11:27:56 -0400
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com [IPv6:2607:f8b0:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3DFD10D
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 08:27:53 -0700 (PDT)
Received: by mail-il1-x136.google.com with SMTP id e9e14a558f8ab-335394455ecso45567685ab.1
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 08:27:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1684769271; x=1687361271;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=STtYLVHbrxls9+TET2taw4/CcCJWytrlGIrbAGYi3j8=;
        b=nEOMLUpL3wZMWld/o04Gj+KH6QUZxbYsw3cQ5GsPg9QGbB8mLXRuwslmpRDo84OW2Q
         RbUP9FzhBCPyhTrW605ee3vYg4USmV6dEE6B9LEX27Blvf4oXwdi410AXxDXXsocZFhJ
         7TxVFazBiKMOLXMhTmWdNhBmi8AghUpmtD/IU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684769271; x=1687361271;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=STtYLVHbrxls9+TET2taw4/CcCJWytrlGIrbAGYi3j8=;
        b=cI8RoDJ221rkjTuJBNupCGK+pEoklhcc2QJ6QpxspukhOhrMOR4AIYl8uFzd2XJr/u
         CNYzNKu/ZulVys5g1qPdEQKpiLb16wTREeIM8KDBgyCBXcGWC5+f/EqghkZu5hL8LzR6
         xXI82Y21orN7DwCopSY6+tVrqWU2/w4aux40Rl1OUaKmvQ7uabwg5puFgv8xGt2NDMvO
         YKerJ73sJGJbmygmAD+eSsV774+uF0lzM3QxCowZ6gUAMePtBLA/gj8wTyS8GEV+/PCR
         O1SriI88gazgZe4tIsAoP6aCCJxz/riUB7YMeQptgRnLdz67wLaiiS4wylqyk6OB/WeU
         w15A==
X-Gm-Message-State: AC+VfDwOl0EHIwvmfPPeGR7/ynyYIPyMVoi2pHJLB7Uf1fKI0zFFpzq3
        Rgaf2GfyDxiL9q+aE+r/D4VPk/MRpLuXvSccV9c=
X-Google-Smtp-Source: ACHHUZ5zC+KUVM6T/VqJWRFVeKm0q7i1MFoQ8G6A/fkgzgsi94ov1P0OmpJ3zXv/U7o35p+iL8mw2A==
X-Received: by 2002:a92:ce8d:0:b0:331:55d1:92e with SMTP id r13-20020a92ce8d000000b0033155d1092emr7668932ilo.17.1684769270849;
        Mon, 22 May 2023 08:27:50 -0700 (PDT)
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com. [209.85.166.175])
        by smtp.gmail.com with ESMTPSA id m11-20020a92cacb000000b0031796c6d735sm1815477ilq.41.2023.05.22.08.27.49
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 May 2023 08:27:50 -0700 (PDT)
Received: by mail-il1-f175.google.com with SMTP id e9e14a558f8ab-338458a9304so266765ab.1
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 08:27:49 -0700 (PDT)
X-Received: by 2002:a05:6e02:2189:b0:337:c9ec:4ca with SMTP id
 j9-20020a056e02218900b00337c9ec04camr449049ila.2.1684769269411; Mon, 22 May
 2023 08:27:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=VYfPSwar2AXBxB3vX0dV1kjQ5bZMxsEBFhUnMNRXbBCw@mail.gmail.com>
 <20230520050649.2494497-1-yangcong5@huaqin.corp-partner.google.com> <20230520050649.2494497-2-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20230520050649.2494497-2-yangcong5@huaqin.corp-partner.google.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 22 May 2023 08:27:38 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xpe=zOeq2pG17Q0n_SZZHAFmaE+6C=SnuHqnHN6uObog@mail.gmail.com>
Message-ID: <CAD=FV=Xpe=zOeq2pG17Q0n_SZZHAFmaE+6C=SnuHqnHN6uObog@mail.gmail.com>
Subject: Re: [v2 1/2] HID: i2c-hid: elan: Add ili9882t timing
To:     Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc:     benjamin.tissoires@redhat.com, devicetree@vger.kernel.org,
        dmitry.torokhov@gmail.com, hsinyi@google.com, jikos@kernel.org,
        linux-input@vger.kernel.org, linux-kernel@vger.kernel.org,
        mka@chromium.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, May 19, 2023 at 10:07=E2=80=AFPM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> The ili9882t is a TDDI IC ((Touch with Display Driver)). It requires the
> panel reset gpio to be high before i2c commands. Use a longer delay in
> post_power_delay_ms to ensure the poweron sequence.
>
> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> ---
>  drivers/hid/i2c-hid/i2c-hid-of-elan.c | 7 +++++++
>  1 file changed, 7 insertions(+)

This seems OK to me. The one thing I'd also do is to update the
Kconfig description to say that this driver is also used for Ilitek. I
think it's fine to keep the symbol name as I2C_HID_OF_ELAN but just
change the description.

-Doug
