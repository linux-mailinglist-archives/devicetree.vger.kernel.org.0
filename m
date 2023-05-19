Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 079AC7098E4
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 16:02:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231869AbjESOCQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 May 2023 10:02:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231270AbjESOCO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 May 2023 10:02:14 -0400
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A162012C
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 07:02:13 -0700 (PDT)
Received: by mail-pg1-x532.google.com with SMTP id 41be03b00d2f7-53467c2486cso2060275a12.3
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 07:02:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1684504932; x=1687096932;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FCA4W0aVo+e8OjY3tSgSqtBniuKM9TjrVDSu+ILRZQc=;
        b=Q71qkvKvsZ0zvzioioUbCAFONYWaEPrRzJjeEZIJeGthFS4Rnmg0wvPCguGbazyfm3
         ChlsWRrkpnTkDGyvYZP7lapIEK0tpjtuy5beEfhmfy5UwXjlkwgoDIPlY3zgDS8Nzdd9
         oVq9S7JY/V6C0vd5C7x16NYm46i7POpBonb1M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684504932; x=1687096932;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FCA4W0aVo+e8OjY3tSgSqtBniuKM9TjrVDSu+ILRZQc=;
        b=kkDhIEqoWL1Xk7FctnG2vyvecwlbGQFOewXiJM+CMt/a9KU8yX0am7FhyF4q5y2WsH
         WQeBW2USSEomevROZoZ4wBno6OBpwNrj1Y/ymw0X9cPHOF3qPUEYRoLE0zLwTfLzjDn/
         mr4sM5978GKTNWRcMYo5rE5LXk8vK+L35wENFtPAwvRs3uWO/IxhbrcKVMR1Nz+uCagd
         RlV/fKpL/JuMp2R5RhVOnJEAkAGIDI907JVE7FZR3XmDVJeua4l/lE22qFsHOila//x1
         bLcaR1GdzVqhDvjTLH09IyqxLB/YmeFWlTU4Z52G1e2bdtTrcxJqNpWJPirAtWKX415O
         7DFw==
X-Gm-Message-State: AC+VfDxA4nqyh554pHjxWxsqCJ7x846tDI0uI5NbXPRHDcaJXgYh7E1p
        5cJQk0tN4hcXUK5FPW4YoXzisrkFiNXGFQidS0E=
X-Google-Smtp-Source: ACHHUZ5rupslkoNM+H75txjksGnCZYIoN32CPoZvWdDx4Bz8L3HjsqdArgYgjIrZ92sFwEDqYZ3p/A==
X-Received: by 2002:a17:90b:388e:b0:250:d137:e2ae with SMTP id mu14-20020a17090b388e00b00250d137e2aemr2594694pjb.23.1684504932579;
        Fri, 19 May 2023 07:02:12 -0700 (PDT)
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com. [209.85.214.176])
        by smtp.gmail.com with ESMTPSA id q31-20020a63505f000000b0052cbd854927sm3019072pgl.18.2023.05.19.07.02.09
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 May 2023 07:02:09 -0700 (PDT)
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-1a950b982d4so144685ad.0
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 07:02:09 -0700 (PDT)
X-Received: by 2002:a17:902:cec6:b0:1a9:343c:76e5 with SMTP id
 d6-20020a170902cec600b001a9343c76e5mr199210plg.18.1684504928906; Fri, 19 May
 2023 07:02:08 -0700 (PDT)
MIME-Version: 1.0
References: <20230519090149.4407-1-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20230519090149.4407-1-yangcong5@huaqin.corp-partner.google.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 19 May 2023 07:01:56 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VYfPSwar2AXBxB3vX0dV1kjQ5bZMxsEBFhUnMNRXbBCw@mail.gmail.com>
Message-ID: <CAD=FV=VYfPSwar2AXBxB3vX0dV1kjQ5bZMxsEBFhUnMNRXbBCw@mail.gmail.com>
Subject: Re: [PATCH] HID: i2c-hid: goodix: Add ili9882t timing
To:     Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc:     jikos@kernel.org, benjamin.tissoires@redhat.com, mka@chromium.org,
        dmitry.torokhov@gmail.com, hsinyi@google.com,
        linux-input@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, May 19, 2023 at 2:02=E2=80=AFAM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> The ili9882t is a TDDI IC ((Touch with Display Driver)). It requires the
> panel reset gpio to be high before i2c commands. Use a longer delay in
> post_power_delay_ms to ensure the poweron sequence.
>
> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> ---
>  drivers/hid/i2c-hid/i2c-hid-of-goodix.c | 6 ++++++
>  1 file changed, 6 insertions(+)

Two comments:

1. You need to submit a bindings patch to document your
"ilitek,ili9882t" compatible string.

2. I would tend to add the support to the "i2c-hid-of-elan.c" driver
instead of the goodix one. Probably the drivers need to combined again
(I'll see if I can post a patch for that before too long), but if I
were picking one I'd pick the elan one, I think.

-Doug
