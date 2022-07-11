Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3AF8F57065D
	for <lists+devicetree@lfdr.de>; Mon, 11 Jul 2022 16:58:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231405AbiGKO60 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jul 2022 10:58:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229900AbiGKO60 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jul 2022 10:58:26 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 191A372EC5
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 07:58:25 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id m16so6572827edb.11
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 07:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JK/h8I3TwzYyU8YTkNwIUL4+D9uJ1XU+DQgA/bhS4DQ=;
        b=X4wjMIEABz8noT1eAHb/RNu6qhp+hTqzGdaPiYYKviKYRh30CyC85AQZdVus+ckBr3
         XislwfMrvQ7Q3cEq6Ovn79KBtWs/U5wn6/d1XIJUxXnq0G3p1rp4j+Y1/twzmIQWXY8m
         v4Q8KmF9dFlq0dtRRxacW0DfVcf/S0JAjxyn8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JK/h8I3TwzYyU8YTkNwIUL4+D9uJ1XU+DQgA/bhS4DQ=;
        b=HMqtWgWDZFQarTd15F0shN1BboANHW1edg/mZRly967h+J6yu7IgWCjlMPRKDf0Kkh
         p1IlDJmwJfdJVMEUYGEFH7cfuJRxX4xSFIzYzJtqGY0erQecNS2zbdo4qW6NbupOH2Eb
         EwSd8LjsqSFvfHFzIVOqyQU/QC5RuJmknj/MQQiW17j87DkMuOsXi8ZSPiECJi7uG8vS
         8OIeE65JFdUj6SdksvC9lfBVK7ff8LEvCyLnFvDmY+6Gfa4i8RA7MMF3J5LFc7jO0fsB
         kBuUiNu/upY2/S7KfJ/vV0woDne8c+GykI3dSG0ozFDAsv86x9Frp9cWVTGSGndCRuCr
         D2+Q==
X-Gm-Message-State: AJIora9ttR1IWb096HLmpWdne008Z+DbfMmpX5IyYX0WSQLLRuFJcMDH
        HxpeAt7p3lg7ls2PmXzhqnhW2k/a5qmnTvGV
X-Google-Smtp-Source: AGRyM1tcPVprS4/DG3BciUCs3NYnBdb6HRI06eBiRScFC/6CjIKoFzCFU4/KqlBTSHj2/QqJ+CpUJQ==
X-Received: by 2002:a05:6402:48:b0:43a:caa8:756b with SMTP id f8-20020a056402004800b0043acaa8756bmr11652366edu.112.1657551503538;
        Mon, 11 Jul 2022 07:58:23 -0700 (PDT)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com. [209.85.221.49])
        by smtp.gmail.com with ESMTPSA id fs6-20020a170907600600b007121361d54asm2749060ejc.25.2022.07.11.07.58.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jul 2022 07:58:22 -0700 (PDT)
Received: by mail-wr1-f49.google.com with SMTP id f2so7368609wrr.6
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 07:58:21 -0700 (PDT)
X-Received: by 2002:adf:fb12:0:b0:20c:79b2:a200 with SMTP id
 c18-20020adffb12000000b0020c79b2a200mr17662599wrr.617.1657551501186; Mon, 11
 Jul 2022 07:58:21 -0700 (PDT)
MIME-Version: 1.0
References: <20220711082709.39102-1-krzysztof.kozlowski@linaro.org> <20220711082709.39102-3-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220711082709.39102-3-krzysztof.kozlowski@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 11 Jul 2022 07:58:08 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Uvc+d8v4UCMLhcEydt-RVf+94NTUWrMgORv8bw0kDNUQ@mail.gmail.com>
Message-ID: <CAD=FV=Uvc+d8v4UCMLhcEydt-RVf+94NTUWrMgORv8bw0kDNUQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: msm8998: add MSM8998 SDCC specific compatible
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Linux MMC List <linux-mmc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Jul 11, 2022 at 1:27 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Add a MSM8998-specific SDCC compatible, because using only a generic
> qcom,sdhci-msm-v4 fallback is deprecated.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/msm8998.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
