Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA54A64BF17
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 23:07:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236173AbiLMWHv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 17:07:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236694AbiLMWHs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 17:07:48 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB4335F4F
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 14:07:46 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id p36so7289263lfa.12
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 14:07:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wHUnqLw96+ngp6Xno9gf3PyYozaeRIXvoO7s/Oinps0=;
        b=igrOr2o5GAVw2Rall5ObRaZUP4UxSsd7ZVPg2xSJ2ZpQc6D7BY6WC2vHNKs48xDiOn
         w94aMUby95vy7IaefMNGYJibV5azwMVVYeskonJDlwsJyisJqXSZ+YeaNp4J1zwDyuUa
         Xp83Z4YdwgpdSngFC53KmQDxF9qbpwQgjXKLIVS4k3s37eQx0OXnTnh8iRg6yS4suVos
         yfSfXAC+6rUt3QQFC99BVn8vkCRcXXWV0z6u+3gSG8ukI3+RzXBnm8lT720HezQEI6OZ
         F/P/rQvGesHQbGFzs4zCdigd0fUw0DDUDsjBEvB37XYSTurE+at0wokPvnN1YnaFJvG9
         xffw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wHUnqLw96+ngp6Xno9gf3PyYozaeRIXvoO7s/Oinps0=;
        b=lzcPPtrGDw2Dq6kVZCmVQNL8XT7gSEr0blSaPNcaTpaqcxAMWEPDykBT4UQ+1YSFIK
         FcVMVZwpPGTonwkVZbXcEvqfOMiVe3drmWhA3sQFs0/Si7zgshIVJJ4qJJDId1ELr/st
         PDFE1xwOIa1Dfu8qdrFOPi30lrKkwJK7WmWHvlxFZKUhyvSAPayOrJ9rwELo8zpFpJLL
         lC1B8ONj15g6zY3Sgb+bQy/s8pW+xAzpO5JK/7B43Tyvj45XONMyEf6F4bUYpX/it4C0
         BH7cjXAQi+MMKbrndQ60zgPm/kwQyeRJGT0l2wGvFqgkpOPoMX+AXc6J/98Z/jKzsjIy
         Y8sQ==
X-Gm-Message-State: ANoB5pnzhwstP9aG8+xd6mHoRT23tLIs/DC92UTCTH0WJ32X3HPOOKyy
        I/Ri1Eo/VxpImKQZODFpcGR9hg==
X-Google-Smtp-Source: AA0mqf7ehK46F6iool0O7jW35L3u8rQcwD6kafvrqVI+B60Y6ZdK4Ce0X/YC0MCcDAh1XjizP0eE3g==
X-Received: by 2002:a05:6512:acf:b0:4a4:68b9:19f6 with SMTP id n15-20020a0565120acf00b004a468b919f6mr7176732lfu.30.1670969264760;
        Tue, 13 Dec 2022 14:07:44 -0800 (PST)
Received: from ?IPv6:::1? (dzccz6yfpdgdc5vwjcs5y-3.rev.dnainternet.fi. [2001:14ba:a085:4d00:8c19:462c:c647:13f2])
        by smtp.gmail.com with ESMTPSA id s17-20020a056512215100b00498f77cfa63sm526359lfr.280.2022.12.13.14.07.44
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Dec 2022 14:07:44 -0800 (PST)
Date:   Wed, 14 Dec 2022 00:07:41 +0200
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Kuogee Hsieh <quic_khsieh@quicinc.com>,
        dri-devel@lists.freedesktop.org, robdclark@gmail.com,
        sean@poorly.run, swboyd@chromium.org, dianders@chromium.org,
        vkoul@kernel.org, daniel@ffwll.ch, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@somainline.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, airlied@gmail.com
CC:     quic_abhinavk@quicinc.com, quic_sbillaka@quicinc.com,
        freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v12_4/5=5D_drm/msm/dp=3A_parser_link?= =?US-ASCII?Q?-frequencies_as_property_of_dp=5Fout_endpoint?=
User-Agent: K-9 Mail for Android
In-Reply-To: <1670967848-31475-5-git-send-email-quic_khsieh@quicinc.com>
References: <1670967848-31475-1-git-send-email-quic_khsieh@quicinc.com> <1670967848-31475-5-git-send-email-quic_khsieh@quicinc.com>
Message-ID: <19FF7ADA-F116-4C0E-9930-617FF1EE3801@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 13 December 2022 23:44:07 EET, Kuogee Hsieh <quic_khsieh@quicinc=2Ecom>=
 wrote:
>Add capability to parser and retrieve max DP link supported rate from
>link-frequencies property of dp_out endpoint=2E
>
>Changes in v6:
>-- second patch after split parser patch into two patches
>
>Changes in v7:
>-- without checking cnt against DP_MAX_NUM_DP_LANES to retrieve link rate
>
>Changes in v9:
>-- separate parser link-frequencies out of data-lanes
>
>Changes in v10:
>-- add dp_parser_link_frequencies()
>
>Changes in v11:
>-- return 0 if(!endpoint)
>
>Changes in v12:
>-- replace khz with kbytes at dp_parser=2Eh
>
>Signed-off-by: Kuogee Hsieh <quic_khsieh@quicinc=2Ecom>


Reviewed-by: Dmitry Baryshkov <dmitry=2Ebaryshkov@linaro=2Eorg>


>---
> drivers/gpu/drm/msm/dp/dp_parser=2Ec | 27 +++++++++++++++++++++++++++
> drivers/gpu/drm/msm/dp/dp_parser=2Eh |  2 ++
> 2 files changed, 29 insertions(+)


--=20
With best wishes
Dmitry
