Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE51A6C536C
	for <lists+devicetree@lfdr.de>; Wed, 22 Mar 2023 19:15:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230059AbjCVSPc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Mar 2023 14:15:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229898AbjCVSPb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Mar 2023 14:15:31 -0400
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com [IPv6:2607:f8b0:4864:20::835])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B90AB62334
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 11:15:24 -0700 (PDT)
Received: by mail-qt1-x835.google.com with SMTP id s12so23742625qtq.11
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 11:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1679508921;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q6E9eFLmm6ygcs6kDLNjXTtbQ9rYQAmNSLK7F6Ytjeo=;
        b=m4vSWntEg2ZoxWKxicPTMF/nFx6Xjvf6X97Bazqxn+ZvOrc5xR/nWb1X0yaZXKjnAG
         fbDcYRx6sVzFha5lhgNSyKBQ+jajzSmtjTvh6kQ6Swo5pfAJJs+HBNw47kiOyXIEA0IQ
         XzkxVb/CU2WWreTMWYUUFA6lYn7AwooiD/Iq4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679508921;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q6E9eFLmm6ygcs6kDLNjXTtbQ9rYQAmNSLK7F6Ytjeo=;
        b=Jv1GOjGynr95nWH93GZ9H76KXAvPdz5PGWcH1rm2e6jSVgk8IFK2VIzHGVg1CJM2oK
         Q7nWE+WdDIbdyf7LetYmsR3mCF77R1vvThWdEmyN1+BUYGPHW+LKs54xy60Bfq9A0c0e
         x0uhGUR2yUfNVRRnF/u6Dvz5Au8oWh5aWSqvOhZZnbvsL70Sm06wVlQN5lns4+8z407q
         Z0hrMHRSTmV/G01UUnY3r1qhFmb6UQ7K+zkJkDodefQLVqnZzavq6v1Zkt+USu33mSlh
         6DBinjWC4toSFO6E/FEt13kXdcW+pRsgSyBuBMAmCSHGDvNjxG6e+H+Seqn6Tb2/KOXo
         dPfA==
X-Gm-Message-State: AO0yUKXwEc3U8tqDcIJXMN55zHdA+WyZ/mhazJ9ChRxi1mfEmSr4+9Kb
        VcTwD/UObwVg27v+Bm6tHx7Hw3Lthr9yjY99p6k=
X-Google-Smtp-Source: AK7set/lR+4pzH5sM/uvbAFRmG7dtweUlvTQ6f5q4Ik/o8x0m5StkHXcknrF0kNvNUrD6g/OziAyEQ==
X-Received: by 2002:a05:622a:2d2:b0:3d6:4351:f357 with SMTP id a18-20020a05622a02d200b003d64351f357mr5588191qtx.24.1679508921639;
        Wed, 22 Mar 2023 11:15:21 -0700 (PDT)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com. [209.85.219.175])
        by smtp.gmail.com with ESMTPSA id r1-20020ac87941000000b003e1f984c9f3sm5599828qtt.93.2023.03.22.11.15.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Mar 2023 11:15:21 -0700 (PDT)
Received: by mail-yb1-f175.google.com with SMTP id i6so22096886ybu.8
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 11:15:20 -0700 (PDT)
X-Received: by 2002:a05:6902:124a:b0:b69:fab9:de60 with SMTP id
 t10-20020a056902124a00b00b69fab9de60mr540062ybu.0.1679508920292; Wed, 22 Mar
 2023 11:15:20 -0700 (PDT)
MIME-Version: 1.0
References: <20230217155838.848403-1-krzysztof.kozlowski@linaro.org> <20230217155838.848403-3-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230217155838.848403-3-krzysztof.kozlowski@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 22 Mar 2023 11:15:08 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X7-abQsE5s6Tbz9B22ZXT_yRFii55cUF2LR81BSVnbVg@mail.gmail.com>
Message-ID: <CAD=FV=X7-abQsE5s6Tbz9B22ZXT_yRFii55cUF2LR81BSVnbVg@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sc7280: align RPMh regulator nodes
 with bindings
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Matthias Kaehlcke <mka@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Feb 17, 2023 at 7:58=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Device node names should be generic and bindings expect certain pattern
> for RPMh regulator nodes.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> ---
>
> I was fixing these in other boards, but missed SC7280. Previous
> (applied) set:
> https://lore.kernel.org/r/20230127114347.235963-4-krzysztof.kozlowski@lin=
aro.org
> ---
>  arch/arm64/boot/dts/qcom/sc7280-crd-r3.dts        | 2 +-
>  arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts | 2 +-
>  arch/arm64/boot/dts/qcom/sc7280-idp.dts           | 2 +-
>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi          | 4 ++--
>  arch/arm64/boot/dts/qcom/sc7280-qcard.dtsi        | 4 ++--
>  5 files changed, 7 insertions(+), 7 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
