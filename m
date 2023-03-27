Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BAE256CA7A8
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 16:29:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232454AbjC0O3K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 10:29:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230070AbjC0O24 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 10:28:56 -0400
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com [IPv6:2607:f8b0:4864:20::112f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 642B95FEF
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 07:28:09 -0700 (PDT)
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-536af432ee5so174573507b3.0
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 07:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679927288;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=X7oETiAbAfzUJ7HzqmqjYrIufs3V2fiHoFSbt1UIh4s=;
        b=LMhiL9Jf9E+cVjvFhCUgHOKVr4umgl4MyEOkMWil6ek4otCgMmULsS+j1Ql3oN98O5
         AO3FLsIzrbR/7IA4I+xL4Rz+E4mdnwh/I92ecqoRgIHTViTLeHsYsSyMrSsxGAur1S3G
         Jl5b+WfdFUSRM0I3ViEjgRlKG7XjVx6HHaOUcPWm70NHx6dkJ8gfnoEuxenyK9LP2oik
         6e7mIXw0+u+UAbb6Bc0RWKsVGBVdu7ZIqdIgMbfPmZN1+Vij0nuN7EhFG4+hkc5CJoJ1
         xx/ctIiu+Tcl70Sw8l5VJZPNbsbphL9ON/VJuaEAMm5x6BJp7kEb3cGTA0ziRifu/FgX
         Q0sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679927288;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X7oETiAbAfzUJ7HzqmqjYrIufs3V2fiHoFSbt1UIh4s=;
        b=J8FkCZ5aR+EOrWUizt0KwiayeMnd1ZNVxXda0JIvbw7xJ3589nGIuaVJYTcsPqeRyj
         TXkdO6RJTbsOsd8XaKlVC+NwYXJGf447chkw5KoGVu9Kmoavts3013MZbushfeQ7CVAL
         Eu3xj8QXH034/7FkcB65wiUQCbAmFy16BCCbDcMVq7uG2vQbnhKJxiFmzr4HbejPXAsj
         8yD5ggK+oYLDIcV4Mqk73czAY4LZURucPHLvIR+9l4rpy8S/2jBtSt85bxzKBo33ng7i
         cI/XxM6mUC/x9LNoyVs1W98OYjPcoLicqzcTP5n/XDFAhjealM2GMbwAVr48L7ypGhIP
         zntw==
X-Gm-Message-State: AAQBX9ee3yH3K1SkIdq/ksU5pWqr5EyqKBG0jvAiU9MvFSZ13M6cLVaJ
        iPhWAMP2RETa6SiKmYCeROKlvR14lwtYaiqcvbC2vw==
X-Google-Smtp-Source: AKy350ZKD/fgBcAqFDqiMdxfNo8Nyf0RE9CUuUo/C58z5D16bKlfHDfNsdW0R00eimXjynMkd8Keq9JqY8R8ZFQfgRc=
X-Received: by 2002:a81:b50f:0:b0:544:b8d8:339e with SMTP id
 t15-20020a81b50f000000b00544b8d8339emr5534658ywh.5.1679927288387; Mon, 27 Mar
 2023 07:28:08 -0700 (PDT)
MIME-Version: 1.0
References: <20230327140752.163009-1-krzysztof.kozlowski@linaro.org> <20230327140752.163009-3-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230327140752.163009-3-krzysztof.kozlowski@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Mon, 27 Mar 2023 17:27:57 +0300
Message-ID: <CAA8EJpoOjHpwwamdxBg+nf_Xf3m2q8vt9keM1atd821_iC6V3g@mail.gmail.com>
Subject: Re: [PATCH v4 2/5] mailbox: qcom-apcs-ipc: do not grow the of_device_id
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 27 Mar 2023 at 17:17, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Re-organize the compatible devices and add a comment to avoid unneeded
> of_device_id growth with every new SoC.  These devices have quite a lot
> of similarities and they can use only one compatible fallback for driver
> binding.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  drivers/mailbox/qcom-apcs-ipc-mailbox.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry
