Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 400215BD87D
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 01:55:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229681AbiISXzi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 19:55:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229505AbiISXzd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 19:55:33 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A93DF4DF2F
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 16:55:31 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id z13so1409167edb.13
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 16:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=yfATfabNUJHTE7KoWz5tianqb2se6NNt8ssnLCiM3vM=;
        b=HV77nvu/6m5fXE76OY/pv1J5LagXGgFIHxHVja+vZD5GGHJUZUVtbSeyHyOzP3BI1k
         q8KZbVHHluXEvWGmq5aB60t1fzHiWETXVO+ymCXT+XNgpK6+dyax8t3CtXb979Vu6wk9
         rebhZrc/2rOf9d5Q0uY9dSRlcwxvDNuVdAaK8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=yfATfabNUJHTE7KoWz5tianqb2se6NNt8ssnLCiM3vM=;
        b=iRJ9kSaYjEjnfxgRURjYFAFgY9Ho0X44/w3liDwn+Wmwok+O+4KXXOGiGgUtbFMper
         fbuvGd7GXZ4iDDioCygZWgwEue1nGIuK9Fl2VKHFI89yV1yL/n6SqQuD16b5nPXCHsjb
         POheGn0Y7g2uSaVKF92LUoLblVD2yBclVv8VcUmTCz+LzZ9U5U50ISmyfK7/iyCcIOQs
         8nZOdVj/wltuagOQGH0w+VdelCjQt+Un9wJSfRhLQ1ViKWfuotBp15PTe9A8k5PenwDv
         T3b6v61NAkytkvlxHshzsCCgx7YmkGk29RQyP+rFnnxaVRIIvqFslO264wGLBWeIkzsM
         Pqdw==
X-Gm-Message-State: ACrzQf3Bj9zia+EifTORlYFC4NKrMMPbx61QfQM7w1uk2DHeeWskg9j3
        NR410zcLMBXyuC2qVWqyBgaA4llm7GdinOs/
X-Google-Smtp-Source: AMsMyM5mT23bTrGROS+ynCi/TQWP7fHINkSow6D1Ew1q86CDUF/Zm46aaTxvWgrT9gEd9rj8v4GX1A==
X-Received: by 2002:aa7:cb87:0:b0:43b:e650:6036 with SMTP id r7-20020aa7cb87000000b0043be6506036mr17817399edt.350.1663631730030;
        Mon, 19 Sep 2022 16:55:30 -0700 (PDT)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com. [209.85.221.50])
        by smtp.gmail.com with ESMTPSA id c1-20020a17090618a100b0076fcde2ff37sm16294166ejf.70.2022.09.19.16.55.27
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Sep 2022 16:55:28 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id r7so1640076wrm.2
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 16:55:27 -0700 (PDT)
X-Received: by 2002:a5d:6c62:0:b0:22a:2f59:cb7d with SMTP id
 r2-20020a5d6c62000000b0022a2f59cb7dmr12106298wrz.405.1663631727515; Mon, 19
 Sep 2022 16:55:27 -0700 (PDT)
MIME-Version: 1.0
References: <1662754496-31143-1-git-send-email-quic_sibis@quicinc.com>
In-Reply-To: <1662754496-31143-1-git-send-email-quic_sibis@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 19 Sep 2022 16:55:15 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XMC28U5eZhqUyr6gcNiFKmHfNLjmVAb0Asx4u0mLXZtw@mail.gmail.com>
Message-ID: <CAD=FV=XMC28U5eZhqUyr6gcNiFKmHfNLjmVAb0Asx4u0mLXZtw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: Add Google Herobrine WIFI SKU dts fragment
To:     Sibi Sankar <quic_sibis@quicinc.com>
Cc:     Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Stephen Boyd <swboyd@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Sep 9, 2022 at 1:15 PM Sibi Sankar <quic_sibis@quicinc.com> wrote:
>
> The Google Herobrine WIFI SKU can save 256M by not having modem/mba/rmtfs
> memory regions defined. Add the dts fragment and mark all the board files
> appropriately.
>
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> ---
>
> Depends on:
> Add LTE SKUs for Villager: https://patchwork.kernel.org/project/linux-arm-msm/cover/20220830182923.3720287-1-dianders@chromium.org/
>
> Instead of just having remoteproc_mpss node disabled, we go ahead and
> delete it on wifi only SKUs. This is done to avoid the dtbs_check
> failures that we would end of getting if we delete the memory-region
> property present in the node (since it's a required property). I'll
> send a follow up patch with IPA node enabled only on LTE SKUs as soon
> as I verify that it doesn't have any affects on suspend/resume.

s/affects/effects


> diff --git a/arch/arm64/boot/dts/qcom/sc7280-crd-r3.dts b/arch/arm64/boot/dts/qcom/sc7280-crd-r3.dts
> index 344338ad8a01..480cb88f2154 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-crd-r3.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7280-crd-r3.dts
> @@ -9,6 +9,7 @@
>
>  #include "sc7280-idp.dtsi"
>  #include "sc7280-idp-ec-h1.dtsi"
> +#include "sc7280-herobrine-lte-sku.dtsi"

This is unrelated to the WiFi only separation, isn't it? This looks
like it's fixing a bug in commit d42fae738f3a ("arm64: dts: qcom: Add
LTE SKUs for sc7280-villager family") which removed a fragment from
"sc7280-chrome-common.dtsi" but then didn't add it back to all the
previous users. Not sure how I missed that. In any case, feels like
this should be a separate commit with a Fixes.

...also: instead of adding this include to crd-r3 and idp2, though,
why not just add it to "idp.dtsi"? Right now all things that include
"idp.dtsi" are LTE SKUs, right?


>  / {
>         model = "Qualcomm Technologies, Inc. sc7280 CRD platform (rev3 - 4)";
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker-r0.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker-r0.dts
> index ccbe50b6249a..6a2ffaac33bc 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker-r0.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker-r0.dts
> @@ -8,6 +8,7 @@
>  /dts-v1/;
>
>  #include "sc7280-herobrine.dtsi"
> +#include "sc7280-herobrine-wifi-sku.dtsi"

I think this is wrong and evoker is a LTE SKU. I'll send out a patch shortly.


> diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r1-lte.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r1-lte.dts
> index f1017809e5da..ee3bca264f67 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r1-lte.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r1-lte.dts
> @@ -5,7 +5,10 @@
>   * Copyright 2022 Google LLC.
>   */
>
> -#include "sc7280-herobrine-villager-r1.dts"
> +/dts-v1/;
> +
> +#include "sc7280-herobrine-villager.dtsi"
> +#include "sc7280-herobrine-audio-wcd9385.dtsi"

I don't think this is enough. villager-r1.dts also has some other
things that you'll end up missing. I think you need to move the
existing "villager-r1.dts" to be a dtsi file and then include it from
both the new "villager-r1.dts" and "villager-r1-lte.dts"
