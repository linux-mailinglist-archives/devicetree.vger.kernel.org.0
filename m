Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D5E846246CD
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 17:22:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230173AbiKJQWw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 11:22:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229595AbiKJQWv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 11:22:51 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 378FB205E9
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 08:22:50 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id f7so3854079edc.6
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 08:22:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=l2zQjV69cVqfMg9UmNwS5DMRljPslOxp55HiAK4Gclg=;
        b=Lu4vI/oqFw0QnjtBCApP5VmT5fxeRK8EHWRX6ExQxVOG3595l2etuZETq5ZKLkgChJ
         lIm54cezWKfRNes/WNG0LM0hvm3PbpjK9WwMHnvUR7UA56wy0MGf3gc0kUJZNNmclmvA
         Zwr9wVYAA41rykOFiBh4azDpzhzl2U7ZPRgB8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l2zQjV69cVqfMg9UmNwS5DMRljPslOxp55HiAK4Gclg=;
        b=RHMCu8xSTT9JVzqpj+RskJmODNEHRSDjTZz/RrHwworYHML44fWfYqr8ileB/PPc4v
         xa0HJ2P3yD2kQdzBA3RGozBCLHzlYQLdg3gfq8NithejN2dKSYfjzHpq0KNoUohHk8ki
         KFsmj1qr3FXI7YytA7p4OzaP0F61v5J+0dQEoMjAWEhwBS0qu1ZIwkVnjpVEqLqhd86E
         9TIgKINKfnh9QUSy7IkdgJfCS+bMAH9jzulWO60TMEH646nQKv8qYcssAdVIZ2fpU51n
         Zh/3/snsc/7SrBHXQ4R/TKgBCy3LOOmO99QE4ULVtjMwdW4HIbp87jXeXrffdva01pCK
         wZiw==
X-Gm-Message-State: ACrzQf3+O+HyqVxLygXMBV635am2wlsbLhoH0Vk5JVYwod1z0b/PJV0i
        YRnzFlzLlI7WjtpBKWsoS+S1NjWfZzYl7Eml
X-Google-Smtp-Source: AMsMyM65ddBKRC2zEzGO1cXFLh57XSGM6iD6EiNyx24KwrxjIyDKBkFlAy1SCVfyPbRer8PUhQWRdA==
X-Received: by 2002:a05:6402:2994:b0:453:4c5c:d31c with SMTP id eq20-20020a056402299400b004534c5cd31cmr63179789edb.412.1668097368528;
        Thu, 10 Nov 2022 08:22:48 -0800 (PST)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com. [209.85.221.41])
        by smtp.gmail.com with ESMTPSA id y20-20020a170906559400b007ad69e9d34dsm7424574ejp.54.2022.11.10.08.22.14
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 08:22:22 -0800 (PST)
Received: by mail-wr1-f41.google.com with SMTP id bs21so3022527wrb.4
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 08:22:14 -0800 (PST)
X-Received: by 2002:adf:d1ec:0:b0:236:880f:2adf with SMTP id
 g12-20020adfd1ec000000b00236880f2adfmr42499149wrd.617.1668097333487; Thu, 10
 Nov 2022 08:22:13 -0800 (PST)
MIME-Version: 1.0
References: <20221110070813.1777-1-quic_sibis@quicinc.com>
In-Reply-To: <20221110070813.1777-1-quic_sibis@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 10 Nov 2022 08:22:01 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Vb54LpX7P7qJt4TNHVv13muaR0Me9SYskOg5N8ZN9RkA@mail.gmail.com>
Message-ID: <CAD=FV=Vb54LpX7P7qJt4TNHVv13muaR0Me9SYskOg5N8ZN9RkA@mail.gmail.com>
Subject: Re: [PATCH V4 1/2] arm64: dts: qcom: sc7280: Mark all Qualcomm
 reference boards as LTE
To:     Sibi Sankar <quic_sibis@quicinc.com>
Cc:     andersson@kernel.org, jinghung.chen3@hotmail.com,
        agross@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        konrad.dybcio@linaro.org
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

On Wed, Nov 9, 2022 at 11:08 PM Sibi Sankar <quic_sibis@quicinc.com> wrote:
>
> When the modem node was re-located to a separate LTE source file
> "sc7280-herobrine-lte-sku.dtsi", some of the previous LTE users
> weren't marked appropriately. Fix this by marking all Qualcomm
> reference devices as LTE.
>
> Suggested-by: Douglas Anderson <dianders@chromium.org>
> Fixes: d42fae738f3a ("arm64: dts: qcom: Add LTE SKUs for sc7280-villager family")
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> ---
>
> v4:
>  * Remove duplicate lte source file [Doug]
>
> v3:
>  * Fix incorrect tag usage [Krzysztof]
>
>  arch/arm64/boot/dts/qcom/sc7280-idp.dts  | 1 -
>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 1 +
>  2 files changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
