Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E85D14DD1C4
	for <lists+devicetree@lfdr.de>; Fri, 18 Mar 2022 01:14:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230512AbiCRAOk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Mar 2022 20:14:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230520AbiCRAOi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Mar 2022 20:14:38 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79B7D19B090
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 17:13:20 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id m12so8448283edc.12
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 17:13:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=J6L19eqyYX4dJCc3XEpRDxDO0mhCk2mFkPhjOK7UiSQ=;
        b=GeSJ4KYz58tHKZxX3/boqgrHRuZmFHBI9sOAa070OEI0Wapz8rONQwHrT4jv/9jeXJ
         QQPJq/kVqzlEtaKjMqsYMeNN9AxQ4VoP8L0j5g5eKR3oZfiEpAfpH72syE/k+v1kiPeG
         Q8ldjmLxpem6iXFiOdEji6Mp7d/vGptTgtNpw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=J6L19eqyYX4dJCc3XEpRDxDO0mhCk2mFkPhjOK7UiSQ=;
        b=YiO6y2w89nkrwAcjYv8mfpxOqfVkXeikyTk6yRGVWVyo7jNzUWQa0DF0NTMdTM7Hzg
         Jmyz5EJZW2yZTqArC+u6p8zyZfcZdvqrYq+WyXE98vgnAiizMYXABk9wLld/hN4stlBP
         s2djqfv0fXUQF7TLsmRyuVx7dI0+pQUw8aoSKz3O7mofKIAjLRNdFlpDfBpZGNYQ3eoo
         iRYagBWuSSAubzbO9dItvBdAsa+0W0NZI1uIYfLEkhWTi40xmvHzFOqnYrNr/ed5JWGD
         +r7j3Liupe6yWoyzTTdtUAK+3F5W36UffUNOh2xYzDZbCPEGNNVbI5org/n23CXgOQWA
         nziA==
X-Gm-Message-State: AOAM530FyDWEjkzvzXc+b7BoMp0JkNuM7CiGzrEouUH2f72CGBpWS/9t
        0iJ4tgW7LmxREJ00+7rWG3FjrJJgbKf/pFy62E4=
X-Google-Smtp-Source: ABdhPJwRoaREDsfOL6GE/t8hWj/kp+GSi6dpJCc8LU/k8xyNLj/GFuxi5Vg/wyfozY3PjH0xp5UTlw==
X-Received: by 2002:aa7:cc02:0:b0:411:487e:36fe with SMTP id q2-20020aa7cc02000000b00411487e36femr6963683edt.338.1647562398609;
        Thu, 17 Mar 2022 17:13:18 -0700 (PDT)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com. [209.85.221.51])
        by smtp.gmail.com with ESMTPSA id m21-20020a17090677d500b006df766974basm3003964ejn.3.2022.03.17.17.13.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Mar 2022 17:13:17 -0700 (PDT)
Received: by mail-wr1-f51.google.com with SMTP id d7so9638122wrb.7
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 17:13:17 -0700 (PDT)
X-Received: by 2002:a05:6000:1704:b0:203:d857:aa7a with SMTP id
 n4-20020a056000170400b00203d857aa7amr6072332wrc.513.1647562397219; Thu, 17
 Mar 2022 17:13:17 -0700 (PDT)
MIME-Version: 1.0
References: <1647452154-16361-1-git-send-email-quic_sbillaka@quicinc.com> <1647452154-16361-2-git-send-email-quic_sbillaka@quicinc.com>
In-Reply-To: <1647452154-16361-2-git-send-email-quic_sbillaka@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 17 Mar 2022 17:13:03 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VAxdo9yjGS5d=W5s5OFo6BG6DyQr6WQxBv9r-vfU7D3Q@mail.gmail.com>
Message-ID: <CAD=FV=VAxdo9yjGS5d=W5s5OFo6BG6DyQr6WQxBv9r-vfU7D3Q@mail.gmail.com>
Subject: Re: [PATCH v5 1/9] arm64: dts: qcom: sc7280: rename edp_out label to mdss_edp_out
To:     Sankeerth Billakanti <quic_sbillaka@quicinc.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Clark <robdclark@gmail.com>,
        Sean Paul <seanpaul@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        quic_kalyant <quic_kalyant@quicinc.com>,
        quic_abhinavk@quicinc.com, quic_khsieh@quicinc.com,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, krzk+dt@kernel.org,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        quic_vproddut@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Mar 16, 2022 at 10:36 AM Sankeerth Billakanti
<quic_sbillaka@quicinc.com> wrote:
>
> Rename the edp_out label in the sc7280 platform to mdss_edp_out
> so that the nodes related to mdss are all grouped together in
> the board specific files.
>
> Signed-off-by: Sankeerth Billakanti <quic_sbillaka@quicinc.com>
> ---
>
> Changes in v5:
>   - Change the order of patches
>   - Modify commit text
>
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
