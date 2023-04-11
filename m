Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A0C176DDA9D
	for <lists+devicetree@lfdr.de>; Tue, 11 Apr 2023 14:18:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229480AbjDKMST (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Apr 2023 08:18:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229498AbjDKMSS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Apr 2023 08:18:18 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FB9B3C11
        for <devicetree@vger.kernel.org>; Tue, 11 Apr 2023 05:18:17 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id v6so7316360wrv.8
        for <devicetree@vger.kernel.org>; Tue, 11 Apr 2023 05:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681215496;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yTbe9HH7xla6IvjRVE3v3xEBDdpxshSlvWbj4cS90Gk=;
        b=NqHZHD13ntWU5e6VyVam9mCyrS5k8Y4NKP0lr+rag6Xjb0C8Asx1enZ7kpqL+1j4Zd
         386YcghzO6m1bmsbqGIj3hmAilDLAuTfLkjlpGrxkgUKksAMcwiBNwXMp3CwZMmZj8kc
         F0/qTHDHg6A4UWr/yZjuv8mNM+CyiPUnASh3jzaCya0pmsjroHamTZxIwtR7o6Ywr/nD
         +cgrhhDc+zucfxatHWl8QIz55DygdfCxrYGsI6R9gqjBIDuhsg0o2qJqEr49ZAskpr2d
         rMee9bi7Ijarw60kde53s04UNldExxJMTP7RnijfX+qpNtF0rMTkJ5qghko1QYEPdiwV
         8VMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681215496;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yTbe9HH7xla6IvjRVE3v3xEBDdpxshSlvWbj4cS90Gk=;
        b=JZYJASOHDD/bIYljdUP4YwHXdt2akTmHjSHdVD3vrJMZgCL/6fdEt3HHigf6OhLsjw
         ZExd7tyshIdiJReeB38w+golhPXwSLd3JP0kKAjlMH89+VTqMmJLo+IdGpgsytYogoiU
         HJYoAD44QCpGMOXNFqfQ2tBcbEUQnYDANn9xynC8Q+1HWfJa8mmLX5qwHhFTve7RlP0w
         zTTJ4Tj1VbZnDt+HeKhEia39t3rCtw300JG1gnulfRYSYZCWHgta6Fn0AGPhNXzCPaIm
         ph+G1/2BA+VyerjIPrPiJEWeCL4eptgc3qn66c7JlLgM8tTfGL3Ks5QXfYRkPcW4Kk4E
         OyXQ==
X-Gm-Message-State: AAQBX9f6Wg56XXAZYUy6cunVSdNOkI8vUKHmYetVdpo0d+2N8+kHCDD1
        VXZpKVSys8sZcS51mPhHf3QJGlfvcmNXEsuVI+Lnyw==
X-Google-Smtp-Source: AKy350bLQi36jed5Ek4eZ4RzvvzDDrND4VBtxswzbOaeoUFpSR+5mkf0SKQoMzYmDUPKd6b6Oyrx6sJ7/PrjlaJjtlY=
X-Received: by 2002:a05:6000:144b:b0:2d7:9771:fc4b with SMTP id
 v11-20020a056000144b00b002d79771fc4bmr4255886wrx.5.1681215495950; Tue, 11 Apr
 2023 05:18:15 -0700 (PDT)
MIME-Version: 1.0
References: <20230410171010.2561393-1-bhupesh.sharma@linaro.org>
 <20230410171010.2561393-3-bhupesh.sharma@linaro.org> <1552aad0-4b84-b508-bc05-610edb3cccff@linaro.org>
In-Reply-To: <1552aad0-4b84-b508-bc05-610edb3cccff@linaro.org>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Tue, 11 Apr 2023 17:48:04 +0530
Message-ID: <CAH=2NtyP8zkOetnH-i8TLBGBQnjH4f569PxjzW_84HZXeCFGNw@mail.gmail.com>
Subject: Re: [PATCH v8 2/2] arm64: dts: qcom: sm6115: Add USB SS qmp phy node
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-phy@lists.infradead.org, agross@kernel.org,
        linux-kernel@vger.kernel.org, andersson@kernel.org,
        bhupesh.linux@gmail.com, krzysztof.kozlowski@linaro.org,
        robh+dt@kernel.org, konrad.dybcio@linaro.org, kishon@kernel.org,
        vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 11 Apr 2023 at 13:17, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On 10/04/2023 20:10, Bhupesh Sharma wrote:
> > Add USB superspeed qmp phy node to dtsi.
> >
> > Make sure that the various board dts files (which include sm4250.dtsi file)
> > continue to work as intended.
> >
> > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > ---
> >   .../boot/dts/qcom/sm4250-oneplus-billie2.dts  |  3 ++
> >   arch/arm64/boot/dts/qcom/sm6115.dtsi          | 29 +++++++++++++++++--
> >   .../boot/dts/qcom/sm6115p-lenovo-j606f.dts    |  3 ++
> >   3 files changed, 33 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
> > index a1f0622db5a0..75951fd439df 100644
> > --- a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
> > +++ b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
> > @@ -242,6 +242,9 @@ &usb {
> >   &usb_dwc3 {
> >       maximum-speed = "high-speed";
> >       dr_mode = "peripheral";
> > +
> > +     phys = <&usb_hsphy>;
> > +     phy-names = "usb2-phy";
> >   };
> >
> >   &usb_hsphy {
> > diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> > index 2505c815c65a..b2ea8f13e827 100644
> > --- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> > @@ -651,6 +651,31 @@ usb_hsphy: phy@1613000 {
> >                       status = "disabled";
> >               };
> >
> > +             usb_qmpphy: phy@1615000 {
> > +                     compatible = "qcom,sm6115-qmp-usb3-phy";
> > +                     reg = <0x0 0x01615000 0x0 0x200>;
> > +
> > +                     clocks = <&gcc GCC_AHB2PHY_USB_CLK>,
> > +                              <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
> > +                              <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
> > +                              <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> > +                     clock-names = "cfg_ahb",
> > +                                   "ref",
> > +                                   "com_aux",
> > +                                   "pipe";
> > +
> > +                     resets = <&gcc GCC_USB3_PHY_PRIM_SP0_BCR>,
> > +                              <&gcc GCC_USB3PHY_PHY_PRIM_SP0_BCR>;
> > +                     reset-names = "phy", "phy_phy";
> > +
> > +                     #clock-cells = <0>;
> > +                     clock-output-names = "usb3_phy_pipe_clk_src";
> > +
> > +                     #phy-cells = <0>;
> > +
> > +                     status = "disabled";
>
>
> Please excuse me if I'm wrong, but this will not work with the current
> PHY driver. It was not updated to handle new bindings. Please provide
> relevant driver patches too.

Oh.. from your previous emails, I got the feeling that you were
already reworking the existing PHY driver as part of enabling it for
newer bindings.

No issues, I will send the PHY patches as well in the next version.

Thanks,
Bhupesh
