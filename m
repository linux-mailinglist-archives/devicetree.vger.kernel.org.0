Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C3AC6DB07B
	for <lists+devicetree@lfdr.de>; Fri,  7 Apr 2023 18:23:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229892AbjDGQXp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Apr 2023 12:23:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229545AbjDGQXm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Apr 2023 12:23:42 -0400
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCFE7C15A
        for <devicetree@vger.kernel.org>; Fri,  7 Apr 2023 09:23:13 -0700 (PDT)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-54bfce685c1so135275667b3.1
        for <devicetree@vger.kernel.org>; Fri, 07 Apr 2023 09:23:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1680884592; x=1683476592;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2H2XfjhTxx/3LOcVn91RL06GgnGtqmBp4UCllTp0bwk=;
        b=SqAhsVeYNDpUooV5BcPF2IlVlEwGTd2JxLsnhusKRPK+Yf+5k4SlkvV8nyX1oE8ouV
         KAEvdRSG8C6/VTXVmYNKdwVy/id8hF5VjytHD8DkSqXdKzCvCHhjPSpGJJjr+aZWOxyh
         ViUhb/3zPx5TJlMhU3cxB2R35xU4WRn2spfLk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680884592; x=1683476592;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2H2XfjhTxx/3LOcVn91RL06GgnGtqmBp4UCllTp0bwk=;
        b=RUGPhyU9884MPNdQA5vCdeHY0Nb1ypDfcYLnp5V4KdHT8imv5GJ4Y7HnL3gnJkIdb8
         CNloeafhf+6JrcCGCnr8y3ROHgHnWFWjtTNTWU9J/xRkfImZLyAyAU72dih8ibEMxHxN
         6n27h4VrK5XE8hmn5qGQx2OEELdtD9eTaisHPO2zMD1qd1eB7cc7o6aqFKb2ey9vNjj4
         corPD/M5QVugnu8inCbeIdIwknBfcH4ObToKllyYEY1SpAiDzRqIkvOXWvaR/dulSgzR
         9q6YgayhyUoqEihh1/0Vcd+mqMEmBJuv6dAfiwgb5/ecFPdoeGQG+u6Gcc02p+N0NoCm
         dEHQ==
X-Gm-Message-State: AAQBX9fhByI1RO+FmZkKnSFcEDarkem5wCZ9mZuAf1uRuK7BC/tufEqQ
        Ydh+uIx+G+W1rBs2WkhhoNFLi9LiL2CFeVWc3Fw=
X-Google-Smtp-Source: AKy350ZBe53oruAAIzV01daWfIBqDRV/cl9SVDrB5BaRyb+VwfxuAEjKbv+zL32sITLL7YhKNcVZ3g==
X-Received: by 2002:a81:4808:0:b0:53c:d480:f4b2 with SMTP id v8-20020a814808000000b0053cd480f4b2mr2456659ywa.2.1680884591609;
        Fri, 07 Apr 2023 09:23:11 -0700 (PDT)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com. [209.85.219.179])
        by smtp.gmail.com with ESMTPSA id bp7-20020a05690c068700b00545a08184b0sm1091332ywb.64.2023.04.07.09.23.09
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Apr 2023 09:23:10 -0700 (PDT)
Received: by mail-yb1-f179.google.com with SMTP id i6so49505314ybu.8
        for <devicetree@vger.kernel.org>; Fri, 07 Apr 2023 09:23:09 -0700 (PDT)
X-Received: by 2002:a25:6c07:0:b0:b8b:eea7:525b with SMTP id
 h7-20020a256c07000000b00b8beea7525bmr2048631ybc.7.1680884587994; Fri, 07 Apr
 2023 09:23:07 -0700 (PDT)
MIME-Version: 1.0
References: <20230407151423.59993-1-nikita@trvn.ru> <20230407151423.59993-2-nikita@trvn.ru>
In-Reply-To: <20230407151423.59993-2-nikita@trvn.ru>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 7 Apr 2023 09:22:55 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Uri8DUDCGL=X82pvX0xKFZyFuXkeK51L264fFZCB+7Cw@mail.gmail.com>
Message-ID: <CAD=FV=Uri8DUDCGL=X82pvX0xKFZyFuXkeK51L264fFZCB+7Cw@mail.gmail.com>
Subject: Re: [PATCH v5 1/4] arm64: dts: qcom: sc7180: Don't enable lpass
 clocks by default
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
> lpass clocks are usually blocked from HLOS by the firmware and
> instead are managed by the ADSP. Mark them as reserved and explicitly
> enable in the CrOS boards that have special, cooperative firmware.
>
> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
> v5: minor style changes (Konrad)
> ---
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 8 ++++++++
>  arch/arm64/boot/dts/qcom/sc7180.dtsi         | 4 ++++
>  2 files changed, 12 insertions(+)

I probably would have put a note in the commit message about why you
chose not to enable these for IDP (AKA summarize the results of the
conversation [1] in your v3 post). IMO not worth spinning a v6 just
for this, though.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

[1] https://lore.kernel.org/r/3557aa94-6a83-d054-a9d9-81751165eb8a@linaro.o=
rg
