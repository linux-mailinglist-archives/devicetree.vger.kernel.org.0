Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 093E36CBCAD
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 12:41:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229510AbjC1KlY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 06:41:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231820AbjC1KlT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 06:41:19 -0400
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24AE7618A
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 03:41:18 -0700 (PDT)
Received: by mail-yb1-xb2f.google.com with SMTP id r187so14399498ybr.6
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 03:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680000077;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ScncozdRfE1mQa4+nAK0Jtn2/gS2SKLxxgCN6MI5Phg=;
        b=H8oqCcILOHHKdyyXrpcOAQHKtYJ2R0EHXcQyxGEJjfqnmd65oxyqvV/KLS0RWopNJX
         Bk7WhfFL4NLKT25hUFYeNxGmxs41HJy7haUypio2700XOEz3BVSLnDHurA2FmhON4kKN
         yQcC59eumRN+Lf1cbDncVhl8Vmlj5FFy02C3vc2LhT426HTg/j5PDdIj1wT3U9gJNOVo
         SX0PNrdLVKrOWxwye4Njt6BQKEuF2bgwYb/dSXnYUxJMwubfctDv4kVrnsR4UJzXn8hV
         d82478pWw5hE2oGzI98Q0G5Muogq/5IAcrrFPZV0nmWdqzBhYsYKK8FTPIF14zb3GUFo
         0X2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680000077;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ScncozdRfE1mQa4+nAK0Jtn2/gS2SKLxxgCN6MI5Phg=;
        b=Epb/o5iNu4qyG5ZJpldqSqQYzLykkfpc35BRy2z4ZtwilFN7K7DTJCOqIO7wAiFo/R
         s48XZXRvuONgmhQX2oUOY0Y9M4hiZgwf0+E+02IirlBJozMI0DZ5LFWS8a84gxWkuQRh
         3034P4Fb7IFAN29SkIK3u3Jmvito6O2GvuxUqX07WCf3LivRLO9toQ5BgLKl9aWSYslr
         lp8qjEAHv0Ow+VjiErQtJvPNUYAbyeLwlUBQyWpK5WT3AKUD46T99cDxOIHGESDBtW6m
         HwDTCtPom1rUXND1BUzqITwvWqosP7drP55ebSQI0KOqoTo9bJN23f2apuUjbX4ga6Eh
         vbUw==
X-Gm-Message-State: AAQBX9cVG/2YlDzZ62EJat3wukdR+ANKozqNL/9yj8n7OeqpOLTDa38p
        eN8KMPfsDuZYzIxlTl6WAmndNb5VnWUtXu6lYmPHZQ==
X-Google-Smtp-Source: AKy350ZgEE/D6adiyj/0Gd6S8pM8rCmiMKgPbfnz/d61Gs6OOEUXmjzkmasYyqUwfhInm+ReDGrgAg0kgVptOTmf+cU=
X-Received: by 2002:a05:6902:168d:b0:b6c:2d28:b3e7 with SMTP id
 bx13-20020a056902168d00b00b6c2d28b3e7mr9261489ybb.9.1680000077344; Tue, 28
 Mar 2023 03:41:17 -0700 (PDT)
MIME-Version: 1.0
References: <20230326005733.2166354-1-dmitry.baryshkov@linaro.org>
 <20230326005733.2166354-2-dmitry.baryshkov@linaro.org> <72f744cc-21ea-0eab-2778-53ec0f3e4964@linaro.org>
In-Reply-To: <72f744cc-21ea-0eab-2778-53ec0f3e4964@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Tue, 28 Mar 2023 13:41:06 +0300
Message-ID: <CAA8EJpq7VRsrA9++kV1E1NZ2GzoLFC6o19YDCnw=0B4kePVCEA@mail.gmail.com>
Subject: Re: [PATCH v2 1/9] dt-bindings: phy: migrate combo QMP PHY bindings
 to qcom,sc8280xp-qmp-usb43dp-phy.yaml
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        Johan Hovold <johan+linaro@kernel.org>,
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

On Tue, 28 Mar 2023 at 10:02, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 26/03/2023 01:57, Dmitry Baryshkov wrote:
> > Migrate legacy bindings (described in qcom,sc7180-qmp-usb3-dp-phy.yaml)
> > to qcom,sc8280xp-qmp-usb43dp-phy.yaml. This removes a need to declare
> > the child PHY node or split resource regions.
>
> Thank you for your patch. There is something to discuss/improve.
>
> > -  resets:
> > -    items:
> > -      - description: reset of phy block.
> > -      - description: phy common block reset.
> > -
> > -  reset-names:
> > -    items:
> > -      - const: phy
> > -      - const: common
> > -
> > -  vdda-phy-supply:
> > -    description:
> > -      Phandle to a regulator supply to PHY core block.
> > -
> > -  vdda-pll-supply:
> > -    description:
> > -      Phandle to 1.8V regulator supply to PHY refclk pll block.
> > -
> > -  vddp-ref-clk-supply:
> > -    description:
> > -      Phandle to a regulator supply to any specific refclk pll block.
>
> What about this supply. It's missing in the new binding. Don't we need
> it? Isn't it a real supply?

I think it is a leftover from the QMP split. This is a real supply,
but it is used only by UFS PHYs. So, while we are clearing old
bindings, let's drop this unused thing.

-- 
With best wishes
Dmitry
