Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A5E35B576B
	for <lists+devicetree@lfdr.de>; Mon, 12 Sep 2022 11:48:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229854AbiILJsH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Sep 2022 05:48:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229567AbiILJsH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Sep 2022 05:48:07 -0400
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com [IPv6:2607:f8b0:4864:20::b34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C3ED33E12
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 02:48:05 -0700 (PDT)
Received: by mail-yb1-xb34.google.com with SMTP id p69so5179340yba.0
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 02:48:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=9KAyBQijTc3CpY3EfApFNAsttaB3kwx6DpC0Y5jtA9Q=;
        b=fI/oQ91V3UMq7QHATLIhT0zngzZqANMZEIEEmkW6IwtVd+qww7q05/SSYvkZsS09Fa
         a2KLEkxHBAEakzuv3pd8jxX41/WPFudaKChaHl6Fn39fJf92BNtfqLuQq1+PHZsTxBVr
         AowhUfAjnZF7s+NNlloEscq7OVj0UKnwYO97QeFF0aYkyfk099UhUG72/J6Vxp3uMQuw
         nf3o8xMnm9tJN/4VM8qiP19yc5SPPZHQWYFhsoLcufSREaE8Tvk7zC8S/2vvYmEbW0Kc
         EEC8J6R9verapZnJv+DYCu2WM3TCF67OkrN7wjqp/jHD1EswGh6mRlGuhTK7xYEhdrbP
         R1PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=9KAyBQijTc3CpY3EfApFNAsttaB3kwx6DpC0Y5jtA9Q=;
        b=xChpX8lcYt7ZlqYBaA1/IYtSFuxv/qotgX2RuyzvxUZ6ylldepEKiQsGJqSY6Xngi3
         Vajd6glgcGjvV+AQLNjN22eJ1AAuRKemUpDOCeFJLznIL6/ytt/kOQVam2/Fkozh5Ymw
         lf/eCr/LAnYFp2dIyzah1Au0El/h3aKzcWKaP/U2/ieZPxy9ef3cWqK6WYx+H3Jk3DBi
         d6uFmG3xZ3B2Kw8LBubCfP3WbqxcSyXoCP1fSXF7AKh+1OHqCmVoAzubO77VAma1dbTm
         gr704UaghrePSGa8lsPQyCkiACfpb3XtH2W+wqqz/xx/yrf3o8N8FiJa8E5HSDywqjhO
         bZnQ==
X-Gm-Message-State: ACgBeo2IG2nDg6m3gKlUf5jaOxn98RaxIjkr8juMGU+dSH4CYbKNNxF4
        mJyyyL+Rfzifz1kzmaF8SwhJKxurlhQl80A/PI/bKw==
X-Google-Smtp-Source: AA6agR7wVfHaKMVKYT9CgXHm7YdGWzLQ+Ye4BLq4wSI4z3lFIir4B/5e7qryW0ODuTaziLs0IC/XisQ4sSDzl76fwoQ=
X-Received: by 2002:a05:6902:1029:b0:6af:2c99:4630 with SMTP id
 x9-20020a056902102900b006af2c994630mr3352655ybt.516.1662976084730; Mon, 12
 Sep 2022 02:48:04 -0700 (PDT)
MIME-Version: 1.0
References: <20220910124701.4060321-1-dmitry.baryshkov@linaro.org>
 <20220910124701.4060321-7-dmitry.baryshkov@linaro.org> <c397e8e7-3126-c1f9-8d0e-4b3181e5c5e0@collabora.com>
In-Reply-To: <c397e8e7-3126-c1f9-8d0e-4b3181e5c5e0@collabora.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Mon, 12 Sep 2022 12:47:53 +0300
Message-ID: <CAA8EJpot=sRtw6XaGmXy0bFe7KTzhCrDZxV0Na0w4Rigp09svg@mail.gmail.com>
Subject: Re: [RFC PATCH 06/10] thermal/drivers/tsens: use generic calibration
 routine for msm8976
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>
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

Hi,

On Mon, 12 Sept 2022 at 11:57, AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 10/09/22 14:46, Dmitry Baryshkov ha scritto:
> > According to msm-3.10, msm8976 uses the same routine for processing
> > calibration data as other platforms. Drop the msm8976-specific
> > compute_intercept_slope_8976() and use compute_intercept_slope().
> >
> > Cc: Konrad Dybcio <konrad.dybcio@somainline.org>
> > Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>
> As far as I remember, at least some MSM8976 versions don't have the slope
> fuses populated and/or the values are bad. This is the reason why slopes
> are hardcoded.
>
> This commit would break support for MSM8976.
> Cc'ing Marijn, as he should be able to re-test this.

Thanks! I was not sure, granted that the downstream seems to use
standard procedure. The details/retesting would be appreciated.


-- 
With best wishes
Dmitry
