Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 291E76EAEE8
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 18:16:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232632AbjDUQQH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 12:16:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232628AbjDUQQF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 12:16:05 -0400
Received: from mail-vs1-xe35.google.com (mail-vs1-xe35.google.com [IPv6:2607:f8b0:4864:20::e35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90AB713FBE
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 09:16:04 -0700 (PDT)
Received: by mail-vs1-xe35.google.com with SMTP id ada2fe7eead31-42e3909fd58so1392725137.3
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 09:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1682093762; x=1684685762;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ef3idQ4zPSY5kI7SCQAQVACM6knAQnMe+8If0IdDnhE=;
        b=fB0CXt3Np6S1T+n7imYcRS4KqtdV2haVKTj64OdXAirSZSAuLb/m7f4KU25XCSwYJb
         0ojNSnn+6l67mZKhjnhqt0SzT1+3MQx/DLja8OrLzsa08Vk3y/K6JO37m/59lG0H5Yg8
         jTKGamhdFAcJZIJxaZo9+3rNHA3pt2fqusUx4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682093762; x=1684685762;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ef3idQ4zPSY5kI7SCQAQVACM6knAQnMe+8If0IdDnhE=;
        b=Cj3C8HH5okSYmnvgDbDSRDFF3ZPIsBggep6EyaK5yWMJNK5hqngMMn7UNc68EU1FI8
         jGWpDTWd2V3TzFY+QWDUADmNekdnKbuoU7OfKtck34br4g7I7nLklLVFtVXwqtIDhPGM
         6zGvuxHuIZI38rhRZ2dGgccEUpJwWwmk9xeUSlUYs/fAAIEYnWq9swsKYV32ZjnIM3b/
         pm4J683fT06sCIodM3aTIrnc5vIHkITAb0I3kLPj0Epv4uy90r1khW+/GGVAUMCEbXHE
         0s+yE2oOcnazqLta+jqwp0kAlijKqTgw+1+l8Ty/UWXcO8xBv9OE1F17ZsE1+EvFEVtG
         sx/g==
X-Gm-Message-State: AAQBX9cmnsI0DrWyqVV0W79/5S1S2X3+R8LRPBGqjlVPVJvLxxR7cnQ5
        BGAHihCl5+PBQXyzBPj817CQvp3xknbaNjCEIns=
X-Google-Smtp-Source: AKy350YsqiRnkZZUWgh44EAi3YRluaMcUaGB8Uz683zieiC8uaCdDSO6+LH37NU53ZgPqmoYj/oi8A==
X-Received: by 2002:a67:f486:0:b0:42c:6fdf:b032 with SMTP id o6-20020a67f486000000b0042c6fdfb032mr3252781vsn.22.1682093762285;
        Fri, 21 Apr 2023 09:16:02 -0700 (PDT)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com. [209.85.160.178])
        by smtp.gmail.com with ESMTPSA id dw11-20020a05620a600b00b0074e3cf3b44dsm458308qkb.125.2023.04.21.09.15.59
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 09:16:00 -0700 (PDT)
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-3ef36d814a5so1177921cf.0
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 09:15:59 -0700 (PDT)
X-Received: by 2002:a05:622a:d5:b0:3e0:c2dd:fd29 with SMTP id
 p21-20020a05622a00d500b003e0c2ddfd29mr502316qtw.4.1682093759564; Fri, 21 Apr
 2023 09:15:59 -0700 (PDT)
MIME-Version: 1.0
References: <20230201-innolux-g070ace-v2-0-2371e251dd40@skidata.com> <20230201-innolux-g070ace-v2-2-2371e251dd40@skidata.com>
In-Reply-To: <20230201-innolux-g070ace-v2-2-2371e251dd40@skidata.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 21 Apr 2023 09:15:47 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UQOGCCrNDCMXP_=qurPNQqN68n4khJNEgxSRT-xi87aQ@mail.gmail.com>
Message-ID: <CAD=FV=UQOGCCrNDCMXP_=qurPNQqN68n4khJNEgxSRT-xi87aQ@mail.gmail.com>
Subject: Re: [PATCH RESEND v2 2/2] drm/panel: simple: Add InnoLux G070ACE-L01
To:     richard.leitner@linux.dev
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Richard Leitner <richard.leitner@skidata.com>
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

On Mon, Mar 13, 2023 at 12:51=E2=80=AFAM <richard.leitner@linux.dev> wrote:
>
> From: Richard Leitner <richard.leitner@skidata.com>
>
> Add InnoLux G070ACE-L01 7" 800x480 TFT LCD with WLED backlight panel
> support. Timing data was extracted from datasheet and vendor provided
> EDID file.
>
> Signed-off-by: Richard Leitner <richard.leitner@skidata.com>
> ---
>  drivers/gpu/drm/panel/panel-simple.c | 35 ++++++++++++++++++++++++++++++=
+++++
>  1 file changed, 35 insertions(+)

I think panel-simple currently has no active maintainers. Given that
I've touched all these files in the past and this is trivial, I don't
mind applying. I also did a review and this looks reasonable to me.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

Pushed to drm-misc-next:

1993f598998d drm/panel: simple: Add InnoLux G070ACE-L01
