Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 79C3357BD3F
	for <lists+devicetree@lfdr.de>; Wed, 20 Jul 2022 19:54:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236024AbiGTRyP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jul 2022 13:54:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237876AbiGTRyM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jul 2022 13:54:12 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A56935D59B
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 10:54:10 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id l23so34431176ejr.5
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 10:54:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ctz6Bj/1tsBk5/T9SJKUKyY4+CIziBZQwdo01hjp3G8=;
        b=lWkIFnYQD7yxdJ57mymN1bcXuzrHSYZCACCxSHvSeafJkvzxKZlV017M9cIEtJXSv5
         +ZFDy3IT9RrVDw6hsr/wUNGKWtnZ+YcKjdx++Ity5lrfjq6zIlz36my/ku9QrfAPnGMW
         p79Zo6qOUcw0VhLATLslDn3XqfD9hxLIWL+Po=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ctz6Bj/1tsBk5/T9SJKUKyY4+CIziBZQwdo01hjp3G8=;
        b=uJ9yXRfaEswXXBNHvOQ/HqI0rsK3dBg4NCRg0G8hFfM56UhDzv/cpsOuFn8yPVm2Up
         MxG3KK5m6ONKvHteMmtJBJsfwPrDUMFEepLdFYtshQFJMtgQx38eBQuuFTW9RXn52WGD
         dqaVdeSQnmc9ksN+y8vlaSXuTzMzoa48/up1vaW0mcCRzi8xLqlUbQB/KeJEn62vFkST
         eETBLvcAtU7B4L2663ldPmh1iIa+YsZdERYwhoxIvSvOfgtxh5yoCTFDen7h44nqIqxu
         eA99T0uZyczlQPOe5nKRYnnEPBUKRmDwDDgYM2S8oGTW4kuIxfn5HxUCM2QKFoi0nMJz
         CMKw==
X-Gm-Message-State: AJIora/yKCQ71oK8VwNK4miBSscFZ41Bf8WuzCWdSa3v0AkIWrGtk0//
        dDYYrV7jJS2BgR5H6UZYhwdCPnEKhfmy1M8f
X-Google-Smtp-Source: AGRyM1uI3BgknupYkvpPCyQBufRVyhVZDWisQ8cxJOBvt0UwM60LBtJcAS7TEjiLJDshtxx6YN50Yw==
X-Received: by 2002:a17:906:4fd5:b0:72e:ce13:2438 with SMTP id i21-20020a1709064fd500b0072ece132438mr34811656ejw.175.1658339649018;
        Wed, 20 Jul 2022 10:54:09 -0700 (PDT)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com. [209.85.221.48])
        by smtp.gmail.com with ESMTPSA id b7-20020aa7dc07000000b0043bbd133358sm482644edu.37.2022.07.20.10.54.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jul 2022 10:54:08 -0700 (PDT)
Received: by mail-wr1-f48.google.com with SMTP id bk26so27187931wrb.11
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 10:54:08 -0700 (PDT)
X-Received: by 2002:a5d:5889:0:b0:21d:bccd:38e3 with SMTP id
 n9-20020a5d5889000000b0021dbccd38e3mr30862732wrf.659.1658339647846; Wed, 20
 Jul 2022 10:54:07 -0700 (PDT)
MIME-Version: 1.0
References: <20220720025058.1.I5bfba8857ea0d43c747ecdc3a950875abd56927f@changeid>
 <7a04c9af-0ccb-7711-249f-73908fe7ec36@linaro.org> <CAD=FV=V1MqQzNxq_L8sGtu2JwAAL_FWKXkw9bhCHcD0DycFMUw@mail.gmail.com>
 <bcbca05e-2b75-a405-b1ea-21b276931a90@linaro.org>
In-Reply-To: <bcbca05e-2b75-a405-b1ea-21b276931a90@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 20 Jul 2022 10:53:54 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UEt4fcVaFvS8nr7Z0GNYM1T=mz7iUhwg+bBkWtbO4c1g@mail.gmail.com>
Message-ID: <CAD=FV=UEt4fcVaFvS8nr7Z0GNYM1T=mz7iUhwg+bBkWtbO4c1g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: Add SKU6 for sc7180-trogdor-pazquel-lte-parade
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>,
        LKML <linux-kernel@vger.kernel.org>,
        Henry Sun <henrysun@google.com>,
        Bob Moragues <moragues@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Jul 20, 2022 at 9:55 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 20/07/2022 17:13, Doug Anderson wrote:
> > Hi,
> >
> > On Tue, Jul 19, 2022 at 11:10 PM Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 20/07/2022 04:51, Yunlong Jia wrote:
> >>> SKU6 is LTE(w/o eSIM)+WIFI+Parade
> >>>
> >>> Signed-off-by: Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>
> >>> ---
> >>>
> >>>  arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel-lte-parade.dts | 2 +-
> >>>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel-lte-parade.dts b/arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel-lte-parade.dts
> >>> index 764c451c1a857..4649eaec6318d 100644
> >>> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel-lte-parade.dts
> >>> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel-lte-parade.dts
> >>> @@ -14,7 +14,7 @@
> >>>
> >>>  / {
> >>>       model = "Google Pazquel (Parade,LTE)";
> >>> -     compatible = "google,pazquel-sku4", "qcom,sc7180";
> >>> +     compatible = "google,pazquel-sku4", "google,pazquel-sku6", "qcom,sc7180";
> >>
> >> You miss binding change and sku6 should be rather added before sku4 as
> >> it is more specific, isn't it?
> >
> > Just to close the loop: the order doesn't matter at all. Neither sku4
> > nor sku6 is "more specific". One has the eSIM stuffed and one doesn't.
>
> Thanks Doug. Then the commit description could be improved, so reviewer
> does not have to ask such questions. Otherwise it is confusing to see a
> board which says it is for LTE version but it is actually not for LTE
> version (or whatever combination you have).

Yeah. I guess it makes more sense with the background knowledge that
the different SKUs are:

LTE with physical SIM _and_ eSIM
LTE with only a physical SIM
WiFi only

...so both sku4 and sku6 are LTE SKUs. One has the eSIM stuffed and
one doesn't. There is a single shared device tree for the two.

-Doug
