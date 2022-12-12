Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 313A764A7EC
	for <lists+devicetree@lfdr.de>; Mon, 12 Dec 2022 20:07:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233088AbiLLTHZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Dec 2022 14:07:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233099AbiLLTHU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Dec 2022 14:07:20 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BAB561057F
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 11:07:17 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id z26so1046306lfu.8
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 11:07:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MagF9N2zlNHkIFdIICMF8ydb3FmPAw5l1vKmdx/oxs8=;
        b=RM1NdGVqPvDhO3+tbgyu8RhEyq3+++MY0ECRt6eXG1T9AJEQJTMaX8taEJ4Guln6C5
         BD97DcWMgvQm0ZRNQ/XpfwyhiO8YRwd0Y8cat8KbhT7A2R2GW9g+LtXfiscvu6bDpXU0
         +ihJFQHQnoQcurpcnjy+Cruqim/2OzXW4fbTM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MagF9N2zlNHkIFdIICMF8ydb3FmPAw5l1vKmdx/oxs8=;
        b=JcfOK3Ern6p+HaSSK/uhH4AF0Xa8MKNMxAKEuVUyF6mUSPWlJObz8C6Qm1XZoupZ31
         m0hVnZsSz9/8CQAU/6ejhKxABAOEPgaKponIKS7zT7Kf1yRkQ7PSKt+Ays85PyhFldR3
         m6kTvv0ljt0YiJckCnTJy4chonfuzctPVLU1o+r+Px4AG3qG03pNTifgpewkAAMKLBlp
         DJ4kbTLmAQAMWDMn7wYR6tXFsCVnajT1UcYCxtFqLda58k56U22/qIIqpbPjeRzHQaKa
         RsuyNLf+V2HXbWtm8/9Vq2BwTBZ8zxQsrawVbMd4/vc7MXhyObkq2/PR6C7fek5WvXkt
         tFCw==
X-Gm-Message-State: ANoB5pnpC8I7/QKPK+VeH004ezGYe3dtaGX+BYOBp4//LO6kQJDo3rpY
        64ia/mqXy69sq/zdkLRHJbp8rU44aps5/FZHimAqcw==
X-Google-Smtp-Source: AA0mqf6Bm6pUVI5zaf2HuGlLhZbzYEVmcaQItyRuLQgFOl1/nMIGhtP7rr5gboLezz0VWd/ps55ctW7DQEO1oVJYAm0=
X-Received: by 2002:a05:6512:33d1:b0:4b5:1c86:9267 with SMTP id
 d17-20020a05651233d100b004b51c869267mr18965216lfg.297.1670872036091; Mon, 12
 Dec 2022 11:07:16 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 12 Dec 2022 14:07:15 -0500
MIME-Version: 1.0
In-Reply-To: <20221212133303.39610-3-krzysztof.kozlowski@linaro.org>
References: <20221212133303.39610-1-krzysztof.kozlowski@linaro.org> <20221212133303.39610-3-krzysztof.kozlowski@linaro.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Mon, 12 Dec 2022 14:07:15 -0500
Message-ID: <CAE-0n50b-AaOo2MFyMyvgKhBhpMpL3fxzqLvJaPq=Hg1fdu2Mw@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: qcom: sc8280xp: correct SPMI bus address cells
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Krzysztof Kozlowski (2022-12-12 05:33:01)
> The SPMI bus uses two address cells and zero size cells (secoond reg
> entry - SPMI_USID - is not the size):
>
>   spmi@c440000: #address-cells:0:0: 2 was expected
>
> Fixes: 152d1faf1e2f ("arm64: dts: qcom: add SC8280XP platform")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
