Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93DF867DAB1
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 01:22:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230328AbjA0AVB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 19:21:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232387AbjA0AU7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 19:20:59 -0500
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com [IPv6:2607:f8b0:4864:20::f31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CEB56592
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 16:20:31 -0800 (PST)
Received: by mail-qv1-xf31.google.com with SMTP id k12so2782419qvj.5
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 16:20:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zpmDswi/wSigvewXIn7qeq2QNhLH9j+uFliOJerl3lI=;
        b=OsZ8dXBoYhzZZ+SDvz0bZZkdfFSs1vHlgrFlAn8uyjA2zFJyTwHyDBRRywqSGIvvVy
         +Ul/d89CbpIla0hrjNvJ0A55rDuffKixQywKL37Wylwihl91tTVpfsoO2Vuoiu2Odhkx
         uaeGVL62yT1cNxnk9T0AomAe8JrddORL1eRtw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zpmDswi/wSigvewXIn7qeq2QNhLH9j+uFliOJerl3lI=;
        b=pBivtzfW832MUIWwHLGC61098INyfPcl35LG+x8Jo2gZ6CjwjOBGvYL6jDoKG+Ou4y
         mOuq7g3BQZFpqxnZMPeLSyYa5MLBB4KmRJbdiiezUfI92XgzfEt94Ba4OEzpxxbkvg1m
         CFZm5a0TxH4HXsrTJ9gIi2AFRhGsfe5k+IowtBk+pQrN64ROkWAUgV+V3ruR6RLHxjYb
         ceZyseWNcwvnS80DNFp0xBQ7V2CgJVvV7pq57zflHpiyCwS2NKTAsNpdw6IC5E+niW8b
         jZ4w8HypCNQmUtlSTCIm1bLhs77qI9OuWIKcw6ib23ZSB1Dklg+xFGABcVSj02aKJVuA
         pw/A==
X-Gm-Message-State: AFqh2kp8XWmhq3+VPuCV+JyNKfxXQM83W3h6/Gc+T/0L4rNA58oCU1Cn
        TozNNs8G+a1wtZG5whTWOqJ+jMlpwigRSVRnNLg=
X-Google-Smtp-Source: AMrXdXuCWFYg2CqAAkx+Mwns+IKl03ioZzkg88E4o+FnfW2G9ShbpxIo5d98aus8x44/i4YE9tVxOw==
X-Received: by 2002:a05:6214:570b:b0:535:5bae:6bf7 with SMTP id lt11-20020a056214570b00b005355bae6bf7mr43791773qvb.52.1674778829995;
        Thu, 26 Jan 2023 16:20:29 -0800 (PST)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com. [209.85.219.178])
        by smtp.gmail.com with ESMTPSA id c22-20020a05620a165600b006f7ee901674sm1932862qko.2.2023.01.26.16.20.24
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jan 2023 16:20:24 -0800 (PST)
Received: by mail-yb1-f178.google.com with SMTP id m199so4156339ybm.4
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 16:20:24 -0800 (PST)
X-Received: by 2002:a25:4b41:0:b0:803:e799:d7b9 with SMTP id
 y62-20020a254b41000000b00803e799d7b9mr2481898yba.16.1674778823633; Thu, 26
 Jan 2023 16:20:23 -0800 (PST)
MIME-Version: 1.0
References: <20221216112918.1243-1-quic_rjendra@quicinc.com>
 <Y5x+WEwTtpoV0gaR@google.com> <fd23e295-fea0-1b0a-752c-3cce26b57346@quicinc.com>
 <Y6HHCrl0q5BhrHOY@google.com> <e269300d-539e-9eb8-8b3c-d309f3abca1b@quicinc.com>
 <bbc3c257-0a49-4c80-4586-c179c8997b50@linaro.org> <CAD=FV=X3DyMrEWESV2cWvqg_TQYnj+VGFBQodAp+gfbhBz6X3Q@mail.gmail.com>
 <9f6bd192-2a42-0a23-0032-df8b01921bdc@linaro.org> <CAD=FV=U6KhJR+9q49=T3-aYppukRNmLrgvhaxP_ZtLP=VgSaDA@mail.gmail.com>
 <18c2bd9a-0216-c4fc-773e-601aea030b48@quicinc.com>
In-Reply-To: <18c2bd9a-0216-c4fc-773e-601aea030b48@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 26 Jan 2023 16:20:10 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WJWnGKgw74nW_VteSwaMswskT7_sQ3iz3YZvsBMfOyxA@mail.gmail.com>
Message-ID: <CAD=FV=WJWnGKgw74nW_VteSwaMswskT7_sQ3iz3YZvsBMfOyxA@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: qcom: Document the sc7280 CRD
 Pro boards
To:     Rajendra Nayak <quic_rjendra@quicinc.com>
Cc:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        andersson@kernel.org, Matthias Kaehlcke <mka@chromium.org>,
        agross@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, konrad.dybcio@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Jan 9, 2023 at 8:21 PM Rajendra Nayak <quic_rjendra@quicinc.com> wrote:
>
>
> On 1/10/2023 3:12 AM, Doug Anderson wrote:
> > Hi,
> >
> > On Mon, Jan 9, 2023 at 1:36 PM Dmitry Baryshkov
> > <dmitry.baryshkov@linaro.org> wrote:
> >>
> >> On 09/01/2023 23:00, Doug Anderson wrote:
> >>> Hi,
> >>>
> >>> On Tue, Dec 20, 2022 at 9:12 AM Dmitry Baryshkov
> >>> <dmitry.baryshkov@linaro.org> wrote:
> >>>>
> >>>> On 20/12/2022 18:20, Rajendra Nayak wrote:
> >>>>>
> >>>>>
> >>>>> On 12/20/2022 8:00 PM, Matthias Kaehlcke wrote:
> >>>>>> On Tue, Dec 20, 2022 at 10:30:32AM +0530, Rajendra Nayak wrote:
> >>>>>>>
> >>>>>>> On 12/16/2022 7:49 PM, Matthias Kaehlcke wrote:
> >>>>>>>> On Fri, Dec 16, 2022 at 04:59:17PM +0530, Rajendra Nayak wrote:
> >>>>>>>>> Add compatibles for the Pro SKU of the sc7280 CRD boards
> >>>>>>>>> which come with a Pro variant of the qcard.
> >>>>>>>>> The Pro qcard variant has smps9 from pm8350c ganged up with
> >>>>>>>>> smps7 and smps8.
> >>>>>>>>>
> >>>>>>>>> Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> >>>>>>>>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >>>>>>>>> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> >>>>>>>>> ---
> >>>>>>>>> v4 changes:
> >>>>>>>>> Added the zoglin-sku1536 compatible along with hoglin-sku1536.
> >>>>>>>>> Zoglin is same as the Hoglin variant, with the SPI Flash reduced
> >>>>>>>>> from 64MB to 8MB
> >>>>>>>>>
> >>>>>>>>>      Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
> >>>>>>>>>      1 file changed, 6 insertions(+)
> >>>>>>>>>
> >>>>>>>>> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml
> >>>>>>>>> b/Documentation/devicetree/bindings/arm/qcom.yaml
> >>>>>>>>> index 1b5ac6b02bc5..07771d4c91bd 100644
> >>>>>>>>> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> >>>>>>>>> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> >>>>>>>>> @@ -558,6 +558,12 @@ properties:
> >>>>>>>>>                - const: google,hoglin
> >>>>>>>>>                - const: qcom,sc7280
> >>>>>>>>> +      - description: Qualcomm Technologies, Inc. sc7280 CRD Pro
> >>>>>>>>> platform (newest rev)
> >>>>>>>>> +        items:
> >>>>>>>>> +          - const: google,zoglin-sku1536
> >>>>>>>>> +          - const: google,hoglin-sku1536
> >>>>>>>>
> >>>>>>>> Is there actually such a thing as a 'hoglin-sku1536', i.e. the Pro
> >>>>>>>> qcard
> >>>>>>>> with 64MB of SPI flash, or do they all have 8MB of flash?
> >>>>>>>
> >>>>>>> The SPI flash is on the CRD mother-board and not on the qcards, so if
> >>>>>>> you replace
> >>>>>>> the qcards on the CRDs with 64MB flash you would need the
> >>>>>>> hoglin-sku1536 to
> >>>>>>> boot on those.
> >>>>>>
> >>>>>> With such a configuration how does the bootloader know it should pass
> >>>>>> the kernel
> >>>>>> the device tree for 'hoglin-sku1536' (pro) and not the non-pro
> >>>>>> variant? IIUC the
> >>>>>> device tree is selected based on pin strappings on the mother-board,
> >>>>>> not the
> >>>>>> qcard.
> >>>>>
> >>>>> The device tree is selected based on the pin strappings _and_ additional
> >>>>> logic
> >>>>> to dynamically identify modem/non-modem(wifi) as well as pro/non-pro
> >>>>> SKUs which
> >>>>> was added in the bootloaders.
> >>>>
> >>>> Just to clarify things, when you mention pro SKU, is it a separate SoC
> >>>> revision (like sc7280-pro vs bare sc7280), or is it a CRD revision (CRD
> >>>> Pro vs bare CRD)?
> >>>
> >>> I guess Rajendra never responded, but since I know the answer: it's a
>
> Thanks Doug for the clarifications, I seem to have missed responding to this
> once I was back from vacation,
>
> >>> different SoC revision. ...but the SoC in this case is on a daughter
> >>> card, so you could remove the daughter card containing the SoC and put
> >>> a new daughtercard on. That would have the effect of making an old CRD
> >>> revision have the new Pro SKU SoC.
> >>
> >> So, this is a new SoC. Is it 100% compatible with the sc7280? In other
> >> words: does it require any additional customizations (in OPP tables, in
> >> frequences, speed bins, etc)?
>
> Yes, the OPP differences are taken care of with no changes needed in kernel.
> We describe a superset of *all* OPPs supported by a SoC family in DT and the
> cpufreq driver then queries the firmware for supported OPPs on a given
> SoC variant and ends up disabling the rest.

I saw that Bjorn just send out a pull request but it didn't include
this patch. Bjorn: are you expecting anything from Rajendra here, or
did it just get missed? I think Rajendra responded to all of Dmitry's
comments, but I could be mistaken.

-Doug
