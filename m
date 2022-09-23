Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 291C45E7096
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 02:16:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229819AbiIWAQt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 20:16:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230281AbiIWAQs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 20:16:48 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 476F8237F6
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 17:16:45 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id hy2so20922114ejc.8
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 17:16:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=aLogDFClUaHmVjdLKdGBxuqIp3POWjCphf9NKFUf6vY=;
        b=UHDK37YEBEWRvt5JsrLKrvJIUWB5xTR/q0yUMgQSTu3tC0v9tuXGprOwjgJ1SINKpC
         cXDdBBFZKpe3iarDNGMeAfHAfauJwIuls+boiKEt3WYMnZCiFWCnX+3BVXuVtNcXypXN
         e3bAXQpp7MTxx5VqeAvom5kXPGJR5itvNhFLg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=aLogDFClUaHmVjdLKdGBxuqIp3POWjCphf9NKFUf6vY=;
        b=ULoqEftTEpvV0rckAQX3Sj62I/0CflZVIJWvrhCKdeDR0Sn9sjxqNxLohbe8Gp0Ebb
         XbahjssxYI1PA+eOueXe4PDKPPeGEt+ahzeSTOqSejKI7YLnOoSnRIJV2AswFgM4vBED
         wFou//ZEOVIYOcnmpFEt6O3004MNyEEyfT1l5sPJBq5WZeEKhYA5u5f36KOarkAHXyZ1
         PM/1RlVwGzAQ3btIzuFpd3nLIUyuS2pgpsK1iUYWy3f7PGspS3eOYQe119NDQFk3ZA7Z
         3+uuvRqmmH92yHDGhlZHb/8clw2l/KFzMYL4QXxCAH+xlYoBqhV8xLeQSl9Vv1XE8+pD
         5gfw==
X-Gm-Message-State: ACrzQf2w15Jzn1Ba8jTZ/r3HFpsWsCqP+QOXDi7UBTW8wYmwDKiRjuNS
        4vhmox5NDA88fb4cNtrxNGbXBUToK8GzEL1M
X-Google-Smtp-Source: AMsMyM4dj0KDhiLgxCkjfDnHBHwmHivhaqB81FYtppQM3Z39UZyKa+hQ7F2oobJWn4aw8KDKWsYRbA==
X-Received: by 2002:a17:907:16a3:b0:777:be43:7670 with SMTP id hc35-20020a17090716a300b00777be437670mr4911275ejc.552.1663892203387;
        Thu, 22 Sep 2022 17:16:43 -0700 (PDT)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com. [209.85.221.46])
        by smtp.gmail.com with ESMTPSA id bh6-20020a170906a0c600b0077085fdd613sm3295385ejb.44.2022.09.22.17.16.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 17:16:42 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id t7so17911022wrm.10
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 17:16:41 -0700 (PDT)
X-Received: by 2002:adf:f90d:0:b0:20c:de32:4d35 with SMTP id
 b13-20020adff90d000000b0020cde324d35mr3447220wrr.583.1663892201079; Thu, 22
 Sep 2022 17:16:41 -0700 (PDT)
MIME-Version: 1.0
References: <20220829164952.2672848-1-dianders@chromium.org> <CAD=FV=Ux0SbwfQENOGVdtDHvFrnhaWUK3k3Hq-zNUGYum-zYfg@mail.gmail.com>
In-Reply-To: <CAD=FV=Ux0SbwfQENOGVdtDHvFrnhaWUK3k3Hq-zNUGYum-zYfg@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 22 Sep 2022 17:16:29 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WNXu8RbKhQnuL0ZbkSyN3jHG4CQmCzjC9T1-OWq4Jbaw@mail.gmail.com>
Message-ID: <CAD=FV=WNXu8RbKhQnuL0ZbkSyN3jHG4CQmCzjC9T1-OWq4Jbaw@mail.gmail.com>
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
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bjorn,

On Thu, Sep 8, 2022 at 9:04 AM Doug Anderson <dianders@chromium.org> wrote:
>
> Bjorn,
>
> On Mon, Aug 29, 2022 at 9:50 AM Douglas Anderson <dianders@chromium.org> wrote:
> >
> > Prior to commit efb0cb50c427 ("regulator: qcom-rpmh: Implement
> > get_optimum_mode(), not set_load()") several boards were able to
> > change their regulator mode even though they had nothing listed in
> > "regulator-allowed-modes". After that commit (and fixes [1]) we'll be
> > stuck at the initial mode. Discussion of this (again, see [1]) has
> > resulted in the decision that the old dts files were wrong and should
> > be fixed to fully restore old functionality.
> >
> > This series attempts to fix everyone. I've kept each board in a
> > separate patch to make stable / backports work easier.
> >
> > Affected boards were found with:
> >   rpmh_users=$(git grep -l -i rpmh -- arch/arm*/boot/dts/qcom)
> >   set_modes=$(grep -l regulator-allow-set-load ${rpmh_users})
> >   but_no_allowed_modes=$(grep -l -v regulator-allowed-modes ${set_modes})
> >
> > Fix was applied with:
> >   for f in ${but_no_allowed_modes}; do
> >     sed -i~ -e \
> >       's/^\(\s*\)regulator-allow-set-load;/\1regulator-allow-set-load;\n\1regulator-allowed-modes =\n\1    <RPMH_REGULATOR_MODE_LPM\n\1     RPMH_REGULATOR_MODE_HPM>;/'\
> >       $f
> >   done
> >
> > Then results were manually inspected. In one board I removed a
> > "regulator-allow-set-load" from a fixed regulator since that was
> > clearly wrong.
> >
> > v2 of this series adds tags and also rebases atop Johan's series [2]
> > as requested [3]. This ends up turning the series into a 6-part series
> > instead of a 7-part one.
> >
> > It should also be noted that as of the v2 posting that the related
> > regulator fixes have all landed in the regulator tree.
> >
> > [1] https://lore.kernel.org/r/20220824142229.RFT.v2.2.I6f77860e5cd98bf5c67208fa9edda4a08847c304@changeid
> > [2] https://lore.kernel.org/r/20220803121942.30236-1-johan+linaro@kernel.org/
> > [3] https://lore.kernel.org/r/YwhwIX+Ib8epUYWS@hovoldconsulting.com/
> >
> > Changes in v2:
> > - Added note about removing regulator-allow-set-load from vreg_s4a_1p8
> > - Rebased atop ("...: sa8295p-adp: disallow regulator mode switches")
> > - Rebased atop ("...: sc8280xp-crd: disallow regulator mode switches")
> >
> > Douglas Anderson (6):
> >   arm64: dts: qcom: sa8155p-adp: Specify which LDO modes are allowed
> >   arm64: dts: qcom: sa8295p-adp: Specify which LDO modes are allowed
> >   arm64: dts: qcom: sc8280xp-crd: Specify which LDO modes are allowed
> >   arm64: dts: qcom: sm8150-xperia-kumano: Specify which LDO modes are
> >     allowed
> >   arm64: dts: qcom: sm8250-xperia-edo: Specify which LDO modes are
> >     allowed
> >   arm64: dts: qcom: sm8350-hdk: Specify which LDO modes are allowed
> >
> >  arch/arm64/boot/dts/qcom/sa8155p-adp.dts            | 13 ++++++++++++-
> >  arch/arm64/boot/dts/qcom/sa8295p-adp.dts            | 12 ++++++++++++
> >  arch/arm64/boot/dts/qcom/sc8280xp-crd.dts           |  6 ++++++
> >  .../boot/dts/qcom/sm8150-sony-xperia-kumano.dtsi    |  6 ++++++
> >  .../arm64/boot/dts/qcom/sm8250-sony-xperia-edo.dtsi |  6 ++++++
> >  arch/arm64/boot/dts/qcom/sm8350-hdk.dts             | 12 ++++++++++++
> >  6 files changed, 54 insertions(+), 1 deletion(-)
>
> I think this series is ready to land if it's a good time now. It looks
> like you've already applied the series that this depends on [1] and
> this one is all reviewed and ready to go. Thanks!
>
> [1] https://lore.kernel.org/all/166181675980.322065.3918715363441736917.b4-ty@kernel.org/

I saw you sent out a pull request, but it didn't seem to include these
patches. Were they missing anything? Maybe you're still planning on a
"Fixes" pull request?

-Doug
