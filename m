Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B8A95619C0
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 14:01:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235033AbiF3MBh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 08:01:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233206AbiF3MBg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 08:01:36 -0400
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0E9F74788
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 05:01:35 -0700 (PDT)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-31c1d580e4bso44446357b3.3
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 05:01:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IvKEIjzjU4LPTr3SH+n5s231w0NrZo/WhcQOyoRJxbo=;
        b=a577l4Vwc0EvrQPcjQ592IpDDOqs2LH+70gy+iEjdBsvx/M+bx4LDU/okbZz+EzTqi
         xSieK68x+/jTJbzDuRhio2KXcNXf0mkhWxYirTxSaHR6mIMshUGdnfcgCiZ9AwdRQSgO
         25NyP8dFEV3pN3d1oHjNF6ZqiAFATjrBn6Egx98w5UfA20iSIrbR6ezgv9/C7D7PlpcL
         30bbGK+9O72XSPAJ4koLw6SCMjBK4qMLY3vvYmD2EBRMEibfqNTR/vBb7jSifBVshGc8
         Eeex8qLNzbVVxBPymsKqZ94yfUM2QzbBq+r67bcDv/t8Ql9tJPkhkYXnrbi5mGtDoEFP
         XgIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IvKEIjzjU4LPTr3SH+n5s231w0NrZo/WhcQOyoRJxbo=;
        b=JBrC5ZI4QrRphVkkaIBUjfzZlH+KWHQgPq5d6eIRokfacGAxt5FY4Xcd/DQZx8fkXN
         awkPuGTHwjWZNpvxQdKkflYjnlOVma34ckyAzKwKR4VJTvHcDm/Vn51WrAtmOPMXRHor
         y/uj/cCnursW/GHlSlHXoUcHYRaXL5mske+2w6L4V73AZjI+osnACuhHAj/QH9etNfHC
         u4tpSt7R31O7f5MtKiJ9EaTi48hzFiXY+53+plmQo9X4V19sEeHk9Tv1UjMrzfuWsfMG
         KVzccOmh2QqOKgKIo5/ogl2lx5iGcvQQ1/ntqqh0Xwj1ktQpqql7UpOT2b4MPxg3NG+4
         ooxg==
X-Gm-Message-State: AJIora9ioaSUwYvFl5YYe0RhTnZNebmvvlTT2lIh+2VeIMJxfCYYus8X
        dl83jL2eF/4dONPJMGRAMwljXk0tGpgEfP6tr6h25g==
X-Google-Smtp-Source: AGRyM1sAv3huAMlZJPo1fFK7z2myKSXoujboeKvI27J2j4nuaqNB9V7fuVMOuLmlv2hgqaEtUA8aZivsjOqi4VQlE0I=
X-Received: by 2002:a0d:e20a:0:b0:317:ce36:a3a0 with SMTP id
 l10-20020a0de20a000000b00317ce36a3a0mr10375298ywe.448.1656590494542; Thu, 30
 Jun 2022 05:01:34 -0700 (PDT)
MIME-Version: 1.0
References: <1656489290-20881-1-git-send-email-quic_srivasam@quicinc.com>
In-Reply-To: <1656489290-20881-1-git-send-email-quic_srivasam@quicinc.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 30 Jun 2022 14:01:22 +0200
Message-ID: <CACRpkdYPQoDQ6oUBfB__pBvqMUD7yBaeuDcLfOqRKHm6sFkc7Q@mail.gmail.com>
Subject: Re: [PATCH v2] pinctrl: qcom: sc7280: Fix compile bug
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org, quic_plai@quicinc.com,
        bgoswami@quicinc.com, perex@perex.cz, tiwai@suse.com,
        srinivas.kandagatla@linaro.org, quic_rohkumar@quicinc.com,
        linux-arm-msm@vger.kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        swboyd@chromium.org, judyhsiao@chromium.org,
        linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 29, 2022 at 9:55 AM Srinivasa Rao Mandadapu
<quic_srivasam@quicinc.com> wrote:

> Fix the compilation error, caused by updating constant variable.
> Hence remove redundant constant variable, which is no more useful
> as per new design.
>
> The issue is due to some unstaged changes. Fix it up.
>
> Fixes: 36fe26843d6d ("pinctrl: qcom: sc7280: Add clock optional check for ADSP bypass targets")
>
> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>

Patch applied, thanks for fixing this!

Yours,
Linus Walleij
