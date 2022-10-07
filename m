Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C5695F7462
	for <lists+devicetree@lfdr.de>; Fri,  7 Oct 2022 08:53:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229735AbiJGGxl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Oct 2022 02:53:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229772AbiJGGxj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Oct 2022 02:53:39 -0400
Received: from mail-vs1-xe31.google.com (mail-vs1-xe31.google.com [IPv6:2607:f8b0:4864:20::e31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2E876C95E
        for <devicetree@vger.kernel.org>; Thu,  6 Oct 2022 23:53:36 -0700 (PDT)
Received: by mail-vs1-xe31.google.com with SMTP id h4so4117046vsr.11
        for <devicetree@vger.kernel.org>; Thu, 06 Oct 2022 23:53:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xo2HAOYWApt+uBnXx1ssfbK0iPppR/25ymQTC0xAXAY=;
        b=JqjrXPjPsngbq+RcrzuUTIY8ga2SZlf62d7n4LPwSRbYkPOjKdzJVK9Yh05TfEwj/R
         7KU63wO7WquwOHU9t61Rd/PpM3UBv+DLB+aLOD+/9DsZjVcpGunquOEq/NZDL61xnN7w
         yWgX4k1DzhojDIZdZzRyknUNl7EYQi7PgrQE0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xo2HAOYWApt+uBnXx1ssfbK0iPppR/25ymQTC0xAXAY=;
        b=GkY8tVVh3TZ+qNzS5/bLqKiT/yFiH54/p4xrkTNbAwCX+TIhSCTgvwez5vZdgPynJ1
         7RogRsZbvMtHtfL/g6N8CHo5KXtMlF+v8CpQI9ZtLI78aPKIf4VcTlOJgCxiZky312eK
         EfWRuQp5SUjdb5mDZXQgf8qWO0X0dmqL4l/zRuSFwogGYlWV+wPg6nO4PyV2SpGQiL/q
         AN96A439ryX/SHNnBPkqJOez3QidmyA6pvwfKwhsiKlftkzIsmW4I9F9koWtV58hnzVY
         R7XrNPXXk7DnzXDUf2FhQP3ACGv9aTlbmldLD30v1rN7E7tWTET/ARlogorElIyLC353
         qgbQ==
X-Gm-Message-State: ACrzQf3d4jTnZ8lz5DDOka1ZiGl2PitDC9wloEldJKvkraO3UdLcclqy
        TR3fEL6BHdMDvWs2bvzo2BegqABKwfqvgtK77G1jww==
X-Google-Smtp-Source: AMsMyM5Bw7v+A7dz3X1bKXBiH9oshzG1ksFfuTHCWJGnWw050D4ZbNIRgRKapqRJXmh/punzxW+3VR1+ooXCzzsT1Zg=
X-Received: by 2002:a05:6102:3ed5:b0:386:91a5:a246 with SMTP id
 n21-20020a0561023ed500b0038691a5a246mr2272190vsv.26.1665125615320; Thu, 06
 Oct 2022 23:53:35 -0700 (PDT)
MIME-Version: 1.0
References: <20221006212528.103790-1-nfraprado@collabora.com> <20221006212528.103790-5-nfraprado@collabora.com>
In-Reply-To: <20221006212528.103790-5-nfraprado@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 7 Oct 2022 14:53:24 +0800
Message-ID: <CAGXv+5F684=hFa42vSuN24eBTGjj7LEQNzog9U8dEQffz0JZMw@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] arm64: dts: mediatek: asurada: Enable audio support
To:     =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>, kernel@collabora.com,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 7, 2022 at 5:25 AM N=C3=ADcolas F. R. A. Prado
<nfraprado@collabora.com> wrote:
>
> Enable audio support for the Asurada platform. This consists of the
> machine sound card, the rt1015p codec for the speakers, the rt5682 codec
> for the headset, and the dmic codec for the internal microphone.
>
> HDMI audio support is left out for now since the DisplayPort chip
> required isn't enabled yet.
>
> Signed-off-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>

Tested-by: Chen-Yu Tsai <wenst@chromium.org>

However the UCM you linked to in the cover letter didn't seem to work
correctly.
