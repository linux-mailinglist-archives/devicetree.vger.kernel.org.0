Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B787E5A4EFB
	for <lists+devicetree@lfdr.de>; Mon, 29 Aug 2022 16:18:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229827AbiH2OSJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Aug 2022 10:18:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229983AbiH2OSI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Aug 2022 10:18:08 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70B016C10D
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 07:18:06 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id e18so2817458edj.3
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 07:18:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=6eA3iLMo74VU72GjAHzcIFbDrWSt4ldlMPUOCVv5jeM=;
        b=VcA3YkAROW9hVm7UZ1dQ22/roU/2b/Xc6ZArkKbpMusBVNlv1XHOnWqrDPbSJId1gd
         xXVRtWrhQRemWwrFuqkd/v71r67QLtmSjE+/X482AlKB3y7B6eOHfl4GoTe/qHKhbN58
         M9lJUHyiMHRDfkjbJ5Y9MKNYOqd4eJI/uZ6+0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=6eA3iLMo74VU72GjAHzcIFbDrWSt4ldlMPUOCVv5jeM=;
        b=fE3zqw9XlCxVAPJAZv74eq4++93fLpFD2Wx1XcVn+h9pDzcvWnqeHfUIHqyffy4n3T
         0rfSZY2MSxIPgaLxquH7gN/fgzyplSxyvawN+aCxG9x5blyWaKVJ9bFGwdDLd3fZh2R6
         xvyJqRw0gcxioomg7IDwWaO9GUxgNMwlHORQX9eYPPNeDnOei+O7tRhxukvUV0lB8f0Q
         4CrT4ykiRLfReG9B8lO3hHTZnRiPJyYwIQ+02bXT092AMrEd8yN2tiCRzBM0wM/W2afD
         XrOp5aAXlMukC8y+AiGpfk6vkvlhUQf7QntdrIGoGsDwwkg5d8A9UyPqwqAL1+l4Gmef
         uNLA==
X-Gm-Message-State: ACgBeo1ap1l5NzjHmBB7BoKuzpi1T02i1TGd66gNKmZbq6WsrK3ojvfA
        4blXJJdX9uCZvDs73OFKCwUpIxlsRXRysjAe
X-Google-Smtp-Source: AA6agR5BP+in9e2RocBTZuvxfJXK8C+3hep2JRK9qxe/z4PAUWSFM3kEK8yygL+FgnLgwZrHcuATNw==
X-Received: by 2002:a05:6402:43c6:b0:43d:79a6:4e32 with SMTP id p6-20020a05640243c600b0043d79a64e32mr16299761edc.281.1661782684760;
        Mon, 29 Aug 2022 07:18:04 -0700 (PDT)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com. [209.85.221.45])
        by smtp.gmail.com with ESMTPSA id w9-20020a1709061f0900b0073d706ac66csm4544967ejj.46.2022.08.29.07.18.02
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Aug 2022 07:18:03 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id k9so10420476wri.0
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 07:18:02 -0700 (PDT)
X-Received: by 2002:a5d:6881:0:b0:225:28cb:332f with SMTP id
 h1-20020a5d6881000000b0022528cb332fmr6427367wru.405.1661782682352; Mon, 29
 Aug 2022 07:18:02 -0700 (PDT)
MIME-Version: 1.0
References: <20220829030823.v2.1.If97ef7a7d84bcc2cf20e0479b3e00c4a8fb5a2fd@changeid>
In-Reply-To: <20220829030823.v2.1.If97ef7a7d84bcc2cf20e0479b3e00c4a8fb5a2fd@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 29 Aug 2022 07:17:49 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WdRJY45wznzdUJEPwm_MP8DMD7W6-DPmtLpcT0HZgVOw@mail.gmail.com>
Message-ID: <CAD=FV=WdRJY45wznzdUJEPwm_MP8DMD7W6-DPmtLpcT0HZgVOw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: qcom: Document additional skus
 for sc7180 pazquel360
To:     Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
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
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Sun, Aug 28, 2022 at 8:09 PM Yunlong Jia
<yunlong.jia@ecs.corp-partner.google.com> wrote:
>
> pazquel360 is an extension project based on pazquel.
> We create 3 sku on pazquel360:
>    sku 20 for LTE with physical SIM _and_ eSIM and WiFi
>    sku 21 for WiFi only
>    sku 22 for LTE with only a physical SIM
>  Both sku20 and sku22 are LTE SKUs.
>  One has the eSIM stuffed and one doesn't.
>  There is a single shared device tree for the two.
>
> Signed-off-by: Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>
>
> ---
>
> (no changes since v1)
>
>  Documentation/devicetree/bindings/arm/qcom.yaml | 11 +++++++++++
>  1 file changed, 11 insertions(+)

If things don't change from one version to the next (or if the change
is very minor), you should carry forward tags. Thus you should have
included these tags when you posted your v2:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
