Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85DEE52BCB1
	for <lists+devicetree@lfdr.de>; Wed, 18 May 2022 16:17:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230026AbiERNw4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 May 2022 09:52:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238164AbiERNwz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 May 2022 09:52:55 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9AA41C6CA9
        for <devicetree@vger.kernel.org>; Wed, 18 May 2022 06:52:53 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id z2so3995033ejj.3
        for <devicetree@vger.kernel.org>; Wed, 18 May 2022 06:52:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ez+ANy+RKejIxGfGKCpQHExRQ8gPkVRdNNVMgRcAEvs=;
        b=l+B5/IQS1OJOGyccBY+I+FFBICuXQ8yUtCmCCF2WEyxnm6nWdLG8Gt5bvVLQpbVJFC
         K+cw9GJWrDbztXJFqHpYaOEBIbUH3FObZR0D/91fWkPjNVPsiOkjFfngH/BNLi30DudR
         qDb63Cg0rwBwB37UWAF3UdNK2phTKwO6T+Luc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ez+ANy+RKejIxGfGKCpQHExRQ8gPkVRdNNVMgRcAEvs=;
        b=ckXiPN9ofi/jLrONI4cKHo5TbPyO4jVqbhy++3uRU7tO0mAxDIJs1gpqOFwyiUd8NR
         sOGL15wh1xccnM/MxzzXHSNubqoQPya/0cebjOK+F9RuHLwyEqSQoUc+AbRRMXh0xlIy
         8r8umA2SBL/pqV9khmSZWm9O9ARY3dfhOMl0OA0QKbR2btzgrGf7zjhueSy0cX7abXoV
         iiWObV2w4ALq+lcyRyJ0lgKozahy8W55l2AIVZme18TLPNTiove1lA7B0ASzgGJudou6
         H0yx4DuCxYsKMVTjtZbNe1WGQEX82gmVm6VbJpPdZO/6DyMLNh10FaKj5R+HHEFV+Yfs
         V2Gw==
X-Gm-Message-State: AOAM532F8/dHey5GtEZ8Dsnfs5H0xtQGe+v6tIGMQ2Ch0V6qhauAsZ9q
        xiRLE5MKM+9660Dgug2ZbfnxfefPJL18XNd9Tos=
X-Google-Smtp-Source: ABdhPJwxaDB9gL8h/kfQJXFcuBwSnu2/uDbrKTM4Z/UlCQyD9y7km4JOy8vZkCNJFVEPkB5C2/Oe3A==
X-Received: by 2002:a17:907:868e:b0:6fe:293:e7cc with SMTP id qa14-20020a170907868e00b006fe0293e7ccmr22275836ejc.716.1652881971666;
        Wed, 18 May 2022 06:52:51 -0700 (PDT)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com. [209.85.221.45])
        by smtp.gmail.com with ESMTPSA id n20-20020a509354000000b0042aa23fa93bsm1459866eda.20.2022.05.18.06.52.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 May 2022 06:52:50 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id w4so2794115wrg.12
        for <devicetree@vger.kernel.org>; Wed, 18 May 2022 06:52:50 -0700 (PDT)
X-Received: by 2002:a05:6000:1c03:b0:20e:5cac:1eb5 with SMTP id
 ba3-20020a0560001c0300b0020e5cac1eb5mr5326338wrb.422.1652881969929; Wed, 18
 May 2022 06:52:49 -0700 (PDT)
MIME-Version: 1.0
References: <20220510154406.v5.1.Id769ddc5dbf570ccb511db96da59f97d08f75a9c@changeid>
 <20220510154406.v5.3.I0977b1a08830d0caa8bfb1bdedb4ecceac709a7f@changeid>
In-Reply-To: <20220510154406.v5.3.I0977b1a08830d0caa8bfb1bdedb4ecceac709a7f@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 18 May 2022 06:52:37 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X4wekMgpT-o6Oy4_1n1YssJbUgyyeBxiHSk334UKqYyQ@mail.gmail.com>
Message-ID: <CAD=FV=X4wekMgpT-o6Oy4_1n1YssJbUgyyeBxiHSk334UKqYyQ@mail.gmail.com>
Subject: Re: [PATCH v5 3/5] arm64: dts: qcom: sc7180: Add quackingstick dts files
To:     "Joseph S. Barrera III" <joebar@chromium.org>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, May 10, 2022 at 3:46 PM Joseph S. Barrera III
<joebar@chromium.org> wrote:
>
> Quackingstick is a trogdor-based board. These dts files are copies from
> the downstream Chrome OS 5.4 kernel, but with downstream bits removed.
>
> Signed-off-by: Joseph S. Barrera III <joebar@chromium.org>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
>
> ---
>
> Changes in v5:
> - Removed extra newline
> - Added comment that compatible will be filled in per-board
>
> Changes in v4:
> - Added missing version history
>
> Changes in v3:
> - First inclusion in this series
>
>  arch/arm64/boot/dts/qcom/Makefile             |   2 +
>  .../sc7180-trogdor-quackingstick-r0-lte.dts   |  38 ++
>  .../qcom/sc7180-trogdor-quackingstick-r0.dts  |  26 ++
>  .../qcom/sc7180-trogdor-quackingstick.dtsi    | 324 ++++++++++++++++++
>  4 files changed, 390 insertions(+)

Just so it doesn't get lost, I saw another downstream change fly by.
Since you already have to spin for v6, you should incorporate that
too:

https://crrev.com/c/3652958

-Doug
