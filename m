Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 09001761CE8
	for <lists+devicetree@lfdr.de>; Tue, 25 Jul 2023 17:07:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231621AbjGYPHK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jul 2023 11:07:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231499AbjGYPHK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jul 2023 11:07:10 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0D15199D
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 08:07:08 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-5221ee899a0so4441275a12.1
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 08:07:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1690297625; x=1690902425;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NZUa3uDyejgNax81C3rf+wIL3cUgqBQKB2P7I+aBclw=;
        b=jfFSsQiNnzJ+lyJWWV6a2xy21nmU2zy74dzTnquz3sf8lMDZiZ9HEOqsbPVSh5k8S6
         l4KQGoPMa9r1DogsMfb9a1iS56IqXEy9PMUfxQniUC01fWf+WLtOrqnG87kPM49VRvid
         JP3aRRXncxD8r5ERwGf1Hu0Rh8va5Ut7MqBjQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690297625; x=1690902425;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NZUa3uDyejgNax81C3rf+wIL3cUgqBQKB2P7I+aBclw=;
        b=IH6vySyUm2k4cIdJjmWNOhM6vZTwTeeyGVKup+MZHY1tA6xioxSfd5HsiRXjjFwxxh
         oETxQ+qy54GrIJmvfIlvyXpInKnpwB+FtHUwrmrs3vcHHpYsWQXIOJSvHq8dvAFtZfKw
         qnrpvhb/lIs5ncdj/hbTH6VHg0J0OloVXpumAZXIujCjbdESaxUHzkBShJX01obxg9dS
         Qsut8AN9FMbhBJ6+lft8EmY6egAW28kMJWkSB6AjVtpXyqK9U94IBB/xgDWFOwMHx9nS
         F7Imxg4DiLq9Mem0XropuM0PEeCg+WPyOjwGn7oeLai9rKiMF43O6kNrZM8ARiKinjQh
         fQ+g==
X-Gm-Message-State: ABy/qLY+9lnr6HJdWPqpbXCHsNrSig2g5qAzmEyz8W4RtnS92Gw6oTzu
        5O01XGppqUoH449nw1CIzAME/67bbczoTDNusILEmXGT
X-Google-Smtp-Source: APBJJlGkqrWl/VCLHh9fnNAS2X6Ad+pABediKzVrKO7Qnq4ptEeaK7QzHmqMG4L4bgXx+nnS/RkQBw==
X-Received: by 2002:a05:6402:2052:b0:522:3cf4:9d86 with SMTP id bc18-20020a056402205200b005223cf49d86mr3350573edb.33.1690297625532;
        Tue, 25 Jul 2023 08:07:05 -0700 (PDT)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com. [209.85.208.49])
        by smtp.gmail.com with ESMTPSA id k6-20020a056402048600b0051bfc85afaasm7613236edv.86.2023.07.25.08.07.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Jul 2023 08:07:04 -0700 (PDT)
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-521e046f6c7so10524a12.1
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 08:07:04 -0700 (PDT)
X-Received: by 2002:a50:d55c:0:b0:51e:16c5:2004 with SMTP id
 f28-20020a50d55c000000b0051e16c52004mr113153edj.6.1690297603084; Tue, 25 Jul
 2023 08:06:43 -0700 (PDT)
MIME-Version: 1.0
References: <20230627-topic-more_bindings-v1-0-6b4b6cd081e5@linaro.org> <20230627-topic-more_bindings-v1-1-6b4b6cd081e5@linaro.org>
In-Reply-To: <20230627-topic-more_bindings-v1-1-6b4b6cd081e5@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 25 Jul 2023 08:06:25 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WsWyTWk8W23PEgw7vXWpLDCih1kGZHkqYCNHLFOPrkGw@mail.gmail.com>
Message-ID: <CAD=FV=WsWyTWk8W23PEgw7vXWpLDCih1kGZHkqYCNHLFOPrkGw@mail.gmail.com>
Subject: Re: [PATCH 01/11] arm64: dts: qcom: sc7180: Fix DSI0_PHY reg-names
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     cros-qcom-dts-watchers@chromium.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Benjamin Li <benl@squareup.com>,
        James Willcox <jwillcox@squareup.com>,
        Joseph Gates <jgates@squareup.com>,
        Stephan Gerhold <stephan@gerhold.net>,
        Zac Crosby <zac@squareup.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, Lee Jones <lee@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Xu Yang <xu.yang_2@nxp.com>, Peng Fan <peng.fan@nxp.com>,
        Christian Marangi <ansuelsmth@gmail.com>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Jun Nie <jun.nie@linaro.org>, Max Chen <mchen@squareup.com>,
        Shawn Guo <shawn.guo@linaro.org>,
        Vivek Gautam <vivek.gautam@codeaurora.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Vincent Knecht <vincent.knecht@mailoo.org>,
        "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        alsa-devel@alsa-project.org, iommu@lists.linux.dev,
        linux-usb@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Leo Yan <leo.yan@linaro.org>, Rob Herring <robh@kernel.org>,
        Andy Gross <andy.gross@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Jun 27, 2023 at 9:24=E2=80=AFAM Konrad Dybcio <konrad.dybcio@linaro=
.org> wrote:
>
> Commit 2b616f86d51b ("arm64: dts: qcom: sc7180: rename labels for DSI
> nodes") broke reg-names, possibly with search-and-replace. Fix it.
>
> Fixes: 2b616f86d51b ("arm64: dts: qcom: sc7180: rename labels for DSI nod=
es")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/q=
com/sc7180.dtsi
> index 34eff97f8630..b9640574e73b 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -3120,8 +3120,8 @@ mdss_dsi0_phy: phy@ae94400 {
>                                 reg =3D <0 0x0ae94400 0 0x200>,
>                                       <0 0x0ae94600 0 0x280>,
>                                       <0 0x0ae94a00 0 0x1e0>;
> -                               reg-names =3D "dsi0_phy",
> -                                           "dsi0_phy_lane",
> +                               reg-names =3D "dsi_phy",
> +                                           "dsi_phy_lane",

I noticed that this patch got applied [1], but I think it got put into
a branch targeting 6.6 instead of 6.5. Specifically I see it in
"arm64-for-6.6" but not "arm64-fixes-for-6.5". Any chance it could be
landed in a "Fixes" tree and get sent out sooner rather than later?
v6.5 will be pretty broken without it and it would be nice to see it
in Linus's tree sooner rather than later.

[1] https://lore.kernel.org/r/168896565982.1376307.13166434967387866925.b4-=
ty@kernel.org

Thanks!

-Doug
