Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A5A350A488
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 17:43:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231181AbiDUPpu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Apr 2022 11:45:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1390280AbiDUPpc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Apr 2022 11:45:32 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C269F48334
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 08:42:08 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id m14-20020a17090a34ce00b001d5fe250e23so2211785pjf.3
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 08:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=L2BkpTCz5akLsohhEIIUYuv1LmfI2RQS6LEGsp/sj6w=;
        b=m1gyy5dvpwSTVTH1w7nGbqrC6fljhM2QZ8C6huIyhVBYkcXMS4azkaDXSl+hJRAhxK
         pmC6BhzshY1KUxMRPHX0/UlFJsqlZkAYRZqPEKDKaoTuxlmkGikKXmRKlYugk0gFMnZh
         +zqsTkAumqipfpplHayGys82rP5jCL6o9cWOg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=L2BkpTCz5akLsohhEIIUYuv1LmfI2RQS6LEGsp/sj6w=;
        b=ZoM6iLdqbVGW0TAF9EZ5Jht4cTWVQg8bZNcx13OWMIC5S93As+JUk7cFlSXJVWPhP2
         twcJd4DbBBo0l/V77qsSbAyFUDuN+EtCiHhQvAzTrfm1SDJfk4VOH7khPAoMPqDt4S+y
         3R7g3LildLs1aPNow60iDyXRGfqMVDHgMeVD1UWiw4pR69PyrVnTEyXvWkU+YufyWuYZ
         GVuUwWCdY9MZ0VGCYZ9v5nCQ6m8U3V0kBcL8otxG2QpfdnCAqSAqxJzq4rVVWgC2ab31
         4qotSuR8Dlv1E2tDmh5WHG1wavxNQHlkOTkmzT0FC+ZetbKF5qMVNkJlJhrnadYYkGrL
         Ye7g==
X-Gm-Message-State: AOAM531IHVK5ZeOEcN9IA8eSIAwuKP9UrzFPyDLm1RafdLJ4C0N7bGJS
        fga5UdfmMprOqxIeCJVy4dt4NQ==
X-Google-Smtp-Source: ABdhPJwYo4k73WHrantPhUBUqbwFNdVAqpeNInsw9CuK++22pbLVzGNiv9Mxabafa/NNcHZgLnRoIQ==
X-Received: by 2002:a17:90a:c781:b0:1d0:c23e:5842 with SMTP id gn1-20020a17090ac78100b001d0c23e5842mr11130978pjb.182.1650555727697;
        Thu, 21 Apr 2022 08:42:07 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:d426:5807:a72:7b27])
        by smtp.gmail.com with UTF8SMTPSA id t66-20020a628145000000b0050ca37e60eesm1153066pfd.57.2022.04.21.08.42.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Apr 2022 08:42:07 -0700 (PDT)
Date:   Thu, 21 Apr 2022 08:42:05 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_rohkumar@quicinc.com,
        srinivas.kandagatla@linaro.org, dianders@chromium.org,
        swboyd@chromium.org, judyhsiao@chromium.org,
        Venkata Prasad Potturu <quic_potturu@quicinc.com>
Subject: Re: [PATCH v8 2/4] arm64: dts: qcom: sc7280: Add nodes for wcd9385
 and max98360a codec
Message-ID: <YmF7TRlxUWWQ394e@google.com>
References: <1650291252-30398-1-git-send-email-quic_srivasam@quicinc.com>
 <1650291252-30398-3-git-send-email-quic_srivasam@quicinc.com>
 <Yl2VmW18QAJl9v+m@google.com>
 <5ac149ac-4862-e8c9-185c-524c4b111961@quicinc.com>
 <5d4b7c44-62e1-aaa6-3116-f58e1a1b437b@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5d4b7c44-62e1-aaa6-3116-f58e1a1b437b@quicinc.com>
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 21, 2022 at 12:31:52PM +0530, Srinivasa Rao Mandadapu wrote:
> 
> On 4/19/2022 4:54 PM, Srinivasa Rao Mandadapu wrote:
> > 
> > On 4/18/2022 10:15 PM, Matthias Kaehlcke wrote:
> > Thanks for your time and valuable inputs Matthias!!!
> > > On Mon, Apr 18, 2022 at 07:44:10PM +0530, Srinivasa Rao Mandadapu wrote:
> > > > Add wcd938x and  max98360a codecs for audio use case on
> > > > sc7280 based platforms.
> > > > Add tlmm gpio property in wcd938x node for switching CTIA/OMTP Headset.
> > > > Add amp_en node for  max98360a codec.
> > > General note: I don't think it's a good practice to add stuff like
> > > this to
> > > multiple boards in a single patch. Why?
> > > 
> > > First the subject of such a patch tends to be vague ("arm64: dts: qcom:
> > > sc7280: Add nodes for wcd9385 and max98360a codec"), in this case it
> > > gives
> > > no hint about the boards. If someone was interested in picking changes
> > > for a given board they can't easily identify from the subject that the
> > > change is relevant for them.
> > > 
> > > Changes touching multiple boards are more likely to cause conflicts when
> > > being picked (or reverted), both upstream and in downstream trees (which
> > > unfortunately have to exist for product development). Downstream trees
> > > might only pick changes for the board(s) they target, patches that touch
> > > mutiple boards often cause conflicts due to context deltas in the
> > > 'irrelevant' boards.
> > > 
> > > Lastly it's usually easier to get a patch reviewed (in the sense of
> > > getting a 'Reviewed-by' tag) and landed that does a single thing.
> > 
> > Yes, agree to your opinion. In a nutshell, we will include board
> > name(ex: herobrine)
> > 
> > in commit message and split the patches per external codec.
> > 
> > Actually, in Initial herobrine boards, EVT and IDP, has both maxim
> > speaker and WCD codec,
> > 
> > hence we included in same patch.
> > 
> > > > Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> > > > Co-developed-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> > > > Signed-off-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> > > > ---
> > > >   arch/arm64/boot/dts/qcom/sc7280-crd-r3.dts     |  6 ++
> > > >   arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi |  8 +++
> > > >   arch/arm64/boot/dts/qcom/sc7280-idp.dtsi       | 97
> > > > ++++++++++++++++++++++++++
> > > >   3 files changed, 111 insertions(+)
> > > > 
> > > > diff --git a/arch/arm64/boot/dts/qcom/sc7280-crd-r3.dts
> > > > b/arch/arm64/boot/dts/qcom/sc7280-crd-r3.dts
> > > > index 344338a..aa0bf6e2 100644
> > > > --- a/arch/arm64/boot/dts/qcom/sc7280-crd-r3.dts
> > > > +++ b/arch/arm64/boot/dts/qcom/sc7280-crd-r3.dts
> > > > @@ -87,6 +87,12 @@ ap_ts_pen_1v8: &i2c13 {
> > > >       pins = "gpio51";
> > > >   };
> > > >   +&wcd938x {
> > > > +    pinctrl-names = "default";
> > > > +    pinctrl-0 = <&us_euro_hs_sel>;
> > > > +    us-euro-gpios = <&tlmm 81 GPIO_ACTIVE_HIGH>;
> > > > +};
> > > Since this is added for the CRD rev3 it probably should also be added to
> > > sc7280-herobrine-crd.dts
> > Okay. Will add in corresponding latest herobrine CRD dts file also.
> > > 
> > > > +
> > > >   &tlmm {
> > > >       tp_int_odl: tp-int-odl {
> > > >           pins = "gpio7";
> > > > diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
> > > > b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
> > > > index d58045d..f247403 100644
> > > > --- a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
> > > > +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
> > > > @@ -20,6 +20,14 @@
> > > >   #include "sc7280-chrome-common.dtsi"
> > > >     / {
> > > > +    max98360a: audio-codec-0 {
> > > > +        compatible = "maxim,max98360a";
> > > > +        pinctrl-names = "default";
> > > > +        pinctrl-0 = <&amp_en>;
> > > > +        sdmode-gpios = <&tlmm 63 GPIO_ACTIVE_HIGH>;
> > > > +        #sound-dai-cells = <0>;
> > > > +    };
> > > > +
> > > >       chosen {
> > > >           stdout-path = "serial0:115200n8";
> > > >       };
> > > > diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> > > > b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> > > > index 2f863c0..8dad599 100644
> > > > --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> > > > +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> > > > @@ -20,6 +20,42 @@
> > > >           serial1 = &uart7;
> > > >       };
> > > >   +    max98360a: audio-codec-0 {
> > > > +        compatible = "maxim,max98360a";
> > > > +        pinctrl-names = "default";
> > > > +        pinctrl-0 = <&amp_en>;
> > > > +        sdmode-gpios = <&tlmm 63 GPIO_ACTIVE_HIGH>;
> > > > +        #sound-dai-cells = <0>;
> > > > +    };
> > > > +
> > > > +    wcd938x: audio-codec-1 {
> > > Why 'wcd938x' and not 'wcd9385'?
> > 
> > Actually same driver is used for both wcd9380 and wcd9385. Here we can
> > use specific name as per board.
> > 
> > Will change accordingly.
> 
> At present, dt-bindgs also has wcd938x. So will update the name in bindings
> and here post this series.
> 
> is it okay?

I don't think it's strictly necessary to update the binding, as
'wcd938x' is only used in the example, and also it's not really
wrong. Then again, if the example in the binding uses a
specific wcd version it might make it less likely that the
wildcard name is used in future board DTs. Up to you :)
