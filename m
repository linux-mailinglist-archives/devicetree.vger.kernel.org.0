Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 122316D722F
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 03:52:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229973AbjDEBv4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Apr 2023 21:51:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231589AbjDEBvy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Apr 2023 21:51:54 -0400
Received: from mail-ua1-x92b.google.com (mail-ua1-x92b.google.com [IPv6:2607:f8b0:4864:20::92b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7441423C
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 18:51:53 -0700 (PDT)
Received: by mail-ua1-x92b.google.com with SMTP id h34so24613385uag.4
        for <devicetree@vger.kernel.org>; Tue, 04 Apr 2023 18:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1680659512;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jwpFUC847/YFt/XfpeQoDJ4SxIEry2tnTeuETvaZGB8=;
        b=EJUuO45LJ91YQhtcVzWPSqoFZ75CO0M41mQJTzx9YpW4AMBtmKfbi5DfMI/A0eT1C/
         QCaoygDmObVu18+cFW/KFGjNH+wWFIcnjQ5aedUtKgKQsAGxRU510LRt7pK2w/pbTekJ
         Sirbjg0GLtMyrOmH/+hberUPE8xfQLTSLZs+Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680659512;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jwpFUC847/YFt/XfpeQoDJ4SxIEry2tnTeuETvaZGB8=;
        b=Bo9XtC6bfChOcmy1vePiwJrxHLVsQnRuBFqE7pRXl3vEA0s0bZDx0kY6/ebESJTFLt
         ng2vqYT7xX83Ro4P35vsvPa4BmijyTlud985Oh+WiOBSg1SXZFjdNPJeGAF3c5DYCgdR
         Nj4MXiCJDqvEhEipaFJJawZSdbNksYEAoOyzfy1l5Jjyk7nU4iJVGX+OZIdYXmOhmcUO
         Z1fwAyU2bSmyeoyha4RD/D7NoeSH8u1oyIpbAzozU9qKlulCJ1pqIqPHH/1FdkNJSvpn
         DagvURd0fqb9bgKpHXb+6wMCxm4NypEea64uTPJTI10sZ5Y0DOzt81h8SblK+SiK6Kpo
         gbhQ==
X-Gm-Message-State: AAQBX9edUlqx0ivUbX/8fXgnbvM9QU+DZ+oI/RnQE2IdPAh1zbIpWfZu
        jPf/pOIfqkl2KXj6Zj3suTg4nQwpRKidgN6cjbg=
X-Google-Smtp-Source: AKy350Y9PtpChuxkOE0D1p+lwdKmnC+1L4yIywptHttv0mKY8gl5Bgk7geotH+R+4+o+3XJ6faz6aQ==
X-Received: by 2002:a05:6122:c88:b0:432:df9:b1f3 with SMTP id ba8-20020a0561220c8800b004320df9b1f3mr2642342vkb.11.1680659512335;
        Tue, 04 Apr 2023 18:51:52 -0700 (PDT)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com. [209.85.217.51])
        by smtp.gmail.com with ESMTPSA id a143-20020a1f9895000000b004399d3ec5edsm2267600vke.38.2023.04.04.18.51.52
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Apr 2023 18:51:52 -0700 (PDT)
Received: by mail-vs1-f51.google.com with SMTP id d2so30165379vso.9
        for <devicetree@vger.kernel.org>; Tue, 04 Apr 2023 18:51:52 -0700 (PDT)
X-Received: by 2002:a05:6e02:1d9a:b0:325:dd36:7451 with SMTP id
 h26-20020a056e021d9a00b00325dd367451mr2720800ila.1.1680659013319; Tue, 04 Apr
 2023 18:43:33 -0700 (PDT)
MIME-Version: 1.0
References: <1680271114-1534-1-git-send-email-quic_vpolimer@quicinc.com> <1680271114-1534-2-git-send-email-quic_vpolimer@quicinc.com>
In-Reply-To: <1680271114-1534-2-git-send-email-quic_vpolimer@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 4 Apr 2023 18:43:21 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XV4yjUb2ufQZjOTYsgFXE0Ghnor3f8FCSdpV_pcZd1yg@mail.gmail.com>
Message-ID: <CAD=FV=XV4yjUb2ufQZjOTYsgFXE0Ghnor3f8FCSdpV_pcZd1yg@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] drm/msm/dpu: set dirty_fb flag while in self
 refresh mode
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
> While in virtual terminal mode with PSR enabled, there will be
> no atomic commits triggered without dirty_fb being set. This
> will create a notion of no screen update. Allow atomic commit
> when dirty_fb ioctl is issued, so that it can trigger a PSR exit
> and shows update on the screen.
>
> Reported-by: Bjorn Andersson <andersson@kernel.org>
> Link: https://lore.kernel.org/all/20230326162723.3lo6pnsfdwzsvbhj@ripper/
> Signed-off-by: Vinod Polimera <quic_vpolimer@quicinc.com>
> ---
>  drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c | 3 +++
>  1 file changed, 3 insertions(+)

I can confirm that this patch plus patch #2 fixes the typing problems
seen on VT2 on a Chromebook using PSR.

Tested-by: Douglas Anderson <dianders@chromium.org>


-Doug
