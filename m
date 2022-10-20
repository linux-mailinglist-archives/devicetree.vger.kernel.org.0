Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E8B2606B56
	for <lists+devicetree@lfdr.de>; Fri, 21 Oct 2022 00:38:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229834AbiJTWi1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Oct 2022 18:38:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229786AbiJTWiW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Oct 2022 18:38:22 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7BB51C20B2
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 15:38:21 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id d26so2924663eje.10
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 15:38:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XAlG+R0L7V+c4eZDAFmMDuMjD1uoa7yYl/auqG4oieg=;
        b=lCSU0pfPqttzas41dzzOVDLE8MRyVU6xsbN3m/xliJTSEf2HWDALXIhYf3eFJpNqz2
         s/OINIMF4ZnOwrMjhjK67BPZNqp35rlxs7poQ+JinQUFanBXyXVN+aPFHV6f10MI54G6
         Fg7GdbnK+v2Th23F/IBs9FGrI+ORoqheZxqwI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XAlG+R0L7V+c4eZDAFmMDuMjD1uoa7yYl/auqG4oieg=;
        b=33GQaKSXS8OYzUSyWk7WH+lNeFNlQ8q8xJYvY5BhO3Ck/dQ6lgV+zF6BAp+oMhDnBw
         LhINXWgRrAO6hWpmrnzqOsS+hDwCbAnayyQ1Wn7YBebL7W8KRAsLF6e3qX2UQm6kvTok
         kXlPNnYT3DlbWKEKprzSo2Gm3eXnllBrdSMtjhvuerjyc5ZFQ2i+048gsJ0LAFsBL6iW
         Y3o9VUEgZNMAmdLg0bbCH5cfDZpInDF7JeheCZBt095yYL0WbzLiCPzxrhEJIcH3v1mn
         RlZp4Hw1h1sXMmtql/Iuqefb/zhRLcaB5LDUfg7H7jfxo0deGOlpdnpgkVbD212Co4A3
         gWRA==
X-Gm-Message-State: ACrzQf0SdpIv1eNjlw2ift29+/3ZXnwsS0RFo6WAk4OBEjdH6BCtbf9E
        9BLMNCQRhiIEpk3mXKde63zD2NJuEThv7Gdv
X-Google-Smtp-Source: AMsMyM6J6AR2MeyQRBHyINubSRaTDozj5bkDBQtSEJgo2MVMiZ94ZVMxl3gbcn5Z7n05fHhnHq87QQ==
X-Received: by 2002:a17:907:7fa9:b0:791:a5c2:e25 with SMTP id qk41-20020a1709077fa900b00791a5c20e25mr9950355ejc.444.1666305500528;
        Thu, 20 Oct 2022 15:38:20 -0700 (PDT)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com. [209.85.221.42])
        by smtp.gmail.com with ESMTPSA id u8-20020a17090657c800b0078c1e174e11sm10794313ejr.136.2022.10.20.15.36.43
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Oct 2022 15:37:20 -0700 (PDT)
Received: by mail-wr1-f42.google.com with SMTP id bp11so1556028wrb.9
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 15:36:43 -0700 (PDT)
X-Received: by 2002:adf:9d8a:0:b0:230:5212:d358 with SMTP id
 p10-20020adf9d8a000000b002305212d358mr10213052wre.405.1666305392092; Thu, 20
 Oct 2022 15:36:32 -0700 (PDT)
MIME-Version: 1.0
References: <20220901024827.v3.1.I3aa360986c0e7377ea5e96c116f014ff1ab8c968@changeid>
 <166606235849.3553294.10700447109437637515.b4-ty@kernel.org>
In-Reply-To: <166606235849.3553294.10700447109437637515.b4-ty@kernel.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 20 Oct 2022 15:36:20 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WXGGHTAgH7O6MP3eOp4HLAwkBAOJ9L63ow3PSdkUtCYg@mail.gmail.com>
Message-ID: <CAD=FV=WXGGHTAgH7O6MP3eOp4HLAwkBAOJ9L63ow3PSdkUtCYg@mail.gmail.com>
Subject: Re: (subset) [PATCH v3 1/2] dt-bindings: arm: qcom: Document
 additional skus for sc7180 pazquel360
To:     Bjorn Andersson <andersson@kernel.org>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        yunlong.jia@ecs.corp-partner.google.com, henrysun@google.com,
        devicetree@vger.kernel.org, moragues@chromium.org,
        agross@kernel.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Oct 17, 2022 at 8:15 PM Bjorn Andersson <andersson@kernel.org> wrote:
>
> On Thu, 1 Sep 2022 02:49:57 +0000, Yunlong Jia wrote:
> > pazquel360 is an extension project based on pazquel.
> > We create 3 sku on pazquel360:
> >    sku 20 for LTE with physical SIM _and_ eSIM and WiFi
> >    sku 21 for WiFi only
> >    sku 22 for LTE with only a physical SIM
> >  Both sku20 and sku22 are LTE SKUs.
> >  One has the eSIM stuffed and one doesn't.
> >  There is a single shared device tree for the two.
> >
> > [...]
>
> Applied, thanks!
>
> [1/2] dt-bindings: arm: qcom: Document additional skus for sc7180 pazquel360
>       commit: 185d192d0a7b565a24b3f7456a2f84f169ab087a
> [2/2] arm64: dts: qcom: Add sc7180-pazquel360
>       commit: 2f72a4f54cdb4fd0ebea9a2dea65756d3e676be2

FWIW, it looks like you landed v3 instead of v5. See:

https://lore.kernel.org/r/20220923083657.v5.3.Iea2d2918adfff2825b87d428b5732717425c196f@changeid/

Presumably something about your process got confused because Yunlong
changed the email address they were sending it from (I think someone
requested not to use an "corp-partner" email address).

The other difference between v3 and v5 is the touchscreen. Presumably
Yunlong can send a followup patch to add the touchscreen atop what
you've landed.

-Doug
