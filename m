Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 758876DB07D
	for <lists+devicetree@lfdr.de>; Fri,  7 Apr 2023 18:23:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229672AbjDGQXs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Apr 2023 12:23:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229758AbjDGQXo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Apr 2023 12:23:44 -0400
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECBDA197
        for <devicetree@vger.kernel.org>; Fri,  7 Apr 2023 09:23:19 -0700 (PDT)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-54c17fa9ae8so83574127b3.5
        for <devicetree@vger.kernel.org>; Fri, 07 Apr 2023 09:23:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1680884598; x=1683476598;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ohFbb1dKXrRtFWACbHMbO4cTeWK5wuWqXsuHiYb+bX8=;
        b=RepzUhBqfdIKEJPmkM25Ci8DVG2l+Uhv1Zr0uR9CRlOUc6KmuQAyAKP9lea96N2PiR
         POvOYTkqcz4Vn2JkdjY7dHnsNMIJ9NRqKbXozfJNzY6fV/eJBWzmVSevQh/6YM+o/wH9
         S8El0hwmnM1OfzUByuKxdJpPFiWadN97GTYsY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680884598; x=1683476598;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ohFbb1dKXrRtFWACbHMbO4cTeWK5wuWqXsuHiYb+bX8=;
        b=vaTrOF65tXLmisdQ5Sinn7c5L9DqhWAIzj/ZHltoq4g/xx4wVGsMt8QPpzZYkGyzqa
         NLVZ+Yn+4bkJnAY/ISIfBHrX1aDmqvWaF8suu5SlCgj5xG/+gSgPUyDwaU7sPx3Xp0T4
         6q33sYwarhBK1l4Lyw6TcskfhrY0x2U4bQPzMZz7pCUWpBed/Fbu1saPg6XJkCCTg7Pg
         8Dj/M93xMW6YYI45EUJlZaTDGmSfLofYyFTcfxcJ0QAWNpRFafG7HIoZMKk1ijrlagJX
         f3hqWsWjMHwOb6ebY4tkfPzWoV28UiOpiXcGq43DYLGEyTI6jGsmpNPPJHM28I4iKdI7
         jueA==
X-Gm-Message-State: AAQBX9cATo7P4nvXnkXBHw9fUfD8m1sm2zfkYilzqMXnBH+k8+UOh/z/
        lxxclDAfhQ5oln6ktXvNpv9N4M6oVOQcSQh4T4Q=
X-Google-Smtp-Source: AKy350b5RY3Sk1Lutv4KfV8nK8iaut7g5rMhWI2qX9vIrqF5wSki30j5Isyyl6yPWSsKpvmTQBItoA==
X-Received: by 2002:a0d:e656:0:b0:52e:c985:f70d with SMTP id p83-20020a0de656000000b0052ec985f70dmr2765175ywe.7.1680884598223;
        Fri, 07 Apr 2023 09:23:18 -0700 (PDT)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com. [209.85.219.171])
        by smtp.gmail.com with ESMTPSA id l11-20020a0de20b000000b00545a08184edsm1101019ywe.125.2023.04.07.09.23.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Apr 2023 09:23:17 -0700 (PDT)
Received: by mail-yb1-f171.google.com with SMTP id y69so6111076ybe.2
        for <devicetree@vger.kernel.org>; Fri, 07 Apr 2023 09:23:17 -0700 (PDT)
X-Received: by 2002:a25:cfcf:0:b0:b2f:bdc9:2cdc with SMTP id
 f198-20020a25cfcf000000b00b2fbdc92cdcmr2102212ybg.7.1680884596886; Fri, 07
 Apr 2023 09:23:16 -0700 (PDT)
MIME-Version: 1.0
References: <20230407151423.59993-1-nikita@trvn.ru> <20230407151423.59993-3-nikita@trvn.ru>
In-Reply-To: <20230407151423.59993-3-nikita@trvn.ru>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 7 Apr 2023 09:23:04 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V_iLB7kgsvdQAUX+7tMtQTj91xFV_CoTzDDxsLK+zFMg@mail.gmail.com>
Message-ID: <CAD=FV=V_iLB7kgsvdQAUX+7tMtQTj91xFV_CoTzDDxsLK+zFMg@mail.gmail.com>
Subject: Re: [PATCH v5 2/4] arm64: dts: qcom: sc7180: Drop redundant disable
 in mdp
To:     Nikita Travkin <nikita@trvn.ru>
Cc:     agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, konrad.dybcio@linaro.org,
        quic_srivasam@quicinc.com, judyhsiao@chromium.org,
        mka@chromium.org, cros-qcom-dts-watchers@chromium.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Apr 7, 2023 at 8:14=E2=80=AFAM Nikita Travkin <nikita@trvn.ru> wrot=
e:
>
> mdss is useless without a display controller which makes explicitly
> enabling mdp redundant. Have it enabled by default to drop the extra
> node for all users.
>
> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180-idp.dts      | 4 ----
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 4 ----
>  arch/arm64/boot/dts/qcom/sc7180.dtsi         | 2 --
>  3 files changed, 10 deletions(-)

Makes sense to me. If you were feeling particularly proactive, you
could also fix the same issue on sc7280.dtsi

Reviewed-by: Douglas Anderson <dianders@chromium.org>
