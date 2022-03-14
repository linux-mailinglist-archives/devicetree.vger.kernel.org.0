Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C759A4D8618
	for <lists+devicetree@lfdr.de>; Mon, 14 Mar 2022 14:38:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241387AbiCNNj6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Mar 2022 09:39:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241865AbiCNNj5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Mar 2022 09:39:57 -0400
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com [IPv6:2607:f8b0:4864:20::1130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C7C9BC2D
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 06:38:47 -0700 (PDT)
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-2dc348dab52so163540907b3.6
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 06:38:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xC+lJiodR+sWpzqzm91V+sLXEyA0MqIpnbN3l1bqwWU=;
        b=OexWQ2h693u4lZOOUvJTKtfnBVn43v7FMeeMk5qC6Frv256FwjHDfU7eMS1+8nFYmb
         i3A7P9HN5ayJTyk/xe33mK8GVleqWqW85fUg5rWNLWZ+xDhV/KwCvpDsQeuLdBQR8+Xo
         czjRV4c3d/fwjqVQ2XYLj8s+A9wfHndMUpwBA/k6f9n+l06tQSRE+rJchhDCTpb9lFqQ
         4znbk3UIOaTqHlj/AP5CvXd4dAKjjvxE6ZsXyF//gBc3BEmA+n79YsjU8RlWUca2oKok
         vlzRCH1tajRmDhoakSGDMBw8avYHd3MLbA6mlM0shYCsLfgTuTfM3MyfwgTVrcMLGkb1
         fIrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xC+lJiodR+sWpzqzm91V+sLXEyA0MqIpnbN3l1bqwWU=;
        b=fP9V7XAyS3xG96i49xM53gJjIEmvu81SDlCMBEOffjy8Oux6+7p7v4/v7TKwCOFhML
         AZSVoXfGrM6DPkknJrzocjeEDjVJxVG8725RB/MgrSUxarYkjxrmJioW1tP1RXqM8J0l
         ZAgoHfvwIiYqqukkU6fYyJ5jUptYHptFFC82Okhg2zw9hFlXMyE0cglxqfM0FlzuoaLM
         coGMOFhJo4081JcpZ3410p65CHt/0j811YCcG7VSKS46Hd8yJsSUNlnOEkwdBLVY9TKV
         MjdL0C6THtHX3aBEPKllXAr/G9l6R4bg2Slc59osZsmHCg/dIdH0bCsGS+5orDLvLDP0
         S5/g==
X-Gm-Message-State: AOAM530itIV+l+Edp6bnlLIgHdqoc7Oxl1QKehC2rn6DcVutWdVcByk0
        hyggTAs5+rAf8GeTbm0UDlH6jIQSJ3eB2crzcOuBZg==
X-Google-Smtp-Source: ABdhPJxR5tRZorPtoK9M8ocNQ9ikdDUGdQA0+NLPUHYqvLKOH7htQyeEib4lFHIQySUWWYAOFtzU3UegfAPAeVz5eBs=
X-Received: by 2002:a81:1182:0:b0:2dc:4e58:da41 with SMTP id
 124-20020a811182000000b002dc4e58da41mr18944386ywr.268.1647265126402; Mon, 14
 Mar 2022 06:38:46 -0700 (PDT)
MIME-Version: 1.0
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-23-s.hauer@pengutronix.de> <bb077f34-333e-a07a-1fcb-702a6807f941@rock-chips.com>
 <CAPj87rO2sztocJrE-CeSQWry9j_cSe2uv9F1Yf81pGnBXdu2Ag@mail.gmail.com>
 <ae4314db-09c0-049b-ccc9-f6b1c3003dcb@rock-chips.com> <CAPj87rOanNE1wca3ijJx1zXYZkKX1ta9F145GCXM15Nv=POicA@mail.gmail.com>
 <f3af0286-fc64-f011-bc90-6797e26e3640@rock-chips.com> <30f195d6-e9d7-3da6-89fa-4a064a1f6bf9@rock-chips.com>
 <d98782df-43c8-475b-375d-ad6aff4fae44@rock-chips.com>
In-Reply-To: <d98782df-43c8-475b-375d-ad6aff4fae44@rock-chips.com>
From:   Daniel Stone <daniel@fooishbar.org>
Date:   Mon, 14 Mar 2022 13:38:35 +0000
Message-ID: <CAPj87rNXuJ6MQMb7dJHWZcqxaH9cyu1f2_NWidT_zsm44STmaw@mail.gmail.com>
Subject: Re: [PATCH v7 22/24] drm: rockchip: Add VOP2 driver
To:     Andy Yan <andy.yan@rock-chips.com>
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Sandy Huang <hjc@rock-chips.com>,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, Peter Geis <pgwipeout@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andy,

On Mon, 14 Mar 2022 at 11:02, Andy Yan <andy.yan@rock-chips.com> wrote:
>    Remember you said our downstream vop2 driver is very slow on weston.
>
> Would you please share the case you run ? or how can i test frame rate
> on weston?

We were able to observe this by just using either waylandsink (using
dmabuf from the V4L2 rkvdec/rkvpu drivers), or even weston-simple-egl.
I have not been able to do a full review of Sascha's submission, but
from what I've seen of it, it should have fixed those issues. (I don't
have RK3568 hardware to hand anymore.)

Cheers,
Daniel
