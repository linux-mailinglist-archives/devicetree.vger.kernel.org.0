Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C07C6C9879
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 00:19:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231956AbjCZWTh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Mar 2023 18:19:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231945AbjCZWTf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Mar 2023 18:19:35 -0400
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A2FB5B89
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 15:19:32 -0700 (PDT)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-5456249756bso137751867b3.5
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 15:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679869171;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tu4vrKxM9JkGEsPxS1TjINm1T/7kUfTM8j/gUAK3aVE=;
        b=filTvvORbFtiB1GcRFZ6rBfvDeYKg1xSooGxJ8LMRsCCNqo2m81mPYWcGdRkGhtKCe
         KVQyPv/5BotBeU5clAEkEsJ4y+wPxCIRYtg5a3+1Mp6jTrawN0fLO6A7Hw4f/ZR6rM2M
         nLEayWo9quI5lUyX8kylOu81PpIDJmjgcqXB44qT2up3Lkie131ovkdiYYjXVx2F9+ZK
         Y2fXsrDFrxgtSM7mi/qxIY3R+yJJ0kOVBZi1accVCPSvE9GrnhNRXFmm2IElhjCY0Aul
         EtMsxyOyouHWXRDDxWFUHVDxaJh0xzI6+4JRzPi1X2txe9I8Rzf7CtGrPpEaQiiS69FK
         rvnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679869171;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tu4vrKxM9JkGEsPxS1TjINm1T/7kUfTM8j/gUAK3aVE=;
        b=a0XgbPtLMk9SFPxkb3gKuhibSEtAaNN+gWS2+tD1LvG+OQi9RpRCUfuL/fplAkvegY
         iIfFhXHdEeofGxbaiwcQFP/WZOOl2fnL6NgLQc1k7CUwxVpN8crYC1M4nmfL3+6V5eZ8
         yYQn7OBQAez3MAsYpp0b1WPdg2f73IreuWu2TlsfNaBp5ZSHMes+Jg4NpBz+kNKp5VPp
         N/EKJFbhT1GWORDXH9w8CtDh+inNbW19IbqUa0NohDXUParW7zLmL1mbDs1pN29L6ZrX
         eDAULdjfkBeajnXTOOS/U2FsyOx735Xm06rnehN+ysMMHhD1+PFtLLhxUAlBmsj9Zg8e
         YoBw==
X-Gm-Message-State: AAQBX9dW9F4HujJcxY+QpePeZFrDaFS2K690DPDxpP0XkAM3e6GerHBF
        6EPVMD0OdupaylNTn7WJ/+LNnpYPmHppLgXmPeZwtw==
X-Google-Smtp-Source: AKy350ZcJeGSkmrWjglkjY3YPe8LZ+y7K0HcrkeOk0SPckARBcTEsEu0JNvrS0O4bact54/DAIwG0Yj3Fjsl78JfcKo=
X-Received: by 2002:a81:ac13:0:b0:545:bade:c57e with SMTP id
 k19-20020a81ac13000000b00545badec57emr2259829ywh.5.1679869171327; Sun, 26 Mar
 2023 15:19:31 -0700 (PDT)
MIME-Version: 1.0
References: <20230326155753.92007-1-krzysztof.kozlowski@linaro.org> <20230326155753.92007-3-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230326155753.92007-3-krzysztof.kozlowski@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Mon, 27 Mar 2023 01:19:20 +0300
Message-ID: <CAA8EJpqEAssrzWWeLh0erFVkdOXMNBtCK5et=b7rTQjDP-jS7w@mail.gmail.com>
Subject: Re: [PATCH 03/11] arm64: dts: qcom: sc8280xp-crd: use just "port" in panel
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 26 Mar 2023 at 18:58, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> The panel bindings expect to have only one port, thus they do not allow
> to use "ports" node:
>
>   sc8280xp-crd.dtb: panel: 'ports' does not match any of the regexes: 'pinctrl-[0-9]+'
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc8280xp-crd.dts | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry
