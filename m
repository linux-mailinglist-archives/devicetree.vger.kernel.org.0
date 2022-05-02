Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5701C51759E
	for <lists+devicetree@lfdr.de>; Mon,  2 May 2022 19:17:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1386619AbiEBRVW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 May 2022 13:21:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1386622AbiEBRVT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 May 2022 13:21:19 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A78B3B1D9
        for <devicetree@vger.kernel.org>; Mon,  2 May 2022 10:17:46 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id i19so28920867eja.11
        for <devicetree@vger.kernel.org>; Mon, 02 May 2022 10:17:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gMqBgTrhfUKKEl/G5V1eWPOJxywdk0FK8Tb1dsdlXpM=;
        b=Fc3vRfuW5NtMW7EI2ZBMV+YnIKqAMpApdt4JOF20Q5AAQ6HDr4LiYSVM0xZoUyNqn+
         OgeNUG46t2hjmY46svxZFz3QtaSSArm1HTAVYQil+AjrxmYeEUh7vEQwXgLEnVl5aq6t
         ZtoZ8IKY/USy5HQHZcyaOmwqGjHrFecdY3cNI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gMqBgTrhfUKKEl/G5V1eWPOJxywdk0FK8Tb1dsdlXpM=;
        b=eWWTggVocNNzPpWGHR6w6P1kmTsg4h4gQOj+nlYBg+vFk+5YGvnuO0935aC8gw32bZ
         /07uwOO6J+6x6003H1WpVdLv7NoUQYOV/GqdAK3anUhaf4P74XwwMps1sCl3YDTmQtra
         IWBB5whuhP1yKvd/KLKaaFkzQmF0tHhTMVog95ib9e0Oxie5e8e+S272mIQuPXHRjD0p
         5yCULLfS5pC8fKKRlI6+lvrH8F1glodsv77YGL0QRn/HIt5KPMnZBJmpfrMD7MLInC6m
         VmUX+pHBCrEdJxZimRuPa0V+DIj0D3yc7Bw2mC3SRA+OzanOSu4g8abQE3uNrpyflru5
         dm8w==
X-Gm-Message-State: AOAM533GmULS8OWISBqswQfK69ql8pQsKQA0skM2JKkGTCwdZhk8LNPH
        R5KESvrWJHCHr67xcWT8R0deRt28jbSkNF75
X-Google-Smtp-Source: ABdhPJz6+vJfBkAw2/DPitBcxaNM8/3cR5Z47a36oU0fkGroAAAybULxn4ahFLN2lBRS3PHqxa658g==
X-Received: by 2002:a17:906:9b8a:b0:6f3:fcc9:f863 with SMTP id dd10-20020a1709069b8a00b006f3fcc9f863mr12076343ejc.672.1651511864884;
        Mon, 02 May 2022 10:17:44 -0700 (PDT)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com. [209.85.221.45])
        by smtp.gmail.com with ESMTPSA id i8-20020aa7c708000000b0042617ba63absm6887975edq.53.2022.05.02.10.17.43
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 May 2022 10:17:44 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id x18so20415712wrc.0
        for <devicetree@vger.kernel.org>; Mon, 02 May 2022 10:17:43 -0700 (PDT)
X-Received: by 2002:a5d:42c8:0:b0:20a:d91f:87b5 with SMTP id
 t8-20020a5d42c8000000b0020ad91f87b5mr10141812wrr.301.1651511863286; Mon, 02
 May 2022 10:17:43 -0700 (PDT)
MIME-Version: 1.0
References: <20220430011402.1.If7c3471db53bea55213f7bcf17e9043084d3ac0c@changeid>
 <20220430011402.3.Ic20d0c002ac5406b880cbdf9824739f38740926c@changeid>
In-Reply-To: <20220430011402.3.Ic20d0c002ac5406b880cbdf9824739f38740926c@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 2 May 2022 10:17:31 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UKSsOoer-9sUMP4AYF=A0L2Wg+cZ40Q_22m=GZjoUzuw@mail.gmail.com>
Message-ID: <CAD=FV=UKSsOoer-9sUMP4AYF=A0L2Wg+cZ40Q_22m=GZjoUzuw@mail.gmail.com>
Subject: Re: [PATCH 3/5] arm64: dts: qcom: sc7180: Add quackingstick dts files
To:     "Joseph S. Barrera III" <joebar@chromium.org>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
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

On Sat, Apr 30, 2022 at 1:18 AM Joseph S. Barrera III
<joebar@chromium.org> wrote:
>
> Quackingstick is a trogdor-based board. These dts files are copies from
> the downstream Chrome OS 5.4 kernel, but with downstream bits removed.
>
> Signed-off-by: Joseph S. Barrera III <joebar@chromium.org>
> ---
>
>  arch/arm64/boot/dts/qcom/Makefile             |   2 +
>  .../sc7180-trogdor-quackingstick-r0-lte.dts   |  38 ++
>  .../qcom/sc7180-trogdor-quackingstick-r0.dts  |  26 ++
>  .../qcom/sc7180-trogdor-quackingstick.dtsi    | 324 ++++++++++++++++++
>  4 files changed, 390 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
