Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8311E6FF334
	for <lists+devicetree@lfdr.de>; Thu, 11 May 2023 15:40:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238268AbjEKNkT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 09:40:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238388AbjEKNj4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 09:39:56 -0400
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com [IPv6:2607:f8b0:4864:20::b35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D4EE10E48
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 06:38:57 -0700 (PDT)
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-b9d881ad689so10863976276.2
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 06:38:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683812314; x=1686404314;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aUnqXRzBOhveOIpqDcwC7nsIl2ocjdjKERR1GWcB3Ts=;
        b=FipM+ypoVPe8Xx8VfnTBmVOBwl9PDxqw2SxjPqFGN2y+D/J3QvOUKDVdwSCTMyN3iF
         d0fsMLS7+1QHOLh79vMDtS7Gzc74Zxks9owOFqYeM1eCeZrbz0Zhm/gRj0C+JcNGNHsR
         jvSx19jJNCjOzJIFH9M6LwlmyNwlMNPYURhHUZzXqXfMZ/ea5HnCZqXAOYJb5oPHmnUU
         aRQ1hH13ujoMsNcX+vfdq3CYuxZa0adZmPod10DOVuyPVs63E5lUF5JYV+VSs+lk29n7
         /5VndbVw1ASb0YuqxgPNqk17/q8lidwnjjB3fNiksTGhnnjTtTBQQFCM3rSan32fpOE+
         1yvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683812314; x=1686404314;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aUnqXRzBOhveOIpqDcwC7nsIl2ocjdjKERR1GWcB3Ts=;
        b=EE1mivcR9JO2cssf85fNe8UT0oNXv2kUBDp4nt7jHca17pUdK1tMjY8hhjMb1BwPIh
         oe5wFQ2aS6+fe0W6SE9rflIH849PKeykiDZrsHKlNyU+DDEOOYb6vd1lFtHiSZRoE3NW
         Bt9oRbr+fC0KJhbTfjqCza8SX0VrDHIRVuVHEAAsYWkQy+6hFLH0/lVm0BdJijmsJT7k
         YhVzx4DnrAeSVC8o2kfeFZPSs3L9e420kQ9Y+s9+LO/Q/2Lj+JNPMhW6PhqM6qf2qsAQ
         foGedyuk7oGttNleGBmUd9mL/MaskQYxGLsEDbtCAfvENCMGvM24SjJLrSd+QRphQ/Cf
         MLmg==
X-Gm-Message-State: AC+VfDxA/RbSXY0tl528631fCr5RABy0Mu98FylzfPZA4qqJ189i20EQ
        c2ydHm2rri/8rVK0z8L322090kkoYkfLQbGC4nRjnGaThNTRpAks
X-Google-Smtp-Source: ACHHUZ4YvXMBKvbTdA3WQDhmjRorxhecX2zhL92+p5FotauXBp2ZXPqxJMjHzHbciqZpaYgckIg6pnvmRtv6uOIFo98=
X-Received: by 2002:a25:26c6:0:b0:b9e:1fd4:5050 with SMTP id
 m189-20020a2526c6000000b00b9e1fd45050mr22584982ybm.44.1683812314148; Thu, 11
 May 2023 06:38:34 -0700 (PDT)
MIME-Version: 1.0
References: <20230123151519.369158-1-krzysztof.kozlowski@linaro.org> <168380903252.184807.5434491458801772510.b4-ty@linaro.org>
In-Reply-To: <168380903252.184807.5434491458801772510.b4-ty@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 11 May 2023 15:38:23 +0200
Message-ID: <CACRpkdanhYRtZZunV8UuF3yVc9NVqv3DDfQQTF5=ecLgQJ0VhA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: ste: align UART node name with bindings
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 11, 2023 at 2:44=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
> On Mon, 23 Jan 2023 16:15:18 +0100, Krzysztof Kozlowski wrote:
> > Bindings expect UART/serial node names to be "serial".
> >
> >
>
> Applied, thanks!

Sorry for missing to send a pull request for this for v6.4 :(

I actually have it in my tree (along with some other stuff)
and was planning to push it upstream, but this works too.

Yours,
Linus Walleij
