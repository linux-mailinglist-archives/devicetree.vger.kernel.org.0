Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C9A56DC4AC
	for <lists+devicetree@lfdr.de>; Mon, 10 Apr 2023 10:52:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229635AbjDJIwl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Apr 2023 04:52:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229727AbjDJIwk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Apr 2023 04:52:40 -0400
Received: from mail-qt1-x82f.google.com (mail-qt1-x82f.google.com [IPv6:2607:f8b0:4864:20::82f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39730526E
        for <devicetree@vger.kernel.org>; Mon, 10 Apr 2023 01:52:13 -0700 (PDT)
Received: by mail-qt1-x82f.google.com with SMTP id h3so18675882qtu.1
        for <devicetree@vger.kernel.org>; Mon, 10 Apr 2023 01:52:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681116730; x=1683708730;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MjPJcbPq0QLme6Qs5r32fD1Nop+EYfDIQNfzRfTEM+w=;
        b=qC7XzGr7w/uw50OgKDP/7rYqnfvdCv1BQ4O/WoWGu6ccuOmDo11YCI/iIOn2/jGw5r
         7aPqnATgF2U0yyJvbA8waTDVZL9yfIpVpabrTj8VUn8mPbgJk0h2eaMEKMjkxuMdNWYo
         eDKcuKr9p6NpuuraTiEmdulyP6O+mpEPbaH0hpgI3r4Y1/Uy4XUBQm4ptoxQFoQ01MpB
         aUz9f6WWvuRXeMtiRgCOhvaerCu0DLAZxKKGwSzZnSXP/WhU9O21cz2v6lAp6hJDXVJQ
         QPcTd5JTaKHBjeAcDWpXKHSmUJok8wNKuJ4CrH96c/hbiHN7PKQW4mUoby4SzFqmRA6M
         pyfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681116730; x=1683708730;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MjPJcbPq0QLme6Qs5r32fD1Nop+EYfDIQNfzRfTEM+w=;
        b=u64z9SlT0Bs3o2761TsucIH05z44nNECYfI/7E1qvWM4sfguA5ebAd2NTjo+8WkFDI
         vByBxzD8avK2BwJaRhu9oecpEjzfJMW5ZiCd4iv2xwj3hiKRQAzEPUH0uiI1VVRJ1CRP
         Zty8XrNevEjnlWoBM+Szg8mANdy1DxhGYO73hudZHU5wOfTglQVNmOqH+6o96itTVMgz
         yTjxaTMtPcyuVlDJOsiq+vQzMflXW+QwK1UtyciwvCfWTNom/TeZKyuzvbePNhkBvOub
         yOVi7pPUdu3ZMyR07mTSR+pEaoCms/sgP+j1x+pMs60kcAhhgecXmSzZANno6/vF/3LZ
         SORA==
X-Gm-Message-State: AAQBX9dwmzwCL8yaNLEF+X+zFSha+WgKoGlCK4VIk7wrFYbnvTJgUrWR
        l/cpj/7so3RnTmOlDdW9n1JNsCHoA2KELcxEFA3cGQ==
X-Google-Smtp-Source: AKy350bnogS4xnC6EFs9NwGotUP1DlajzAMmolZS9KMAXcbVKSO5StDMnr/udZn/ce2klNkfzHjr4pWH7sIbbhLDk9E=
X-Received: by 2002:ac8:578c:0:b0:3d3:f7cf:1d4b with SMTP id
 v12-20020ac8578c000000b003d3f7cf1d4bmr2914104qta.2.1681116730548; Mon, 10 Apr
 2023 01:52:10 -0700 (PDT)
MIME-Version: 1.0
References: <20230124182857.1524912-1-amit.pundir@linaro.org>
 <39751511-3f06-7c39-9c21-208d4c272113@linaro.org> <CAA8EJppLBuA08hkqTrZx_wwbtCxK9sAjv48c9_DxgPENgo7a8Q@mail.gmail.com>
 <1a840d88-e5b1-711c-b980-f57620c54472@linaro.org> <8508e3d5-7468-0b2f-5a43-7c439ecf2d8b@linaro.org>
 <CAMi1Hd2UNxXHUVWO-=sWh=-bVnrqE3UdLguFOq+62SfvUiEs0A@mail.gmail.com>
 <b2307e91-3373-539a-ecfb-e2542b9f83db@linaro.org> <ed737e67-eabc-6f29-b734-f4698767ca8e@linaro.org>
 <fa2e0db7-5b27-5a41-920b-b786dc4e521c@linaro.org> <027268b7-4b04-f52e-06a8-9d924dc6efe4@linaro.org>
 <dfcc8baa-c0a3-c554-a8cf-75702a1c4cad@linaro.org>
In-Reply-To: <dfcc8baa-c0a3-c554-a8cf-75702a1c4cad@linaro.org>
From:   Amit Pundir <amit.pundir@linaro.org>
Date:   Mon, 10 Apr 2023 14:21:34 +0530
Message-ID: <CAMi1Hd3+8bsKnH6jrC6AgPUDeyocJD6phre-Y4HXHpP9p+u+AA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sdm845-db845c: Mark cont splash memory
 region as reserved
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Caleb Connolly <caleb.connolly@linaro.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        dt <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 9 Feb 2023 at 19:24, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On 09/02/2023 14:22, Bryan O'Donoghue wrote:
> > On 09/02/2023 12:11, Bryan O'Donoghue wrote:
> >>> If the bootloader splash is enabled then this memory is used until the
> >>> DPU driver instructs MDP5 pipes to suck data from a newly assigned
> >>> address,
> >>> so there's a short window where it is.
> >>
> >> It seems a shame to reserve 30 something megabytes of memory for
> >> continuous splash unless we are actually using it is my point.
> >>
> >> If I'm running headless its just wasted memory.
> >
> > Couldn't we
> >
> > 1. Find reserved continuous splash memory
> > 2. Fee it in the MDP when we make the transition
>
> Qualcomm has investigated freeing the MDP/DPU cont_splash memory, but I
> fear that the end result was that it is not _that_ easy to free it. It
> is marked as reserved/no-map, so the kernel doesn't think about it as a
> memory region. Adding it back required hacking around that.

Hi Team,

This patch missed the v6.3 cut and I'm really hoping it to make it to
v6.4. Is there anything I can do it move it forward. Sorry if I missed
any action item assigned to me in the followup emails.

Regards,
Amit Pundir

>
> --
> With best wishes
> Dmitry
>
