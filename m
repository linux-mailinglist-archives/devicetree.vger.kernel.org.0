Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D9006C5366
	for <lists+devicetree@lfdr.de>; Wed, 22 Mar 2023 19:15:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229496AbjCVSPL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Mar 2023 14:15:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229676AbjCVSPJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Mar 2023 14:15:09 -0400
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com [IPv6:2607:f8b0:4864:20::82d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14AC864A94
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 11:15:09 -0700 (PDT)
Received: by mail-qt1-x82d.google.com with SMTP id w25so1199357qtc.5
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 11:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1679508907;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nSvNmSJ9+TgKBQqU49EzQTMckYiccw3IcZ2Wfcswm7w=;
        b=b+jERyCjZnE51C81u6Nr8oUi5mkAhW9eOIUx0p/LgcSMA6QB4GvQpmReHA4M6IKcsY
         lr3R9smYA8Sx1nLrG0L9iJgJb89uf3hV/hYO7QVoV5drRiYgjrB6e07OXZdw1ND0O2Y5
         wm8fu9BnspkkqafySwcX6lbs+NSrzgNlVkhJo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679508907;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nSvNmSJ9+TgKBQqU49EzQTMckYiccw3IcZ2Wfcswm7w=;
        b=QseYqhMgZU2N0+AhQFqFhMLNfNygF6ILUOC1SV2uxxsr7R90HR8C5d8i3GZAvNRYiP
         Fj3eGXIxNTQBVxDGqK1UoRMrB2e/ll+0S4PuBOZl2y8GO0gsr/wTXF44G+akJJzSVVzU
         OLiXSqID+1TZng4uS/9MGtaOzE3/nOa/SWv7In5TNFqI4C08qpmRfI2AqgZBs2JHBhVb
         mzrdriUT4zI13CEC5TuyTCSJJp2WT7BjvoamMjeMbkIOYarvo7AvoG4TXU+oY/r1+yZQ
         yDIpvUOD1hLdg3oDll2kO7OpfVpena0Hi1BzpmHoggsm7KdWHv4m1GUroH6G7CmR9DiW
         gClQ==
X-Gm-Message-State: AO0yUKUwzl2VscaPpVZM9SRRmKbttcukt7E7iOA9OEezDawLTKGOb0VV
        ALXHB9cbYPIqe0TYrc08khpDs56OUqYlEsznds4=
X-Google-Smtp-Source: AK7set/4aGeqxANB/UFPlaSTq4ZIawKwhw6i046yo5bQl6+othECctsLnai2ztUXefgi5QlvwAmuZw==
X-Received: by 2002:a05:622a:248:b0:3b9:bc8c:c212 with SMTP id c8-20020a05622a024800b003b9bc8cc212mr5360561qtx.29.1679508907730;
        Wed, 22 Mar 2023 11:15:07 -0700 (PDT)
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com. [209.85.219.173])
        by smtp.gmail.com with ESMTPSA id r140-20020a37a892000000b007468ad71799sm6115246qke.64.2023.03.22.11.15.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Mar 2023 11:15:07 -0700 (PDT)
Received: by mail-yb1-f173.google.com with SMTP id e65so22067632ybh.10
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 11:15:06 -0700 (PDT)
X-Received: by 2002:a05:6902:1083:b0:b69:ca6f:452c with SMTP id
 v3-20020a056902108300b00b69ca6f452cmr531528ybu.0.1679508906594; Wed, 22 Mar
 2023 11:15:06 -0700 (PDT)
MIME-Version: 1.0
References: <20230217155838.848403-1-krzysztof.kozlowski@linaro.org> <20230217155838.848403-2-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230217155838.848403-2-krzysztof.kozlowski@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 22 Mar 2023 11:14:54 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V6gJ3if8CueyQ=jJnVR_fJL2Xm3t2Oo_scq=CxGZETGQ@mail.gmail.com>
Message-ID: <CAD=FV=V6gJ3if8CueyQ=jJnVR_fJL2Xm3t2Oo_scq=CxGZETGQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sc7280-herobrine-audio-rt5682: add
 missing supplies
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Judy Hsiao <judyhsiao@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>
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
> Bindings expect DBVDD-supply and LDO1-IN-supply:
>
>   sc7280-herobrine-evoker-lte.dtb: codec@1a: 'DBVDD-supply' is a required=
 property
>   sc7280-herobrine-evoker-lte.dtb: codec@1a: 'LDO1-IN-supply' is a requir=
ed property
>
> In sc7180-trogdor.dtsi they come from the same regulator, so let's
> assume intention was the same here.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../arm64/boot/dts/qcom/sc7280-herobrine-audio-rt5682-3mic.dtsi | 2 ++
>  arch/arm64/boot/dts/qcom/sc7280-herobrine-audio-rt5682.dtsi     | 2 ++
>  2 files changed, 4 insertions(+)

Confirmed on schematics.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
