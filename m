Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BDBE56D7220
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 03:43:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232835AbjDEBn6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Apr 2023 21:43:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235182AbjDEBn5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Apr 2023 21:43:57 -0400
Received: from mail-il1-x12d.google.com (mail-il1-x12d.google.com [IPv6:2607:f8b0:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8685E3AB5
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 18:43:55 -0700 (PDT)
Received: by mail-il1-x12d.google.com with SMTP id h14so16707097ilj.0
        for <devicetree@vger.kernel.org>; Tue, 04 Apr 2023 18:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1680659035;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r8kHzkX9SzRAkXXCj8yo/EKVJUuQ4P1xn/63qVUInQs=;
        b=i9T1CFuEPq6knTYwkWxspjaVaE3oVJ+xHE8V/HWUGqp4KihyT8cD6A4jXo195Hs1TB
         3Nlj3keIDe/Kc4XP1YSA+dsQ2AryZqABe6/cdtCGUVwcFnd38a2uBOc5h6ZKIQs6ymfg
         Ig39Rfj5g4tTuBH3zm/mD0w2GEXNkgrRaaCVk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680659035;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r8kHzkX9SzRAkXXCj8yo/EKVJUuQ4P1xn/63qVUInQs=;
        b=lfBoB/6om1osoW7vimf4u0fMpYjn2wuo+qttUk/kMGnL8vbC+Cox8r/pG6BB170BGq
         6fuipWQmEeTSoIZb4+CuzFw7tOOC9jL0Fsf/vR0ojppa1QMaw+WdLdhBstLS6kV31Y66
         YastGVp3tlgPAoQ0TneKqPa7aDtJDjcjeM9FEfNDom7VD1QdL8ut0FmwzynibYrL2SG3
         nHegRzNSXMPdfyRsQQ0//aeWR/iPq1hjgtMOVwygSP1PjxzKrAj7KqeA2fqv5WaNSgd4
         PXltiSq8qOAiWV9YmPiq+2bdGqU+g9UPWuh0DmhMeOvMHOsHuBzPtMm/C8PHlUPCy575
         vdUg==
X-Gm-Message-State: AAQBX9dP2Dl9qP+TqmagWMkQK43O3LlshBpQWts0tcDm+3WjnOE1t3Dr
        C2Oi5jAv7wM4fnWSYdgNJF1FiiSczCiv3CQVENE=
X-Google-Smtp-Source: AKy350aBpf6LnpE5Fw93rka1L2pMMi8fuMdElWfSKI0lePWa6bwMV6EJH4UTpy0mD+Sc91i6hlEZKQ==
X-Received: by 2002:a92:c9c6:0:b0:316:aa65:c094 with SMTP id k6-20020a92c9c6000000b00316aa65c094mr748521ilq.18.1680659034889;
        Tue, 04 Apr 2023 18:43:54 -0700 (PDT)
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com. [209.85.166.51])
        by smtp.gmail.com with ESMTPSA id h5-20020a056e020d4500b00325f1f8933csm3642708ilj.28.2023.04.04.18.43.54
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Apr 2023 18:43:54 -0700 (PDT)
Received: by mail-io1-f51.google.com with SMTP id d20so4478874ioe.4
        for <devicetree@vger.kernel.org>; Tue, 04 Apr 2023 18:43:54 -0700 (PDT)
X-Received: by 2002:a6b:d010:0:b0:752:ed8d:d015 with SMTP id
 x16-20020a6bd010000000b00752ed8dd015mr675791ioa.1.1680659034009; Tue, 04 Apr
 2023 18:43:54 -0700 (PDT)
MIME-Version: 1.0
References: <1680271114-1534-1-git-send-email-quic_vpolimer@quicinc.com> <1680271114-1534-3-git-send-email-quic_vpolimer@quicinc.com>
In-Reply-To: <1680271114-1534-3-git-send-email-quic_vpolimer@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 4 Apr 2023 18:43:42 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VSHmQPtsQfWjviEZeErms-VEOTmfozejASUC9zsMjAbA@mail.gmail.com>
Message-ID: <CAD=FV=VSHmQPtsQfWjviEZeErms-VEOTmfozejASUC9zsMjAbA@mail.gmail.com>
Subject: Re: [PATCH v1 2/3] msm/disp/dpu: allow atomic_check in PSR usecase
To:     Vinod Polimera <quic_vpolimer@quicinc.com>
Cc:     dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, robdclark@gmail.com,
        swboyd@chromium.org, quic_kalyant@quicinc.com,
        dmitry.baryshkov@linaro.org, quic_khsieh@quicinc.com,
        quic_vproddut@quicinc.com, quic_bjorande@quicinc.com,
        quic_abhinavk@quicinc.com, quic_sbillaka@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Mar 31, 2023 at 6:59=E2=80=AFAM Vinod Polimera
<quic_vpolimer@quicinc.com> wrote:
>
> Certain flags like dirty_fb will be updated into the plane state
> during crtc atomic_check. Allow those updates during PSR commit.
>
> Reported-by: Bjorn Andersson <andersson@kernel.org>
> Link: https://lore.kernel.org/all/20230326162723.3lo6pnsfdwzsvbhj@ripper/
> Signed-off-by: Vinod Polimera <quic_vpolimer@quicinc.com>
> ---
>  drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

I can confirm that this patch plus patch #1 fixes the typing problems
seen on VT2 on a Chromebook using PSR.

Tested-by: Douglas Anderson <dianders@chromium.org>
