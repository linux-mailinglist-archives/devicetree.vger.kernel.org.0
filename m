Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29ABA62C578
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 17:53:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233026AbiKPQxu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 11:53:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234181AbiKPQxb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 11:53:31 -0500
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C3ED5E9F6
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 08:51:50 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id m22so45501442eji.10
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 08:51:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NvbONARSsIDwCwSEYkMMo3k5hneuUpgwVcRn4D9nR5g=;
        b=ciFME/0QGrxCsZv8RfK4lRHAp9GK4NlACjARkh4aKKI1x0jFQaIdqYgQ6/x20tKuul
         3NHLAuroG6YC3hCdeWpMMIcts9K7avaIFFv8x/nCfHkGnnLsCJ2LP/69YQJTqSMPOwLV
         bf13ujJuuX4J2w9Gw7MzG+DziM5T5Jr2z0eEs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NvbONARSsIDwCwSEYkMMo3k5hneuUpgwVcRn4D9nR5g=;
        b=ZF71Xg90VIe/GeL+fAX79WfIi2yqnZo8wi4mxDBBRNn5KhbnX3ZlWBosmN52OidDKY
         nlPMGcktgZ2dgoIyIRRyTHmi1XGW1rZvAbBF9HQw/2UZ7kFVbR8Ew7ME6gIPnDAHvEzB
         hnaEuL/fukvfgeBswmOb0Gu5I13yESc+Y1wNI/K2hzShJm4IeXGV9rDG5aiLLWIO0Rdp
         kNbB/dKUiAuTmphrY7dXQ9oLwm7bWNB1rbpUBdLduislOZ9Jl1Ut9JKZ2Xs4qPUhqmOE
         R8YbF13jwpJrfKpC73zq9TtxC0b/nEV37ZXK2ZSX7hbQDNH6ktednQJskZ9ZqF8P5mjB
         XbsQ==
X-Gm-Message-State: ANoB5plnxi0GPmBNipsAhD4mJjsYW2gbIGB7+thQZijP0hZND2hwy2we
        EPHsMwLqdDMzJ61T0r/xQjqnL9URrgbYkyYh
X-Google-Smtp-Source: AA0mqf7KcyYvuQxPyIwmSucL/3K5bE9Vwkyz8SUls9HnTd0vZvXk35z6SWtHErLs30/9NcqOdlDKWw==
X-Received: by 2002:a17:906:1d47:b0:78c:fda3:c025 with SMTP id o7-20020a1709061d4700b0078cfda3c025mr18623008ejh.461.1668617508656;
        Wed, 16 Nov 2022 08:51:48 -0800 (PST)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com. [209.85.128.47])
        by smtp.gmail.com with ESMTPSA id es21-20020a056402381500b0045ce419ecffsm7787828edb.58.2022.11.16.08.51.42
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Nov 2022 08:51:44 -0800 (PST)
Received: by mail-wm1-f47.google.com with SMTP id o30so12329177wms.2
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 08:51:42 -0800 (PST)
X-Received: by 2002:a05:600c:4148:b0:3cf:7716:8954 with SMTP id
 h8-20020a05600c414800b003cf77168954mr2774825wmm.57.1668617501480; Wed, 16 Nov
 2022 08:51:41 -0800 (PST)
MIME-Version: 1.0
References: <1668591184-21099-1-git-send-email-quic_srivasam@quicinc.com>
In-Reply-To: <1668591184-21099-1-git-send-email-quic_srivasam@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 16 Nov 2022 08:51:29 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Uzky4uxs+qwSH9d7MBBWbXe8sMdvB_-Lqkq+6jbTCciQ@mail.gmail.com>
Message-ID: <CAD=FV=Uzky4uxs+qwSH9d7MBBWbXe8sMdvB_-Lqkq+6jbTCciQ@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7280: Remove unused sleep pin
 control nodes
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
Cc:     vkoul@kernel.org, agross@kernel.org, andersson@kernel.org,
        robh+dt@kernel.org, broonie@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_rohkumar@quicinc.com, srinivas.kandagatla@linaro.org,
        swboyd@chromium.org, judyhsiao@chromium.org,
        alsa-devel@alsa-project.org, quic_rjendra@quicinc.com,
        konrad.dybcio@somainline.org, mka@chromium.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Nov 16, 2022 at 1:33 AM Srinivasa Rao Mandadapu
<quic_srivasam@quicinc.com> wrote:
>
> Remove unused and redundant sleep pin control entries as they are
> not referenced anywhere in sc7280 based platform's device tree variants.
>
> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> ---
> Chnges Since v1:
>     -- Update subject prefixes and commit message.
>
>  .../qcom/sc7280-herobrine-audio-rt5682-3mic.dtsi   |  8 -----
>  .../dts/qcom/sc7280-herobrine-audio-wcd9385.dtsi   | 20 -----------
>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi           | 20 -----------
>  arch/arm64/boot/dts/qcom/sc7280.dtsi               | 40 ----------------------
>  4 files changed, 88 deletions(-)

Reported-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
