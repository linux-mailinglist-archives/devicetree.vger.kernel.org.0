Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B16AB50C611
	for <lists+devicetree@lfdr.de>; Sat, 23 Apr 2022 03:39:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231553AbiDWBmE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 21:42:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231539AbiDWBmD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 21:42:03 -0400
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F330362BCC
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 18:39:07 -0700 (PDT)
Received: by mail-oi1-x22b.google.com with SMTP id z2so10960843oic.6
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 18:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=7EJS8NNeeeYMyvlGg/Ekyb4WY0hHCp+wg2fhE6TIsAk=;
        b=RYGnji360BubilqdVVBND2TBvUGRtQqlSZYtbv+32nSrl/HaxDiU9NvStswPNTPHNv
         l5kk4CBhQPBzK8GQA2VPJHjjXUi1R2hmIzm4pifKn2ZVjffCZIePtPtXyHZFwQNqmGFf
         fnjiOnL0u+ncqJZdbj1an/HbxZAaJ1sZeCrXM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=7EJS8NNeeeYMyvlGg/Ekyb4WY0hHCp+wg2fhE6TIsAk=;
        b=WR3c6RwvVD8OeWm+7GK5tzv43WcLVKq3VxiZX0kIPB7UfXG5HYeGXtm8j8TDnmklt4
         4k37ndCDVxijPQ1RJIGaVYMzcZDmm2kHhvQpOi4k8FffnsnhPBN7e9NrXZLpLxzvryZZ
         NXeaFTSgR93dFm73aua3JLp1alLZRkefHeSodbFwLsopsOwS+C1eJ8VmGjlWrpG/R0JI
         3nzoW7/YePAF2SXVshwd3DYgbQP/10lXZSuf8byBn4aNbNsg/s0zEhA6gip9tSDvQ7CM
         OEAbCrAU+OzxQGjB1ukdz6BK9kF6L8mHSZj2zDYXyObsJxLiUTkZAnEMqYs8a44ODksP
         vdtg==
X-Gm-Message-State: AOAM532C1X5HbtlyVd0yR6G04ewMGyfs/xZhqD3x4veptSlTWi3737fK
        uOnvur2jXiUQC3QGWZhnDp61pJuzMwdQdJGN0flspw==
X-Google-Smtp-Source: ABdhPJykwLPlALEXFN/14+I62z2Ro0mrF6nz4lBhvSBstY/qhvFmCUzDDHH6zZMWwVedGzrAP/waI44abrHx0IYwWCQ=
X-Received: by 2002:a05:6808:1296:b0:325:8fb:68f3 with SMTP id
 a22-20020a056808129600b0032508fb68f3mr56442oiw.193.1650677947414; Fri, 22 Apr
 2022 18:39:07 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 22 Apr 2022 18:39:07 -0700
MIME-Version: 1.0
In-Reply-To: <1650618666-15342-5-git-send-email-quic_sbillaka@quicinc.com>
References: <1650618666-15342-1-git-send-email-quic_sbillaka@quicinc.com> <1650618666-15342-5-git-send-email-quic_sbillaka@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Fri, 22 Apr 2022 18:39:07 -0700
Message-ID: <CAE-0n52Lh_+_cPq7ivi0GHaUkY8_mH4nsvXeBBEbVRHLvHDYcw@mail.gmail.com>
Subject: Re: [PATCH v9 4/4] drm/msm/dp: Support the eDP modes given by panel
To:     Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     robdclark@gmail.com, seanpaul@chromium.org,
        quic_kalyant@quicinc.com, quic_abhinavk@quicinc.com,
        dianders@chromium.org, quic_khsieh@quicinc.com,
        bjorn.andersson@linaro.org, sean@poorly.run, airlied@linux.ie,
        daniel@ffwll.ch, dmitry.baryshkov@linaro.org,
        quic_vproddut@quicinc.com, quic_aravindh@quicinc.com,
        steev@kali.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sankeerth Billakanti (2022-04-22 02:11:06)
> The eDP controller does not have a reliable way keep panel
> powered on to read the sink capabilities. So, the controller
> driver cannot validate if a mode can be supported by the
> source. We will rely on the panel driver to populate only
> the supported modes for now.
>
> Signed-off-by: Sankeerth Billakanti <quic_sbillaka@quicinc.com>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
