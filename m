Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10A32718B7C
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 22:55:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229873AbjEaUzM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 16:55:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229729AbjEaUzL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 16:55:11 -0400
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com [IPv6:2607:f8b0:4864:20::d2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E037A129
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 13:55:09 -0700 (PDT)
Received: by mail-io1-xd2a.google.com with SMTP id ca18e2360f4ac-7770c1546e2so11180639f.0
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 13:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1685566509; x=1688158509;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AYHmPPdm4Dau+d947lCnpQiMGTh8x8NsQoxsSBGTC/s=;
        b=nWyU5MJ3DqF/1xsCnT8xvvrJ1X+RS1AuqjdXWjjMqGNNT03sQXXdx96xEWonhKtbI2
         +uqVX0CFTblLuAkVtRqPPRDzvZq0hZVNcJkRMv2n+TAxQKEl2duSkPsoP83XOujaGox8
         uikxQ7HESMH/nuPQMUJ+WDOcPF5Ei0gRLBURs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685566509; x=1688158509;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AYHmPPdm4Dau+d947lCnpQiMGTh8x8NsQoxsSBGTC/s=;
        b=gTo/d1nov59/8cbi7gSmvcjyA1vB63+JsP0YsSIsPZhxGylM44slnYAP3IKjK2Mozp
         K7w62zbE34veYo3zytdYjT0QEk+7mEwUwGjEjhpsx0VOjtCW8ufdtX1f+dQH7m84DEiO
         gUB/y25ejiSaxzHjTSlKMW4Ok+atm/svV5rTMe0JhGqvLoH/3IgHitFwhbUvrPw1FS0H
         h6lySM1AOtyVjbvYZbbaug4RCkS5wcfR9uQ8xvjkqWGkqvAB/BPOppKb61MmThQFcc+c
         W2ypnSt3llba7xWvRof7cNjvQ6+pHMQ8U4GVOORCFLCqYyxHmpAJNaa3J4n8TKd2nw5m
         cVWg==
X-Gm-Message-State: AC+VfDwg17y5IrMejGLkzT8OkLT6Ch/DhdN4POPVikRvCMGwlfJOJ9xc
        vo6N3UsiaUuAV8Sz6pXW9I0U8WoF54QaoZldihA=
X-Google-Smtp-Source: ACHHUZ68rR18MZZbt/8qtNRvzXLjrIdHvU8RFJgxmvw9byO21lskf0yMfnYT7hPAKY/3UKKrNtWmoA==
X-Received: by 2002:a5e:c007:0:b0:775:5f74:f4ca with SMTP id u7-20020a5ec007000000b007755f74f4camr4613381iol.9.1685566508806;
        Wed, 31 May 2023 13:55:08 -0700 (PDT)
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com. [209.85.166.171])
        by smtp.gmail.com with ESMTPSA id n21-20020a6b7215000000b00752f62cd3bdsm3979479ioc.12.2023.05.31.13.55.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 May 2023 13:55:08 -0700 (PDT)
Received: by mail-il1-f171.google.com with SMTP id e9e14a558f8ab-33b398f2ab8so41925ab.0
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 13:55:08 -0700 (PDT)
X-Received: by 2002:a05:6e02:b42:b0:33a:e716:a76d with SMTP id
 f2-20020a056e020b4200b0033ae716a76dmr37485ilu.27.1685566153516; Wed, 31 May
 2023 13:49:13 -0700 (PDT)
MIME-Version: 1.0
References: <20230531-topic-rsc-v1-0-b4a985f57b8b@linaro.org> <20230531-topic-rsc-v1-6-b4a985f57b8b@linaro.org>
In-Reply-To: <20230531-topic-rsc-v1-6-b4a985f57b8b@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 31 May 2023 13:49:01 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vx9txUs4=b_enDMTBXuNsTGXO2v3KyauuD8k_J++vbfA@mail.gmail.com>
Message-ID: <CAD=FV=Vx9txUs4=b_enDMTBXuNsTGXO2v3KyauuD8k_J++vbfA@mail.gmail.com>
Subject: Re: [PATCH 6/8] arm64: dts: qcom: sdm845: Flush RSC sleep & wake votes
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Melody Olvera <quic_molvera@quicinc.com>,
        Vinod Koul <vkoul@kernel.org>,
        Richard Acayan <mailingradian@gmail.com>,
        Lina Iyer <ilina@codeaurora.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa <abel.vesa@linaro.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Andy Gross <andy.gross@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, May 31, 2023 at 6:22=E2=80=AFAM Konrad Dybcio <konrad.dybcio@linaro=
.org> wrote:
>
> The rpmh driver will cache sleep and wake votes until the cluster
> power-domain is about to enter idle, to avoid unnecessary writes. So
> associate the apps_rsc with the cluster pd, so that it can be notified
> about this event.
>
> Without this, only AMC votes are being commited.
>
> Fixes: c83545d95376 ("arm64: dts: sdm845: Add rpmh-rsc node")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/q=
com/sdm845.dtsi
> index 950305aad44d..707550ef4990 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -5138,6 +5138,7 @@ apps_rsc: rsc@179c0000 {
>                                           <SLEEP_TCS   3>,
>                                           <WAKE_TCS    3>,
>                                           <CONTROL_TCS 1>;
> +                       power-domains =3D <&CLUSTER_PD>;

It would be good to confirm that this doesn't throw sdm845-cheza for a
loop. No sdm845 Chromebooks ever officially shipped, but some people
like Rob Clark still use the old boards in their CI farms. Adding him
here in case he wants to check. Worst case we could just delete the
property from the cheza device tree.

-Doug
