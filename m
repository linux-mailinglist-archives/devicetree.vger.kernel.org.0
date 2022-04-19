Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1FC8450679C
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 11:22:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348076AbiDSJZY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 05:25:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235725AbiDSJZY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 05:25:24 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D17532A26F
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 02:22:41 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id q3so20926500wrj.7
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 02:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=p8P6IeNR1TwtrMg6RsrKfdY4Yo5Rygb5DfiPVUoKhK8=;
        b=by0FVyX6p0zMcvlQP3Y+c8K8TzgSgvcE5pyCF1vetrjvKiBQtCgOwo2ZZWote70zYk
         o9LMkdzdoRmlCNb2amRWJGhf1KdRzvw+TmHMwSj3jdMJksgGdAr/RMXpGiMyCbL3wax2
         91qaPs2u8lB9l4uXPjOarOfRvJX+DT5UFJGrw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=p8P6IeNR1TwtrMg6RsrKfdY4Yo5Rygb5DfiPVUoKhK8=;
        b=8EjV/w1Io9qxT5Jo/Cw6/7trsEjQVQbRprBwRafYAjNFW4TEwe9K5Hj+utYCoCZ2hP
         B5M4UgJ4ish5R7WXUhzkGAqOUYfCZszKFC6s53dYc3gDGOkroN2gGUMW3wBjDx7yvA/f
         ngEcAKOr1ub8ZrDmblZQHub65RMj6SnxuHyoXm6lQmE2CHFrGAZ/BRQQliNY6it+t+UH
         hP5dEiY+B7mhXZm07faekSg4H8IBg0s9hCP4l+oXfHsg6LbcVT8wF0uGE9hwlomCisGU
         2KjZ4glHPIEgSoMyZt7Ey2lB1jGu74bPr48szDTuSWaNQ7gTYMw4jAUt52KgUke/K9Rs
         AGVA==
X-Gm-Message-State: AOAM531kwAFmrk2S/VrAEwVEDjlWGbUSCCHJvxzUa/i0faOpOIgxHk2g
        Pcqk2lN8q3h1QbDaLX32xGNRRYbrZ+FhxiHEQS6+zQ==
X-Google-Smtp-Source: ABdhPJzFGn7LU0fqJ7O61lsvDaAZ/2DWIaGN8GbhlNMmxqCmPG3XLkxvdSi+ys256zE0obhK3F0PwBs+L0/P7lP7rrk=
X-Received: by 2002:a05:6000:18c1:b0:207:87dc:94b2 with SMTP id
 w1-20020a05600018c100b0020787dc94b2mr10927908wrq.437.1650360160433; Tue, 19
 Apr 2022 02:22:40 -0700 (PDT)
MIME-Version: 1.0
References: <1649844596-5264-1-git-send-email-quic_srivasam@quicinc.com>
In-Reply-To: <1649844596-5264-1-git-send-email-quic_srivasam@quicinc.com>
From:   Judy Hsiao <judyhsiao@chromium.org>
Date:   Tue, 19 Apr 2022 17:22:29 +0800
Message-ID: <CAJXt+b9EKzJ6V2OxYwMiexw2sFhwc0U28XuerC7829ZuHAvghg@mail.gmail.com>
Subject: Re: [PATCH] ASoC: qcom: lpass-platform: Update memremap flag to MEMREMAP_WC
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org, quic_plai@quicinc.com,
        bgoswami@codeaurora.org, perex@perex.cz, tiwai@suse.com,
        srinivas.kandagatla@linaro.org, quic_rohkumar@quicinc.com,
        linux-arm-msm@vger.kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        swboyd@chromium.org,
        Venkata Prasad Potturu <quic_potturu@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> -       buf->area = (unsigned char * __force)memremap(buf->addr, buf->bytes, MEMREMAP_WT);
> +       buf->area = (unsigned char * __force)memremap(buf->addr, buf->bytes, MEMREMAP_WC);
Should we replace the memremap() with other standard DMA buffer
allocation API like: snd_pcm_set_managed_buffer() ?
Thanks!
>
>         return 0;
>  }
> --
> 2.7.4
>
