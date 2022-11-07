Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97AE361FD07
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 19:14:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232364AbiKGSOD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 13:14:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233002AbiKGSNn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 13:13:43 -0500
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCF8524973
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 10:12:31 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id a13so18961565edj.0
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 10:12:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7vy3t5kbrzPjpdQusaDe/qP73aspKCTGfj7z6ORzdgY=;
        b=cDv8auhtTvoqm4hxu39M9iJQmX6h3VmdR/dy12zJqgoxSKbPh/6ALAqQOyAY3DgWcN
         vjul/joY1QIREYkeyGuOtZAHrIOnJTMuQgejXET/AF6vOB+ONqpiLclQTdGMh5KA+f92
         1bRl4AO76MRNV5EXV6PhcVC/0xCgPIr0FuuQQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7vy3t5kbrzPjpdQusaDe/qP73aspKCTGfj7z6ORzdgY=;
        b=iiSz8nzGgU3DBpni0K1CMD+63l/kUSHVjcY89CG3RAoMFlubLlbUBuO2pQHi3iWGk6
         ML0oN/rznFAcTJg/qgJGuYiyJhdufeFur6Tr0yh14FcBpmI9Hk1UhtcZgdZjH8FxXazg
         uKlJRDpb4+io2NFTaaPF9s43RO3qVnl8H21LMi9SmyPS7OCpVZKAtl6XdYQxEcExYxN0
         4T0QNz2ZiS0mzWUK1ZizGRxnFfwFg4Z7sw35beKNQ7379rc0JmpLHWpUHRB4Zwk/oaKX
         oEDP4Gt5hopG2rIwo3JLZEuvPVpPVSVDekDbj7MqUWNPRRWDHaoY35yHtp8CGuokD2z9
         YFvA==
X-Gm-Message-State: ACrzQf3hhRjAT9iDKGvN6EaMGAE93Zy/s3VN7Qx+PtfY0UTggOx9m4IP
        avgpsTmTRroBIr5itRBL4uvF2yckdWlgEF7a
X-Google-Smtp-Source: AMsMyM5x6r6+bx/U9tQParIOtvK4hIkNya5sCZO1NP2RxrR6VCYoLueNf9p8Pp3KETVyvPZaptZYWA==
X-Received: by 2002:a05:6402:1619:b0:462:b059:9655 with SMTP id f25-20020a056402161900b00462b0599655mr50710194edv.316.1667844750169;
        Mon, 07 Nov 2022 10:12:30 -0800 (PST)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com. [209.85.221.53])
        by smtp.gmail.com with ESMTPSA id b3-20020a17090630c300b007ae0fde7a9asm3630154ejb.201.2022.11.07.10.12.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Nov 2022 10:12:28 -0800 (PST)
Received: by mail-wr1-f53.google.com with SMTP id j15so17472598wrq.3
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 10:12:28 -0800 (PST)
X-Received: by 2002:adf:d1ec:0:b0:236:880f:2adf with SMTP id
 g12-20020adfd1ec000000b00236880f2adfmr32978773wrd.617.1667844748035; Mon, 07
 Nov 2022 10:12:28 -0800 (PST)
MIME-Version: 1.0
References: <20221107094345.2838931-1-sheng-liang.pan@quanta.corp-partner.google.com>
 <20221107173954.v11.5.I4c6d97e6f3cf8cdc691d2d4519883c3018dd4372@changeid>
In-Reply-To: <20221107173954.v11.5.I4c6d97e6f3cf8cdc691d2d4519883c3018dd4372@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 7 Nov 2022 10:12:16 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UQc1L3z2Z7sfV1RnQS3c6RStXmighAC1OBPgYEAsPF6g@mail.gmail.com>
Message-ID: <CAD=FV=UQc1L3z2Z7sfV1RnQS3c6RStXmighAC1OBPgYEAsPF6g@mail.gmail.com>
Subject: Re: [PATCH v11 5/5] arm64: dts: qcom: sc7280: sort out the "Status"
 to last property with sc7280-herobrine-audio-rt5682.dtsi
To:     Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
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

Hi

On Mon, Nov 7, 2022 at 1:46 AM Sheng-Liang Pan
<sheng-liang.pan@quanta.corp-partner.google.com> wrote:
>
> To keep diffs clean, sort out "Status" to last property.
>
> Signed-off-by: Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
> ---
>
> Changes in v11:
> - sort out the "Status" property with sc7280-herobrine-audio-rt5682.dtsi
>
>  .../dts/qcom/sc7280-herobrine-audio-rt5682.dtsi    | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)

Thanks!

I probably would have also removed the 'status = "okay";' from the
top-level sound node in this patch, but that can always be done later.
Certainly your patch is a step forward. :-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
