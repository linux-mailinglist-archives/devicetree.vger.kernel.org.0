Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9ACE58CABB
	for <lists+devicetree@lfdr.de>; Mon,  8 Aug 2022 16:49:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243478AbiHHOtU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Aug 2022 10:49:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243067AbiHHOtT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Aug 2022 10:49:19 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B381B868
        for <devicetree@vger.kernel.org>; Mon,  8 Aug 2022 07:49:18 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id gb36so17005345ejc.10
        for <devicetree@vger.kernel.org>; Mon, 08 Aug 2022 07:49:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=sGGMDrvq70fK3xNBUxx3zSxTGxbNUsun6AK0mtlXrck=;
        b=aNeNHYUnGAERLnnsoWYIWNZLsBb+XskAb+Zbzep5u56gCqHprwCZpAhjmoxi0eGCt3
         ENCGw+eikSwJrImaEpmJpnt4dXgTf5WdEsQDkixIVfLWK3xndLG9hJyfN5tlBSXsjS8b
         iSl4IzQlwipS4OiUW+qYCtv4IWP6ti/mpxM7E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=sGGMDrvq70fK3xNBUxx3zSxTGxbNUsun6AK0mtlXrck=;
        b=gM/BG3bBdsc9bZLzM4dVnDXv1U4ZYMCUwefMU/XRT86mYmngrIk/2hwVTzSOTTd4vP
         MXw82IU3hO+nRrmgOHIiBg5Kf8WZdXr0q3rqpcXKtkIW4rViUlQJLL1ro/8IGF2wJ7Tm
         UlieEVp7kfKlsHkFre2QWRJFzPQu1r3ETrknqUmAP5G76ATjDJu+ZMbHmYMghK9q/L+v
         UrOUZ2SdjBuF6wgcpxWCJa3KbdXH1K22r7qe1qoxBba9QVYG6yvMpt7TJcK3zHi+fRnz
         eCckwfofkt6v7XnMgsw8TOLXxQVW83h/vd1CdE+WtXmelIC095n0Iv7OCFy+Ph71TaIp
         npzQ==
X-Gm-Message-State: ACgBeo3tfNg+VFtg+ijb51XnR8tUAPsFHtcvtuLsdcDcnPT07YwQJL3e
        N6JimFHKo5NomUpt7ZNIwKUWh2uhM2lpWiua
X-Google-Smtp-Source: AA6agR7uyxvzOvW2WpodPXEpLJq38Yn4fckdphPyuUlLXa/cq4a01v5+wkgbM4NG7A+HRXMndUikZA==
X-Received: by 2002:a17:906:847c:b0:730:b6a0:e0d with SMTP id hx28-20020a170906847c00b00730b6a00e0dmr14000578ejc.126.1659970156671;
        Mon, 08 Aug 2022 07:49:16 -0700 (PDT)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com. [209.85.221.52])
        by smtp.gmail.com with ESMTPSA id ca11-20020a170906a3cb00b007308812ce89sm5001113ejb.168.2022.08.08.07.49.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Aug 2022 07:49:15 -0700 (PDT)
Received: by mail-wr1-f52.google.com with SMTP id bv3so11165167wrb.5
        for <devicetree@vger.kernel.org>; Mon, 08 Aug 2022 07:49:13 -0700 (PDT)
X-Received: by 2002:adf:f90d:0:b0:20c:de32:4d35 with SMTP id
 b13-20020adff90d000000b0020cde324d35mr11636287wrr.583.1659970153270; Mon, 08
 Aug 2022 07:49:13 -0700 (PDT)
MIME-Version: 1.0
References: <1659608930-4370-1-git-send-email-quic_kalyant@quicinc.com>
 <CAA8EJpoAN4CVMKNouh3pPtX-5rnBeL3_T60M5cNhirNEmNeEkQ@mail.gmail.com> <BN0PR02MB8142FFB573A4D05B0560A13996639@BN0PR02MB8142.namprd02.prod.outlook.com>
In-Reply-To: <BN0PR02MB8142FFB573A4D05B0560A13996639@BN0PR02MB8142.namprd02.prod.outlook.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 8 Aug 2022 07:49:01 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U4cddyPxg2D5KP9ew2i=AQOSn=Jz_OmuZ0BrZCu2+MLA@mail.gmail.com>
Message-ID: <CAD=FV=U4cddyPxg2D5KP9ew2i=AQOSn=Jz_OmuZ0BrZCu2+MLA@mail.gmail.com>
Subject: Re: [v1] drm/msm/disp/dpu1: add support for hierarchical flush for
 dspp in sc7280
To:     Kalyan Thota <kalyant@qti.qualcomm.com>
Cc:     "dmitry.baryshkov@linaro.org" <dmitry.baryshkov@linaro.org>,
        "Kalyan Thota (QUIC)" <quic_kalyant@quicinc.com>,
        "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
        "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
        "freedreno@lists.freedesktop.org" <freedreno@lists.freedesktop.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "robdclark@gmail.com" <robdclark@gmail.com>,
        "swboyd@chromium.org" <swboyd@chromium.org>,
        "Vinod Polimera (QUIC)" <quic_vpolimer@quicinc.com>,
        "Abhinav Kumar (QUIC)" <quic_abhinavk@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Aug 8, 2022 at 3:44 AM Kalyan Thota <kalyant@qti.qualcomm.com> wrote:
>
> >I'd like to land at least patches 6-8 from [1] next cycle. They clean up the CTL
> >interface. Could you please rebase your patch on top of them?
> >
>
> Sure I'll wait for the series to rebase. @Doug can you comment if this is okay and this patch is not needed immediately ?
>
> >[1] https://patchwork.freedesktop.org/series/99909/

I don't personally see a problem basing them atop a cleanup. If the
patches Dmitry points at are targeted for the next cycle then that
seems like a pretty reasonable timeframe to me.

-Doug
