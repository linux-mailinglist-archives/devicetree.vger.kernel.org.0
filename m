Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 277F62F4835
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 11:08:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726781AbhAMKEb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 05:04:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726734AbhAMKEa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jan 2021 05:04:30 -0500
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88440C061575
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 02:03:50 -0800 (PST)
Received: by mail-pl1-x633.google.com with SMTP id q4so781829plr.7
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 02:03:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AmZo7VgJXjRmnSZl7W/TJ1qpBr0chQ7R+L3VBawJmTc=;
        b=JGDuRDNOkvmzK156ZE7/Oggx+P9XpMah8AVx3TJLo+2ZhEQZMGoL7D1+cw95X0C2Gt
         jqE2V+TjyTQCaqYd6Q18nmpQZ6b+5q9CR8doPzh8+t6xzvzkiqpi+nw+LAfWIr4nrZLt
         dBLQNtI7KRNywo9Mdd6mLuJ2QldzLeqP6MLD596+PwAGYNOFmmnsweKhae22Qm0e8iHo
         QqLkBZscVVOfAtgx2szGRu4RgdeUXC1151C9dxSG8WvCxSbzViq8CNuiUNswcr3NzIBx
         QgDnCL4TtqJ5ag5is0CLKMfySte/TLwUTzLj8hO6E+GplTu5r8Rqkxfnij5zOF/ymFCO
         6T9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AmZo7VgJXjRmnSZl7W/TJ1qpBr0chQ7R+L3VBawJmTc=;
        b=W9QXCdYcDdbtQ+wUQAkR5YlJdnsY2PTYVh5i3vA+hfUjFUlK04acCT8DssWtoZ+lvU
         hVc06MXI9aB16f9crgliQi0R5/76AqwSVFO5kTQqQ7phQn74EhjuM06xu/2pzm2h3BHZ
         SK2HnjsjOiQUr7XoQ8QQRSZZ6amcatdp7kUzJSncOJTf3zmpdue5a6iHggKfa5EfeTHy
         478lJfGPf4Wk6UtRiKcTqLHX0o2extpgWPKj/DM90Rzpezf5+GkZQimgDtHn6XIK/Tv3
         y19+Z2RfcS/HKaKuSvxUZ5K2eGGCvDwzj7Biq1H8gypKe/i3bFRVhmrzW1sKstM2L/y2
         rzfA==
X-Gm-Message-State: AOAM531v4ARbnnMWF++tuO1iXTZS6O/G+767jpNT2KFv8MolMseLGJIc
        nsNgFqTgE8wKocdAOfu/mlorH5tdj0L1Z8q0zR+wLQ==
X-Google-Smtp-Source: ABdhPJzBqt7y04vI2x8Q1N8EFIsu176B8e4JBQQLctvxNMygLlKg5bNoZmFSNziESzn9WUVFreMs8ATKeMqSQBNA7PM=
X-Received: by 2002:a17:902:9a02:b029:dc:3481:3ff1 with SMTP id
 v2-20020a1709029a02b02900dc34813ff1mr1506022plp.28.1610532229968; Wed, 13 Jan
 2021 02:03:49 -0800 (PST)
MIME-Version: 1.0
References: <20210108120429.895046-1-robert.foss@linaro.org>
 <20210108120429.895046-17-robert.foss@linaro.org> <X/kLNCOjvTmANYbr@pendragon.ideasonboard.com>
In-Reply-To: <X/kLNCOjvTmANYbr@pendragon.ideasonboard.com>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Wed, 13 Jan 2021 11:03:39 +0100
Message-ID: <CAG3jFysaGbXWtZNY=6s++NjNhimEANJZOoMXtN3udV-n3bOE=w@mail.gmail.com>
Subject: Re: [PATCH v1 16/17] arm64: dts: sdm845-db845c: Add CAMSS ISP node
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, catalin.marinas@arm.com,
        will@kernel.org, shawnguo@kernel.org, leoyang.li@nxp.com,
        geert+renesas@glider.be, arnd@arndb.de, Anson.Huang@nxp.com,
        michael@walle.cc, agx@sigxcpu.org, max.oss.09@gmail.com,
        linux-arm-msm@vger.kernel.org,
        linux-media <linux-media@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        AngeloGioacchino Del Regno <kholk11@gmail.com>,
        Andrey Konovalov <andrey.konovalov@linaro.org>,
        Tomasz Figa <tfiga@chromium.org>,
        Azam Sadiq Pasha Kapatrala Syed <akapatra@quicinc.com>,
        Sarvesh Sridutt <Sarvesh.Sridutt@smartwirelesscompute.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks Laurent!

On Sat, 9 Jan 2021 at 02:47, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Rob,
>
> Thank you for the patch.
>
> The subject line doesn't match the patch.
>
> On Fri, Jan 08, 2021 at 01:04:28PM +0100, Robert Foss wrote:
> > Add regulators and camss DT node.
> >
> > Signed-off-by: Robert Foss <robert.foss@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> > index a943b3f353ce..7bad0515345e 100644
> > --- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> > +++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> > @@ -294,6 +294,9 @@ vreg_s7a_1p025: smps7 {
> >                       regulator-max-microvolt = <1028000>;
> >               };
> >
> > +             vdda_mipi_csi0_0p9:
> > +             vdda_mipi_csi1_0p9:
> > +             vdda_mipi_csi2_0p9:
>
> No need for new labels, you can simply use vreg_l1a_0p875 below.

Ack

>
> >               vreg_l1a_0p875: ldo1 {
> >                       regulator-min-microvolt = <880000>;
> >                       regulator-max-microvolt = <880000>;
> > @@ -1106,6 +1109,15 @@ &cci {
> >       status = "okay";
> >  };
> >
> > +&camss {
> > +     vdda-csi0-supply = <&vdda_mipi_csi0_0p9>;
> > +     vdda-csi1-supply = <&vdda_mipi_csi1_0p9>;
> > +     vdda-csi2-supply = <&vdda_mipi_csi2_0p9>;
> > +
> > +     status = "disabled";
>
> This isn't needed.

Ack

>
> > +
>
> Extra blank line.

Ack

>
> > +};
> > +
> >  &cci_i2c0 {
> >       camera@10 {
> >               compatible = "ovti,ov8856";
>
> --
> Regards,
>
> Laurent Pinchart
