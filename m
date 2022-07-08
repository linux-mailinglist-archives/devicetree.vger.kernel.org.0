Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0654C56B013
	for <lists+devicetree@lfdr.de>; Fri,  8 Jul 2022 03:53:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236988AbiGHBeJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jul 2022 21:34:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236978AbiGHBeI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jul 2022 21:34:08 -0400
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDEF772EEE
        for <devicetree@vger.kernel.org>; Thu,  7 Jul 2022 18:34:07 -0700 (PDT)
Received: by mail-oi1-x22e.google.com with SMTP id u9so25383360oiv.12
        for <devicetree@vger.kernel.org>; Thu, 07 Jul 2022 18:34:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=4tZYB3D3ttRdFiiCtilAWtqL/vodIYjfkRV380LddxI=;
        b=YqVPs6OGlXv6Sp9KRjQ5n4cUkBmMpWL0Cum3EY3mTe97zngGmDmDYSmW0J1GN9juEx
         DIP0+w9C6lzRfLY/JYYPHaKvgvYpXpHoo2JrT18zzV0TxZRYwE+4s5AfRrjZ2RSU1fRn
         FIm0hCSULj6+zlot8yv7j9zYtwyLxR/lQp3AM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=4tZYB3D3ttRdFiiCtilAWtqL/vodIYjfkRV380LddxI=;
        b=umYtF/nQVVZmLHYPGL4LL1hPww3nt+V3QLctwExxedILdZM/Qa0yAfuy6/feWwqTI7
         fEIIw7V9C12wsn7ti/QtzXEkHxk+IsWQ6u3VJ1IDSp8A4uWt8rrYTFIxpCReRddQ884Z
         4ZjlJHpdPm9NFl0ZXsyCMPgln+qJUj0Po9BMnmlV4pGJirLd7yJAb9qeEnb7xMvUzXXB
         3/IlGHjyAAVzZLO0bch6zeueEwNkt2PYE7z7JNKLmzEQPHL+xCNoQpor+VmWF4JV+3iY
         uxpIJ/YF3tTE+XfO8eB9Qv86gtky+EZXdUdDnxo7sAdvsHzOBx7jKzMhUlg3N87fPwl7
         A/vg==
X-Gm-Message-State: AJIora8OETqDo4t80YefVH+RGRoCqXNtmHv2R8BXxhmfoZdP3LptAyNy
        28axYOC0On42NpO29AM9EnkVdZ8bYKLUqaGya9LJ9A==
X-Google-Smtp-Source: AGRyM1v9+37b3BeeGhgFxdk4ptbOOu4/0xrMKSGjTpNKD4WbRsi1W17nLbBPR/H8wQjqmzp2KhHDi/rTPjIzbMsTuvk=
X-Received: by 2002:a05:6808:e87:b0:32e:4789:d2c with SMTP id
 k7-20020a0568080e8700b0032e47890d2cmr465809oil.193.1657244047137; Thu, 07 Jul
 2022 18:34:07 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 7 Jul 2022 18:34:06 -0700
MIME-Version: 1.0
In-Reply-To: <20220707213204.2605816-8-dmitry.baryshkov@linaro.org>
References: <20220707213204.2605816-1-dmitry.baryshkov@linaro.org> <20220707213204.2605816-8-dmitry.baryshkov@linaro.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Thu, 7 Jul 2022 18:34:06 -0700
Message-ID: <CAE-0n52k+iCRwi2NUz_ur2zPTCY+WjAk+gDHtPoEytjKd610Qg@mail.gmail.com>
Subject: Re: [PATCH 7/9] arm64: dts: qcom: sc7180: drop #clock-cells from displayport-controller
To:     Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, Sean Paul <sean@poorly.run>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Dmitry Baryshkov (2022-07-07 14:32:02)
> Drop #clock-cells from DP device node. It is a leftover from the times
> before splitting the it into controller and PHY devices. Now clocks are

s/the it/the device/

> provided by the PHY, while the controller doesn't provide any clocks.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
