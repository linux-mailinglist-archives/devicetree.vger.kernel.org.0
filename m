Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F80B5B232B
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 18:11:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229548AbiIHQLj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 12:11:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229510AbiIHQLj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 12:11:39 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D543423BF8
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 09:11:37 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id a70so9004119edf.10
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 09:11:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=jz2D7E0X51AWJoi4tRV8BKb/2xDyrAfW/RbFvoS4Z8U=;
        b=KIq1Id+MXyPYu9JBhV3bG7ZTwelv4qKxj6Jou27A0dZJifV+5yI3PofxjTUFCXTu8+
         hxdEMqt47fyhhmXEYp5HeSrWXhM2A90/FQNezs3+TPrJgmFRZXQSgNzwl775trbxHoZN
         +kfYeRnJ/++eTov2K4+Pfn4OKlb6/Yu7W/IpI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=jz2D7E0X51AWJoi4tRV8BKb/2xDyrAfW/RbFvoS4Z8U=;
        b=wchFYtqMNhCkG0CXNsp+pytCiDAHBeF2gtOtmPfpRMFQITRFdIMZRsl05OnfxgShnS
         FFodux2tNO++JoL8t1rNnxMrubsAV3BNn7Hxzbl8/KYTZkEmLjUp75dU+5JzpXMpublp
         q4LCtn5/W4Sy66bRJGfUCdzjxyxzgaOJ+PnwyEly7HYOKhfzhZtn9IJIkRCV44GRWhp5
         Sfn4c+2j+9Tfw2W2L/LplEK9bgW5wAWUrhp6rkF27WHELpvqkcb8I7hP9gbn6xDFOxVv
         lZiqb0qTVGTrxkLpUi/FXCMNJyNY+YyZkORQgvKWYlI12PwSdcjDY/8gmvVhgVuSuMfF
         NE9A==
X-Gm-Message-State: ACgBeo264nkryjdyRCzKNY0r7R3pZQl0LcHujRW4h6YBcHa/09jCQSV3
        ZHbwDfmfWjGeSGf9f64pjeDf1vjcRcBMnVklqCo=
X-Google-Smtp-Source: AA6agR6GWeTV3tMTLYyW/2YRV3uAQY0QRRu2406opqMUslycDZ9W5OrQxGkGYruU0qEo54Hpu/K2qA==
X-Received: by 2002:aa7:c90e:0:b0:44e:b410:b1d5 with SMTP id b14-20020aa7c90e000000b0044eb410b1d5mr7824806edt.359.1662653496211;
        Thu, 08 Sep 2022 09:11:36 -0700 (PDT)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com. [209.85.221.46])
        by smtp.gmail.com with ESMTPSA id fn1-20020a1709069d0100b0073da32b7db0sm1374619ejc.199.2022.09.08.09.11.35
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 09:11:36 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id o25so2344303wrf.9
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 09:11:35 -0700 (PDT)
X-Received: by 2002:adf:f90d:0:b0:20c:de32:4d35 with SMTP id
 b13-20020adff90d000000b0020cde324d35mr5527227wrr.583.1662653101282; Thu, 08
 Sep 2022 09:05:01 -0700 (PDT)
MIME-Version: 1.0
References: <20220829164952.2672848-1-dianders@chromium.org>
In-Reply-To: <20220829164952.2672848-1-dianders@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 8 Sep 2022 09:04:48 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Ux0SbwfQENOGVdtDHvFrnhaWUK3k3Hq-zNUGYum-zYfg@mail.gmail.com>
Message-ID: <CAD=FV=Ux0SbwfQENOGVdtDHvFrnhaWUK3k3Hq-zNUGYum-zYfg@mail.gmail.com>
Subject: Re: [PATCH v2 0/6] arm64: dts: qcom: Fix broken regulator spec on
 RPMH boards
To:     Bjorn Andersson <andersson@kernel.org>
Cc:     Johan Hovold <johan@kernel.org>,
        Andrew Halaney <ahalaney@redhat.com>,
        Mark Brown <broonie@kernel.org>,
        Andy Gross <agross@kernel.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bjorn,

On Mon, Aug 29, 2022 at 9:50 AM Douglas Anderson <dianders@chromium.org> wrote:
>
> Prior to commit efb0cb50c427 ("regulator: qcom-rpmh: Implement
> get_optimum_mode(), not set_load()") several boards were able to
> change their regulator mode even though they had nothing listed in
> "regulator-allowed-modes". After that commit (and fixes [1]) we'll be
> stuck at the initial mode. Discussion of this (again, see [1]) has
> resulted in the decision that the old dts files were wrong and should
> be fixed to fully restore old functionality.
>
> This series attempts to fix everyone. I've kept each board in a
> separate patch to make stable / backports work easier.
>
> Affected boards were found with:
>   rpmh_users=$(git grep -l -i rpmh -- arch/arm*/boot/dts/qcom)
>   set_modes=$(grep -l regulator-allow-set-load ${rpmh_users})
>   but_no_allowed_modes=$(grep -l -v regulator-allowed-modes ${set_modes})
>
> Fix was applied with:
>   for f in ${but_no_allowed_modes}; do
>     sed -i~ -e \
>       's/^\(\s*\)regulator-allow-set-load;/\1regulator-allow-set-load;\n\1regulator-allowed-modes =\n\1    <RPMH_REGULATOR_MODE_LPM\n\1     RPMH_REGULATOR_MODE_HPM>;/'\
>       $f
>   done
>
> Then results were manually inspected. In one board I removed a
> "regulator-allow-set-load" from a fixed regulator since that was
> clearly wrong.
>
> v2 of this series adds tags and also rebases atop Johan's series [2]
> as requested [3]. This ends up turning the series into a 6-part series
> instead of a 7-part one.
>
> It should also be noted that as of the v2 posting that the related
> regulator fixes have all landed in the regulator tree.
>
> [1] https://lore.kernel.org/r/20220824142229.RFT.v2.2.I6f77860e5cd98bf5c67208fa9edda4a08847c304@changeid
> [2] https://lore.kernel.org/r/20220803121942.30236-1-johan+linaro@kernel.org/
> [3] https://lore.kernel.org/r/YwhwIX+Ib8epUYWS@hovoldconsulting.com/
>
> Changes in v2:
> - Added note about removing regulator-allow-set-load from vreg_s4a_1p8
> - Rebased atop ("...: sa8295p-adp: disallow regulator mode switches")
> - Rebased atop ("...: sc8280xp-crd: disallow regulator mode switches")
>
> Douglas Anderson (6):
>   arm64: dts: qcom: sa8155p-adp: Specify which LDO modes are allowed
>   arm64: dts: qcom: sa8295p-adp: Specify which LDO modes are allowed
>   arm64: dts: qcom: sc8280xp-crd: Specify which LDO modes are allowed
>   arm64: dts: qcom: sm8150-xperia-kumano: Specify which LDO modes are
>     allowed
>   arm64: dts: qcom: sm8250-xperia-edo: Specify which LDO modes are
>     allowed
>   arm64: dts: qcom: sm8350-hdk: Specify which LDO modes are allowed
>
>  arch/arm64/boot/dts/qcom/sa8155p-adp.dts            | 13 ++++++++++++-
>  arch/arm64/boot/dts/qcom/sa8295p-adp.dts            | 12 ++++++++++++
>  arch/arm64/boot/dts/qcom/sc8280xp-crd.dts           |  6 ++++++
>  .../boot/dts/qcom/sm8150-sony-xperia-kumano.dtsi    |  6 ++++++
>  .../arm64/boot/dts/qcom/sm8250-sony-xperia-edo.dtsi |  6 ++++++
>  arch/arm64/boot/dts/qcom/sm8350-hdk.dts             | 12 ++++++++++++
>  6 files changed, 54 insertions(+), 1 deletion(-)

I think this series is ready to land if it's a good time now. It looks
like you've already applied the series that this depends on [1] and
this one is all reviewed and ready to go. Thanks!

[1] https://lore.kernel.org/all/166181675980.322065.3918715363441736917.b4-ty@kernel.org/
