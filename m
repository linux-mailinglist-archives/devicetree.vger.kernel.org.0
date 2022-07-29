Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 419605848FA
	for <lists+devicetree@lfdr.de>; Fri, 29 Jul 2022 02:19:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233565AbiG2ASx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Jul 2022 20:18:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233469AbiG2ASu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Jul 2022 20:18:50 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30C257B1DE
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 17:18:48 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id ss3so5757473ejc.11
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 17:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=DEDxzOgHTQRQ+rvv/SEM8DOqN9V3eUaGY5hH+UtkIUE=;
        b=XgGvjKM+Hr42e4KmwAK3a1argfHnnskNbRdLej5zKrxwQdZsp8y8yMpZaRkfb6IxQr
         C8PRTgOCkSzXDctTwt3AbbUt42+nPjnl1Ik5fW1fT+au0znVnOZDXvJpfPbucVm4Bv+n
         ty8qUI1gfDrvRlxRV1sm3ItakjLTxp6xy+YLM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=DEDxzOgHTQRQ+rvv/SEM8DOqN9V3eUaGY5hH+UtkIUE=;
        b=p4WGYlq4nvIvR1FkyrjFj+Wy5cdtAuGW2GqZa4vQ6dZ08JK5oXR9shYIgxxLddi9mS
         NxEgRtq5dRd+3Bikk3xYEk8CZi2dcX0Hluv7v5be6R8G48M1vp9lzk1hjLFZ+jkPhd8L
         pBeXSGxxeHRpOnR9hFdgAFPzgIqR53U5sULIScIV14QgYZG6+4kWpoUvKNpVfPD/jwJ6
         zLAo/n4Ktnbt2P3GuT8gD9uOnicj6XmR6+HO2l2SUL8ge7/y8VbP5nfjF8ujyt0VOEte
         qzo+s2Y17Fujog2bBwtyj8REfH4/JZLhcnPcX/a+q9G/K+RfRo3rxxgAKuES8Snpqzls
         zA9A==
X-Gm-Message-State: AJIora8xdQUkZm1Y4T8xkU3L3r8K/JfVFOfL6J1qLOPPez7KUhSooEXN
        Cv0CowICHc+q5lojB8+D9e/fGcASK5JWmXKX
X-Google-Smtp-Source: AGRyM1vrrY/85lOXfrq1Q1jJd24p1vQ1qobnl3mnIVflWadanGnOxsdXI6qZHRvTZML4z3s2kusaxw==
X-Received: by 2002:a17:906:6a26:b0:72e:cee5:d1b0 with SMTP id qw38-20020a1709066a2600b0072ecee5d1b0mr965012ejc.404.1659053927626;
        Thu, 28 Jul 2022 17:18:47 -0700 (PDT)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com. [209.85.128.48])
        by smtp.gmail.com with ESMTPSA id u1-20020a1709061da100b0072ecef772a7sm945287ejh.160.2022.07.28.17.18.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jul 2022 17:18:46 -0700 (PDT)
Received: by mail-wm1-f48.google.com with SMTP id b21-20020a05600c4e1500b003a32bc8612fso1786999wmq.3
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 17:18:45 -0700 (PDT)
X-Received: by 2002:a05:600c:2e48:b0:3a3:1ce3:3036 with SMTP id
 q8-20020a05600c2e4800b003a31ce33036mr1007498wmf.188.1659053924819; Thu, 28
 Jul 2022 17:18:44 -0700 (PDT)
MIME-Version: 1.0
References: <1657544224-10680-1-git-send-email-quic_vpolimer@quicinc.com> <1657544224-10680-4-git-send-email-quic_vpolimer@quicinc.com>
In-Reply-To: <1657544224-10680-4-git-send-email-quic_vpolimer@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 28 Jul 2022 17:18:31 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UXKHrp63wosBdXDBKKcierbgfUOT-W1QF2N23No+MJBw@mail.gmail.com>
Message-ID: <CAD=FV=UXKHrp63wosBdXDBKKcierbgfUOT-W1QF2N23No+MJBw@mail.gmail.com>
Subject: Re: [PATCH v6 03/10] drm/msm/dp: use atomic callbacks for DP bridge ops
To:     Vinod Polimera <quic_vpolimer@quicinc.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Rob Clark <robdclark@gmail.com>,
        Stephen Boyd <swboyd@chromium.org>,
        quic_kalyant <quic_kalyant@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        "Kuogee Hsieh (QUIC)" <quic_khsieh@quicinc.com>,
        quic_vproddut <quic_vproddut@quicinc.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        "Aravind Venkateswaran (QUIC)" <quic_aravindh@quicinc.com>,
        "Abhinav Kumar (QUIC)" <quic_abhinavk@quicinc.com>,
        Sankeerth Billakanti <quic_sbillaka@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Jul 11, 2022 at 5:57 AM Vinod Polimera
<quic_vpolimer@quicinc.com> wrote:
>
> Use atomic variants for DP bridge callback functions so that
> the atomic state can be accessed in the interface drivers.
> The atomic state will help the driver find out if the display
> is in self refresh state.
>
> Signed-off-by: Sankeerth Billakanti <quic_sbillaka@quicinc.com>
> Signed-off-by: Vinod Polimera <quic_vpolimer@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_display.c |  9 ++++++---
>  drivers/gpu/drm/msm/dp/dp_drm.c     | 17 ++++++++++-------
>  drivers/gpu/drm/msm/dp/dp_drm.h     |  9 ++++++---
>  3 files changed, 22 insertions(+), 13 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
