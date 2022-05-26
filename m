Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29DA3534F51
	for <lists+devicetree@lfdr.de>; Thu, 26 May 2022 14:37:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239824AbiEZMh0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 May 2022 08:37:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231453AbiEZMhZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 May 2022 08:37:25 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00378BF5D
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 05:37:23 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id n10so1626369pjh.5
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 05:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=JAxAACxBj2q0ltIXtWhvJ9IfIUtpHHM/k3TqNqpi9jI=;
        b=bErNgXmLKViICLrEnIeno5fYz2WooLua67X61GN+2o2APHOtjZDSXIXAJv/CEQJ73J
         dQTbrulXYfbF+Xex6TH20mOoCYQLl2QEEc3S1CgTeYyeuqMpO+8Y252ATbOOLgFg1Otd
         2rv1K9uvBvXvn4cbNO9FuK1lMLkbIgSyCmf2CrDQ9aMIIunTB/GfDrF0ui7+UyKm/A26
         yOknmC6wJKcOmFMbDGhJgug4S2w8TsO8Nh2MP9i982Ddidy6JPr1CdvwLoX0sD6CAoZ0
         vZyens1PIEoFH/hshr6sseFHphZ9EIaoNEpShlz21dfAI/OyMgcGakHo2hoXhmJD5+R/
         BfEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=JAxAACxBj2q0ltIXtWhvJ9IfIUtpHHM/k3TqNqpi9jI=;
        b=2ctiz3KT42BHFax+lzMejRJZSjTuPG08tmHLPkhaGY9kJmfL+3eFNOAz4rOXlZJrkT
         9ejirAdCQvv0V9J5/TlZFMR7XoKl3NzxTsBV80oNGedMpqbIEW7mOhIBNlfsYu3hNBpa
         FUfYigkdPWMOtDh4uJ+3yMXS3P07Un43Yk7eVbbOJj4aJGkxFhH3Q4YizjLJuc9NT6GI
         bIknEjZQLRyHg9HNszXDpjz480lGEz+TolTTyB23a0fGhX3BHvBSpjYtIy1c/yCTGci3
         hZf6CYGCAPpQsfZoyJmn/BOi0MATp+pB1SkKWzESzZ9W+EEPO6i8mdwcai/EFjKmrwMy
         w5dQ==
X-Gm-Message-State: AOAM533AN9wC/KUBVBiOeIJvA3ixA1O7NoA051p/7z0gYkIqSZPBllUe
        g90Yv4IFbsHeRiUVP4rjZu4xjOos3A+CgI4im1g+6g==
X-Google-Smtp-Source: ABdhPJwKF+1aH/9eGrn4tZxuy+lgadweE9lupgree9wFgTOe2AKXT+u75FlJ9iqSVzbPiyU/JpDcxoxA47JCbo7rz5k=
X-Received: by 2002:a17:90b:4d91:b0:1df:f18f:7836 with SMTP id
 oj17-20020a17090b4d9100b001dff18f7836mr2481285pjb.152.1653568643465; Thu, 26
 May 2022 05:37:23 -0700 (PDT)
MIME-Version: 1.0
References: <20220522162802.208275-1-luca@z3ntu.xyz> <20220522162802.208275-5-luca@z3ntu.xyz>
In-Reply-To: <20220522162802.208275-5-luca@z3ntu.xyz>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Thu, 26 May 2022 14:37:12 +0200
Message-ID: <CAG3jFyv5OL6hJZeCSrLVUKJPiGXEs_gmP6COMQv98HhmxZrDQg@mail.gmail.com>
Subject: Re: [RFC PATCH 04/14] media: camss: video: Add support for 8x74
To:     Luca Weiss <luca@z3ntu.xyz>
Cc:     linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Loic Poulain <loic.poulain@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Todor Tomov <todor.too@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        matti.lehtimaki@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 22 May 2022 at 18:28, Luca Weiss <luca@z3ntu.xyz> wrote:
>
> From: Matti Lehtim=C3=A4ki <matti.lehtimaki@gmail.com>
>
> Video formats in 8x16 and 8x74 are similar.
>
> Signed-off-by: Matti Lehtim=C3=A4ki <matti.lehtimaki@gmail.com>
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---
>  drivers/media/platform/qcom/camss/camss-video.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/media/platform/qcom/camss/camss-video.c b/drivers/me=
dia/platform/qcom/camss/camss-video.c
> index 307bb1dc4589..ca955808fd6d 100644
> --- a/drivers/media/platform/qcom/camss/camss-video.c
> +++ b/drivers/media/platform/qcom/camss/camss-video.c
> @@ -990,7 +990,8 @@ int msm_video_register(struct camss_video *video, str=
uct v4l2_device *v4l2_dev,
>
>         mutex_init(&video->lock);
>
> -       if (video->camss->version =3D=3D CAMSS_8x16) {
> +       if (video->camss->version =3D=3D CAMSS_8x16 ||
> +               video->camss->version =3D=3D CAMSS_8x74) {

#27: FILE: drivers/media/platform/qcom/camss/camss-video.c:994:
+    if (video->camss->version =3D=3D CAMSS_8x16 ||
+        video->camss->version =3D=3D CAMSS_8x74) {


>                 if (is_pix) {
>                         video->formats =3D formats_pix_8x16;
>                         video->nformats =3D ARRAY_SIZE(formats_pix_8x16);
> --
> 2.36.0
>

With that fixed:

Reviewed-by: Robert Foss <robert.foss@linaro.org>
